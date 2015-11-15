// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.photo;

import android.app.Service;
import android.content.Intent;
import android.hardware.Camera;
import android.media.ToneGenerator;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

// Referenced classes of package com.veclink.healthy.photo:
//            PictureHandler, VideoRecorder, Const, AndroidUtil, 
//            CameraUtil

public class RecordService extends Service
{
    public class LocalBinder extends Binder
    {

        final RecordService this$0;

        public RecordService getService()
        {
            return RecordService.this;
        }

        public LocalBinder()
        {
            this$0 = RecordService.this;
            super();
        }
    }


    private static final String TAG = "RecordService";
    String filePath;
    private final IBinder mBinder = new LocalBinder();
    private Handler mHandler;
    private int mPlaybackRotation;
    private PictureHandler pictureHandler;
    private int recordState;
    private android.hardware.Camera.ShutterCallback shutterCallback;
    SurfaceHolder surfaceHolder;
    private VideoRecorder videoRecorder;

    public RecordService()
    {
        recordState = 0;
        pictureHandler = null;
        videoRecorder = null;
        surfaceHolder = null;
        filePath = null;
        mPlaybackRotation = 0;
        shutterCallback = new android.hardware.Camera.ShutterCallback() {

            final RecordService this$0;

            public void onShutter()
            {
                ToneGenerator tonegenerator = null;
                if (true)
                {
                    tonegenerator = new ToneGenerator(3, 100);
                }
                tonegenerator.startTone(24);
            }

            
            {
                this$0 = RecordService.this;
                super();
            }
        };
        mHandler = new Handler() {

            final RecordService this$0;

            public void handleMessage(Message message)
            {
                switch (message.what)
                {
                case 2: // '\002'
                default:
                    return;

                case 1: // '\001'
                    recordState = 0;
                    Log.d("RecordService", "stop take picture");
                    return;

                case 3: // '\003'
                    recordState = 0;
                    break;
                }
                Log.d("RecordService", "stop recording");
            }

            
            {
                this$0 = RecordService.this;
                super();
            }
        };
    }

    public int getRecordState()
    {
        return recordState;
    }

    public IBinder onBind(Intent intent)
    {
        return mBinder;
    }

    public void onCreate()
    {
        pictureHandler = new PictureHandler(getApplicationContext());
        pictureHandler.setRecordHandler(mHandler);
        videoRecorder = new VideoRecorder();
        videoRecorder.setRecordHandler(mHandler);
    }

    public void onDestroy()
    {
    }

    public int onStartCommand(Intent intent, int i, int j)
    {
        Log.i("RecordService", (new StringBuilder()).append("Received start id ").append(j).append(": ").append(intent).toString());
        return 1;
    }

    public void setPlaybackRotation(int i)
    {
        mPlaybackRotation = i;
        Log.i("RecordService", (new StringBuilder()).append("setPlaybackRotation() ").append(mPlaybackRotation).toString());
    }

    public void setSurfaceHolder(SurfaceHolder surfaceholder)
    {
        surfaceHolder = surfaceholder;
    }

    public void silentTakePicture()
    {
        if (recordState != 0)
        {
            return;
        } else
        {
            recordState = 1;
            (new Thread() {

                final RecordService this$0;
                final SurfaceView val$sv;

                public void run()
                {
                    Camera camera = CameraUtil.getCameraInstance(true, new StringBuffer());
                    if (camera != null)
                    {
                        try
                        {
                            camera.setPreviewDisplay(sv.getHolder());
                        }
                        catch (IOException ioexception)
                        {
                            ioexception.printStackTrace();
                            Log.i("RecordService", "Can not get camera instance !");
                        }
                        camera.startPreview();
                        pictureHandler.setImageRotation(mPlaybackRotation);
                        camera.takePicture(null, null, pictureHandler);
                        camera.release();
                    }
                }

            
            {
                this$0 = RecordService.this;
                sv = surfaceview;
                super();
            }
            }).start();
            return;
        }
    }

    public void startVideoRecord(Camera camera, int i, int j)
    {
_L2:
        return;
        if (camera == null || j < 0 || recordState != 0) goto _L2; else goto _L1
_L1:
        recordState = 3;
        String s = Const.VideoPath;
        if (s == null)
        {
            try
            {
                Log.i("RecordService", "No directory to save video.");
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Camera camera)
            {
                camera.printStackTrace();
            }
            return;
        }
        String s1 = (new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss")).format(new Date());
        s1 = (new StringBuilder()).append("Clever_Cam").append(s1).append(".mp4").toString();
        filePath = (new StringBuilder()).append(s).append(File.separator).append(s1).toString();
        Log.i("RecordService", (new StringBuilder()).append("filename: ").append(filePath).toString());
        Log.i("RecordService", (new StringBuilder()).append("mPlaybackRotation: ").append(mPlaybackRotation).toString());
        if (camera == null) goto _L2; else goto _L3
_L3:
        videoRecorder.startRecording(camera, i, surfaceHolder, mPlaybackRotation, filePath, j);
        return;
    }

    public boolean stopVideoRecord()
    {
        boolean flag = false;
        boolean flag1;
        try
        {
            flag1 = videoRecorder.stopRecording();
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return flag;
        }
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        flag = flag1;
        AndroidUtil.fileScan(getApplicationContext(), filePath);
        return flag1;
    }

    public void takePicture(final Camera cam)
    {
        while (cam == null || recordState != 0) 
        {
            return;
        }
        recordState = 1;
        (new Thread() {

            final RecordService this$0;
            final Camera val$cam;

            public void run()
            {
                if (cam != null)
                {
                    pictureHandler.setImageRotation(mPlaybackRotation);
                    cam.takePicture(shutterCallback, null, pictureHandler);
                }
            }

            
            {
                this$0 = RecordService.this;
                cam = camera;
                super();
            }
        }).start();
    }





/*
    static int access$302(RecordService recordservice, int i)
    {
        recordservice.recordState = i;
        return i;
    }

*/
}
