// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.devicetype;

import com.veclink.hw.devicetype.pojo.BaseDeviceProduct;

public class DeviceProductFactory
{

    public DeviceProductFactory()
    {
    }

    public static BaseDeviceProduct createDeviceProduct(String s)
    {
        String s1;
        String s2;
        s1 = s;
        s2 = s;
        if (!s.equals(""))
        {
            break MISSING_BLOCK_LABEL_21;
        }
        s2 = s;
        s1 = com/veclink/hw/devicetype/pojo/BaseDeviceProduct.getSimpleName();
        s2 = s1;
        try
        {
            s = (BaseDeviceProduct)Class.forName((new StringBuilder()).append("com.veclink.hw.devicetype.pojo.").append(s1).toString()).newInstance();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s = new BaseDeviceProduct();
            s.setAllModueInVisibleExceptStep();
            s1 = s2;
        }
        if (s1.equals(com/veclink/hw/devicetype/pojo/BaseDeviceProduct.getSimpleName()))
        {
            s.setAllModueInVisibleExceptStep();
        }
        return s;
    }
}
