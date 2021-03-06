// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.pulltorefresh;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.widget.ListView;

// Referenced classes of package m.framework.ui.widget.pulltorefresh:
//            Scrollable, OnScrollListener

public class ScrollableListView extends ListView
    implements Scrollable
{

    private OnScrollListener osListener;
    private boolean pullEnable;

    public ScrollableListView(Context context)
    {
        super(context);
        init(context);
    }

    public ScrollableListView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        init(context);
    }

    public ScrollableListView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        init(context);
    }

    private void init(Context context)
    {
        setCacheColorHint(0);
        setSelector(new ColorDrawable());
        osListener = new OnScrollListener() {

            final ScrollableListView this$0;

            public void onScrollChanged(Scrollable scrollable, int i, int j, int k, int l)
            {
                scrollable = ScrollableListView.this;
                boolean flag;
                if (j <= 0 && l <= 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                scrollable.pullEnable = flag;
            }

            
            {
                this$0 = ScrollableListView.this;
                super();
            }
        };
    }

    protected int computeVerticalScrollOffset()
    {
        int i = super.computeVerticalScrollOffset();
        if (osListener != null)
        {
            osListener.onScrollChanged(this, 0, i, 0, 0);
        }
        return i;
    }

    public boolean isReadyToPull()
    {
        return pullEnable;
    }

}
