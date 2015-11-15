// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.bleservice.profile;

import java.util.HashMap;
import java.util.UUID;

// Referenced classes of package com.veclink.hw.bleservice.profile:
//            BaseGattAttributes

public class BraceletGattAttributes extends BaseGattAttributes
{

    public static String EXTERNAL_BLE_SHIELD_RX = "000034e2-0000-1000-8000-00805f9b34fb";
    public static String EXTERNAL_BLE_SHIELD_SERVICE = "000056ef-0000-1000-8000-00805f9b34fb";
    public static String EXTERNAL_BLE_SHIELD_TX = "000034e1-0000-1000-8000-00805f9b34fb";
    public static String PRIMARY_BLE_SHIELD_RX = "0000cd01-0000-1000-8000-00805f9b34fb";
    public static String PRIMARY_BLE_SHIELD_SERVICE = "0000cc01-0000-1000-8000-00805f9b34fb";
    public static String PRIMARY_BLE_SHIELD_TX = "0000cd20-0000-1000-8000-00805f9b34fb";

    public BraceletGattAttributes()
    {
        CLIENT_CHARACTERISTIC_CONFIG = "00002902-0000-1000-8000-00805f9b34fb";
        BLE_SHIELD_TX = "D44BC439-ABFD-45A2-B575-925416129600";
        BLE_SHIELD_RX = "D44BC439-ABFD-45A2-B575-925416129601";
        BLE_SHIELD_SERVICE = "0000fee9-0000-1000-8000-00805f9b34fb";
        attributes.put(BLE_SHIELD_SERVICE, "BLE Shield Service");
        attributes.put(BLE_SHIELD_TX, "BLE Shield TX");
        attributes.put(BLE_SHIELD_RX, "BLE Shield RX");
        serviceUuids = new UUID[1];
        serviceUuids[0] = UUID.fromString(BLE_SHIELD_SERVICE);
    }

    public static void setPrimaryGattAttributesConfig()
    {
        attributes.clear();
        BLE_SHIELD_TX = PRIMARY_BLE_SHIELD_TX;
        BLE_SHIELD_RX = PRIMARY_BLE_SHIELD_RX;
        BLE_SHIELD_SERVICE = PRIMARY_BLE_SHIELD_SERVICE;
        attributes.put(BLE_SHIELD_SERVICE, "BLE Shield Service");
        attributes.put(BLE_SHIELD_TX, "BLE Shield TX");
        attributes.put(BLE_SHIELD_RX, "BLE Shield RX");
        serviceUuids = new UUID[1];
        serviceUuids[0] = UUID.fromString(BLE_SHIELD_SERVICE);
    }

    public static void setSecondGattAttributesConfig()
    {
        attributes.clear();
        BLE_SHIELD_TX = EXTERNAL_BLE_SHIELD_TX;
        BLE_SHIELD_RX = EXTERNAL_BLE_SHIELD_RX;
        BLE_SHIELD_SERVICE = EXTERNAL_BLE_SHIELD_SERVICE;
        attributes.put(BLE_SHIELD_SERVICE, "BLE Shield Service");
        attributes.put(BLE_SHIELD_TX, "BLE Shield TX");
        attributes.put(BLE_SHIELD_RX, "BLE Shield RX");
        serviceUuids = new UUID[1];
        serviceUuids[0] = UUID.fromString(BLE_SHIELD_SERVICE);
    }

}
