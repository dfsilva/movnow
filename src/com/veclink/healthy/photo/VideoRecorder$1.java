// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.photo;

import android.hardware.Camera;
import android.media.CamcorderProfile;
import android.media.MediaRecorder;
import android.util.Log;
import android.view.SurfaceHolder;
import java.io.IOException;

// Referenced classes of package com.veclink.healthy.photo:
//            VideoRecorder, CameraUtil

class val.videoRotation extends Thread
{

    final VideoRecorder this$0;
    final int val$videoRotation;

    public void run()
    {
        VideoRecorder.access$002(VideoRecorder.this, new MediaRecorder());
        if (VideoRecorder.access$100() == null)
        {
            Log.i("VideoRecorder", "mCamera is null!");
            return;
        }
        VideoRecorder.access$100().unlock();
        VideoRecorder.access$000(VideoRecorder.this).setCamera(VideoRecorder.access$100());
        VideoRecorder.access$000(VideoRecorder.this).setAudioSource(5);
        VideoRecorder.access$000(VideoRecorder.this).setVideoSource(1);
        if (true)
        {
            int i = CameraUtil.getCameraQuality(VideoRecorder.access$200(VideoRecorder.this));
            Log.i("VideoRecorder", (new StringBuilder()).append("quality: ").append(i).toString());
            VideoRecorder.access$000(VideoRecorder.this).setProfile(CamcorderProfile.get(i));
        } else
        {
            VideoRecorder.access$000(VideoRecorder.this).setOutputFormat(2);
            VideoRecorder.access$000(VideoRecorder.this).setAudioEncoder(3);
            VideoRecorder.access$000(VideoRecorder.this).setVideoEncoder(2);
            VideoRecorder.access$000(VideoRecorder.this).setVideoSize(176, 144);
            VideoRecorder.access$000(VideoRecorder.this).setVideoFrameRate(15);
        }
        VideoRecorder.access$000(VideoRecorder.this).setOrientationHint(val$videoRotation);
        Log.i("VideoRecorder", (new StringBuilder()).append("videoRotation: ").append(val$videoRotation).toString());
        VideoRecorder.access$000(VideoRecorder.this).setPreviewDisplay(VideoRecorder.access$300(VideoRecorder.this).getSurface());
        VideoRecorder.access$000(VideoRecorder.this).setOutputFile(VideoRecorder.access$400(VideoRecorder.this));
        try
        {
            VideoRecorder.access$000(VideoRecorder.this).prepare();
            VideoRecorder.access$000(VideoRecorder.this).start();
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

    ()
    {
        this$0 = final_videorecorder;
        val$videoRotation = I.this;
        super();
    }
}
