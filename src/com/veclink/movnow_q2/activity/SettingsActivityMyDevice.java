// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import com.veclink.bracelet.bletask.BleAppFindDevices;
import com.veclink.bracelet.bletask.BleCallBack;
import com.veclink.bracelet.bletask.BleChangeLightColorTask;
import com.veclink.bracelet.bletask.BleQueryPowerValueTask;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.healthy.business.http.pojo.DeleteBraceleteDataReponse;
import com.veclink.healthy.business.http.session.HealthyDeleteDataSession;
import com.veclink.healthy.database.op.HealthyDBOperate;
import com.veclink.hw.bleservice.VLBleServiceManager;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.hw.devicetype.DeviceProductFactory;
import com.veclink.hw.devicetype.pojo.BaseDeviceProduct;
import com.veclink.movnow_q2.network.base.SimpleHttpSchedualer;
import com.veclink.movnow_q2.util.ButtonUtil;
import com.veclink.movnow_q2.util.SharedPreferencesUtils;
import com.veclink.movnow_q2.util.StorageUtil;
import com.veclink.movnow_q2.util.ToastUtil;
import com.veclink.movnow_q2.view.BaseRemindDialog;
import com.veclink.movnow_q2.view.SettingsItemView;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;
import de.greenrobot.event.EventBus;
import java.io.PrintStream;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealthyBaseActivity, MovnowTwoApplication, FirmwareUpdateActivity, SettingsActivityMyDeviceSleepTime, 
//            BindbandActivity, PhotographicActivity, SetFamilyActivity, ManagerDeviceActivity, 
//            MainActivity

