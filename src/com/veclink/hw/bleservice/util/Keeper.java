// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.bleservice.util;

import android.content.Context;
import android.content.SharedPreferences;

public class Keeper
{

    public static final String DEVICE_MAC_ADDRESS = "device_mac_address";
    public static final String KEEPER_FILE_NAME = "keep_file";
    public static final String KEY_BAND_LIGHT_COLOR = "band_light_color";
    public static final String KEY_DEVICE_ID = "deviceId";
    public static final String KEY_DEVICE_MAC_ADDRESS = "device_mac_address";
    public static final String KEY_DEVICE_TYPE = "device_type";
    public static final String KEY_LAST_SYNC_TIME = "last_sync_time";
    public static final String KEY_NEED_TO_DO_OLD_PROTOCOL = "KEY_NEED_TO_DO_OLD_PROTOCOL";
    public static final String KEY_PROTOCOL_VERSION = "protocol_version";
    public static final String KEY_USER_HAS_BIND_BAND = "user_has_bind_band";
    public static final String kEY_DEVICE_NAME = "device_name";
    public static final String kEY_DEVICE_ROM_VERSION = "device_rom_version";

    public Keeper()
    {
    }

    public static void clearBindDeviceMessage(Context context)
    {
        context = context.getSharedPreferences("keep_file", 0).edit();
        context.putString("device_name", "");
        context.putString("device_mac_address", "");
        context.putString("device_mac_address", "");
        context.putString("deviceId", "");
        context.putString("device_rom_version", "");
        context.putString("device_type", "");
        context.putString("protocol_version", "");
        context.putBoolean("user_has_bind_band", false);
        context.putBoolean("KEY_NEED_TO_DO_OLD_PROTOCOL", false);
        context.putInt("band_light_color", 0);
        context.apply();
        context.commit();
    }

    public static int getBandLightColor(Context context)
    {
        return context.getSharedPreferences("keep_file", 0).getInt("band_light_color", 0);
    }

    public static String getBindDeviceMacAddress(Context context)
    {
        return context.getSharedPreferences("keep_file", 0).getString("device_mac_address", "");
    }

    public static String getBindDeviceName(Context context)
    {
        return context.getSharedPreferences("keep_file", 0).getString("device_name", "");
    }

    public static boolean getChangeToOldProtocol(Context context)
    {
        return context.getSharedPreferences("keep_file", 0).getBoolean("KEY_NEED_TO_DO_OLD_PROTOCOL", false);
    }

    public static String getDeviceId(Context context)
    {
        return context.getSharedPreferences("keep_file", 0).getString("deviceId", "");
    }

    public static String getDeviceRomVersion(Context context)
    {
        return context.getSharedPreferences("keep_file", 0).getString("device_rom_version", "0");
    }

    public static String getDeviceType(Context context)
    {
        return context.getSharedPreferences("keep_file", 0).getString("device_type", "");
    }

    public static String getProtocolVersion(Context context)
    {
        return context.getSharedPreferences("keep_file", 0).getString("protocol_version", "");
    }

    public static boolean getUserHasBindBand(Context context)
    {
        return context.getSharedPreferences("keep_file", 0).getBoolean("user_has_bind_band", false);
    }

    public static void setBandLightColor(Context context, int i)
    {
        context = context.getSharedPreferences("keep_file", 0).edit();
        context.putInt("band_light_color", i);
        context.apply();
        context.commit();
    }

    public static void setBindDeviceMacAddress(Context context, String s)
    {
        context = context.getSharedPreferences("keep_file", 0).edit();
        context.putString("device_mac_address", s);
        context.putString("deviceId", s);
        context.apply();
        context.commit();
    }

    public static void setBindDeviceName(Context context, String s)
    {
        context = context.getSharedPreferences("keep_file", 0).edit();
        context.putString("device_name", s);
        context.apply();
        context.commit();
    }

    public static void setChangeToOldProtocol(Context context, boolean flag)
    {
        context = context.getSharedPreferences("keep_file", 0).edit();
        context.putBoolean("KEY_NEED_TO_DO_OLD_PROTOCOL", flag);
        context.apply();
        context.commit();
    }

    public static void setDeviceId(Context context, String s)
    {
        context = context.getSharedPreferences("keep_file", 0).edit();
        context.putString("deviceId", s);
        context.apply();
    }

    public static void setDeviceMacAddress(Context context, String s)
    {
        context = context.getSharedPreferences("keep_file", 0).edit();
        context.putString("device_mac_address", s);
        context.apply();
    }

    public static void setDeviceRomVersion(Context context, String s)
    {
        context = context.getSharedPreferences("keep_file", 0).edit();
        context.putString("device_rom_version", s);
        context.apply();
    }

    public static void setDeviceType(Context context, String s)
    {
        context = context.getSharedPreferences("keep_file", 0).edit();
        context.putString("device_type", s);
        context.apply();
        context.commit();
    }

    public static void setProtocolVersion(Context context, String s)
    {
        context = context.getSharedPreferences("keep_file", 0).edit();
        context.putString("protocol_version", s);
        context.apply();
        context.commit();
    }

    public static void setUserHasBindBand(Context context, boolean flag)
    {
        context = context.getSharedPreferences("keep_file", 0).edit();
        context.putBoolean("user_has_bind_band", flag);
        context.apply();
        context.commit();
    }
}
