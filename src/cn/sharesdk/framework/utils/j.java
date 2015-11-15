// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.utils;

import android.os.Message;

// Referenced classes of package cn.sharesdk.framework.utils:
//            UIHandler

final class j
    implements android.os.Handler.Callback
{

    j()
    {
    }

    public boolean handleMessage(Message message)
    {
        UIHandler.access$000(message);
        return false;
    }
}
