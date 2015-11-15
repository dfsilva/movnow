// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.hardware.Camera;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;
import com.veclink.bracelet.bletask.BleCallBack;
import com.veclink.bracelet.bletask.BleLockOrUnLockKeyTask;
import com.veclink.healthy.photo.CameraUtil;
import com.veclink.healthy.photo.Const;
import com.veclink.healthy.photo.RecordService;
import com.veclink.healthy.photo.mySharedPreferences;
import java.io.File;
import java.io.IOException;
import java.io.PrintStream;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;

public class PhotographicActivity extends Activity
    implements android.view.SurfaceHolder.Callback, android.view.View.OnClickListener, android.view.View.OnTouchListener
{

    public static final String CAMERA_CTR_ACTION = "net.bestouch.caretracker.cameraCtrActivity.action.CAMERA_CTR_ACTION";
    public static final int CAM_MODE_CAPTURE = 1;
    public static final int CAM_MODE_RECORD = 2;
    public static final int MESSAGE_CLOSE = 1;
    public static final int MESSAGE_OPEN = 0;
    public static final int MESSAGE_SVAE_FAILURE = 1;
    public static final int MESSAGE_SVAE_SUCCESS = 0;
    public static final int MESSAGE_TIMEI_UPDATE = 2;
    public static final int MESSAGE_VIDEO_COLSE = 4;
    public static final int MESSAGE_VIDEO_OPEN = 3;
    public static final int REQUEST_ENABLE_BT = 2;
    public static final String TAG = "MainActivity";
    public static BluetoothDevice device = null;
    public static boolean isp = false;
    private static RecordService mRecordService = null;
    public static BluetoothDevice myDevice = null;
    private final int FLASH_MODE_AUTO = 0;
    private final int FLASH_MODE_OFF = 2;
    private final int FLASH_MODE_ON = 1;
    Handler MyHandler;
    private View Myview;
    private LinearLayout SettingShootlayout;
    private Button ShootFiveButton;
    private Button ShootIntervalThreeButton;
    private Button ShootIntervalTwoButton;
    private Button ShootIntervalfourButton;
    private Button ShootTenButton;
    private Button ShootThreeButton;
    private final BroadcastReceiver camera_receiver = new BroadcastReceiver() {

        final PhotographicActivity this$0;

        public void onReceive(Context context, Intent intent)
        {
            if ("net.bestouch.caretracker.cameraCtrActivity.action.CAMERA_CTR_ACTION".equals(intent.getAction()))
            {
                if (isAllow)
                {
                    isAllow = false;
                    if (mCamMode == 1)
                    {
                        mHandler.postDelayed(runnable, mySp.getShootInterval());
                    } else
                    if (!mVideoRecord)
                    {
                        if (surfaceHolder != null)
                        {
                            mVideoRecord = true;
                            PhotographicActivity.mRecordService.setSurfaceHolder(surfaceHolder);
                            PhotographicActivity.mRecordService.startVideoRecord(mCamera, Integer.parseInt(mCamIdx.toString()), 0);
                            context = new Message();
                            context.what = 3;
                            MyHandler.sendMessage(context);
                        } else
                        {
                            Log.e("MainActivity", "surfaceHolder is null !");
                        }
                    } else
                    {
                        context = new Message();
                        context.what = 4;
                        MyHandler.sendMessage(context);
                    }
                }
                (new Thread() {

                    final _cls6 this$1;

                    public void run()
                    {
                        try
                        {
                            Thread.sleep(2000L);
                            Message message = new Message();
                            message.what = 1;
                            MyHandler.sendMessage(message);
                        }
                        catch (InterruptedException interruptedexception)
                        {
                            interruptedexception.printStackTrace();
                        }
                        isAllow = true;
                    }

            
            {
                this$1 = _cls6.this;
                super();
            }
                }).start();
            }
        }

            
            {
                this$0 = PhotographicActivity.this;
                super();
            }
    };
    private int count;
    private int firClick;
    private int hour;
    private int index;
    private boolean isAllow;
    private boolean isServiceBound;
    private boolean isshoot;
    BleLockOrUnLockKeyTask lockOrUnLockKeyTask;
    BleCallBack lockUnLockCallBack;
    Handler lockUnLockHandler;
    private BluetoothAdapter mBtAdapter;
    private ImageView mBtnCamSwitch;
    private StringBuffer mCamIdx;
    private int mCamMode;
    private Camera mCamera;
    private Context mContext;
    private boolean mFacingFront;
    private int mFlashMode;
    Handler mHandler;
    private File mImagePath;
    private LinearLayout mLlWhiteBorder;
    private android.hardware.Camera.Parameters mParameters;
    private int mPreSensorRotation;
    private int mSensorRotation;
    private SurfaceView mSurfaceView;
    private File mVideoPath;
    private boolean mVideoRecord;
    private int minute;
    private Handler myHandler;
    private mySharedPreferences mySp;
    private int newDegree;
    private int oldDegree;
    private ServiceConnection onRecordService;
    private ServiceConnection onService;
    private ImageView photoView;
    Runnable runnable;
    private int secClick;
    private int second;
    private ImageView settingImageView;
    private SurfaceHolder surfaceHolder;
    Timer timer;
    private SharedPreferences user;

    public PhotographicActivity()
    {
        mFlashMode = 0;
        user = null;
        mBtAdapter = null;
        onService = null;
        onRecordService = null;
        mVideoRecord = false;
        mFacingFront = true;
        mCamMode = 1;
        mPreSensorRotation = -1;
        mSensorRotation = 90;
        oldDegree = 0;
        newDegree = 0;
        isServiceBound = false;
        hour = 0;
        minute = 0;
        second = 0;
        index = 0;
        isAllow = true;
        isshoot = false;
        count = 0;
        firClick = 0;
        secClick = 0;
        timer = new Timer();
        mHandler = new Handler() {

            final PhotographicActivity this$0;

            public void handleMessage(Message message)
            {
                switch (message.what)
                {
                default:
                    return;

                case 0: // '\0'
                    mLlWhiteBorder.setPadding(0, 0, 0, 0);
                    return;

                case 1: // '\001'
                    mLlWhiteBorder.setPadding(0, 0, 0, 0);
                    break;
                }
            }

            
            {
                this$0 = PhotographicActivity.this;
                super();
            }
        };
        MyHandler = new Handler() {

            final PhotographicActivity this$0;

            public void handleMessage(Message message)
            {
                message.what;
                JVM INSTR tableswitch 0 3: default 36
            //                           0 42
            //                           1 59
            //                           2 36
            //                           3 36;
                   goto _L1 _L2 _L3 _L1 _L1
_L1:
                super.handleMessage(message);
                return;
_L2:
                mLlWhiteBorder.setPadding(5, 5, 5, 5);
                continue; /* Loop/switch isn't completed */
_L3:
                mLlWhiteBorder.setPadding(0, 0, 0, 0);
                if (true) goto _L1; else goto _L4
_L4:
            }

            
            {
                this$0 = PhotographicActivity.this;
                super();
            }
        };
        runnable = new Runnable() ;
        lockUnLockHandler = new Handler() {

            final PhotographicActivity this$0;

            public void handleMessage(Message message)
            {
                switch (message.what)
                {
                case 1001: 
                default:
                    return;
                }
            }

            
            {
                this$0 = PhotographicActivity.this;
                super();
            }
        };
        lockUnLockCallBack = new BleCallBack(lockUnLockHandler);
    }

    private void RefreshSetting()
    {
        mySp.setShootNumber(1);
        mySp.setShootInterval(0);
        mySp.getShootNumber();
        JVM INSTR lookupswitch 3: default 56
    //                   3: 89
    //                   5: 101
    //                   10: 113;
           goto _L1 _L2 _L3 _L4
_L1:
        break; /* Loop/switch isn't completed */
_L4:
        break MISSING_BLOCK_LABEL_113;
_L5:
        switch (mySp.getShootInterval())
        {
        default:
            return;

        case 2: // '\002'
            ShootIntervalTwoButton.setBackgroundResource(0x7f020142);
            return;

        case 3: // '\003'
            ShootIntervalThreeButton.setBackgroundResource(0x7f020142);
            return;

        case 4: // '\004'
            ShootIntervalfourButton.setBackgroundResource(0x7f020142);
            break;
        }
        break MISSING_BLOCK_LABEL_154;
_L2:
        ShootThreeButton.setBackgroundResource(0x7f020142);
          goto _L5
_L3:
        ShootFiveButton.setBackgroundResource(0x7f020142);
          goto _L5
        ShootTenButton.setBackgroundResource(0x7f020142);
          goto _L5
    }

    private void doLockOrUnLockKeyTask(boolean flag)
    {
        lockOrUnLockKeyTask = new BleLockOrUnLockKeyTask(mContext, lockUnLockCallBack, flag, 30);
        lockOrUnLockKeyTask.work();
    }

    private android.hardware.Camera.Size getOptimalPreviewSize(List list, int i, int j)
    {
        double d1 = (double)j / (double)i;
        if (list != null) goto _L2; else goto _L1
_L1:
        android.hardware.Camera.Size size = null;
_L4:
        return size;
_L2:
        Object obj = null;
        double d = 1.7976931348623157E+308D;
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            size = (android.hardware.Camera.Size)iterator.next();
            if (Math.abs((double)size.width / (double)size.height - d1) <= 0.10000000000000001D && (double)Math.abs(size.height - j) < d)
            {
                obj = size;
                d = Math.abs(size.height - j);
            }
        } while (true);
        size = ((android.hardware.Camera.Size) (obj));
        if (obj != null)
        {
            continue;
        }
        d = 1.7976931348623157E+308D;
        iterator = list.iterator();
        do
        {
            size = ((android.hardware.Camera.Size) (obj));
            if (!iterator.hasNext())
            {
                continue;
            }
            list = (android.hardware.Camera.Size)iterator.next();
            if ((double)Math.abs(((android.hardware.Camera.Size) (list)).height - j) < d)
            {
                obj = list;
                d = Math.abs(((android.hardware.Camera.Size) (list)).height - j);
            }
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void initRecordService()
    {
        onRecordService = new ServiceConnection() {

            final PhotographicActivity this$0;

            public void onServiceConnected(ComponentName componentname, IBinder ibinder)
            {
                Log.d("MainActivity", "onServiceConnected");
                PhotographicActivity.mRecordService = ((com.veclink.healthy.photo.RecordService.LocalBinder)ibinder).getService();
                cameraPreview(mFacingFront);
            }

            public void onServiceDisconnected(ComponentName componentname)
            {
                PhotographicActivity.mRecordService = null;
            }

            
            {
                this$0 = PhotographicActivity.this;
                super();
            }
        };
        Log.d("MainActivity", "start Record Service");
        startService(new Intent(this, com/veclink/healthy/photo/RecordService));
        Intent intent = new Intent(this, com/veclink/healthy/photo/RecordService);
        Log.d("MainActivity", "bind Record Service");
        bindService(intent, onRecordService, 1);
    }

    private void initSurfaceView()
    {
        if (mSurfaceView != null)
        {
            mSurfaceView.getHolder().removeCallback(this);
            mSurfaceView = null;
        }
        mSurfaceView = (SurfaceView)findViewById(0x7f06014e);
        SurfaceHolder surfaceholder = mSurfaceView.getHolder();
        surfaceholder.addCallback(this);
        surfaceholder.setType(3);
    }

    private void initView()
    {
        mBtnCamSwitch = (ImageView)findViewById(0x7f060152);
        mBtnCamSwitch.setOnTouchListener(this);
        photoView = (ImageView)findViewById(0x7f060150);
        photoView.setOnTouchListener(this);
        settingImageView = (ImageView)findViewById(0x7f060151);
        settingImageView.setOnTouchListener(this);
        mLlWhiteBorder = (LinearLayout)findViewById(0x7f06014d);
        ShootThreeButton = (Button)findViewById(0x7f060155);
        ShootThreeButton.setOnTouchListener(this);
        ShootFiveButton = (Button)findViewById(0x7f060156);
        ShootFiveButton.setOnTouchListener(this);
        ShootTenButton = (Button)findViewById(0x7f060157);
        ShootTenButton.setOnTouchListener(this);
        ShootIntervalTwoButton = (Button)findViewById(0x7f060159);
        ShootIntervalTwoButton.setOnTouchListener(this);
        ShootIntervalThreeButton = (Button)findViewById(0x7f06015a);
        ShootIntervalThreeButton.setOnTouchListener(this);
        ShootIntervalfourButton = (Button)findViewById(0x7f06015b);
        ShootIntervalfourButton.setOnTouchListener(this);
        SettingShootlayout = (LinearLayout)findViewById(0x7f060153);
        getWindow().addFlags(128);
    }

    public void MyOnclick(View view)
    {
        switch (view.getId())
        {
        default:
            return;

        case 2131099989: 
            ShootThreeButton.setBackgroundResource(0x7f020142);
            ShootFiveButton.setBackgroundResource(0x7f02003a);
            ShootTenButton.setBackgroundResource(0x7f02003a);
            mySp.setShootNumber(3);
            return;

        case 2131099990: 
            ShootFiveButton.setBackgroundResource(0x7f020142);
            ShootThreeButton.setBackgroundResource(0x7f02003a);
            ShootTenButton.setBackgroundResource(0x7f02003a);
            mySp.setShootNumber(5);
            return;

        case 2131099991: 
            ShootTenButton.setBackgroundResource(0x7f020142);
            ShootFiveButton.setBackgroundResource(0x7f02003a);
            ShootThreeButton.setBackgroundResource(0x7f02003a);
            mySp.setShootNumber(10);
            return;

        case 2131099993: 
            ShootIntervalTwoButton.setBackgroundResource(0x7f020142);
            ShootIntervalThreeButton.setBackgroundResource(0x7f02003a);
            ShootIntervalfourButton.setBackgroundResource(0x7f02003a);
            mySp.setShootInterval(2);
            return;

        case 2131099994: 
            ShootIntervalThreeButton.setBackgroundResource(0x7f020142);
            ShootIntervalTwoButton.setBackgroundResource(0x7f02003a);
            ShootIntervalfourButton.setBackgroundResource(0x7f02003a);
            mySp.setShootInterval(3);
            return;

        case 2131099995: 
            ShootIntervalfourButton.setBackgroundResource(0x7f020142);
            ShootIntervalThreeButton.setBackgroundResource(0x7f02003a);
            ShootIntervalTwoButton.setBackgroundResource(0x7f02003a);
            mySp.setShootInterval(4);
            return;

        case 2131099803: 
            finish();
            return;
        }
    }

    public boolean MyonLongClick(View view)
    {
        switch (view.getId())
        {
        case 2131099992: 
        default:
            return true;

        case 2131099989: 
            ShootThreeButton.setBackgroundResource(0x7f02003a);
            ShootFiveButton.setBackgroundResource(0x7f02003a);
            ShootTenButton.setBackgroundResource(0x7f02003a);
            mySp.setShootNumber(1);
            return true;

        case 2131099990: 
            ShootThreeButton.setBackgroundResource(0x7f02003a);
            ShootFiveButton.setBackgroundResource(0x7f02003a);
            ShootTenButton.setBackgroundResource(0x7f02003a);
            mySp.setShootNumber(1);
            return true;

        case 2131099991: 
            ShootThreeButton.setBackgroundResource(0x7f02003a);
            ShootFiveButton.setBackgroundResource(0x7f02003a);
            ShootTenButton.setBackgroundResource(0x7f02003a);
            mySp.setShootNumber(1);
            return true;

        case 2131099993: 
            ShootIntervalTwoButton.setBackgroundResource(0x7f02003a);
            ShootIntervalThreeButton.setBackgroundResource(0x7f02003a);
            ShootIntervalfourButton.setBackgroundResource(0x7f02003a);
            mySp.setShootInterval(0);
            return true;

        case 2131099994: 
            ShootIntervalTwoButton.setBackgroundResource(0x7f02003a);
            ShootIntervalThreeButton.setBackgroundResource(0x7f02003a);
            ShootIntervalfourButton.setBackgroundResource(0x7f02003a);
            mySp.setShootInterval(0);
            return true;

        case 2131099995: 
            ShootIntervalTwoButton.setBackgroundResource(0x7f02003a);
            break;
        }
        ShootIntervalThreeButton.setBackgroundResource(0x7f02003a);
        ShootIntervalfourButton.setBackgroundResource(0x7f02003a);
        mySp.setShootInterval(0);
        return true;
    }

    void cameraPreview(boolean flag)
    {
        if (mCamera != null)
        {
            mCamera.stopPreview();
            mCamera.release();
            mCamera = null;
        }
        mCamIdx = new StringBuffer();
        mCamera = CameraUtil.getCameraInstance(flag, mCamIdx);
        mParameters = mCamera.getParameters();
        if (mCamera != null)
        {
            android.hardware.Camera.Parameters parameters = mCamera.getParameters();
            android.hardware.Camera.Size size = getOptimalPreviewSize(parameters.getSupportedPreviewSizes(), getResources().getDisplayMetrics().widthPixels, getResources().getDisplayMetrics().heightPixels);
            parameters.setPreviewSize(size.width, size.height);
            mCamera.setParameters(parameters);
        }
        if (mCamera != null)
        {
            if (getResources().getConfiguration().orientation == 1)
            {
                mSensorRotation = 90;
            } else
            if (getResources().getConfiguration().orientation == 2)
            {
                mSensorRotation = 180;
            }
            CameraUtil.setPreviewRotation(mCamera, mSensorRotation);
            try
            {
                mCamera.setPreviewDisplay(surfaceHolder);
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
                Log.i("MainActivity", "Can not get camera instance !");
            }
            mCamera.startPreview();
            initSurfaceView();
        }
        if (mFacingFront)
        {
            mRecordService.setPlaybackRotation(270);
            return;
        } else
        {
            mRecordService.setPlaybackRotation(90);
            return;
        }
    }

    public void getStorageDir(Boolean boolean1)
    {
        File file;
        if (!Environment.getExternalStorageState().equals("mounted"))
        {
            Log.i("MainActivity", "SD Card is not inserted! Use /mnt/emmc !");
            file = new File("/mnt/emmc");
        } else
        {
            file = Environment.getExternalStorageDirectory();
        }
        Log.i("MainActivity", (new StringBuilder()).append("rootDir: ").append(file).toString());
        if (!file.exists())
        {
            Log.i("MainActivity", "Storage Directory does not exist!");
            return;
        }
        File file1 = new File(file, "/CleverCam/Pictures");
        if (!file1.exists() && boolean1.booleanValue())
        {
            file1.mkdirs();
        }
        mImagePath = file1;
        Const.ImagePath = mImagePath.getAbsolutePath();
        Log.i("MainActivity", (new StringBuilder()).append("ImagePath: ").append(Const.ImagePath).toString());
        file = new File(file, "/CleverCam/Video");
        if (!file.exists() && boolean1.booleanValue())
        {
            file.mkdirs();
        }
        mVideoPath = file;
        Const.VideoPath = mVideoPath.getAbsolutePath();
        Log.i("MainActivity", (new StringBuilder()).append("VideoPath: ").append(Const.VideoPath).toString());
    }

    public void onClick(View view)
    {
        switch (view.getId())
        {
        default:
            return;

        case 2131099986: 
            break;
        }
        if (mFacingFront)
        {
            mFacingFront = false;
        } else
        {
            mFacingFront = true;
        }
        cameraPreview(mFacingFront);
    }

    protected void onCreate(Bundle bundle)
    {
        onCreate(bundle);
        setContentView(0x7f03004b);
        mBtAdapter = BluetoothAdapter.getDefaultAdapter();
        mContext = this;
        doLockOrUnLockKeyTask(true);
        user = getSharedPreferences("user_info", 0);
        mySp = new mySharedPreferences(mContext);
        if (mBtAdapter == null)
        {
            Toast.makeText(this, "Bluetooth is not available", 1).show();
            finish();
            return;
        } else
        {
            myHandler = new Handler();
            initView();
            RefreshSetting();
            getStorageDir(Boolean.valueOf(true));
            bundle = new IntentFilter();
            bundle.addAction("net.bestouch.caretracker.cameraCtrActivity.action.CAMERA_CTR_ACTION");
            registerReceiver(camera_receiver, bundle);
            return;
        }
    }

    protected void onPause()
    {
        onPause();
        doLockOrUnLockKeyTask(false);
        if (mCamera != null)
        {
            mCamera.stopPreview();
            mCamera.release();
            mCamera = null;
        }
        if (mRecordService != null)
        {
            unbindService(onRecordService);
            stopService(new Intent(this, com/veclink/healthy/photo/RecordService));
        }
        unregisterReceiver(camera_receiver);
        finish();
    }

    protected void onResume()
    {
        onResume();
        if (!mBtAdapter.isEnabled())
        {
            Log.i("MainActivity", "onResume - BT not enabled yet");
            startActivityForResult(new Intent("android.bluetooth.adapter.action.REQUEST_ENABLE"), 2);
        }
        initRecordService();
        initSurfaceView();
        if (mRecordService != null)
        {
            cameraPreview(mFacingFront);
        }
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        view.getId();
        JVM INSTR tableswitch 2131099984 2131099986: default 32
    //                   2131099984 77
    //                   2131099985 162
    //                   2131099986 236;
           goto _L1 _L2 _L3 _L4
_L1:
        if (motionevent.getAction() == 0)
        {
            count = count + 1;
            if (count == 1)
            {
                firClick = (int)System.currentTimeMillis();
                MyOnclick(view);
                Myview = view;
            } else
            if (count == 2)
            {
                secClick = (int)System.currentTimeMillis();
                MyOnclick(view);
                if (secClick - firClick < 1000 && Myview == view)
                {
                    MyonLongClick(view);
                }
                count = 0;
                firClick = 0;
                secClick = 0;
                return true;
            }
        }
_L6:
        return true;
_L2:
        if (motionevent.getAction() == 1)
        {
            isAllow = false;
            photoView.setImageResource(0x7f020100);
            mRecordService.takePicture(mCamera);
            view = new Message();
            view.what = 0;
            MyHandler.sendMessage(view);
            (new Thread() {

                final PhotographicActivity this$0;

                public void run()
                {
                    try
                    {
                        Thread.sleep(2000L);
                        Message message = new Message();
                        message.what = 1;
                        MyHandler.sendMessage(message);
                    }
                    catch (InterruptedException interruptedexception)
                    {
                        interruptedexception.printStackTrace();
                    }
                    isAllow = true;
                }

            
            {
                this$0 = PhotographicActivity.this;
                super();
            }
            }).start();
        }
        if (motionevent.getAction() == 0)
        {
            photoView.setImageResource(0x7f020101);
            return true;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (motionevent.getAction() == 1)
        {
            settingImageView.setImageResource(0x7f0200a2);
            if (isshoot)
            {
                SettingShootlayout.setVisibility(8);
                isshoot = false;
            } else
            {
                SettingShootlayout.setVisibility(0);
                isshoot = true;
            }
        }
        if (motionevent.getAction() == 0)
        {
            settingImageView.setImageResource(0x7f0200a3);
            return true;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (motionevent.getAction() == 1)
        {
            mBtnCamSwitch.setImageResource(0x7f020030);
            if (mFacingFront)
            {
                mFacingFront = false;
            } else
            {
                mFacingFront = true;
            }
            cameraPreview(mFacingFront);
        }
        if (motionevent.getAction() == 0)
        {
            mBtnCamSwitch.setImageResource(0x7f020031);
            return true;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void surfaceChanged(SurfaceHolder surfaceholder, int i, int j, int k)
    {
        Log.i("MainActivity", "surfaceChanged");
        surfaceHolder = surfaceholder;
    }

    public void surfaceCreated(SurfaceHolder surfaceholder)
    {
        Log.i("MainActivity", "surfaceCreated");
        surfaceHolder = surfaceholder;
    }

    public void surfaceDestroyed(SurfaceHolder surfaceholder)
    {
        Log.i("MainActivity", "surfaceDestroyed");
        surfaceHolder = null;
    }






/*
    static int access$102(PhotographicActivity photographicactivity, int i)
    {
        photographicactivity.index = i;
        return i;
    }

*/


/*
    static int access$108(PhotographicActivity photographicactivity)
    {
        int i = photographicactivity.index;
        photographicactivity.index = i + 1;
        return i;
    }

*/





/*
    static RecordService access$402(RecordService recordservice)
    {
        mRecordService = recordservice;
        return recordservice;
    }

*/



/*
    static boolean access$502(PhotographicActivity photographicactivity, boolean flag)
    {
        photographicactivity.isAllow = flag;
        return flag;
    }

*/





/*
    static boolean access$802(PhotographicActivity photographicactivity, boolean flag)
    {
        photographicactivity.mVideoRecord = flag;
        return flag;
    }

*/

}
