// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import android.os.Message;

// Referenced classes of package cn.sharesdk.framework:
//            FakeActivity

class c
    implements android.os.Handler.Callback
{

    final Runnable a;
    final FakeActivity b;

    c(FakeActivity fakeactivity, Runnable runnable)
    {
        b = fakeactivity;
        a = runnable;
        super();
    }

    public boolean handleMessage(Message message)
    {
        a.run();
        return false;
    }
}
