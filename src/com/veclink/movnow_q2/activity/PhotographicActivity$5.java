// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            PhotographicActivity

class this._cls0
    implements ServiceConnection
{

    final PhotographicActivity this$0;

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        Log.d("MainActivity", "onServiceConnected");
        com.veclink.healthy.photo.RecordService _tmp = PhotographicActivity.access$402(((com.veclink.healthy.photo.er)ibinder).getService());
        cameraPreview(PhotographicActivity.access$600(PhotographicActivity.this));
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        com.veclink.healthy.photo.RecordService _tmp = PhotographicActivity.access$402(null);
    }

    ()
    {
        this$0 = PhotographicActivity.this;
        super();
    }
}
