// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;


// Referenced classes of package com.veclink.bracelet.bletask:
//            SuotaUpdateHelper, BleCallBack

class this._cls0
    implements Runnable
{

    final SuotaUpdateHelper this$0;

    public void run()
    {
        bleCallBack.sendOnProgressMessage(Integer.valueOf(100));
    }

    ()
    {
        this$0 = SuotaUpdateHelper.this;
        super();
    }
}
