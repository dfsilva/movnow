// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.bleservice.profile;

import java.util.HashMap;
import java.util.UUID;

// Referenced classes of package com.veclink.hw.bleservice.profile:
//            BaseGattAttributes

public class RemoteControlGattAttributes extends BaseGattAttributes
{

    public RemoteControlGattAttributes()
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

    static 
    {
        CLIENT_CHARACTERISTIC_CONFIG = "00002902-0000-1000-8000-00805f9b34fb";
        BLE_SHIELD_TX = "000034e1-0000-1000-8000-00805f9b34fb";
        BLE_SHIELD_RX = "000034e2-0000-1000-8000-00805f9b34fb";
        BLE_SHIELD_SERVICE = "000056ef-0000-1000-8000-00805f9b34fb";
        attributes.put(BLE_SHIELD_SERVICE, "BLE Shield Service");
        attributes.put(BLE_SHIELD_TX, "BLE Shield TX");
        attributes.put(BLE_SHIELD_RX, "BLE Shield RX");
        serviceUuids = new UUID[1];
        serviceUuids[0] = UUID.fromString(BLE_SHIELD_SERVICE);
    }
}
