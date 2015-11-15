// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.gui;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.widget.ListView;

// Referenced classes of package cn.sharesdk.framework.gui:
//            Scrollable, e

public class ScrollableListView extends ListView
    implements Scrollable
{

    private Scrollable.OnScrollListener a;
    private boolean b;

    public ScrollableListView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a(context);
    }

    public ScrollableListView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a(context);
    }

    private void a(Context context)
    {
        setCacheColorHint(0);
        setSelector(new ColorDrawable());
        setDividerHeight(0);
        a = new e(this);
    }

    static boolean a(ScrollableListView scrollablelistview, boolean flag)
    {
        scrollablelistview.b = flag;
        return flag;
    }

    protected int computeVerticalScrollOffset()
    {
        int i = super.computeVerticalScrollOffset();
        if (a != null)
        {
            a.onScrollChanged(this, 0, i, 0, 0);
        }
        return i;
    }
}
