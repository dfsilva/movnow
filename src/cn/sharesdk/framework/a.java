// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Message;

// Referenced classes of package cn.sharesdk.framework:
//            FakeActivity

class a
    implements android.os.Handler.Callback
{

    final FakeActivity a;

    a(FakeActivity fakeactivity)
    {
        a = fakeactivity;
        super();
    }

    public boolean handleMessage(Message message)
    {
        Object aobj[] = (Object[])(Object[])message.obj;
        message = (Context)aobj[0];
        Intent intent = (Intent)aobj[1];
        if (!(message instanceof Activity))
        {
            intent.addFlags(0x10000000);
        }
        message.startActivity(intent);
        return false;
    }
}
