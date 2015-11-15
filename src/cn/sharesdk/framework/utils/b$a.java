// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.utils;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

// Referenced classes of package cn.sharesdk.framework.utils:
//            b, e

private class <init>
    implements ServiceConnection
{

    boolean a;
    final b b;
    private final BlockingQueue c;

    public IBinder a()
    {
        if (a)
        {
            throw new IllegalStateException();
        } else
        {
            a = true;
            return (IBinder)c.poll(1500L, TimeUnit.MILLISECONDS);
        }
    }

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        try
        {
            c.put(ibinder);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (ComponentName componentname)
        {
            e.b(componentname);
        }
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
    }

    private ue(b b1)
    {
        b = b1;
        super();
        a = false;
        c = new LinkedBlockingQueue();
    }

    ingQueue(b b1, ingQueue ingqueue)
    {
        this(b1);
    }
}
