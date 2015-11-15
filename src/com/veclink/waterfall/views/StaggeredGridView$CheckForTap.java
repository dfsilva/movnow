// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.views;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.view.View;
import android.view.ViewConfiguration;

// Referenced classes of package com.veclink.waterfall.views:
//            StaggeredGridView

final class this._cls0
    implements Runnable
{

    final StaggeredGridView this$0;

    public void run()
    {
label0:
        {
            if (StaggeredGridView.access$300(StaggeredGridView.this) == 3)
            {
                StaggeredGridView.access$302(StaggeredGridView.this, 4);
                View view = getChildAt(StaggeredGridView.access$2300(StaggeredGridView.this) - StaggeredGridView.access$1600(StaggeredGridView.this));
                if (view != null && !view.hasFocusable())
                {
                    if (StaggeredGridView.access$400(StaggeredGridView.this))
                    {
                        break label0;
                    }
                    view.setSelected(true);
                    view.setPressed(true);
                    setPressed(true);
                    layoutChildren(false);
                    positionSelector(StaggeredGridView.access$2300(StaggeredGridView.this), view);
                    refreshDrawableState();
                    int i = ViewConfiguration.getLongPressTimeout();
                    boolean flag = isLongClickable();
                    if (mSelector != null)
                    {
                        Drawable drawable = mSelector.getCurrent();
                        if (drawable instanceof TransitionDrawable)
                        {
                            if (flag)
                            {
                                ((TransitionDrawable)drawable).startTransition(i);
                            } else
                            {
                                ((TransitionDrawable)drawable).resetTransition();
                            }
                        }
                    }
                    if (flag)
                    {
                        if (StaggeredGridView.access$2400(StaggeredGridView.this) == null)
                        {
                            StaggeredGridView.access$2402(StaggeredGridView.this, new Press(StaggeredGridView.this, null));
                        }
                        StaggeredGridView.access$2400(StaggeredGridView.this).rememberWindowAttachCount();
                        postDelayed(StaggeredGridView.access$2400(StaggeredGridView.this), i);
                    } else
                    {
                        StaggeredGridView.access$302(StaggeredGridView.this, 5);
                    }
                    postInvalidate();
                }
            }
            return;
        }
        StaggeredGridView.access$302(StaggeredGridView.this, 5);
    }

    Press()
    {
        this$0 = StaggeredGridView.this;
        super();
    }
}
