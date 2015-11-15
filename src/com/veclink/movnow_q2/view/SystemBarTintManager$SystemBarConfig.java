// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.ViewConfiguration;
import android.view.WindowManager;

// Referenced classes of package com.veclink.movnow_q2.view:
//            SystemBarTintManager

public static class <init>
{

    private static final String NAV_BAR_HEIGHT_LANDSCAPE_RES_NAME = "navigation_bar_height_landscape";
    private static final String NAV_BAR_HEIGHT_RES_NAME = "navigation_bar_height";
    private static final String NAV_BAR_WIDTH_RES_NAME = "navigation_bar_width";
    private static final String SHOW_NAV_BAR_RES_NAME = "config_showNavigationBar";
    private static final String STATUS_BAR_HEIGHT_RES_NAME = "status_bar_height";
    private final int mActionBarHeight;
    private final boolean mHasNavigationBar;
    private final boolean mInPortrait;
    private final int mNavigationBarHeight;
    private final int mNavigationBarWidth;
    private final float mSmallestWidthDp;
    private final int mStatusBarHeight;
    private final boolean mTranslucentNavBar;
    private final boolean mTranslucentStatusBar;

    private int getActionBarHeight(Context context)
    {
        int i = 0;
        if (android.os.SystemBarConfig >= 14)
        {
            TypedValue typedvalue = new TypedValue();
            context.getTheme().Config(0x10102eb, typedvalue, true);
            i = TypedValue.complexToDimensionPixelSize(typedvalue.data, context.getResources().getDisplayMetrics());
        }
        return i;
    }

    private int getInternalDimensionSize(Resources resources, String s)
    {
        int i = 0;
        int j = resources.getIdentifier(s, "dimen", "android");
        if (j > 0)
        {
            i = resources.getDimensionPixelSize(j);
        }
        return i;
    }

    private int getNavigationBarHeight(Context context)
    {
        Resources resources = context.getResources();
        boolean flag = false;
        int i = ((flag) ? 1 : 0);
        if (android.os.SystemBarConfig >= 14)
        {
            i = ((flag) ? 1 : 0);
            if (hasNavBar(context))
            {
                if (mInPortrait)
                {
                    context = "navigation_bar_height";
                } else
                {
                    context = "navigation_bar_height_landscape";
                }
                i = getInternalDimensionSize(resources, context);
            }
        }
        return i;
    }

    private int getNavigationBarWidth(Context context)
    {
        Resources resources = context.getResources();
        boolean flag = false;
        int i = ((flag) ? 1 : 0);
        if (android.os.SystemBarConfig >= 14)
        {
            i = ((flag) ? 1 : 0);
            if (hasNavBar(context))
            {
                i = getInternalDimensionSize(resources, "navigation_bar_width");
            }
        }
        return i;
    }

    private float getSmallestWidthDp(Activity activity)
    {
        DisplayMetrics displaymetrics = new DisplayMetrics();
        if (android.os.SystemBarConfig >= 16)
        {
            activity.getWindowManager().getDefaultDisplay().getRealMetrics(displaymetrics);
        } else
        {
            activity.getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
        }
        return Math.min((float)displaymetrics.widthPixels / displaymetrics.density, (float)displaymetrics.heightPixels / displaymetrics.density);
    }

    private boolean hasNavBar(Context context)
    {
        boolean flag;
        Resources resources = context.getResources();
        int i = resources.getIdentifier("config_showNavigationBar", "bool", "android");
        if (i == 0)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        flag = resources.getBoolean(i);
        if (!"1".equals(SystemBarTintManager.access$100())) goto _L2; else goto _L1
_L1:
        flag = false;
_L4:
        return flag;
_L2:
        if (!"0".equals(SystemBarTintManager.access$100())) goto _L4; else goto _L3
_L3:
        return true;
        boolean flag1;
        if (!ViewConfiguration.get(context).hasPermanentMenuKey())
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        return flag1;
    }

    public int getActionBarHeight()
    {
        return mActionBarHeight;
    }

    public int getNavigationBarHeight()
    {
        return mNavigationBarHeight;
    }

    public int getNavigationBarWidth()
    {
        return mNavigationBarWidth;
    }

    public int getPixelInsetBottom()
    {
        if (mTranslucentNavBar && isNavigationAtBottom())
        {
            return mNavigationBarHeight;
        } else
        {
            return 0;
        }
    }

    public int getPixelInsetRight()
    {
        if (mTranslucentNavBar && !isNavigationAtBottom())
        {
            return mNavigationBarWidth;
        } else
        {
            return 0;
        }
    }

    public int getPixelInsetTop(boolean flag)
    {
        int j = 0;
        int i;
        if (mTranslucentStatusBar)
        {
            i = mStatusBarHeight;
        } else
        {
            i = 0;
        }
        if (flag)
        {
            j = mActionBarHeight;
        }
        return j + i;
    }

    public int getStatusBarHeight()
    {
        return mStatusBarHeight;
    }

    public boolean hasNavigtionBar()
    {
        return mHasNavigationBar;
    }

    public boolean isNavigationAtBottom()
    {
        return mSmallestWidthDp >= 600F || mInPortrait;
    }

    private (Activity activity, boolean flag, boolean flag1)
    {
        boolean flag3 = true;
        super();
        Resources resources = activity.getResources();
        boolean flag2;
        if (resources.getConfiguration().orientation == 1)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        mInPortrait = flag2;
        mSmallestWidthDp = getSmallestWidthDp(activity);
        mStatusBarHeight = getInternalDimensionSize(resources, "status_bar_height");
        mActionBarHeight = getActionBarHeight(activity);
        mNavigationBarHeight = getNavigationBarHeight(activity);
        mNavigationBarWidth = getNavigationBarWidth(activity);
        if (mNavigationBarHeight > 0)
        {
            flag2 = flag3;
        } else
        {
            flag2 = false;
        }
        mHasNavigationBar = flag2;
        mTranslucentStatusBar = flag;
        mTranslucentNavBar = flag1;
    }

    mTranslucentNavBar(Activity activity, boolean flag, boolean flag1, mTranslucentNavBar mtranslucentnavbar)
    {
        this(activity, flag, flag1);
    }
}
