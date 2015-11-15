// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.bleservice.profile;

import java.util.HashMap;
import java.util.UUID;

public class BaseGattAttributes
{

    public static String BLE_SHIELD_RX = "0000cd01-0000-1000-8000-00805f9b34fb";
    public static String BLE_SHIELD_SERVICE = "0000cc01-0000-1000-8000-00805f9b34fb";
    public static String BLE_SHIELD_TX = "0000cd20-0000-1000-8000-00805f9b34fb";
    public static String CLIENT_CHARACTERISTIC_CONFIG = "00002902-0000-1000-8000-00805f9b34fb";
    public static HashMap attributes = new HashMap();
    public static UUID serviceUuids[];

    public BaseGattAttributes()
    {
    }

    public static String lookup(String s, String s1)
    {
        s = (String)attributes.get(s);
        if (s == null)
        {
            return s1;
        } else
        {
            return s;
        }
    }

}
