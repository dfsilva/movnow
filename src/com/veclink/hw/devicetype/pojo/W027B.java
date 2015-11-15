// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.devicetype.pojo;


// Referenced classes of package com.veclink.hw.devicetype.pojo:
//            BaseDeviceProduct

public class W027B extends BaseDeviceProduct
{

    public W027B()
    {
        setAllModueInVisibleExceptStep();
        canShowSleepModule = 0;
        canShowRemindModule = 0;
        canShowFamilyNumber = VISIBLE;
        canShowKeptView = 0;
        canShowTakePhotoView = 0;
        canShowSmsRemindView = 0;
        updateFirewareWay = 1;
    }
}
