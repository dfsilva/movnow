// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;

public abstract class l
    implements android.os.Handler.Callback
{

    protected final Handler a;
    private String b;

    public l(String s)
    {
        b = s;
        s = new HandlerThread(s);
        s.start();
        a = new Handler(s.getLooper(), this);
    }

    public void a()
    {
        a(0, 0, null);
    }

    public void a(int i, int j, Object obj)
    {
        Message message = new Message();
        message.what = -1;
        message.arg1 = i;
        message.arg2 = j;
        message.obj = obj;
        a.sendMessage(message);
    }

    protected void a(Message message)
    {
    }

    public void b()
    {
        b(0, 0, null);
    }

    public void b(int i, int j, Object obj)
    {
        Message message = new Message();
        message.what = -2;
        message.arg1 = i;
        message.arg2 = j;
        message.obj = obj;
        a.sendMessage(message);
    }

    protected void b(Message message)
    {
    }

    protected abstract void c(Message message);

    public final boolean handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch -2 -1: default 28
    //                   -2 43
    //                   -1 35;
           goto _L1 _L2 _L3
_L1:
        c(message);
_L5:
        return false;
_L3:
        a(message);
        continue; /* Loop/switch isn't completed */
_L2:
        b(message);
        if (true) goto _L5; else goto _L4
_L4:
    }
}
