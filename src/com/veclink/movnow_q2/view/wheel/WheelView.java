// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view.wheel;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.veclink.movnow_q2.view.wheel.adapter.WheelViewAdapter;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.view.wheel:
//            WheelRecycle, ItemsRange, WheelScroller, OnWheelChangedListener, 
//            OnWheelClickedListener, OnWheelScrollListener

public class WheelView extends View
{

    private static final int DEF_VISIBLE_ITEMS = 5;
    private static final int ITEM_OFFSET_PERCENT = 0;
    private static final int PADDING = 10;
    private int SHADOWS_COLORS[] = {
        0, 0, 0
    };
    private GradientDrawable bottomShadow;
    private Drawable centerDrawable;
    private boolean changeAllItemSizeByCurrentitem;
    private List changingListeners;
    private List clickingListeners;
    private int currentItem;
    private int currentItemColor;
    private int currentItemSize;
    private DataSetObserver dataObserver = new DataSetObserver() {

        final WheelView this$0;

        public void onChanged()
        {
            invalidateWheel(false);
        }

        public void onInvalidated()
        {
            invalidateWheel(true);
        }

            
            {
                this$0 = WheelView.this;
                super();
            }
    };
    private boolean drawShadows;
    private int firstItem;
    boolean isCyclic;
    private boolean isScrollingPerformed;
    private int itemHeight;
    private LinearLayout itemsLayout;
    private String label;
    private int labelColor;
    private int labelSize;
    private Context mContext;
    private WheelRecycle recycle;
    private WheelScroller scroller;
    WheelScroller.ScrollingListener scrollingListener = new WheelScroller.ScrollingListener() {

        final WheelView this$0;

        public void onFinished()
        {
            if (isScrollingPerformed)
            {
                notifyScrollingListenersAboutEnd();
                isScrollingPerformed = false;
            }
            scrollingOffset = 0;
            invalidate();
        }

        public void onJustify()
        {
            if (Math.abs(scrollingOffset) > 1)
            {
                scroller.scroll(scrollingOffset, 0);
            }
        }

        public void onScroll(int i)
        {
            doScroll(i);
            i = getHeight();
            if (scrollingOffset > i)
            {
                scrollingOffset = i;
                scroller.stopScrolling();
            } else
            if (scrollingOffset < -i)
            {
                scrollingOffset = -i;
                scroller.stopScrolling();
                return;
            }
        }

        public void onStarted()
        {
            isScrollingPerformed = true;
            notifyScrollingListenersAboutStart();
        }

            
            {
                this$0 = WheelView.this;
                super();
            }
    };
    private List scrollingListeners;
    private int scrollingOffset;
    private GradientDrawable topShadow;
    private WheelViewAdapter viewAdapter;
    private int visibleItems;
    private int weelBackgroundColor;
    private int wheelBackground;
    private int wheelCover;
    private int wheelForeground;

    public WheelView(Context context)
    {
        super(context);
        currentItem = 0;
        visibleItems = 5;
        itemHeight = 0;
        wheelBackground = 0x7f02018d;
        wheelForeground = 0x7f02018d;
        wheelCover = 0x7f02018c;
        weelBackgroundColor = 0;
        drawShadows = true;
        isCyclic = false;
        label = "";
        labelSize = 18;
        labelColor = -256;
        currentItemColor = 0xff888888;
        currentItemSize = 18;
        changeAllItemSizeByCurrentitem = false;
        recycle = new WheelRecycle(this);
        changingListeners = new LinkedList();
        scrollingListeners = new LinkedList();
        clickingListeners = new LinkedList();
        initData(context);
    }

