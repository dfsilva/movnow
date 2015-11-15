// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.watercup.bean;

import com.veclink.hw.bleservice.util.ByteUtil;
import java.io.Serializable;
import java.util.Calendar;

public class WaterCupState
    implements Serializable
{

    private static final long serialVersionUID = 0xc8887958b76c997bL;
    public float capacity;
    public int cup_remain_water;
    public boolean isNeeedCheck;
    public int last_drink_water_count;
    public long last_drink_water_time;
    public int today_amount_of_count;
    public float water_temperature;

    public WaterCupState()
    {
    }

    public void parseByteArray(byte abyte0[])
    {
        water_temperature = (short)(abyte0[4] << 8 & 0xff00 | abyte0[5] & 0xff);
        water_temperature = water_temperature / 10F;
        today_amount_of_count = abyte0[6] << 8 & 0xff00 | abyte0[7] & 0xff;
        capacity = abyte0[8] << 8 & 0xff00 | abyte0[9] & 0xff;
        cup_remain_water = abyte0[10] << 8 & 0xff00 | abyte0[11] & 0xff;
        last_drink_water_count = abyte0[12] << 8 & 0xff00 | abyte0[13] & 0xff;
        int i = abyte0[14] << 8 & 0xff00 | abyte0[15] & 0xff;
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, i / 60);
        calendar.set(12, i % 60);
        last_drink_water_time = calendar.getTimeInMillis();
        abyte0 = ByteUtil.byteToBitString(abyte0[16]);
        if (abyte0.length() > 0 && abyte0.charAt(7) == '1')
        {
            isNeeedCheck = true;
        }
    }

    public String toString()
    {
        return (new StringBuilder()).append("WaterCupState [water_temperature=").append(water_temperature).append(", today_amount_of_count=").append(today_amount_of_count).append(", capacity=").append(capacity).append(", cup_remain_water=").append(cup_remain_water).append(", last_drink_water_count=").append(last_drink_water_count).append(", last_drink_water_time=").append(last_drink_water_time).append(", isNeeedCheck=").append(isNeeedCheck).append(", getClass()=").append(getClass()).append(", hashCode()=").append(hashCode()).append(", toString()=").append(super.toString()).append("]").toString();
    }
}
