// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.photo;

import android.content.Context;
import android.content.SharedPreferences;

public class mySharedPreferences
{

    private boolean BanLostButtonb;
    private boolean LookingPhoneButtonb;
    private int ShootInterval;
    private int ShootNumber;
    private boolean Silent_mode;
    private Context context;
    private String deviceAddrres;
    private String deviceName;
    android.content.SharedPreferences.Editor editor;
    private int isOne;
    SharedPreferences sp;

    public mySharedPreferences(Context context1)
    {
        BanLostButtonb = false;
        LookingPhoneButtonb = false;
        Silent_mode = false;
        ShootNumber = 1;
        ShootInterval = 1;
        isOne = 0;
        context = context1;
        sp = context.getSharedPreferences("mySP", 1);
        editor = sp.edit();
    }

    public String getDeviceAddrres()
    {
        return sp.getString("deviceAddrres", "");
    }

    public String getDeviceName()
    {
        return sp.getString("deviceName", "");
    }

    public int getIsOne()
    {
        return sp.getInt("isOne", 0);
    }

    public int getShootInterval()
    {
        return sp.getInt("ShootInterval", 1);
    }

    public int getShootNumber()
    {
        return sp.getInt("ShootNumber", 1);
    }

    public boolean isBanLostButtonb()
    {
        return sp.getBoolean("BanLostButton", false);
    }

    public boolean isLookingPhoneButtonb()
    {
        return sp.getBoolean("lookingPhoneButton", false);
    }

    public boolean isSilent_mode()
    {
        return sp.getBoolean("SilentMode", false);
    }

    public void setBanLostButtonb(boolean flag)
    {
        editor.putBoolean("BanLostButton", flag);
        editor.commit();
        BanLostButtonb = flag;
    }

    public void setDeviceAddrres(String s)
    {
        deviceAddrres = s;
        editor.putString("deviceAddrres", s);
        editor.commit();
    }

    public void setDeviceName(String s)
    {
        deviceName = s;
        editor.putString("deviceName", s);
        editor.commit();
    }

    public void setIsOne(int i)
    {
        isOne = i;
        editor.putInt("isOne", i);
        editor.commit();
    }

    public void setLookingPhoneButtonb(boolean flag)
    {
        LookingPhoneButtonb = flag;
        editor.putBoolean("lookingPhoneButton", flag);
        editor.commit();
    }

    public void setShootInterval(int i)
    {
        ShootInterval = i;
        editor.putInt("ShootInterval", i);
        editor.commit();
    }

    public void setShootNumber(int i)
    {
        ShootNumber = i;
        editor.putInt("ShootNumber", i);
        editor.commit();
    }

    public void setSilent_mode(boolean flag)
    {
        Silent_mode = flag;
        editor.putBoolean("SilentMode", flag);
        editor.commit();
    }
}
