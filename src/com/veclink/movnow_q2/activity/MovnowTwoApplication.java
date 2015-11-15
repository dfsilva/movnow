// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.Application;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.media.MediaPlayer;
import android.media.RingtoneManager;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.nostra13.universalimageloader.cache.disc.naming.Md5FileNameGenerator;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.QueueProcessingType;
import com.veclink.bracelet.bean.BleUserInfoBean;
import com.veclink.bracelet.bean.DeviceInfo;
import com.veclink.bracelet.bletask.BleCallBack;
import com.veclink.bracelet.bletask.BleQueryFirmareVersionTask;
import com.veclink.bracelet.bletask.BleSyncParamsTask;
import com.veclink.healthy.business.http.pojo.GetSleepDataResponse;
import com.veclink.healthy.business.http.pojo.GetSportDataResponse;
import com.veclink.healthy.business.http.session.HealthyGetSleepDataSession;
import com.veclink.healthy.business.http.session.HealthyGetSportDataSession;
import com.veclink.healthy.database.entity.SleepData;
import com.veclink.healthy.database.entity.SportData;
import com.veclink.healthy.database.op.HealthyDBOperate;
import com.veclink.healthy.task.SaveSyncDataRunnable;
import com.veclink.hw.bleservice.DeviceReponseObserver;
import com.veclink.hw.bleservice.VLBleServiceManager;
import com.veclink.hw.bleservice.profile.BraceletGattAttributes;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.hw.devicetype.DeviceProductFactory;
import com.veclink.hw.devicetype.pojo.BaseDeviceProduct;
import com.veclink.movmow.allen.nurse.RemindObject;
import com.veclink.movnow_q2.network.base.SimpleHttpSchedualer;
import com.veclink.movnow_q2.reveiver.RemindReceiver;
import com.veclink.movnow_q2.util.DebugUtil;
import com.veclink.movnow_q2.util.MyActivityManager;
import com.veclink.movnow_q2.util.SharedPreferencesUtils;
import com.veclink.movnow_q2.util.StorageUtil;
import de.greenrobot.event.EventBus;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            MainActivity

