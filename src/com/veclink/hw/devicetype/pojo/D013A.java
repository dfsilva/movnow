// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.devicetype.pojo;


// Referenced classes of package com.veclink.hw.devicetype.pojo:
//            BaseDeviceProduct

public class D013A extends BaseDeviceProduct
{

    public D013A()
    {
        canShowSleepModule = INVISIBLE;
        canShowTakePhotoView = INVISIBLE;
        canShowLightView = INVISIBLE;
        canShowKeptView = INVISIBLE;
        canShowFindDeviceView = INVISIBLE;
        canShowCallRemindView = INVISIBLE;
        canShowSmsRemindView = INVISIBLE;
        canShowPowerView = VISIBLE;
        updateFirewareWay = 1;
        bindDeviceWay = 1;
    }
}
