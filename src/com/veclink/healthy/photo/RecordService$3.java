// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.photo;

import android.hardware.Camera;

// Referenced classes of package com.veclink.healthy.photo:
//            RecordService, PictureHandler

class val.cam extends Thread
{

    final RecordService this$0;
    final Camera val$cam;

    public void run()
    {
        if (val$cam != null)
        {
            RecordService.access$100(RecordService.this).setImageRotation(RecordService.access$000(RecordService.this));
            val$cam.takePicture(RecordService.access$200(RecordService.this), null, RecordService.access$100(RecordService.this));
        }
    }

    ()
    {
        this$0 = final_recordservice;
        val$cam = Camera.this;
        super();
    }
}