    public WheelView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0x101006a);
    }

    public WheelView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        currentItem = 0;
        visibleItems = 5;
        itemHeight = 0;
        wheelBackground = 0x7f02018d;
        wheelForeground = 0x7f02018d;
        wheelCover = 0x7f02018c;
        weelBackgroundColor = 0;
        drawShadows = true;
        isCyclic = false;
        label = "";
        labelSize = 18;
        labelColor = -256;
        currentItemColor = 0xff888888;
        currentItemSize = 18;
        changeAllItemSizeByCurrentitem = false;
        recycle = new WheelRecycle(this);
        changingListeners = new LinkedList();
        scrollingListeners = new LinkedList();
        clickingListeners = new LinkedList();
        mContext = context;
        attributeset = context.obtainStyledAttributes(attributeset, com.veclink.movnow.healthy_q2.R.styleable.WheeView, i, 0);
        currentItemSize = (int)attributeset.getDimension(0, 18F);
        labelSize = (int)attributeset.getDimension(1, 18F);
        currentItemColor = context.getResources().getColor(0x7f080007);
        labelColor = currentItemColor;
        attributeset.recycle();
        if (currentItemSize > 36)
        {
            currentItemSize = 36;
        }
        initData(context);
    }

    private boolean addViewItem(int i, boolean flag)
    {
        boolean flag1 = false;
        View view = getItemView(i);
        if (i == currentItem)
        {
            TextView textview = (TextView)view;
            textview.setTextColor(currentItemColor);
            textview.setTextSize(currentItemSize);
        }
        if (changeAllItemSizeByCurrentitem)
        {
            ((TextView)view).setTextSize(currentItemSize);
        }
        if (view != null)
        {
            if (flag)
            {
                itemsLayout.addView(view, 0);
            } else
            {
                itemsLayout.addView(view);
            }
            flag1 = true;
        }
        return flag1;
    }

    private void buildViewForMeasuring()
    {
        int j;
        if (itemsLayout != null)
        {
            recycle.recycleItems(itemsLayout, firstItem, new ItemsRange());
        } else
        {
            createItemsLayout();
        }
        j = visibleItems / 2;
        for (int i = currentItem + j; i >= currentItem - j; i--)
        {
            if (addViewItem(i, true))
            {
                firstItem = i;
            }
        }

    }

    private int calculateLayoutWidth(int i, int j)
    {
        int l;
        initResourcesIfNecessary();
        itemsLayout.setLayoutParams(new android.view.ViewGroup.LayoutParams(-2, -2));
        itemsLayout.measure(android.view.View.MeasureSpec.makeMeasureSpec(i, 0), android.view.View.MeasureSpec.makeMeasureSpec(0, 0));
        l = itemsLayout.getMeasuredWidth();
        if (j != 0x40000000) goto _L2; else goto _L1
_L1:
        l = i;
_L4:
        itemsLayout.measure(android.view.View.MeasureSpec.makeMeasureSpec(l - 20, 0x40000000), android.view.View.MeasureSpec.makeMeasureSpec(0, 0));
        return l;
_L2:
        int i1 = Math.max(l + 20, getSuggestedMinimumWidth());
        l = i1;
        if (j == 0x80000000)
        {
            l = i1;
            if (i < i1)
            {
                l = i;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void createItemsLayout()
    {
        if (itemsLayout == null)
        {
            itemsLayout = new LinearLayout(getContext());
            itemsLayout.setOrientation(1);
        }
    }

    private void doScroll(int i)
    {
        int l;
        int i1;
        int j1;
        int k1;
        int l1;
        scrollingOffset = scrollingOffset + i;
        k1 = getItemHeight();
        l = scrollingOffset / k1;
        i1 = currentItem - l;
        l1 = viewAdapter.getItemsCount();
        i = scrollingOffset % k1;
        j1 = i;
        if (Math.abs(i) <= k1 / 2)
        {
            j1 = 0;
        }
        if (!isCyclic || l1 <= 0)
        {
            break MISSING_BLOCK_LABEL_192;
        }
        if (j1 <= 0) goto _L2; else goto _L1
_L1:
        int j;
        j = i1 - 1;
        i = l + 1;
_L4:
        for (; j < 0; j += l1) { }
        break; /* Loop/switch isn't completed */
_L2:
        i = l;
        j = i1;
        if (j1 < 0)
        {
            j = i1 + 1;
            i = l - 1;
        }
        if (true) goto _L4; else goto _L3
_L3:
        j %= l1;
_L5:
        l = scrollingOffset;
        if (j != currentItem)
        {
            setCurrentItem(j, false);
        } else
        {
            invalidate();
        }
        scrollingOffset = l - i * k1;
        if (scrollingOffset > getHeight())
        {
            scrollingOffset = scrollingOffset % getHeight() + getHeight();
        }
        return;
        if (i1 < 0)
        {
            i = currentItem;
            j = 0;
        } else
        if (i1 >= l1)
        {
            i = (currentItem - l1) + 1;
            j = l1 - 1;
        } else
        if (i1 > 0 && j1 > 0)
        {
            j = i1 - 1;
            i = l + 1;
        } else
        {
            i = l;
            j = i1;
            if (i1 < l1 - 1)
            {
                i = l;
                j = i1;
                if (j1 < 0)
                {
                    j = i1 + 1;
                    i = l - 1;
                }
            }
        }
          goto _L5
    }

    private void drawCenterRect(Canvas canvas)
    {
        int i = getHeight() / 2;
        int j = (int)((double)(getItemHeight() / 2) * 1.2D);
        centerDrawable.setBounds(0, i - j, getWidth(), i + j);
        centerDrawable.draw(canvas);
        Paint paint = new Paint();
        paint.setTextSize(labelSize);
        paint.setColor(labelColor);
        canvas.drawText(label, getWidth() / 2 + j, j / 4 + i, paint);
    }

    private void drawCoverRect(Canvas canvas)
    {
        Drawable drawable = getContext().getResources().getDrawable(wheelCover);
        drawable.setBounds(0, 0, getWidth(), getHeight());
        drawable.draw(canvas);
    }

    private void drawItems(Canvas canvas)
    {
        canvas.save();
        canvas.translate(10F, -((currentItem - firstItem) * getItemHeight() + (getItemHeight() - getHeight()) / 2) + scrollingOffset);
        itemsLayout.draw(canvas);
        canvas.restore();
    }

    private void drawShadows(Canvas canvas)
    {
        int i = (int)(1.5D * (double)getItemHeight());
        topShadow.setBounds(0, 0, getWidth(), i);
        topShadow.draw(canvas);
        bottomShadow.setBounds(0, getHeight() - i, getWidth(), getHeight());
        bottomShadow.draw(canvas);
    }

    private int getDesiredHeight(LinearLayout linearlayout)
    {
        if (linearlayout != null && linearlayout.getChildAt(0) != null)
        {
            itemHeight = linearlayout.getChildAt(0).getMeasuredHeight();
        }
        return Math.max(itemHeight * visibleItems - (itemHeight * 0) / 50, getSuggestedMinimumHeight());
    }

    private int getItemHeight()
    {
        if (itemHeight != 0)
        {
            return itemHeight;
        }
        if (itemsLayout != null && itemsLayout.getChildAt(0) != null)
        {
            itemHeight = itemsLayout.getChildAt(0).getHeight();
            return itemHeight;
        } else
        {
            return getHeight() / visibleItems;
        }
    }

    private ItemsRange getItemsRange()
    {
        if (getItemHeight() == 0)
        {
            return null;
        }
        int i = currentItem;
        int j;
        for (j = 1; getItemHeight() * j < getHeight(); j += 2)
        {
            i--;
        }

        int i1 = j;
        int l = i;
        if (scrollingOffset != 0)
        {
            l = i;
            if (scrollingOffset > 0)
            {
                l = i - 1;
            }
            i = scrollingOffset / getItemHeight();
            l -= i;
            i1 = (int)((double)(j + 1) + Math.asin(i));
        }
        return new ItemsRange(l, i1);
    }

    private void initData(Context context)
    {
        scroller = new WheelScroller(getContext(), scrollingListener);
    }

    private void initResourcesIfNecessary()
    {
        if (centerDrawable == null)
        {
            centerDrawable = getContext().getResources().getDrawable(wheelForeground);
        }
        if (topShadow == null)
        {
            topShadow = new GradientDrawable(android.graphics.drawable.GradientDrawable.Orientation.TOP_BOTTOM, SHADOWS_COLORS);
        }
        if (bottomShadow == null)
        {
            bottomShadow = new GradientDrawable(android.graphics.drawable.GradientDrawable.Orientation.BOTTOM_TOP, SHADOWS_COLORS);
        }
        if (weelBackgroundColor == 0)
        {
            setBackgroundResource(wheelBackground);
        }
    }

    private boolean isValidItemIndex(int i)
    {
        return viewAdapter != null && viewAdapter.getItemsCount() > 0 && (isCyclic || i >= 0 && i < viewAdapter.getItemsCount());
    }

    private void layout(int i, int j)
    {
        itemsLayout.layout(0, 0, i - 20, j);
    }

    private boolean rebuildItems()
    {
        ItemsRange itemsrange;
        int i;
        int j;
        boolean flag1;
        itemsrange = getItemsRange();
        boolean flag;
        if (itemsLayout != null)
        {
            i = recycle.recycleItems(itemsLayout, firstItem, itemsrange);
            int l;
            if (firstItem != i)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            firstItem = i;
        } else
        {
            createItemsLayout();
            flag = true;
        }
        flag1 = flag;
        if (!flag)
        {
            if (firstItem != itemsrange.getFirst() || itemsLayout.getChildCount() != itemsrange.getCount())
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
        }
        if (firstItem <= itemsrange.getFirst() || firstItem > itemsrange.getLast()) goto _L2; else goto _L1
_L1:
        i = firstItem - 1;
_L7:
        if (i >= itemsrange.getFirst() && addViewItem(i, true)) goto _L4; else goto _L3
_L3:
        j = firstItem;
        for (i = itemsLayout.getChildCount(); i < itemsrange.getCount();)
        {
            l = j;
            if (!addViewItem(firstItem + i, false))
            {
                l = j;
                if (itemsLayout.getChildCount() == 0)
                {
                    l = j + 1;
                }
            }
            i++;
            j = l;
        }

        break; /* Loop/switch isn't completed */
_L4:
        firstItem = i;
        i--;
        continue; /* Loop/switch isn't completed */
_L2:
        firstItem = itemsrange.getFirst();
        if (true) goto _L3; else goto _L5
_L5:
        firstItem = j;
        return flag1;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private void updateView()
    {
        if (rebuildItems())
        {
            calculateLayoutWidth(getWidth(), 0x40000000);
            layout(getWidth(), getHeight());
        }
    }

    public void addChangingListener(OnWheelChangedListener onwheelchangedlistener)
    {
        changingListeners.add(onwheelchangedlistener);
    }

    public void addClickingListener(OnWheelClickedListener onwheelclickedlistener)
    {
        clickingListeners.add(onwheelclickedlistener);
    }

    public void addScrollingListener(OnWheelScrollListener onwheelscrolllistener)
    {
        scrollingListeners.add(onwheelscrolllistener);
    }

    public boolean drawShadows()
    {
        return drawShadows;
    }

    public int getCurrentItem()
    {
        return currentItem;
    }

    public int getCurrentItemColor()
    {
        return currentItemColor;
    }

    public int getCurrentItemSize()
    {
        return currentItemSize;
    }

    public View getItemView(int i)
    {
        if (viewAdapter == null || viewAdapter.getItemsCount() == 0)
        {
            return null;
        }
        int l = viewAdapter.getItemsCount();
        int j = i;
        if (!isValidItemIndex(i))
        {
            return viewAdapter.getEmptyItem(recycle.getEmptyItem(), itemsLayout);
        }
        for (; j < 0; j += l) { }
        return viewAdapter.getItem(j % l, recycle.getItem(), itemsLayout);
    }

    public int getLabelColor()
    {
        return labelColor;
    }

    public int getLabelSize()
    {
        return labelSize;
    }

    public WheelViewAdapter getViewAdapter()
    {
        return viewAdapter;
    }

    public int getVisibleItems()
    {
        return visibleItems;
    }

    public void invalidateWheel(boolean flag)
    {
        if (!flag) goto _L2; else goto _L1
_L1:
        recycle.clearAll();
        if (itemsLayout != null)
        {
            itemsLayout.removeAllViews();
        }
        scrollingOffset = 0;
_L4:
        invalidate();
        return;
_L2:
        if (itemsLayout != null)
        {
            recycle.recycleItems(itemsLayout, firstItem, new ItemsRange());
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean isChangeAllItemSizeByCurrentitem()
    {
        return changeAllItemSizeByCurrentitem;
    }

    public boolean isCyclic()
    {
        return isCyclic;
    }

    public String k()
    {
        return label;
    }

    protected void notifyChangingListeners(int i, int j)
    {
        for (Iterator iterator = changingListeners.iterator(); iterator.hasNext(); ((OnWheelChangedListener)iterator.next()).onChanged(this, i, j)) { }
    }

    protected void notifyClickListenersAboutClick(int i)
    {
        for (Iterator iterator = clickingListeners.iterator(); iterator.hasNext(); ((OnWheelClickedListener)iterator.next()).onItemClicked(this, i)) { }
    }

    protected void notifyScrollingListenersAboutEnd()
    {
        for (Iterator iterator = scrollingListeners.iterator(); iterator.hasNext(); ((OnWheelScrollListener)iterator.next()).onScrollingFinished(this)) { }
    }

    protected void notifyScrollingListenersAboutStart()
    {
        for (Iterator iterator = scrollingListeners.iterator(); iterator.hasNext(); ((OnWheelScrollListener)iterator.next()).onScrollingStarted(this)) { }
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        if (viewAdapter != null && viewAdapter.getItemsCount() > 0)
        {
            updateView();
            drawCenterRect(canvas);
            drawItems(canvas);
            if (wheelForeground != 0x7f02018f)
            {
                drawCoverRect(canvas);
            }
        }
        if (drawShadows)
        {
            drawShadows(canvas);
        }
    }

    protected void onLayout(boolean flag, int i, int j, int l, int i1)
    {
        layout(l - i, i1 - j);
    }

    protected void onMeasure(int i, int j)
    {
        int j1;
        int k1;
        int l = android.view.View.MeasureSpec.getMode(i);
        j1 = android.view.View.MeasureSpec.getMode(j);
        i = android.view.View.MeasureSpec.getSize(i);
        j = android.view.View.MeasureSpec.getSize(j);
        buildViewForMeasuring();
        k1 = calculateLayoutWidth(i, l);
        if (j1 != 0x40000000) goto _L2; else goto _L1
_L1:
        i = j;
_L4:
        setMeasuredDimension(k1, i);
        return;
_L2:
        int i1 = getDesiredHeight(itemsLayout);
        i = i1;
        if (j1 == 0x80000000)
        {
            i = Math.min(i1, j);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (!isEnabled() || getViewAdapter() == null)
        {
            return true;
        }
        motionevent.getAction();
        JVM INSTR tableswitch 1 2: default 44
    //                   1 73
    //                   2 53;
           goto _L1 _L2 _L3
_L1:
        return scroller.onTouchEvent(motionevent);
_L3:
        if (getParent() != null)
        {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (!isScrollingPerformed)
        {
            int i = (int)motionevent.getY() - getHeight() / 2;
            if (i > 0)
            {
                i += getItemHeight() / 2;
            } else
            {
                i -= getItemHeight() / 2;
            }
            i /= getItemHeight();
            if (i != 0 && isValidItemIndex(currentItem + i))
            {
                notifyClickListenersAboutClick(currentItem + i);
            }
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public void removeChangingListener(OnWheelChangedListener onwheelchangedlistener)
    {
        changingListeners.remove(onwheelchangedlistener);
    }

    public void removeClickingListener(OnWheelClickedListener onwheelclickedlistener)
    {
        clickingListeners.remove(onwheelclickedlistener);
    }

    public void removeScrollingListener(OnWheelScrollListener onwheelscrolllistener)
    {
        scrollingListeners.remove(onwheelscrolllistener);
    }

    public void scroll(int i, int j)
    {
        int l = getItemHeight();
        int i1 = scrollingOffset;
        scroller.scroll(l * i - i1, j);
    }

    public void setChangeAllItemSizeByCurrentitem(boolean flag)
    {
        changeAllItemSizeByCurrentitem = flag;
    }

    public void setCurrentItem(int i)
    {
        setCurrentItem(i, false);
    }

    public void setCurrentItem(int i, boolean flag)
    {
        if (viewAdapter != null && viewAdapter.getItemsCount() != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int j;
        int i1;
        i1 = viewAdapter.getItemsCount();
        if (i < 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        j = i;
        if (i < i1)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (!isCyclic) goto _L1; else goto _L3
_L3:
        for (; i < 0; i += i1) { }
        j = i % i1;
        if (j == currentItem) goto _L1; else goto _L4
_L4:
        if (flag)
        {
            int l = j - currentItem;
            i = l;
            if (isCyclic)
            {
                j = (Math.min(j, currentItem) + i1) - Math.max(j, currentItem);
                i = l;
                if (j < Math.abs(l))
                {
                    if (l < 0)
                    {
                        i = j;
                    } else
                    {
                        i = -j;
                    }
                }
            }
            scroll(i, 0);
        } else
        {
            scrollingOffset = 0;
            i = currentItem;
            currentItem = j;
            notifyChangingListeners(i, currentItem);
            invalidate();
        }
        dataObserver.onInvalidated();
        return;
    }

    public void setCurrentItemColor(int i)
    {
        currentItemColor = i;
    }

    public void setCurrentItemSize(int i)
    {
        currentItemSize = i;
    }

    public void setCyclic(boolean flag)
    {
        isCyclic = flag;
        invalidateWheel(false);
    }

    public void setDrawShadows(boolean flag)
    {
        drawShadows = flag;
    }

    public void setInterpolator(Interpolator interpolator)
    {
        scroller.setInterpolator(interpolator);
    }

    public void setLabel(String s)
    {
        label = s;
    }

    public void setLabelColor(int i)
    {
        labelColor = i;
    }

    public void setLabelSize(int i)
    {
        labelSize = i;
    }

    public void setShadowColor(int i, int j, int l)
    {
        SHADOWS_COLORS = (new int[] {
            i, j, l
        });
    }

    public void setViewAdapter(WheelViewAdapter wheelviewadapter)
    {
        if (viewAdapter != null)
        {
            viewAdapter.unregisterDataSetObserver(dataObserver);
        }
        viewAdapter = wheelviewadapter;
        if (viewAdapter != null)
        {
            viewAdapter.registerDataSetObserver(dataObserver);
        }
        invalidateWheel(true);
    }

    public void setVisibleItems(int i)
    {
        visibleItems = i;
    }

    public void setWheelBackground(int i)
    {
        wheelBackground = i;
        setBackgroundResource(wheelBackground);
    }

    public void setWheelBackgroundColor(int i)
    {
        weelBackgroundColor = i;
        setBackgroundColor(i);
    }

    public void setWheelForeground(int i)
    {
        wheelForeground = i;
        centerDrawable = getContext().getResources().getDrawable(wheelForeground);
    }

    public void stopScrolling()
    {
        scroller.stopScrolling();
    }



/*
    static boolean access$002(WheelView wheelview, boolean flag)
    {
        wheelview.isScrollingPerformed = flag;
        return flag;
    }

*/




/*
    static int access$202(WheelView wheelview, int i)
    {
        wheelview.scrollingOffset = i;
        return i;
    }

*/

}
