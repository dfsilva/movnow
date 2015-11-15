// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.bleservice.profile;

import java.util.HashMap;

// Referenced classes of package com.veclink.hw.bleservice.profile:
//            BaseGattAttributes

public class OldBraceletGattAttributes extends BaseGattAttributes
{

    public OldBraceletGattAttributes()
    {
    }

    static 
    {
        attributes.put(BLE_SHIELD_SERVICE, "BLE Shield Service");
        attributes.put(BLE_SHIELD_TX, "BLE Shield TX");
        attributes.put(BLE_SHIELD_RX, "BLE Shield RX");
    }
}
