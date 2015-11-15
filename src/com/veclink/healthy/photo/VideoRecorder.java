// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.photo;

import android.hardware.Camera;
import android.media.CamcorderProfile;
import android.media.MediaRecorder;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.SurfaceHolder;
import java.io.IOException;
import java.util.Timer;
import java.util.TimerTask;

// Referenced classes of package com.veclink.healthy.photo:
//            CameraUtil

public class VideoRecorder
{
    class TimerThread extends TimerTask
    {

        final VideoRecorder this$0;

        public void run()
        {
            Log.i("VideoRecorder", "TimerThread, run()");
            try
            {
                stopRecording();
                return;
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        }

        TimerThread()
        {
            this$0 = VideoRecorder.this;
            super();
        }
    }


    private static final int DEFAULT_SAMPLING_RATE = 22050;
    private static final String TAG = "VideoRecorder";
    private static Camera mCamera;
    private int channelConfig;
    private boolean enableStop;
    private boolean isRecording;
    private int mCamIdx;
    private Handler mRecordHandler;
    private Timer mTimer;
    TimerTask mTimerTask;
    private MediaRecorder mediarecorder;
    private int recordTime;
    private int samplingRate;
    private SurfaceHolder surfaceHolder;
    private String videoFilePath;

    public VideoRecorder()
    {
        this(22050, 16);
    }

    public VideoRecorder(int i, int j)
    {
        isRecording = false;
        mCamIdx = -1;
        enableStop = false;
        recordTime = 0;
        mRecordHandler = null;
        mTimer = null;
        mTimerTask = null;
        samplingRate = i;
        channelConfig = j;
    }

    public static Camera getCamera()
    {
        return mCamera;
    }

    public void setRecordHandler(Handler handler)
    {
        Log.d("VideoRecorder", "setRecordHandler()");
        mRecordHandler = handler;
    }

    public void startRecording(Camera camera, int i, SurfaceHolder surfaceholder, final int videoRotation, String s, int j)
        throws IOException
    {
        Log.d("VideoRecorder", "Start recording");
        if (!isRecording)
        {
            isRecording = true;
            videoFilePath = s;
            surfaceHolder = surfaceholder;
            mCamera = camera;
            mCamIdx = i;
            recordTime = j;
            (new Thread() {

                final VideoRecorder this$0;
                final int val$videoRotation;

                public void run()
                {
                    mediarecorder = new MediaRecorder();
                    if (VideoRecorder.mCamera == null)
                    {
                        Log.i("VideoRecorder", "mCamera is null!");
                        return;
                    }
                    VideoRecorder.mCamera.unlock();
                    mediarecorder.setCamera(VideoRecorder.mCamera);
                    mediarecorder.setAudioSource(5);
                    mediarecorder.setVideoSource(1);
                    if (true)
                    {
                        int k = CameraUtil.getCameraQuality(mCamIdx);
                        Log.i("VideoRecorder", (new StringBuilder()).append("quality: ").append(k).toString());
                        mediarecorder.setProfile(CamcorderProfile.get(k));
                    } else
                    {
                        mediarecorder.setOutputFormat(2);
                        mediarecorder.setAudioEncoder(3);
                        mediarecorder.setVideoEncoder(2);
                        mediarecorder.setVideoSize(176, 144);
                        mediarecorder.setVideoFrameRate(15);
                    }
                    mediarecorder.setOrientationHint(videoRotation);
                    Log.i("VideoRecorder", (new StringBuilder()).append("videoRotation: ").append(videoRotation).toString());
                    mediarecorder.setPreviewDisplay(surfaceHolder.getSurface());
                    mediarecorder.setOutputFile(videoFilePath);
                    try
                    {
                        mediarecorder.prepare();
                        mediarecorder.start();
                        Log.d("VideoRecorder", "mediarecorder.start()");
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

            
            {
                this$0 = VideoRecorder.this;
                videoRotation = i;
                super();
            }
            }).start();
            enableStop = false;
            (new Handler()).postDelayed(new Runnable() {

                final VideoRecorder this$0;

                public void run()
                {
                    enableStop = true;
                }

            
            {
                this$0 = VideoRecorder.this;
                super();
            }
            }, 2000L);
            if (recordTime > 0)
            {
                mTimer = new Timer();
                mTimerTask = new TimerThread();
                mTimer.schedule(new TimerThread(), recordTime);
            }
        }
    }

    public boolean stopRecording()
        throws IOException
    {
        if (!enableStop)
        {
            Log.d("VideoRecorder", "Wait for a moment before stop recording!");
            return false;
        }
        Log.d("VideoRecorder", "stop recording");
        if (isRecording)
        {
            if (mediarecorder != null)
            {
                mediarecorder.stop();
                mediarecorder.release();
                mediarecorder = null;
            }
            isRecording = false;
            if (mTimer != null)
            {
                mTimer.cancel();
                mTimer.purge();
                mTimer = null;
            }
            if (mTimerTask != null)
            {
                mTimerTask.cancel();
                mTimerTask = null;
            }
            if (mRecordHandler != null)
            {
                Message.obtain(mRecordHandler, 3).sendToTarget();
            }
        }
        return true;
    }



/*
    static MediaRecorder access$002(VideoRecorder videorecorder, MediaRecorder mediarecorder1)
    {
        videorecorder.mediarecorder = mediarecorder1;
        return mediarecorder1;
    }

*/






/*
    static boolean access$502(VideoRecorder videorecorder, boolean flag)
    {
        videorecorder.enableStop = flag;
        return flag;
    }

*/
}
