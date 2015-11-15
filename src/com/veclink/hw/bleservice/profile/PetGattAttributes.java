// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.bleservice.profile;

import java.util.HashMap;

// Referenced classes of package com.veclink.hw.bleservice.profile:
//            BaseGattAttributes

public class PetGattAttributes extends BaseGattAttributes
{

    public PetGattAttributes()
    {
    }

    static 
    {
        BLE_SHIELD_TX = "D44BC439-ABFD-45A2-B575-925416129600";
        BLE_SHIELD_RX = "D44BC439-ABFD-45A2-B575-925416129601";
        BLE_SHIELD_SERVICE = "0000fee9-0000-1000-8000-00805f9b34fb";
        attributes.put(BLE_SHIELD_SERVICE, "BLE Shield Service");
        attributes.put(BLE_SHIELD_TX, "BLE Shield TX");
        attributes.put(BLE_SHIELD_RX, "BLE Shield RX");
    }
}