public class SettingsActivityMyDevice extends HealthyBaseActivity
    implements android.view.View.OnClickListener, android.widget.CompoundButton.OnCheckedChangeListener
{
    private class BandLightSelectListener
        implements android.view.View.OnClickListener
    {

        final SettingsActivityMyDevice this$0;

        public void onClick(View view)
        {
            int i;
            boolean flag;
            flag = false;
            i = ((flag) ? 1 : 0);
            view.getId();
            JVM INSTR tableswitch 2131100091 2131100097: default 52
        //                       2131100091 73
        //                       2131100092 54
        //                       2131100093 98
        //                       2131100094 54
        //                       2131100095 123
        //                       2131100096 54
        //                       2131100097 148;
               goto _L1 _L2 _L3 _L4 _L3 _L5 _L3 _L6
_L3:
            break; /* Loop/switch isn't completed */
_L1:
            i = ((flag) ? 1 : 0);
_L8:
            doChangeLightColorTask(i);
            selectBandLightColorDialog.dismiss();
            return;
_L2:
            imgId = 0x7f0200ce;
            textId = 0x7f0c0181;
            i = 0;
            continue; /* Loop/switch isn't completed */
_L4:
            imgId = 0x7f0200d1;
            textId = 0x7f0c0183;
            i = 1;
            continue; /* Loop/switch isn't completed */
_L5:
            imgId = 0x7f0200cf;
            textId = 0x7f0c0182;
            i = 2;
            continue; /* Loop/switch isn't completed */
_L6:
            imgId = 0x7f0200d0;
            textId = 0x7f0c0184;
            i = 3;
            if (true) goto _L8; else goto _L7
_L7:
        }

        private BandLightSelectListener()
        {
            this$0 = SettingsActivityMyDevice.this;
            super();
        }

    }


    public static final String FIND_DEVICES = "find_devices";
    private static final int POWER_DATA = 3;
    private View bandLightColorView;
    private ImageView bandLightImgView;
    private TextView bandLightTextView;
    private TextView band_power_value;
    private int batteryPowery;
    private View call_remind_view;
    BleCallBack changeLightCallBack;
    private Handler changeLightColorHandler;
    private Context context;
    private BaseDeviceProduct deviceProduct;
    private int imgId;
    IntentFilter intentFilter;
    BroadcastReceiver powerChangeReceiver;
    private TextView power_left_text;
    BleCallBack queryPowerCallBack;
    Handler queryPowerHandler;
    BleQueryPowerValueTask queryPowerValueTask;
    private RelativeLayout rlSleepTime;
    private Dialog selectBandLightColorDialog;
    private SettingsItemView siFindDevices;
    private SettingsItemView siFirmwareUpdate;
    private View siPowerView;
    private SettingsItemView siSetFamilyNumber;
    private SettingsItemView siSportType;
    private SettingsItemView siTakePhoto;
    private SettingsItemView siUnbingDevices;
    private View si_kept_view;
    private View sms_remind_view;
    private Switch switchKept;
    private Switch switchMobile;
    private Switch switchSms;
    private int textId;
    private TitleBarRelativeLayout titleBar;
    private TextView tvCallRemindBySecond;

    public SettingsActivityMyDevice()
    {
        deviceProduct = MovnowTwoApplication.deviceProduct;
        imgId = 0x7f0200ce;
        textId = 0x7f0c0181;
        changeLightColorHandler = new Handler() {

            final SettingsActivityMyDevice this$0;

            public void handleMessage(Message message)
            {
                switch (message.what)
                {
                default:
                    return;

                case 1003: 
                    bandLightTextView.setText(textId);
                    break;
                }
                bandLightImgView.setBackgroundResource(imgId);
            }

            
            {
                this$0 = SettingsActivityMyDevice.this;
                super();
            }
        };
        changeLightCallBack = new BleCallBack(changeLightColorHandler);
        queryPowerHandler = new Handler() {

            final SettingsActivityMyDevice this$0;

            public void handleMessage(Message message)
            {
                if (message.what != 3 && message.what != 1003) goto _L2; else goto _L1
_L1:
                boolean flag;
                batteryPowery = ((Integer)message.obj).intValue();
                band_power_value.setText((new StringBuilder()).append(String.valueOf(batteryPowery)).append("%").toString());
                message = getString(0x7f0c0188);
                power_left_text.setTextColor(getResources().getColor(0x7f080014));
                flag = true;
                if (batteryPowery >= 10 || batteryPowery < 5) goto _L4; else goto _L3
_L3:
                message = getString(0x7f0c01b4);
                power_left_text.setTextColor(getResources().getColor(0x7f080013));
_L6:
                siFindDevices.setEnabled(flag);
                siFirmwareUpdate.setEnabled(flag);
                power_left_text.setText(message);
_L2:
                return;
_L4:
                if (batteryPowery < 5)
                {
                    message = getString(0x7f0c01b3);
                    flag = false;
                    power_left_text.setTextColor(getResources().getColor(0x7f080013));
                }
                if (true) goto _L6; else goto _L5
_L5:
            }

            
            {
                this$0 = SettingsActivityMyDevice.this;
                super();
            }
        };
        queryPowerCallBack = new BleCallBack(queryPowerHandler);
        queryPowerValueTask = null;
        intentFilter = new IntentFilter("ACTION_POWER_CHANGE_DATA");
        powerChangeReceiver = new BroadcastReceiver() {

            final SettingsActivityMyDevice this$0;

            public void onReceive(Context context1, Intent intent)
            {
                if (intent.getAction().equals("ACTION_POWER_CHANGE_DATA"))
                {
                    int i = intent.getIntExtra("EXTRA_DATA", 0);
                    context1 = new Message();
                    context1.what = 3;
                    context1.obj = Integer.valueOf(i);
                    queryPowerHandler.sendMessage(context1);
                }
            }

            
            {
                this$0 = SettingsActivityMyDevice.this;
                super();
            }
        };
    }

    private void doChangeLightColorTask(int i)
    {
        System.out.println((new StringBuilder()).append("doChangeLightColorTask band_light_color:").append(i).toString());
        (new BleChangeLightColorTask(context, changeLightCallBack, i)).work();
    }

    private void initView()
    {
        titleBar = (TitleBarRelativeLayout)findViewById(0x7f060032);
        titleBar.setTitleText(getString(0x7f0c00c4));
        titleBar.setRightVisisble(8);
        titleBar.setRightBackground(0x7f020128);
        titleBar.setRightText(getString(0x7f0c010a));
        titleBar.setRightButtonListener(new android.view.View.OnClickListener() {

            final SettingsActivityMyDevice this$0;

            public void onClick(View view)
            {
                view = new Intent();
                view.setClass(SettingsActivityMyDevice.this, com/veclink/movnow_q2/activity/ManagerDeviceActivity);
                startActivity(view);
            }

            
            {
                this$0 = SettingsActivityMyDevice.this;
                super();
            }
        });
        tvCallRemindBySecond = (TextView)findViewById(0x7f06017b);
        siSportType = (SettingsItemView)findViewById(0x7f06005e);
        siFindDevices = (SettingsItemView)findViewById(0x7f060171);
        siUnbingDevices = (SettingsItemView)findViewById(0x7f060179);
        siFirmwareUpdate = (SettingsItemView)findViewById(0x7f060176);
        siTakePhoto = (SettingsItemView)findViewById(0x7f060174);
        siSetFamilyNumber = (SettingsItemView)findViewById(0x7f060175);
        siTakePhoto.setLeftText(getString(0x7f0c019b));
        siFindDevices.setLeftText(getString(0x7f0c00c9));
        siSportType.setLeftText(getString(0x7f0c00c8));
        siUnbingDevices.setLeftText(getString(0x7f0c00ca));
        siFirmwareUpdate.setLeftText(getString(0x7f0c00ce));
        switchMobile = (Switch)findViewById(0x7f06017c);
        switchSms = (Switch)findViewById(0x7f06017e);
        switchKept = (Switch)findViewById(0x7f060173);
        switchMobile.setOnCheckedChangeListener(this);
        switchSms.setOnCheckedChangeListener(this);
        switchKept.setOnCheckedChangeListener(this);
        siTakePhoto.setOnClickListener(this);
        siSetFamilyNumber.setOnClickListener(this);
        siSportType.setOnClickListener(this);
        siFirmwareUpdate.setOnClickListener(this);
        rlSleepTime = (RelativeLayout)findViewById(0x7f060177);
        rlSleepTime.setOnClickListener(this);
        siFindDevices.setOnClickListener(this);
        siUnbingDevices.setOnClickListener(this);
        findViewById(0x7f060178).setOnClickListener(this);
        bandLightColorView = findViewById(0x7f06017f);
        bandLightTextView = (TextView)findViewById(0x7f060181);
        bandLightImgView = (ImageView)findViewById(0x7f060180);
        bandLightColorView.setOnClickListener(this);
        setColorLightView();
        siPowerView = findViewById(0x7f06016d);
        band_power_value = (TextView)findViewById(0x7f060170);
        power_left_text = (TextView)findViewById(0x7f06016e);
        si_kept_view = findViewById(0x7f060172);
        call_remind_view = findViewById(0x7f06017a);
        sms_remind_view = findViewById(0x7f06017d);
    }

    private void setColorLightView()
    {
        int i;
        i = Keeper.getBandLightColor(context);
        imgId = 0x7f0200ce;
        textId = 0x7f0c0181;
        i;
        JVM INSTR tableswitch 0 3: default 52
    //                   0 75
    //                   1 90
    //                   2 107
    //                   3 124;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        bandLightTextView.setText(textId);
        bandLightImgView.setBackgroundResource(imgId);
        return;
_L2:
        imgId = 0x7f0200ce;
        textId = 0x7f0c0181;
        continue; /* Loop/switch isn't completed */
_L3:
        imgId = 0x7f0200d1;
        textId = 0x7f0c0183;
        continue; /* Loop/switch isn't completed */
_L4:
        imgId = 0x7f0200cf;
        textId = 0x7f0c0182;
        continue; /* Loop/switch isn't completed */
_L5:
        imgId = 0x7f0200d0;
        textId = 0x7f0c0184;
        if (true) goto _L1; else goto _L6
_L6:
    }

    private void setDialogLightViewColor(View view)
    {
        switch (Keeper.getBandLightColor(context))
        {
        default:
            return;

        case 0: // '\0'
            ((TextView)view.findViewById(0x7f0601bc)).setTextColor(getResources().getColor(0x7f080007));
            return;

        case 1: // '\001'
            ((TextView)view.findViewById(0x7f0601be)).setTextColor(getResources().getColor(0x7f080007));
            return;

        case 2: // '\002'
            ((TextView)view.findViewById(0x7f0601c0)).setTextColor(getResources().getColor(0x7f080007));
            return;

        case 3: // '\003'
            ((TextView)view.findViewById(0x7f0601c2)).setTextColor(getResources().getColor(0x7f080007));
            break;
        }
    }

    private void showDeviceFuntionView()
    {
        deviceProduct = MovnowTwoApplication.deviceProduct;
        if (deviceProduct.canShowPowerView == 0)
        {
            queryPowerValueTask = new BleQueryPowerValueTask(context, queryPowerCallBack);
            queryPowerValueTask.work();
        }
        siPowerView.setVisibility(deviceProduct.canShowPowerView);
        siFindDevices.setVisibility(deviceProduct.canShowFindDeviceView);
        call_remind_view.setVisibility(deviceProduct.canShowCallRemindView);
        switchMobile.setChecked(((Boolean)SharedPreferencesUtils.getSharedPreferences(context, "personal_remind_mobile", Boolean.valueOf(false))).booleanValue());
        sms_remind_view.setVisibility(deviceProduct.canShowSmsRemindView);
        switchSms.setChecked(((Boolean)SharedPreferencesUtils.getSharedPreferences(context, "personal_remind_sms", Boolean.valueOf(false))).booleanValue());
        bandLightColorView.setVisibility(deviceProduct.canShowLightView);
        si_kept_view.setVisibility(deviceProduct.canShowKeptView);
        boolean flag = context.getResources().getBoolean(0x7f070000);
        flag = ((Boolean)SharedPreferencesUtils.getSharedPreferences(context, "personal_kept_set", Boolean.valueOf(flag))).booleanValue();
        switchKept.setChecked(flag);
        siTakePhoto.setVisibility(deviceProduct.canShowTakePhotoView);
        siSetFamilyNumber.setVisibility(deviceProduct.canShowFamilyNumber);
        siSetFamilyNumber.setLeftText(getString(0x7f0c01b1));
    }

    private void showSelectBandLightDialog()
    {
        Object obj = getLayoutInflater().inflate(0x7f03005f, null);
        View view = ((View) (obj)).findViewById(0x7f0601bb);
        View view1 = ((View) (obj)).findViewById(0x7f0601bd);
        View view2 = ((View) (obj)).findViewById(0x7f0601bf);
        View view3 = ((View) (obj)).findViewById(0x7f0601c1);
        setDialogLightViewColor(((View) (obj)));
        BandLightSelectListener bandlightselectlistener = new BandLightSelectListener();
        view.setOnClickListener(bandlightselectlistener);
        view1.setOnClickListener(bandlightselectlistener);
        view2.setOnClickListener(bandlightselectlistener);
        view3.setOnClickListener(bandlightselectlistener);
        selectBandLightColorDialog = new Dialog(this, 0x7f0b0016);
        selectBandLightColorDialog.setContentView(((View) (obj)), new android.view.ViewGroup.LayoutParams(getWindowManager().getDefaultDisplay().getWidth(), -2));
        obj = selectBandLightColorDialog.getWindow();
        ((Window) (obj)).setWindowAnimations(0x7f0b0018);
        obj = ((Window) (obj)).getAttributes();
        obj.x = 0;
        obj.y = getWindowManager().getDefaultDisplay().getHeight();
        selectBandLightColorDialog.onWindowAttributesChanged(((android.view.WindowManager.LayoutParams) (obj)));
        selectBandLightColorDialog.setCanceledOnTouchOutside(true);
        selectBandLightColorDialog.show();
    }

    public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        compoundbutton.getId();
        JVM INSTR lookupswitch 3: default 40
    //                   2131100019: 71
    //                   2131100028: 41
    //                   2131100030: 56;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L3:
        SharedPreferencesUtils.setSharedPreferences(context, "personal_remind_mobile", Boolean.valueOf(flag));
        return;
_L4:
        SharedPreferencesUtils.setSharedPreferences(context, "personal_remind_sms", Boolean.valueOf(flag));
        return;
_L2:
        SharedPreferencesUtils.setSharedPreferences(context, "personal_kept_set", Boolean.valueOf(flag));
        MovnowTwoApplication.syncParams();
        if (!flag)
        {
            MovnowTwoApplication.stopPlayRing();
            return;
        }
        if (true) goto _L1; else goto _L5
_L5:
    }

    public void onClick(final View dialog)
    {
        dialog.getId();
        JVM INSTR tableswitch 2131100017 2131100031: default 80
    //                   2131100017 430
    //                   2131100018 80
    //                   2131100019 80
    //                   2131100020 470
    //                   2131100021 489
    //                   2131100022 81
    //                   2131100023 204
    //                   2131100024 340
    //                   2131100025 227
    //                   2131100026 80
    //                   2131100027 80
    //                   2131100028 80
    //                   2131100029 80
    //                   2131100030 80
    //                   2131100031 465;
           goto _L1 _L2 _L1 _L1 _L3 _L4 _L5 _L6 _L7 _L8 _L1 _L1 _L1 _L1 _L1 _L9
_L1:
        return;
_L5:
        if (SimpleHttpSchedualer.isNetworkAvailable(context))
        {
            if (!Keeper.getDeviceId(context).equals(""))
            {
                if (deviceProduct.canShowPowerView == 0 && batteryPowery < 30)
                {
                    ToastUtil.showShortToast(context, context.getString(0x7f0c019d));
                    return;
                } else
                {
                    dialog = new Intent();
                    dialog.setClass(this, com/veclink/movnow_q2/activity/FirmwareUpdateActivity);
                    startActivity(dialog);
                    return;
                }
            } else
            {
                Toast.makeText(context, getString(0x7f0c00cc), 0).show();
                return;
            }
        } else
        {
            ToastUtil.showTextToast(context, context.getString(0x7f0c0176));
            return;
        }
_L6:
        dialog = new Intent();
        dialog.setClass(this, com/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime);
        startActivity(dialog);
        return;
_L8:
        if (!Keeper.getDeviceId(context).equals(""))
        {
            dialog = new BaseRemindDialog(context);
            dialog.setTitle(context.getString(0x7f0c00e6));
            dialog.setContent(context.getString(0x7f0c00cd));
            dialog.setOkListener(new android.view.View.OnClickListener() {

                final SettingsActivityMyDevice this$0;
                final BaseRemindDialog val$dialog;

                public void onClick(View view)
                {
                    dialog.dismiss();
                    VLBleServiceManager.getInstance().unBindService(getApplication());
                    HealthyAccountHolder.unBindDevice(context);
                    siUnbingDevices.setRightText("");
                    siFirmwareUpdate.setRightText("");
                    MovnowTwoApplication.deviceProduct = DeviceProductFactory.createDeviceProduct("");
                    showDeviceFuntionView();
                    view = (MovnowTwoApplication)getApplication();
                    view.setHasSyncSleepData(false);
                    view.setHasSyncStepData(false);
                    MovnowTwoApplication.stopPlayRing();
                    MovnowTwoApplication.cancelAllRemind();
                    siUnbingDevices.setLeftText(getString(0x7f0c00cb));
                    StorageUtil.delteAllRemindObject(context);
                    MainActivity.mainActivity.finish();
                }

            
            {
                this$0 = SettingsActivityMyDevice.this;
                dialog = basereminddialog;
                super();
            }
            });
            dialog.show();
            return;
        } else
        {
            dialog = new Intent();
            dialog.setClass(context, com/veclink/movnow_q2/activity/BindbandActivity);
            dialog.putExtra("fromMyDevice", true);
            startActivity(dialog);
            finish();
            return;
        }
_L7:
        if (TextUtils.isEmpty(Keeper.getDeviceId(context)))
        {
            Toast.makeText(context, getString(0x7f0c00cc), 0).show();
            return;
        } else
        {
            dialog = new BaseRemindDialog(context);
            dialog.setTitle(context.getString(0x7f0c00e6));
            dialog.setContent(context.getString(0x7f0c00d1));
            dialog.setOkListener(new android.view.View.OnClickListener() {

                final SettingsActivityMyDevice this$0;
                final BaseRemindDialog val$resetdialog;

                public void onClick(View view)
                {
                    resetdialog.dismiss();
                    EventBus.getDefault().unregister(SettingsActivityMyDevice.this, new Class[] {
                        com/veclink/healthy/business/http/pojo/DeleteBraceleteDataReponse
                    });
                    EventBus.getDefault().register(SettingsActivityMyDevice.this, com/veclink/healthy/business/http/pojo/DeleteBraceleteDataReponse, new Class[0]);
                    view = new HealthyDeleteDataSession(SettingsActivityMyDevice.this);
                    SimpleHttpSchedualer.ansycSchedual(SettingsActivityMyDevice.this, view);
                }

            
            {
                this$0 = SettingsActivityMyDevice.this;
                resetdialog = basereminddialog;
                super();
            }
            });
            dialog.show();
            return;
        }
_L2:
        if (!ButtonUtil.isFindBtnFastClick())
        {
            (new BleAppFindDevices(context, new BleCallBack(new Handler()))).work();
            return;
        }
          goto _L1
_L9:
        showSelectBandLightDialog();
        return;
_L3:
        startActivity(new Intent(context, com/veclink/movnow_q2/activity/PhotographicActivity));
        return;
_L4:
        startActivity(new Intent(context, com/veclink/movnow_q2/activity/SetFamilyActivity));
        return;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030051);
        context = this;
        initView();
        registerReceiver(powerChangeReceiver, intentFilter);
    }

    protected void onDestroy()
    {
        super.onDestroy();
        unregisterReceiver(powerChangeReceiver);
    }

    public void onEvent(DeleteBraceleteDataReponse deletebraceletedatareponse)
    {
        EventBus.getDefault().unregister(this, new Class[] {
            com/veclink/healthy/business/http/pojo/DeleteBraceleteDataReponse
        });
        Log.v("DeleteBraceleteDataReponse", deletebraceletedatareponse.toString());
        if (deletebraceletedatareponse.getError().equals("0"))
        {
            HealthyDBOperate.delAllSportAndSleepData(this);
        }
    }

    protected void onResume()
    {
        super.onResume();
        tvCallRemindBySecond.setText(getString(0x7f0c00d3, new Object[] {
            Integer.valueOf(HealthyAccountHolder.getCallRemindTime(context))
        }));
        if (!Keeper.getDeviceId(context).equals(""))
        {
            siUnbingDevices.setLeftText(getString(0x7f0c00ca));
        } else
        {
            siUnbingDevices.setLeftText(getString(0x7f0c00cb));
        }
        siUnbingDevices.setRightText(Keeper.getDeviceId(context));
        siFirmwareUpdate.setRightText(Keeper.getDeviceRomVersion(context));
        showDeviceFuntionView();
    }



/*
    static int access$002(SettingsActivityMyDevice settingsactivitymydevice, int i)
    {
        settingsactivitymydevice.textId = i;
        return i;
    }

*/








/*
    static int access$202(SettingsActivityMyDevice settingsactivitymydevice, int i)
    {
        settingsactivitymydevice.imgId = i;
        return i;
    }

*/




/*
    static int access$402(SettingsActivityMyDevice settingsactivitymydevice, int i)
    {
        settingsactivitymydevice.batteryPowery = i;
        return i;
    }

*/





}
