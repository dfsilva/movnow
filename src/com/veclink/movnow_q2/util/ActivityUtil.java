// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.util;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.view.ViewConfiguration;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class ActivityUtil
{

    private static Boolean hasHardwareMenuKey = null;
    public static boolean isFullScreen = false;

    public ActivityUtil()
    {
    }

    public static boolean hasHardwareMenuKey(Context context)
    {
        if (hasHardwareMenuKey != null) goto _L2; else goto _L1
_L1:
        context = ViewConfiguration.get(context);
        if (android.os.Build.VERSION.SDK_INT < 14)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        Method method = context.getClass().getMethod("hasPermanentMenuKey", new Class[0]);
        hasHardwareMenuKey = (Boolean)method.invoke(context, new Object[0]);
_L3:
        if (hasHardwareMenuKey == null)
        {
            if (android.os.Build.VERSION.SDK_INT < 14)
            {
                hasHardwareMenuKey = Boolean.valueOf(true);
            } else
            {
                hasHardwareMenuKey = Boolean.valueOf(false);
            }
        }
_L2:
        return hasHardwareMenuKey.booleanValue();
        context;
        try
        {
            hasHardwareMenuKey = Boolean.valueOf(false);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            hasHardwareMenuKey = Boolean.valueOf(false);
        }
          goto _L3
        context;
        hasHardwareMenuKey = Boolean.valueOf(false);
          goto _L3
        context;
        hasHardwareMenuKey = Boolean.valueOf(false);
          goto _L3
    }

    public static void setActivityTheme(Activity activity)
    {
        Log.d("product", (new StringBuilder()).append("product:").append(Build.PRODUCT).toString());
        if (Build.PRODUCT.contains("hammerhead") || Build.PRODUCT.contains("mx"))
        {
            activity.setTheme(0x7f0b0008);
            isFullScreen = true;
            return;
        } else
        {
            activity.setTheme(0x7f0b0007);
            isFullScreen = false;
            return;
        }
    }

}
