// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.photo;

import android.hardware.Camera;
import android.media.CamcorderProfile;
import android.media.MediaRecorder;
import android.os.Environment;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import java.io.IOException;
import java.util.Timer;
import java.util.TimerTask;

public class RecordThread extends Thread
{
    class TimerThread extends TimerTask
    {

        final RecordThread this$0;

        public void run()
        {
            Log.i(TAG, "TimerThread, run()");
            stopRecord();
            cancel();
        }

        TimerThread()
        {
            this$0 = RecordThread.this;
            super();
        }
    }


    private String TAG;
    private Camera mCamera;
    private MediaRecorder mediarecorder;
    private long recordTime;
    private SurfaceHolder surfaceHolder;
    private SurfaceView surfaceview;

    public RecordThread(long l, SurfaceView surfaceview1, SurfaceHolder surfaceholder)
    {
        TAG = "RecordThread";
        Log.i(TAG, "RecordThread");
        recordTime = l;
        surfaceview = surfaceview1;
        surfaceHolder = surfaceholder;
    }

    public Camera getCameraInstance()
    {
        Camera camera;
        Log.i(TAG, "getCameraInstance()");
        camera = null;
        Camera camera1 = Camera.open();
        camera = camera1;
_L2:
        Log.i(TAG, "getCameraInstance() ok");
        return camera;
        Exception exception;
        exception;
        Log.i("info", "\u6253\u5F00\u6444\u50CF\u5934\u9519");
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void run()
    {
        Log.i(TAG, "run()");
        startRecord();
        (new Timer()).schedule(new TimerThread(), recordTime);
    }

    public void startRecord()
    {
        Log.i(TAG, "startRecord()");
        mediarecorder = new MediaRecorder();
        mCamera = getCameraInstance();
        mCamera.unlock();
        mediarecorder.setCamera(mCamera);
        Log.i(TAG, "startRecord(), 1");
        mediarecorder.setAudioSource(5);
        mediarecorder.setVideoSource(1);
        Log.i(TAG, "startRecord(), 2");
        mediarecorder.setProfile(CamcorderProfile.get(0));
        Log.i(TAG, "startRecord(), 3");
        mediarecorder.setPreviewDisplay(surfaceHolder.getSurface());
        String s = (new StringBuilder()).append(Environment.getExternalStorageDirectory()).append("/SilentRecordService/Media/VideRecordDemo.3gp").toString();
        Log.i(TAG, (new StringBuilder()).append("startRecord(), filePath: ").append(s).toString());
        mediarecorder.setOutputFile(s);
        try
        {
            Log.i(TAG, "mediarecorder.prepare()");
            mediarecorder.prepare();
            Log.i(TAG, "mediarecorder.start()");
            mediarecorder.start();
            return;
        }
        catch (IllegalStateException illegalstateexception)
        {
            illegalstateexception.printStackTrace();
            return;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
    }

    public void stopRecord()
    {
        Log.i(TAG, "stopRecord()");
        if (mediarecorder != null)
        {
            mediarecorder.stop();
            mediarecorder.release();
            mediarecorder = null;
            if (mCamera != null)
            {
                mCamera.release();
                mCamera = null;
            }
        }
    }

}
