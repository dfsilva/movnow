// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.util;

import android.content.Context;
import android.content.SharedPreferences;

public class SharedPreferencesUtils
{

    private static final String FILE_NAME = "Q2_data_info";

    public SharedPreferencesUtils()
    {
    }

    public static Object getSharedPreferences(Context context, String s, Object obj)
    {
        String s1 = obj.getClass().getSimpleName();
        context = context.getSharedPreferences("Q2_data_info", 4);
        if ("String".equals(s1))
        {
            return context.getString(s, (String)obj);
        }
        if ("Integer".equals(s1))
        {
            return Integer.valueOf(context.getInt(s, ((Integer)obj).intValue()));
        }
        if ("Boolean".equals(s1))
        {
            return Boolean.valueOf(context.getBoolean(s, ((Boolean)obj).booleanValue()));
        }
        if ("Float".equals(s1))
        {
            return Float.valueOf(context.getFloat(s, ((Float)obj).floatValue()));
        }
        if ("Long".equals(s1))
        {
            return Long.valueOf(context.getLong(s, ((Long)obj).longValue()));
        } else
        {
            return null;
        }
    }

    public static void setSharedPreferences(Context context, String s, Object obj)
    {
        String s1;
        s1 = obj.getClass().getSimpleName();
        context = context.getSharedPreferences("Q2_data_info", 4).edit();
        if (!"String".equals(s1)) goto _L2; else goto _L1
_L1:
        context.putString(s, (String)obj);
_L4:
        context.commit();
        return;
_L2:
        if ("Integer".equals(s1))
        {
            context.putInt(s, ((Integer)obj).intValue());
        } else
        if ("Boolean".equals(s1))
        {
            context.putBoolean(s, ((Boolean)obj).booleanValue());
        } else
        if ("Float".equals(s1))
        {
            context.putFloat(s, ((Float)obj).floatValue());
        } else
        if ("Long".equals(s1))
        {
            context.putLong(s, ((Long)obj).longValue());
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
