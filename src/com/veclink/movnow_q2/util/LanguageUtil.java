// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.util;

import java.util.Locale;

public class LanguageUtil
{

    public LanguageUtil()
    {
    }

    private static String getLanguageEnv()
    {
        Object obj = Locale.getDefault();
        String s = ((Locale) (obj)).getLanguage();
        String s1 = ((Locale) (obj)).getCountry().toLowerCase();
        obj = s;
        if ("zh".equals(s))
        {
            if ("cn".equals(s1))
            {
                obj = "zh-CN";
            } else
            {
                obj = s;
                if ("tw".equals(s1))
                {
                    return "zh-TW";
                }
            }
        }
        return ((String) (obj));
    }

    public static boolean isChina()
    {
        String s = getLanguageEnv();
        return s != null && (s.trim().equals("zh-CN") || s.trim().equals("zh-TW"));
    }

    public static boolean isEnglish()
    {
        String s = getLanguageEnv();
        return s != null && s.trim().equals("en");
    }

    public static boolean isRuuna()
    {
        String s = getLanguageEnv();
        return s != null && s.trim().equals("ru");
    }

    public static boolean isSpanish()
    {
        String s = getLanguageEnv();
        return s != null && s.trim().equals("es");
    }

    public static boolean isTR()
    {
        String s = getLanguageEnv();
        return s != null && s.trim().equals("tr");
    }
}
