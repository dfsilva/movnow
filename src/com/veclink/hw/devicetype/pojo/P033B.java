// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.devicetype.pojo;


// Referenced classes of package com.veclink.hw.devicetype.pojo:
//            BaseDeviceProduct

public class P033B extends BaseDeviceProduct
{

    public P033B()
    {
        canShowSmsRemindView = INVISIBLE;
        canShowKeptView = INVISIBLE;
        canShowTakePhotoView = INVISIBLE;
        canShowFindDeviceView = VISIBLE;
        canShowLightView = INVISIBLE;
        canPay = VISIBLE;
        canCharge = VISIBLE;
        updateFirewareWay = 0;
        bindDeviceWay = 1;
    }
}
