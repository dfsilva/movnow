// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.devicetype.pojo;


// Referenced classes of package com.veclink.hw.devicetype.pojo:
//            BaseDeviceProduct

public class P033D extends BaseDeviceProduct
{

    public P033D()
    {
        canShowRemindModule = INVISIBLE;
        canShowLightView = INVISIBLE;
        canShowFindDeviceView = INVISIBLE;
        canShowKeptView = INVISIBLE;
        canShowCallRemindView = INVISIBLE;
        canShowSmsRemindView = INVISIBLE;
        canPay = VISIBLE;
        canCharge = VISIBLE;
        updateFirewareWay = 1;
        bindDeviceWay = 1;
    }
}
