// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.photo;

import android.media.ToneGenerator;

// Referenced classes of package com.veclink.healthy.photo:
//            RecordService

class this._cls0
    implements android.hardware.llback
{

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

    ()
    {
        this$0 = RecordService.this;
        super();
    }
}