public class MovnowTwoApplication extends Application
    implements DeviceReponseObserver
{
    private class SaveNetSportOrSleepData extends AsyncTask
    {

        String eventName;
        final MovnowTwoApplication this$0;

        protected transient Object doInBackground(Object aobj[])
        {
            eventName = aobj[0].toString();
            if (eventName.equals(com/veclink/healthy/business/http/pojo/GetSportDataResponse.getSimpleName()))
            {
                Object obj = (List)aobj[1];
                DebugUtil.println((new StringBuilder()).append("net SportData size is ").append(((List) (obj)).size()).toString());
                aobj = new ArrayList();
                SportData sportdata;
                for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); DebugUtil.println(sportdata.toString()))
                {
                    sportdata = (SportData)((Iterator) (obj)).next();
                    String s = SaveSyncDataRunnable.createSportDataId(sportdata.getUserId(), sportdata.getDeviceId(), sportdata.getSportTime());
                    if (!HealthyDBOperate.isExitSportRecord(MovnowTwoApplication.mContext, s))
                    {
                        sportdata.setHadupload("done");
                        sportdata.set_id(s);
                        ((List) (aobj)).add(sportdata);
                    }
                }

                HealthyDBOperate.addOriginSportDataList(MovnowTwoApplication.mContext, ((List) (aobj)));
            } else
            {
                Object obj1 = (List)aobj[1];
                aobj = new ArrayList();
                DebugUtil.println((new StringBuilder()).append("net SleepData size is ").append(((List) (obj1)).size()).toString());
                SleepData sleepdata;
                for (obj1 = ((List) (obj1)).iterator(); ((Iterator) (obj1)).hasNext(); DebugUtil.println(sleepdata.toString()))
                {
                    sleepdata = (SleepData)((Iterator) (obj1)).next();
                    String s1 = SaveSyncDataRunnable.createSportDataId(sleepdata.getUserId(), sleepdata.getDeviceId(), (new StringBuilder()).append(sleepdata.getDateTime()).append(sleepdata.getStartTime()).toString());
                    if (!HealthyDBOperate.isExitSleepRecord(MovnowTwoApplication.mContext, s1))
                    {
                        sleepdata.setHadupload("done");
                        sleepdata.set_id(s1);
                        ((List) (aobj)).add(sleepdata);
                    }
                }

                HealthyDBOperate.addOriginSleepdataList(MovnowTwoApplication.mContext, ((List) (aobj)));
            }
            return eventName;
        }

        protected void onPostExecute(Object obj)
        {
            super.onPostExecute(obj);
            DebugUtil.println((new StringBuilder()).append("eventName is ").append(eventName).toString());
            EventBus.getDefault().post(eventName);
        }

        private SaveNetSportOrSleepData()
        {
            this$0 = MovnowTwoApplication.this;
            super();
        }

    }


    public static final String ACTION_BIND_DEVICE_DONE = "action_bind_device_done";
    public static final String ACTION_SYNC_PARAMS_DONE = "action_sync_params_done";
    public static final int DEVICEFINEPHONE = 1000;
    public static final int DISCONNECTNOTIFY = 0x1212121;
    public static final int DISCONNECTNOTIFYID = 999;
    public static final int SITTING_REMIND_ID = 3;
    public static final int SYNCDATANOTIFYID = 998;
    static final String TAG = "MovnowTwoApplication";
    private static final int TIME_INTERVAL = 0x5265c00;
    public static final int WAKEUP_REMIND_ID = 2;
    public static final int WATER_REMIND_ID = 1;
    private static MyActivityManager activityManager = null;
    public static MovnowTwoApplication application;
    private static BleCallBack bleSyncParamsCallBack;
    private static BleSyncParamsTask bleSyncParamsTask;
    public static boolean canDoTask;
    public static BaseDeviceProduct deviceProduct;
    public static boolean isConnected;
    public static Context mContext;
    private static MediaPlayer mMediaPlayer;
    private static NotificationManager notificationManager;
    private static Handler queryVerisonHandler;
    private static BleCallBack queryVersionCallBack;
    public static int queryVersonCount = 0;
    public static long sitting_remind_startTime;
    private static Handler syncParamHandler;
    public static int syncParmasCount = 0;
    private boolean hasSyncSleepData;
    private boolean hasSyncStepData;

    public MovnowTwoApplication()
    {
    }

    public static void cancelAllRemind()
    {
        cancelOneTypeRemind("wakeup_remind_objects_file.wao", "wake_up_remind_action");
        cancelOneTypeRemind("water_remind_objects_file.wao", "dringk_water_remind_action");
    }

    private static void cancelFindPhoneNotify()
    {
        if (notificationManager != null)
        {
            notificationManager.cancel(1000);
        }
    }

    private static void cancelKeptNotify()
    {
        if (notificationManager != null)
        {
            notificationManager.cancel(999);
        }
    }

    public static void cancelOneTypeRemind(String s, String s1)
    {
        RemindObject remindobject;
        for (s = StorageUtil.readRemindObject(mContext, s).iterator(); s.hasNext(); cancelRemind(remindobject.getHour(), remindobject.getMinute(), s1))
        {
            remindobject = (RemindObject)s.next();
        }

    }

    public static void cancelRemind(int i, int j, String s)
    {
        Intent intent = new Intent(mContext, com/veclink/movnow_q2/reveiver/RemindReceiver);
        intent.setAction(s);
        i = createRemindRequesCode(i, j, s);
        if (s.equals("dringk_water_remind_action"))
        {
            s = PendingIntent.getBroadcast(mContext, i, intent, 1);
        } else
        if (s.equals("sitting_long_remind_action"))
        {
            s = PendingIntent.getBroadcast(mContext, i, intent, 3);
        } else
        {
            s = PendingIntent.getBroadcast(mContext, i, intent, 2);
        }
        ((AlarmManager)mContext.getSystemService("alarm")).cancel(s);
    }

    public static int createRemindRequesCode(int i, int j, String s)
    {
        if (s.equals("sitting_long_remind_action"))
        {
            return i * 60 + j;
        } else
        {
            return i * 60 * 60 + j * 60;
        }
    }

    public static void initImageLoader(Context context)
    {
        context = (new com.nostra13.universalimageloader.core.ImageLoaderConfiguration.Builder(context)).threadPriority(3).denyCacheImageMultipleSizesInMemory().discCacheFileNameGenerator(new Md5FileNameGenerator()).tasksProcessingOrder(QueueProcessingType.LIFO).enableLogging().build();
        ImageLoader.getInstance().init(context);
    }

    public static boolean isApplicationBroughtToBackground(Context context)
    {
        List list = ((ActivityManager)context.getSystemService("activity")).getRunningTasks(1);
        return !list.isEmpty() && !((android.app.ActivityManager.RunningTaskInfo)list.get(0)).topActivity.getPackageName().equals(context.getPackageName());
    }

    public static void playFindPhoneRing()
    {
        if (mMediaPlayer != null && mMediaPlayer.isPlaying())
        {
            return;
        }
        try
        {
            android.net.Uri uri = RingtoneManager.getDefaultUri(4);
            mMediaPlayer = new MediaPlayer();
            mMediaPlayer.setDataSource(mContext, uri);
            mMediaPlayer.setAudioStreamType(2);
            mMediaPlayer.setLooping(true);
            mMediaPlayer.prepare();
            mMediaPlayer.start();
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public static void playRing()
    {
        if (mMediaPlayer != null && mMediaPlayer.isPlaying())
        {
            return;
        }
        try
        {
            android.net.Uri uri = RingtoneManager.getDefaultUri(1);
            mMediaPlayer = new MediaPlayer();
            mMediaPlayer.setDataSource(mContext, uri);
            mMediaPlayer.setAudioStreamType(2);
            mMediaPlayer.setLooping(true);
            mMediaPlayer.prepare();
            mMediaPlayer.start();
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public static void queryFirewareVersion()
    {
        queryVersonCount++;
        (new BleQueryFirmareVersionTask(mContext, queryVersionCallBack)).work();
    }

    public static void sendNotification(int i, int j, CharSequence charsequence, CharSequence charsequence1)
    {
        notificationManager = (NotificationManager)mContext.getSystemService("notification");
        Object obj = new Intent("android.intent.action.MAIN");
        ((Intent) (obj)).addCategory("android.intent.category.LAUNCHER");
        ((Intent) (obj)).setClass(mContext, com/veclink/movnow_q2/activity/MainActivity);
        ((Intent) (obj)).setFlags(0x10200000);
        obj = PendingIntent.getActivity(mContext, 0, ((Intent) (obj)), 0);
        android.support.v4.app.NotificationCompat.Builder builder = new android.support.v4.app.NotificationCompat.Builder(mContext);
        try
        {
            builder.setSmallIcon(i).setAutoCancel(false).setContentTitle(charsequence).setContentText(charsequence1).setContentIntent(((PendingIntent) (obj)));
            charsequence = builder.build();
            charsequence.defaults = 2;
            charsequence.flags = 32;
            notificationManager.notify(j, charsequence);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (CharSequence charsequence)
        {
            Log.d("uri", (new StringBuilder()).append("uriString----e---:").append(charsequence.getMessage()).toString());
        }
        charsequence.printStackTrace();
    }

    public static void setAllTypeOrNextRemindAlarm()
    {
        setNextRemind("wakeup_remind_objects_file.wao");
        setNextRemind("water_remind_objects_file.wao");
    }

    public static void setNextRemind(String s)
    {
        Object obj = StorageUtil.readRemindObject(mContext, s);
        Collections.sort(((List) (obj)));
        obj = ((List) (obj)).iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            RemindObject remindobject = (RemindObject)((Iterator) (obj)).next();
            DebugUtil.logd("remindobject", remindobject.toString());
            int i = remindobject.getHour();
            int j = remindobject.getMinute();
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(System.currentTimeMillis());
            if (calendar.get(11) * 60 * 60 + calendar.get(12) * 60 >= i * 60 * 60 + j * 60)
            {
                continue;
            }
            i = calendar.get(7);
            if (s.equals("wakeup_remind_objects_file.wao"))
            {
                if (!remindobject.getRepeateArray()[i - 1])
                {
                    continue;
                }
                setRemindAlarm(remindobject, "wake_up_remind_action");
                break;
            } else
            {
                setRemindAlarm(remindobject, "dringk_water_remind_action");
                return;
            }
        } while (true);
    }

    public static void setRemindAlarm(RemindObject remindobject, String s)
    {
        Calendar calendar;
        int i;
        int j;
        long l;
        calendar = Calendar.getInstance();
        i = remindobject.getHour();
        j = remindobject.getMinute();
        l = (i * 60 + j) * 1000;
        if (!s.equals("sitting_long_remind_action")) goto _L2; else goto _L1
_L1:
        sitting_remind_startTime = System.currentTimeMillis();
        calendar.setTimeInMillis(sitting_remind_startTime + l);
_L9:
        Object obj;
        obj = new Intent(mContext, com/veclink/movnow_q2/reveiver/RemindReceiver);
        ((Intent) (obj)).putExtra("RemindObject", remindobject);
        ((Intent) (obj)).setAction(s);
        i = createRemindRequesCode(i, j, s);
        if (s.equals("dringk_water_remind_action"))
        {
            remindobject = PendingIntent.getBroadcast(mContext, i, ((Intent) (obj)), 1);
        } else
        if (s.equals("sitting_long_remind_action"))
        {
            remindobject = PendingIntent.getBroadcast(mContext, i, ((Intent) (obj)), 3);
        } else
        {
            remindobject = PendingIntent.getBroadcast(mContext, i, ((Intent) (obj)), 2);
        }
        obj = (AlarmManager)mContext.getSystemService("alarm");
        if (!s.equals("dringk_water_remind_action")) goto _L4; else goto _L3
_L3:
        ((AlarmManager) (obj)).setRepeating(0, calendar.getTimeInMillis(), 0x5265c00L, remindobject);
_L6:
        return;
_L2:
        calendar.setTimeInMillis(System.currentTimeMillis());
        if (i * 60 * 60 + j * 60 < calendar.get(11) * 60 * 60 + calendar.get(12) * 60 + calendar.get(13)) goto _L6; else goto _L5
_L5:
        calendar.set(11, i);
        calendar.set(12, j);
        calendar.set(13, 0);
        continue; /* Loop/switch isn't completed */
_L4:
        if (s.equals("wake_up_remind_action"))
        {
            ((AlarmManager) (obj)).set(0, calendar.getTimeInMillis(), remindobject);
            return;
        }
        if (!s.equals("sitting_long_remind_action")) goto _L6; else goto _L7
_L7:
        ((AlarmManager) (obj)).setRepeating(0, calendar.getTimeInMillis(), l, remindobject);
        return;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public static void stopPlayRing()
    {
        cancelKeptNotify();
        cancelFindPhoneNotify();
        if (mMediaPlayer != null)
        {
            mMediaPlayer.stop();
            mMediaPlayer = null;
        }
    }

    public static void syncParams()
    {
        syncParmasCount++;
        int j = Integer.parseInt((String)SharedPreferencesUtils.getSharedPreferences(mContext, "pre_MyTarget", "7000"));
        int k = ((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "pre_WearLocation", Integer.valueOf(0))).intValue();
        int l = ((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "pre_SportType", Integer.valueOf(1))).intValue();
        int i1 = ((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "pre_Sex", Integer.valueOf(1))).intValue();
        int j1 = ((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "personal_year", Integer.valueOf(1970))).intValue();
        int k1 = Calendar.getInstance().get(1);
        float f = ((Float)SharedPreferencesUtils.getSharedPreferences(mContext, "personal_height", Float.valueOf(0.0F))).floatValue();
        float f1 = ((Float)SharedPreferencesUtils.getSharedPreferences(mContext, "personal_weight", Float.valueOf(0.0F))).floatValue();
        int l1 = ((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "pre_DistanceType", Integer.valueOf(0))).intValue();
        boolean flag = mContext.getResources().getBoolean(0x7f070000);
        BleUserInfoBean bleuserinfobean;
        int i;
        if (((Boolean)SharedPreferencesUtils.getSharedPreferences(mContext, "personal_kept_set", Boolean.valueOf(flag))).booleanValue())
        {
            i = 1;
        } else
        {
            i = 0;
        }
        bleuserinfobean = new BleUserInfoBean(j, k, l, i1, k1 - j1, f1, f, l1, i);
        bleSyncParamsTask = new BleSyncParamsTask(mContext, bleSyncParamsCallBack, bleuserinfobean);
        bleSyncParamsTask.work();
    }

    public void deviceConnected()
    {
        isConnected = true;
        stopPlayRing();
        cancelKeptNotify();
    }

    public void deviceDisConnect()
    {
        isConnected = false;
        canDoTask = false;
        boolean flag = ((Boolean)SharedPreferencesUtils.getSharedPreferences(application, "personal_kept_set", Boolean.valueOf(true))).booleanValue();
        if (!Keeper.getBindDeviceMacAddress(mContext).equals("") && flag)
        {
            syncParamHandler.sendEmptyMessage(0x1212121);
        }
    }

    public void deviceOnCharacteristicChange(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic)
    {
    }

    public void deviceOnCharacteristicRead(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic, int i)
    {
    }

    public void deviceOnCharacteristicWrite(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic, int i)
    {
    }

    public void deviceOnServicesDiscovered(BluetoothGatt bluetoothgatt, int i)
    {
        syncParmasCount = 0;
        syncParamHandler.postDelayed(new Runnable() {

            final MovnowTwoApplication this$0;

            public void run()
            {
                MovnowTwoApplication.syncParams();
            }

            
            {
                this$0 = MovnowTwoApplication.this;
                super();
            }
        }, 2500L);
    }

    public MyActivityManager getActivityManager()
    {
        return activityManager;
    }

    public boolean isHasSyncSleepData()
    {
        return hasSyncSleepData;
    }

    public boolean isHasSyncStepData()
    {
        return hasSyncStepData;
    }

    public boolean isServiceRunning(Context context, String s)
    {
        boolean flag1 = false;
        context = ((ActivityManager)context.getSystemService("activity")).getRunningServices(0x7fffffff);
        if (context.size() <= 0)
        {
            return false;
        }
        int i = 0;
        do
        {
label0:
            {
                boolean flag = flag1;
                if (i < context.size())
                {
                    if (!((android.app.ActivityManager.RunningServiceInfo)context.get(i)).service.getClassName().equals(s))
                    {
                        break label0;
                    }
                    flag = true;
                }
                Log.i("MovnowTwoApplication", (new StringBuilder()).append("service is running?==").append(flag).toString());
                return flag;
            }
            i++;
        } while (true);
    }

    public void onCreate()
    {
        super.onCreate();
        mContext = this;
        application = this;
        activityManager = MyActivityManager.getScreenManager();
        deviceProduct = DeviceProductFactory.createDeviceProduct(Keeper.getDeviceType(mContext));
        if (!Keeper.getBindDeviceMacAddress(this).equals(""))
        {
            VLBleServiceManager.getInstance().bindService(this, new BraceletGattAttributes());
            VLBleServiceManager.registerObserver(application);
            if (deviceProduct.canShowKeptView == 0)
            {
                VLBleServiceManager.setAutoReConnect(true);
            } else
            {
                VLBleServiceManager.setAutoReConnect(false);
            }
            setAllTypeOrNextRemindAlarm();
        }
        initImageLoader(getApplicationContext());
        DebugUtil.closeLog();
    }

    public void onEvent(GetSleepDataResponse getsleepdataresponse)
    {
        if (getsleepdataresponse.getError().equals("0") && getsleepdataresponse.getSleeps() != null)
        {
            (new SaveNetSportOrSleepData()).execute(new Object[] {
                com/veclink/healthy/business/http/pojo/GetSleepDataResponse.getSimpleName(), getsleepdataresponse.getSleeps()
            });
            return;
        } else
        {
            EventBus.getDefault().post(com/veclink/healthy/business/http/pojo/GetSleepDataResponse.getSimpleName());
            return;
        }
    }

    public void onEvent(GetSportDataResponse getsportdataresponse)
    {
        if (getsportdataresponse.getError().equals("0") && getsportdataresponse.getSports() != null)
        {
            (new SaveNetSportOrSleepData()).execute(new Object[] {
                com/veclink/healthy/business/http/pojo/GetSportDataResponse.getSimpleName(), getsportdataresponse.getSports()
            });
            return;
        } else
        {
            EventBus.getDefault().post(com/veclink/healthy/business/http/pojo/GetSportDataResponse.getSimpleName());
            return;
        }
    }

    public void setActivityManager(MyActivityManager myactivitymanager)
    {
        activityManager = myactivitymanager;
    }

    public void setHasSyncSleepData(boolean flag)
    {
        hasSyncSleepData = flag;
    }

    public void setHasSyncStepData(boolean flag)
    {
        hasSyncStepData = flag;
    }

    public void syncSleepData(String s, String s1)
    {
        DebugUtil.println((new StringBuilder()).append("syncSleepData startTime is ").append(s).toString());
        DebugUtil.println((new StringBuilder()).append("syncSleepData endTime is ").append(s1).toString());
        EventBus.getDefault().unregister(this, new Class[] {
            com/veclink/healthy/business/http/pojo/GetSleepDataResponse
        });
        EventBus.getDefault().register(this, com/veclink/healthy/business/http/pojo/GetSleepDataResponse, new Class[0]);
        SimpleHttpSchedualer.ansycSchedual(this, new HealthyGetSleepDataSession(this, s, s1));
    }

    public void syncSportData(String s, String s1)
    {
        DebugUtil.println((new StringBuilder()).append("syncSportData startTime is ").append(s).toString());
        DebugUtil.println((new StringBuilder()).append("syncSportData endTime is ").append(s1).toString());
        EventBus.getDefault().unregister(this, new Class[] {
            com/veclink/healthy/business/http/pojo/GetSportDataResponse
        });
        EventBus.getDefault().register(this, com/veclink/healthy/business/http/pojo/GetSportDataResponse, new Class[0]);
        SimpleHttpSchedualer.ansycSchedual(this, new HealthyGetSportDataSession(this, s, s1));
    }

    static 
    {
        syncParamHandler = new Handler() {

            public void handleMessage(Message message)
            {
                message.what;
                JVM INSTR tableswitch 1000 1003: default 36
            //                           1000 37
            //                           1001 183
            //                           1002 36
            //                           1003 46;
                   goto _L1 _L2 _L3 _L1 _L4
_L1:
                return;
_L2:
                Log.d("MovnowTwoApplication", "syncParamHandler:\u6B63\u5728\u540C\u6B65\u53C2\u6570");
                return;
_L4:
                message = (DeviceInfo)message.obj;
                Log.d("MovnowTwoApplication", (new StringBuilder()).append("\u540C\u6B65\u53C2\u6570\u5B8C\u6210").append(message.toString()).toString());
                VLBleServiceManager.getInstance();
                VLBleServiceManager.unRegisterObserver(MovnowTwoApplication.bleSyncParamsTask);
                MovnowTwoApplication.deviceProduct = DeviceProductFactory.createDeviceProduct(((DeviceInfo) (message)).device_type);
                if (MovnowTwoApplication.deviceProduct.canShowKeptView == 0)
                {
                    VLBleServiceManager.setAutoReConnect(true);
                } else
                {
                    VLBleServiceManager.setAutoReConnect(false);
                }
                message = new Intent("action_sync_params_done");
                MovnowTwoApplication.application.sendBroadcast(message);
                MovnowTwoApplication.canDoTask = true;
                MovnowTwoApplication.bleSyncParamsTask = null;
                if (MovnowTwoApplication.deviceProduct.bindDeviceWay != 1)
                {
                    Keeper.setUserHasBindBand(MovnowTwoApplication.application, true);
                    message = new Intent("action_bind_device_done");
                    MovnowTwoApplication.application.sendBroadcast(message);
                    return;
                }
                continue; /* Loop/switch isn't completed */
_L3:
                VLBleServiceManager.getInstance();
                VLBleServiceManager.unRegisterObserver(MovnowTwoApplication.bleSyncParamsTask);
                MovnowTwoApplication.bleSyncParamsTask = null;
                if (MovnowTwoApplication.syncParmasCount < 2)
                {
                    MovnowTwoApplication.syncParams();
                    return;
                }
                if (Keeper.getDeviceType(MovnowTwoApplication.mContext).equals(""))
                {
                    MovnowTwoApplication.queryFirewareVersion();
                    return;
                }
                if (true) goto _L1; else goto _L5
_L5:
            }

        };
        bleSyncParamsCallBack = new BleCallBack(syncParamHandler);
        queryVerisonHandler = new Handler() {

            public void handleMessage(Message message)
            {
                message.what;
                JVM INSTR tableswitch 1000 1003: default 36
            //                           1000 36
            //                           1001 102
            //                           1002 36
            //                           1003 37;
                   goto _L1 _L1 _L2 _L1 _L3
_L1:
                return;
_L3:
                MovnowTwoApplication.canDoTask = true;
                MovnowTwoApplication.queryVersonCount = 0;
                if (message.obj != null)
                {
                    if (((DeviceInfo)message.obj).device_type.equals("0"))
                    {
                        Keeper.setChangeToOldProtocol(MovnowTwoApplication.application, true);
                    }
                    Keeper.setUserHasBindBand(MovnowTwoApplication.application, true);
                    message = new Intent("action_bind_device_done");
                    MovnowTwoApplication.application.sendBroadcast(message);
                    return;
                }
                  goto _L1
_L2:
                if (MovnowTwoApplication.queryVersonCount < 2)
                {
                    MovnowTwoApplication.queryFirewareVersion();
                    return;
                } else
                {
                    Keeper.setUserHasBindBand(MovnowTwoApplication.application, false);
                    VLBleServiceManager.getInstance().unBindService(MovnowTwoApplication.application);
                    return;
                }
            }

        };
        queryVersionCallBack = new BleCallBack(queryVerisonHandler);
    }



/*
    static BleSyncParamsTask access$002(BleSyncParamsTask blesyncparamstask)
    {
        bleSyncParamsTask = blesyncparamstask;
        return blesyncparamstask;
    }

*/
}
