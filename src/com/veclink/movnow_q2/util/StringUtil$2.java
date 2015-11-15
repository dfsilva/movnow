// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.util;

import android.content.Context;
import android.widget.Toast;

// Referenced classes of package com.veclink.movnow_q2.util:
//            StringUtil

static final class val.duration
    implements Runnable
{

    final Context val$context;
    final int val$duration;
    final int val$resId;

    public void run()
    {
        Toast.makeText(val$context, val$resId, val$duration).show();
    }

    (Context context1, int i, int j)
    {
        val$context = context1;
        val$resId = i;
        val$duration = j;
        super();
    }
}
