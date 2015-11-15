// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package de.greenrobot.event.util;


public class ThrowableFailureEvent
{

    protected final boolean suppressErrorUi;
    protected final Throwable throwable;

    public ThrowableFailureEvent(Throwable throwable1)
    {
        throwable = throwable1;
        suppressErrorUi = false;
    }

    public ThrowableFailureEvent(Throwable throwable1, boolean flag)
    {
        throwable = throwable1;
        suppressErrorUi = flag;
    }

    public Throwable getThrowable()
    {
        return throwable;
    }

    public boolean isSuppressErrorUi()
    {
        return suppressErrorUi;
    }
}
