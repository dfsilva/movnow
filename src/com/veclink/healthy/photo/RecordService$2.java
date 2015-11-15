// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.photo;

import android.hardware.Camera;
import android.util.Log;
import android.view.SurfaceView;
import java.io.IOException;

// Referenced classes of package com.veclink.healthy.photo:
//            RecordService, CameraUtil, PictureHandler

class val.sv extends Thread
{

    final RecordService this$0;
    final SurfaceView val$sv;

    public void run()
    {
        Camera camera = CameraUtil.getCameraInstance(true, new StringBuffer());
        if (camera != null)
        {
            try
            {
                camera.setPreviewDisplay(val$sv.getHolder());
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
                Log.i("RecordService", "Can not get camera instance !");
            }
            camera.startPreview();
            RecordService.access$100(RecordService.this).setImageRotation(RecordService.access$000(RecordService.this));
            camera.takePicture(null, null, RecordService.access$100(RecordService.this));
            camera.release();
        }
    }

    ()
    {
        this$0 = final_recordservice;
        val$sv = SurfaceView.this;
        super();
    }
}
