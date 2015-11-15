// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.bleservice.profile;

import java.util.HashMap;
import java.util.UUID;

// Referenced classes of package com.veclink.hw.bleservice.profile:
//            BaseGattAttributes

public class TemperatureGattAttributes extends BaseGattAttributes
{

    public TemperatureGattAttributes()
    {
    }

    static 
    {
        CLIENT_CHARACTERISTIC_CONFIG = "00002902-0000-1000-8000-00805f9b34fb";
        BLE_SHIELD_TX = "00002a1c-0000-1000-8000-00805f9b34fb";
        BLE_SHIELD_RX = "00002a1e-0000-1000-8000-00805f9b34fb";
        BLE_SHIELD_SERVICE = "00001809-0000-1000-8000-00805f9b34fb";
        attributes.put(BLE_SHIELD_SERVICE, "BLE Shield Service");
        attributes.put(BLE_SHIELD_TX, "BLE Shield TX");
        attributes.put(BLE_SHIELD_RX, "BLE Shield RX");
        serviceUuids = new UUID[1];
        serviceUuids[0] = UUID.fromString(BLE_SHIELD_SERVICE);
    }
}
