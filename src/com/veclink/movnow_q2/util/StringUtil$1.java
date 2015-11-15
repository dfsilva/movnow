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
    final String val$text;

    public void run()
    {
        Toast.makeText(val$context, val$text, val$duration).show();
    }

    (Context context1, String s, int i)
    {
        val$context = context1;
        val$text = s;
        val$duration = i;
        super();
    }
}
