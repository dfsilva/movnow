// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.views;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.util.SparseArrayCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.EdgeEffectCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

// Referenced classes of package com.veclink.waterfall.views:
//            ScrollerCompat, FastScroller

public class StaggeredGridView extends ViewGroup
{
    public static class AdapterContextMenuInfo
        implements android.view.ContextMenu.ContextMenuInfo
    {

        public long id;
        public int position;
        public View targetView;

        public AdapterContextMenuInfo(View view, int i, long l)
        {
            targetView = view;
            position = i;
            id = l;
        }
    }

    private class AdapterDataSetObserver extends DataSetObserver
    {

        final StaggeredGridView this$0;

        public void onChanged()
        {
            mDataChanged = true;
            mItemCount = mAdapter.getCount();
            mRecycler.clearTransientViews();
            if (!mHasStableIds)
            {
                mLayoutRecords.clear();
                recycleAllViews();
                int j = mColCount;
                for (int i = 0; i < j; i++)
                {
                    mItemBottoms[i] = mItemTops[i];
                }

            }
            if (mFirstPosition > mItemCount - 1 || mAdapter.getItemId(mFirstPosition) != mFirstAdapterId)
            {
                mFirstPosition = 0;
                Arrays.fill(mItemTops, 0);
                Arrays.fill(mItemBottoms, 0);
                if (mRestoreOffsets != null)
                {
                    Arrays.fill(mRestoreOffsets, 0);
                }
            }
            requestLayout();
        }

        public void onInvalidated()
        {
        }

        private AdapterDataSetObserver()
        {
            this$0 = StaggeredGridView.this;
            super();
        }

    }

    private class CheckForLongPress extends WindowRunnnable
        implements Runnable
    {

        final StaggeredGridView this$0;

        public void run()
        {
label0:
            {
                int i = mMotionPosition;
                View view = getChildAt(i - mFirstPosition);
                if (view != null)
                {
                    int j = mMotionPosition;
                    long l = mAdapter.getItemId(mMotionPosition);
                    boolean flag1 = false;
                    boolean flag = flag1;
                    if (sameWindow())
                    {
                        flag = flag1;
                        if (!mDataChanged)
                        {
                            flag = performLongPress(view, j, l);
                        }
                    }
                    if (!flag)
                    {
                        break label0;
                    }
                    mTouchMode = 6;
                    setPressed(false);
                    view.setPressed(false);
                }
                return;
            }
            mTouchMode = 5;
        }

        private CheckForLongPress()
        {
            this$0 = StaggeredGridView.this;
            super();
        }

    }

    final class CheckForTap
        implements Runnable
    {

        final StaggeredGridView this$0;

        public void run()
        {
label0:
            {
                if (mTouchMode == 3)
                {
                    mTouchMode = 4;
                    View view = getChildAt(mMotionPosition - mFirstPosition);
                    if (view != null && !view.hasFocusable())
                    {
                        if (mDataChanged)
                        {
                            break label0;
                        }
                        view.setSelected(true);
                        view.setPressed(true);
                        setPressed(true);
                        layoutChildren(false);
                        positionSelector(mMotionPosition, view);
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
                            if (mPendingCheckForLongPress == null)
                            {
                                mPendingCheckForLongPress = new CheckForLongPress();
                            }
                            mPendingCheckForLongPress.rememberWindowAttachCount();
                            postDelayed(mPendingCheckForLongPress, i);
                        } else
                        {
                            mTouchMode = 5;
                        }
                        postInvalidate();
                    }
                }
                return;
            }
            mTouchMode = 5;
        }

        CheckForTap()
        {
            this$0 = StaggeredGridView.this;
            super();
        }
    }

    static class ColMap
        implements Parcelable
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public ColMap createFromParcel(Parcel parcel)
            {
                return new ColMap(parcel);
            }

            public volatile Object createFromParcel(Parcel parcel)
            {
                return createFromParcel(parcel);
            }

            public ColMap[] newArray(int i)
            {
                return new ColMap[i];
            }

            public volatile Object[] newArray(int i)
            {
                return newArray(i);
            }

        };
        int tempMap[];
        private ArrayList values;

        public int describeContents()
        {
            return 0;
        }

        int[] toIntArray(ArrayList arraylist)
        {
            int ai[] = new int[arraylist.size()];
            for (int i = 0; i < ai.length; i++)
            {
                ai[i] = ((Integer)arraylist.get(i)).intValue();
            }

            return ai;
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            tempMap = toIntArray(values);
            parcel.writeIntArray(tempMap);
        }



        private ColMap(Parcel parcel)
        {
            parcel.readIntArray(tempMap);
            values = new ArrayList();
            for (int i = 0; i < tempMap.length; i++)
            {
                values.add(Integer.valueOf(tempMap[i]));
            }

        }


        public ColMap(ArrayList arraylist)
        {
            values = arraylist;
        }
    }

    public static class LayoutParams extends android.view.ViewGroup.LayoutParams
    {

        private static final int LAYOUT_ATTRS[] = {
            0x101014d
        };
        private static final int SPAN_INDEX = 0;
        int column;
        long id;
        int position;
        public int span;
        int viewType;


        public LayoutParams(int i)
        {
            super(-1, i);
            span = 1;
            id = -1L;
            if (height == -1)
            {
                Log.w("StaggeredGridView", "Constructing LayoutParams with height FILL_PARENT - impossible! Falling back to WRAP_CONTENT");
                height = -2;
            }
        }

        public LayoutParams(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
            span = 1;
            id = -1L;
            if (width != -1)
            {
                Log.w("StaggeredGridView", (new StringBuilder()).append("Inflation setting LayoutParams width to ").append(width).append(" - must be MATCH_PARENT").toString());
                width = -1;
            }
            if (height == -1)
            {
                Log.w("StaggeredGridView", "Inflation setting LayoutParams height to MATCH_PARENT - impossible! Falling back to WRAP_CONTENT");
                height = -2;
            }
            context = context.obtainStyledAttributes(attributeset, LAYOUT_ATTRS);
            span = context.getInteger(0, 1);
            context.recycle();
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
        {
            super(layoutparams);
            span = 1;
            id = -1L;
            if (width != -1)
            {
                Log.w("StaggeredGridView", (new StringBuilder()).append("Constructing LayoutParams with width ").append(width).append(" - must be MATCH_PARENT").toString());
                width = -1;
            }
            if (height == -1)
            {
                Log.w("StaggeredGridView", "Constructing LayoutParams with height MATCH_PARENT - impossible! Falling back to WRAP_CONTENT");
                height = -2;
            }
        }
    }

    private static final class LayoutRecord
    {

        public int column;
        public int height;
        public long id;
        private int mMargins[];
        public int span;

        private final void ensureMargins()
        {
            if (mMargins == null)
            {
                mMargins = new int[span * 2];
            }
        }

        public final int getMarginAbove(int i)
        {
            if (mMargins == null)
            {
                return 0;
            } else
            {
                return mMargins[i * 2];
            }
        }

        public final int getMarginBelow(int i)
        {
            if (mMargins == null)
            {
                return 0;
            } else
            {
                return mMargins[i * 2 + 1];
            }
        }

        public final void setMarginAbove(int i, int j)
        {
            if (mMargins == null && j == 0)
            {
                return;
            } else
            {
                ensureMargins();
                mMargins[i * 2] = j;
                return;
            }
        }

        public final void setMarginBelow(int i, int j)
        {
            if (mMargins == null && j == 0)
            {
                return;
            } else
            {
                ensureMargins();
                mMargins[i * 2 + 1] = j;
                return;
            }
        }

        public String toString()
        {
            String s1 = (new StringBuilder()).append("LayoutRecord{c=").append(column).append(", id=").append(id).append(" h=").append(height).append(" s=").append(span).toString();
            String s = s1;
            if (mMargins != null)
            {
                s = (new StringBuilder()).append(s1).append(" margins[above, below](").toString();
                for (int i = 0; i < mMargins.length; i += 2)
                {
                    s = (new StringBuilder()).append(s).append("[").append(mMargins[i]).append(", ").append(mMargins[i + 1]).append("]").toString();
                }

                s = (new StringBuilder()).append(s).append(")").toString();
            }
            return (new StringBuilder()).append(s).append("}").toString();
        }

        private LayoutRecord()
        {
            id = -1L;
        }

    }

    public static interface OnItemClickListener
    {

        public abstract void onItemClick(StaggeredGridView staggeredgridview, View view, int i, long l);
    }

    public static interface OnItemLongClickListener
    {

        public abstract boolean onItemLongClick(StaggeredGridView staggeredgridview, View view, int i, long l);
    }

    public static interface OnScrollListener
    {

        public static final int SCROLL_STATE_FLING = 2;
        public static final int SCROLL_STATE_IDLE = 0;
        public static final int SCROLL_STATE_TOUCH_SCROLL = 1;

        public abstract void onScroll(StaggeredGridView staggeredgridview, int i, int j, int k);

        public abstract void onScrollStateChanged(StaggeredGridView staggeredgridview, int i);
    }

    private class PerformClick extends WindowRunnnable
        implements Runnable
    {

        int mClickMotionPosition;
        final StaggeredGridView this$0;

        public void run()
        {
            if (!mDataChanged)
            {
                ListAdapter listadapter = mAdapter;
                int i = mClickMotionPosition;
                if (listadapter != null && mItemCount > 0 && i != -1 && i < listadapter.getCount() && sameWindow())
                {
                    View view = getChildAt(i - mFirstPosition);
                    if (view != null)
                    {
                        performItemClick(view, i, listadapter.getItemId(i));
                        return;
                    }
                }
            }
        }

        private PerformClick()
        {
            this$0 = StaggeredGridView.this;
            super();
        }

    }

    private class RecycleBin
    {

        private int mMaxScrap;
        private ArrayList mScrapViews[];
        private SparseArray mTransientStateViews;
        private int mViewTypeCount;
        final StaggeredGridView this$0;

        public void addScrap(View view)
        {
            Object obj = (LayoutParams)view.getLayoutParams();
            if (ViewCompat.hasTransientState(view))
            {
                if (mTransientStateViews == null)
                {
                    mTransientStateViews = new SparseArray();
                }
                mTransientStateViews.put(((LayoutParams) (obj)).position, view);
            } else
            {
                int i = getChildCount();
                if (i > mMaxScrap)
                {
                    mMaxScrap = i;
                }
                obj = mScrapViews[((LayoutParams) (obj)).viewType];
                if (((ArrayList) (obj)).size() < mMaxScrap)
                {
                    ((ArrayList) (obj)).add(view);
                    return;
                }
            }
        }

        public void clear()
        {
            int j = mViewTypeCount;
            for (int i = 0; i < j; i++)
            {
                mScrapViews[i].clear();
            }

            if (mTransientStateViews != null)
            {
                mTransientStateViews.clear();
            }
        }

        public void clearTransientViews()
        {
            if (mTransientStateViews != null)
            {
                mTransientStateViews.clear();
            }
        }

        public View getScrapView(int i)
        {
            ArrayList arraylist = mScrapViews[i];
            if (arraylist.isEmpty())
            {
                return null;
            } else
            {
                i = arraylist.size() - 1;
                View view = (View)arraylist.get(i);
                arraylist.remove(i);
                return view;
            }
        }

        public View getTransientStateView(int i)
        {
            View view;
            if (mTransientStateViews == null)
            {
                view = null;
            } else
            {
                View view1 = (View)mTransientStateViews.get(i);
                view = view1;
                if (view1 != null)
                {
                    mTransientStateViews.remove(i);
                    return view1;
                }
            }
            return view;
        }

        public void setViewTypeCount(int i)
        {
            if (i < 1)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Must have at least one view type (").append(i).append(" types reported)").toString());
            }
            if (i == mViewTypeCount)
            {
                return;
            }
            ArrayList aarraylist[] = new ArrayList[i];
            for (int j = 0; j < i; j++)
            {
                aarraylist[j] = new ArrayList();
            }

            mViewTypeCount = i;
            mScrapViews = aarraylist;
        }

        private RecycleBin()
        {
            this$0 = StaggeredGridView.this;
            super();
        }

    }

    static class SavedState extends android.view.View.BaseSavedState
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public SavedState createFromParcel(Parcel parcel)
            {
                return new SavedState(parcel);
            }

            public volatile Object createFromParcel(Parcel parcel)
            {
                return createFromParcel(parcel);
            }

            public SavedState[] newArray(int i)
            {
                return new SavedState[i];
            }

            public volatile Object[] newArray(int i)
            {
                return newArray(i);
            }

        };
        long firstId;
        ArrayList mapping;
        int position;
        int topOffsets[];

        public String toString()
        {
            return (new StringBuilder()).append("StaggereGridView.SavedState{").append(Integer.toHexString(System.identityHashCode(this))).append(" firstId=").append(firstId).append(" position=").append(position).append("}").toString();
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            super.writeToParcel(parcel, i);
            parcel.writeLong(firstId);
            parcel.writeInt(position);
            parcel.writeIntArray(topOffsets);
            parcel.writeTypedList(mapping);
        }


        private SavedState(Parcel parcel)
        {
            super(parcel);
            firstId = -1L;
            firstId = parcel.readLong();
            position = parcel.readInt();
            parcel.readIntArray(topOffsets);
            parcel.readTypedList(mapping, ColMap.CREATOR);
        }


        SavedState(Parcelable parcelable)
        {
            super(parcelable);
            firstId = -1L;
        }
    }

    public static interface SelectionBoundsAdjuster
    {

        public abstract void adjustListItemSelectionBounds(Rect rect);
    }

    private class WindowRunnnable
    {

        private int mOriginalAttachCount;
        final StaggeredGridView this$0;

        public void rememberWindowAttachCount()
        {
            mOriginalAttachCount = getWindowAttachCount();
        }

        public boolean sameWindow()
        {
            return hasWindowFocus() && getWindowAttachCount() == mOriginalAttachCount;
        }

        private WindowRunnnable()
        {
            this$0 = StaggeredGridView.this;
            super();
        }

    }


    public static final int COLUMN_COUNT_AUTO = -1;
    private static final int INVALID_POSITION = -1;
    public static final long INVALID_ROW_ID = 0x8000000000000000L;
    static final int LAYOUT_FORCE_BOTTOM = 3;
    static final int LAYOUT_FORCE_TOP = 1;
    static final int LAYOUT_MOVE_SELECTION = 6;
    static final int LAYOUT_NORMAL = 0;
    static final int LAYOUT_SET_SELECTION = 2;
    static final int LAYOUT_SPECIFIC = 4;
    static final int LAYOUT_SYNC = 5;
    private static final String TAG = "StaggeredGridView";
    private static final int TOUCH_MODE_DONE_WAITING = 5;
    private static final int TOUCH_MODE_DOWN = 3;
    private static final int TOUCH_MODE_DRAGGING = 1;
    private static final int TOUCH_MODE_FLINGING = 2;
    private static final int TOUCH_MODE_IDLE = 0;
    private static final int TOUCH_MODE_REST = 6;
    private static final int TOUCH_MODE_TAP = 4;
    private int mActivePointerId;
    private ListAdapter mAdapter;
    private boolean mAreAllItemsSelectable;
    private boolean mBeginClick;
    private final EdgeEffectCompat mBottomEdge;
    private int mColCount;
    private int mColCountSetting;
    private ArrayList mColMappings;
    private int mColWidth;
    private android.view.ContextMenu.ContextMenuInfo mContextMenuInfo;
    private boolean mDataChanged;
    boolean mDrawSelectorOnTop;
    private boolean mFastChildLayout;
    private boolean mFastScrollEnabled;
    private FastScroller mFastScroller;
    private long mFirstAdapterId;
    private int mFirstPosition;
    private int mFlingVelocity;
    private boolean mHasStableIds;
    private boolean mInLayout;
    private boolean mIsChildViewEnabled;
    private int mItemBottoms[];
    private int mItemCount;
    private int mItemTops[];
    private int mLastScrollState;
    private float mLastTouchX;
    private float mLastTouchY;
    int mLayoutMode;
    private final SparseArrayCompat mLayoutRecords;
    private int mMaximumVelocity;
    private int mMinColWidth;
    private int mMotionPosition;
    int mNextSelectedPosition;
    long mNextSelectedRowId;
    private final AdapterDataSetObserver mObserver;
    OnItemClickListener mOnItemClickListener;
    OnItemLongClickListener mOnItemLongClickListener;
    private OnScrollListener mOnScrollListener;
    private CheckForLongPress mPendingCheckForLongPress;
    private Runnable mPendingCheckForTap;
    private PerformClick mPerformClick;
    private boolean mPopulating;
    private final RecycleBin mRecycler;
    private int mRestoreOffsets[];
    private final ScrollerCompat mScroller;
    int mSelectedPosition;
    long mSelectedRowId;
    int mSelectionBottomPadding;
    int mSelectionLeftPadding;
    int mSelectionRightPadding;
    int mSelectionTopPadding;
    Drawable mSelector;
    int mSelectorPosition;
    Rect mSelectorRect;
    private boolean mSmoothScrollbarEnabled;
    private final EdgeEffectCompat mTopEdge;
    private Rect mTouchFrame;
    private int mTouchMode;
    private Runnable mTouchModeReset;
    private float mTouchRemainderY;
    private int mTouchSlop;
    private final VelocityTracker mVelocityTracker;

    public StaggeredGridView(Context context)
    {
        this(context, null);
    }

    public StaggeredGridView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public StaggeredGridView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mColCountSetting = 2;
        mColCount = 2;
        mMinColWidth = 0;
        mRecycler = new RecycleBin();
        mObserver = new AdapterDataSetObserver();
        mSmoothScrollbarEnabled = true;
        mFastScrollEnabled = true;
        mVelocityTracker = VelocityTracker.obtain();
        mColMappings = new ArrayList();
        mContextMenuInfo = null;
        mAreAllItemsSelectable = true;
        mNextSelectedPosition = -1;
        mNextSelectedRowId = 0x8000000000000000L;
        mSelectedPosition = -1;
        mSelectedRowId = 0x8000000000000000L;
        mLastScrollState = 0;
        mDrawSelectorOnTop = false;
        mSelectionLeftPadding = 0;
        mSelectionTopPadding = 0;
        mSelectionRightPadding = 0;
        mSelectionBottomPadding = 0;
        mSelectorRect = new Rect();
        mSelectorPosition = -1;
        mLayoutMode = 0;
        mLayoutRecords = new SparseArrayCompat();
        if (attributeset != null)
        {
            attributeset = getContext().obtainStyledAttributes(attributeset, com.veclink.movnow.healthy_q2.R.styleable.StaggeredGridView);
            mColCount = attributeset.getInteger(1, 2);
            mDrawSelectorOnTop = attributeset.getBoolean(0, false);
            attributeset.recycle();
        } else
        {
            mColCount = 2;
            mDrawSelectorOnTop = false;
        }
        attributeset = ViewConfiguration.get(context);
        mTouchSlop = attributeset.getScaledTouchSlop();
        mMaximumVelocity = attributeset.getScaledMaximumFlingVelocity();
        mFlingVelocity = attributeset.getScaledMinimumFlingVelocity();
        mScroller = ScrollerCompat.from(context);
        mTopEdge = new EdgeEffectCompat(context);
        mBottomEdge = new EdgeEffectCompat(context);
        setWillNotDraw(false);
        setClipToPadding(false);
        setFocusableInTouchMode(false);
        if (mSelector == null)
        {
            useDefaultSelector();
        }
    }

    private void clearAllState()
    {
        mLayoutRecords.clear();
        removeAllViews();
        resetStateForGridTop();
        mRecycler.clear();
        mSelectorRect.setEmpty();
        mSelectorPosition = -1;
    }

    private final boolean contentFits()
    {
        if (mFirstPosition == 0 && getChildCount() == mItemCount)
        {
            int l = 0x7fffffff;
            int j = 0x80000000;
            for (int i = 0; i < mColCount;)
            {
                int k = l;
                if (mItemTops[i] < l)
                {
                    k = mItemTops[i];
                }
                l = j;
                if (mItemBottoms[i] > j)
                {
                    l = mItemBottoms[i];
                }
                i++;
                j = l;
                l = k;
            }

            if (l >= getPaddingTop() && j <= getHeight() - getPaddingBottom())
            {
                return true;
            }
        }
        return false;
    }

    private void displayMapping()
    {
        Log.w("DISPLAY", "MAP ****************");
        StringBuilder stringbuilder = new StringBuilder();
        int i = 0;
        for (Iterator iterator = mColMappings.iterator(); iterator.hasNext();)
        {
            Object obj = (ArrayList)iterator.next();
            stringbuilder.append((new StringBuilder()).append("COL").append(i).append(":").toString());
            stringbuilder.append(' ');
            for (obj = ((ArrayList) (obj)).iterator(); ((Iterator) (obj)).hasNext(); stringbuilder.append(" , "))
            {
                stringbuilder.append((Integer)((Iterator) (obj)).next());
            }

            Log.w("DISPLAY", stringbuilder.toString());
            stringbuilder = new StringBuilder();
            i++;
        }

        Log.w("DISPLAY", "MAP END ****************");
    }

    private void drawSelector(Canvas canvas)
    {
        if (!mSelectorRect.isEmpty() && mSelector != null && mBeginClick)
        {
            Drawable drawable = mSelector;
            drawable.setBounds(mSelectorRect);
            drawable.draw(canvas);
        }
    }

    private int getBottomSelectionPixel(int i, int j, int k)
    {
        int l = i;
        if (k != mItemCount - 1)
        {
            l = i - j;
        }
        return l;
    }

    private View getFirstChildAtColumn(int i)
    {
        if (getChildCount() > i)
        {
            for (int j = 0; j < mColCount; j++)
            {
                View view = getChildAt(j);
                int l = view.getLeft();
                if (view == null)
                {
                    continue;
                }
                int k;
                for (k = 0; l > mColWidth * k + getPaddingLeft(); k++) { }
                if (k == i)
                {
                    return view;
                }
            }

        }
        return null;
    }

    private int getSelectedItemPosition()
    {
        return mSelectorPosition;
    }

    private int getTopSelectionPixel(int i, int j, int k)
    {
        int l = i;
        if (k > 0)
        {
            l = i + j;
        }
        return l;
    }

    private void populate(boolean flag)
    {
        if (getWidth() != 0 && getHeight() != 0)
        {
            if (mColCount == -1)
            {
                int i = getWidth() / mMinColWidth;
                if (i != mColCount)
                {
                    mColCount = i;
                }
            }
            int j1 = mColCount;
            if (mColMappings.size() != mColCount)
            {
                mColMappings.clear();
                for (int j = 0; j < mColCount; j++)
                {
                    mColMappings.add(new ArrayList());
                }

            }
            if (mItemTops == null || mItemTops.length != j1)
            {
                mItemTops = new int[j1];
                mItemBottoms = new int[j1];
                mLayoutRecords.clear();
                int ai[];
                int k;
                int k1;
                if (mInLayout)
                {
                    removeAllViewsInLayout();
                } else
                {
                    removeAllViews();
                }
            }
            k1 = getPaddingTop();
            k = 0;
            while (k < j1) 
            {
                int l;
                int i1;
                if (mRestoreOffsets != null)
                {
                    l = Math.min(mRestoreOffsets[k], 0);
                } else
                {
                    l = 0;
                }
                l = k1 + l;
                ai = mItemTops;
                if (l == 0)
                {
                    i1 = mItemTops[k];
                } else
                {
                    i1 = l;
                }
                ai[k] = i1;
                ai = mItemBottoms;
                i1 = l;
                if (l == 0)
                {
                    i1 = mItemBottoms[k];
                }
                ai[k] = i1;
                k++;
            }
            mPopulating = true;
            layoutChildren(mDataChanged);
            fillDown(mFirstPosition + getChildCount(), 0);
            fillUp(mFirstPosition - 1, 0);
            mPopulating = false;
            mDataChanged = false;
            if (flag && mRestoreOffsets != null)
            {
                Arrays.fill(mRestoreOffsets, 0);
                return;
            }
        }
    }

    private void positionSelector(int i, int j, int k, int l)
    {
        mSelectorRect.set(i - mSelectionLeftPadding, j - mSelectionTopPadding, mSelectionRightPadding + k, mSelectionBottomPadding + l);
    }

    private void recycleAllViews()
    {
        for (int i = 0; i < getChildCount(); i++)
        {
            mRecycler.addScrap(getChildAt(i));
        }

        if (mInLayout)
        {
            removeAllViewsInLayout();
            return;
        } else
        {
            removeAllViews();
            return;
        }
    }

    private void recycleOffscreenViews()
    {
        int i;
        int k;
        k = getHeight();
        i = getChildCount() - 1;
_L9:
        if (i < 0) goto _L2; else goto _L1
_L1:
        Object obj = getChildAt(i);
        if (((View) (obj)).getTop() > k) goto _L3; else goto _L2
_L2:
        if (getChildCount() <= 0) goto _L5; else goto _L4
_L4:
        obj = getChildAt(0);
        if (((View) (obj)).getBottom() < 0) goto _L6; else goto _L5
_L5:
        int i1;
        i1 = getChildCount();
        if (i1 <= 0)
        {
            break MISSING_BLOCK_LABEL_380;
        }
        Arrays.fill(mItemTops, 0x7fffffff);
        Arrays.fill(mItemBottoms, 0x80000000);
        i = 0;
_L7:
        if (i >= i1)
        {
            break MISSING_BLOCK_LABEL_337;
        }
        Object obj1 = getChildAt(i);
        obj = (LayoutParams)((View) (obj1)).getLayoutParams();
        int j1 = ((View) (obj1)).getTop();
        int k1 = ((View) (obj1)).getBottom();
        obj1 = (LayoutRecord)mLayoutRecords.get(mFirstPosition + i);
        int l1 = ((LayoutParams) (obj)).column;
        int i2 = Math.min(mColCount, ((LayoutParams) (obj)).span);
        for (int l = ((LayoutParams) (obj)).column; l < l1 + i2; l++)
        {
            int j2 = j1 - ((LayoutRecord) (obj1)).getMarginAbove(l - ((LayoutParams) (obj)).column);
            int k2 = k1 + ((LayoutRecord) (obj1)).getMarginBelow(l - ((LayoutParams) (obj)).column);
            if (j2 < mItemTops[l])
            {
                mItemTops[l] = j2;
            }
            if (k2 > mItemBottoms[l])
            {
                mItemBottoms[l] = k2;
            }
        }

        break MISSING_BLOCK_LABEL_330;
_L3:
        if (mInLayout)
        {
            removeViewsInLayout(i, 1);
        } else
        {
            removeViewAt(i);
        }
        mRecycler.addScrap(((View) (obj)));
        i--;
        continue; /* Loop/switch isn't completed */
_L6:
        if (mInLayout)
        {
            removeViewsInLayout(0, 1);
        } else
        {
            removeViewAt(0);
        }
        mRecycler.addScrap(((View) (obj)));
        mFirstPosition = mFirstPosition + 1;
          goto _L2
        i++;
          goto _L7
        for (int j = 0; j < mColCount; j++)
        {
            if (mItemTops[j] == 0x7fffffff)
            {
                mItemTops[j] = 0;
                mItemBottoms[j] = 0;
            }
        }

        return;
        if (true) goto _L9; else goto _L8
_L8:
    }

    private void resetStateForGridTop()
    {
        int i = mColCount;
        if (mItemTops == null || mItemTops.length != i)
        {
            mItemTops = new int[i];
            mItemBottoms = new int[i];
        }
        i = getPaddingTop();
        Arrays.fill(mItemTops, i);
        Arrays.fill(mItemBottoms, i);
        mFirstPosition = 0;
        if (mRestoreOffsets != null)
        {
            Arrays.fill(mRestoreOffsets, 0);
        }
    }

    private boolean trackMotionScroll(int i, boolean flag)
    {
        boolean flag1 = contentFits();
        int i1 = Math.abs(i);
        int j;
        int k;
        if (!flag1)
        {
            mPopulating = true;
            int l;
            if (i > 0)
            {
                k = fillUp(mFirstPosition - 1, i1);
                l = 1;
            } else
            {
                k = fillDown(mFirstPosition + getChildCount(), i1);
                l = 0;
            }
            j = Math.min(k, i1);
            if (l != 0)
            {
                l = j;
            } else
            {
                l = -j;
            }
            offsetChildren(l);
            recycleOffscreenViews();
            mPopulating = false;
            k = i1 - k;
        } else
        {
            k = i1;
            j = 0;
        }
        if (flag)
        {
            l = ViewCompat.getOverScrollMode(this);
            if ((l == 0 || l == 1 && !flag1) && k > 0)
            {
                EdgeEffectCompat edgeeffectcompat;
                if (i > 0)
                {
                    edgeeffectcompat = mTopEdge;
                } else
                {
                    edgeeffectcompat = mBottomEdge;
                }
                edgeeffectcompat.onPull((float)Math.abs(i) / (float)getHeight());
                invalidate();
            }
        }
        if (mSelectorPosition != -1)
        {
            k = mSelectorPosition - mFirstPosition;
            if (k >= 0 && k < getChildCount())
            {
                positionSelector(-1, getChildAt(k));
            }
        } else
        {
            mSelectorRect.setEmpty();
        }
        invokeOnItemScrollListener();
        if (!awakenScrollBars())
        {
            invalidate();
        }
        return i == 0 || j != 0;
    }

    private void useDefaultSelector()
    {
        setSelector(getResources().getDrawable(0x1080062));
    }

    public void beginFastChildLayout()
    {
        mFastChildLayout = true;
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return layoutparams instanceof LayoutParams;
    }

    public void computeScroll()
    {
        boolean flag;
        int j;
label0:
        {
            if (mScroller.computeScrollOffset())
            {
                int i = mScroller.getCurrY();
                j = (int)((float)i - mLastTouchY);
                mLastTouchY = i;
                if (!trackMotionScroll(j, false))
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (flag || mScroller.isFinished())
                {
                    break label0;
                }
                postInvalidate();
            }
            return;
        }
        if (flag)
        {
            if (ViewCompat.getOverScrollMode(this) != 2)
            {
                EdgeEffectCompat edgeeffectcompat;
                if (j > 0)
                {
                    edgeeffectcompat = mTopEdge;
                } else
                {
                    edgeeffectcompat = mBottomEdge;
                }
                edgeeffectcompat.onAbsorb(Math.abs((int)mScroller.getCurrVelocity()));
                postInvalidate();
            }
            mScroller.abortAnimation();
        }
        mTouchMode = 0;
    }

    protected int computeVerticalScrollExtent()
    {
        int k = getChildCount();
        if (k > 0)
        {
            if (mSmoothScrollbarEnabled)
            {
                int j = k * 100;
                View view = getChildAt(0);
                int l = getFillChildTop();
                int i1 = view.getHeight();
                int i = j;
                if (i1 > 0)
                {
                    i = j + (l * 100) / i1;
                }
                view = getChildAt(k - 1);
                k = getScrollChildBottom();
                l = view.getHeight();
                j = i;
                if (l > 0)
                {
                    j = i - ((k - getHeight()) * 100) / l;
                }
                return j;
            } else
            {
                return 1;
            }
        } else
        {
            return 0;
        }
    }

    protected int computeVerticalScrollOffset()
    {
        int l;
        int i1;
label0:
        {
            boolean flag = false;
            l = mFirstPosition;
            i1 = getChildCount();
            int i = ((flag) ? 1 : 0);
            if (l >= 0)
            {
                i = ((flag) ? 1 : 0);
                if (i1 > 0)
                {
                    if (!mSmoothScrollbarEnabled)
                    {
                        break label0;
                    }
                    View view = getChildAt(0);
                    i1 = getFillChildTop();
                    int j1 = view.getHeight();
                    i = ((flag) ? 1 : 0);
                    if (j1 > 0)
                    {
                        i = Math.max((l * 100 - (i1 * 100) / j1) + (int)(((float)getScrollY() / (float)getHeight()) * (float)mItemCount * 100F), 0);
                    }
                }
            }
            return i;
        }
        int k = mItemCount;
        int j;
        if (l == 0)
        {
            j = 0;
        } else
        if (l + i1 == k)
        {
            j = k;
        } else
        {
            j = l + i1 / 2;
        }
        return (int)((float)l + (float)i1 * ((float)j / (float)k));
    }

    protected int computeVerticalScrollRange()
    {
        if (mSmoothScrollbarEnabled)
        {
            return Math.max(mItemCount * 100, 0);
        } else
        {
            return mItemCount;
        }
    }

    android.view.ContextMenu.ContextMenuInfo createContextMenuInfo(View view, int i, long l)
    {
        return new AdapterContextMenuInfo(view, i, l);
    }

    protected void dispatchDraw(Canvas canvas)
    {
        boolean flag = mDrawSelectorOnTop;
        if (!flag)
        {
            drawSelector(canvas);
        }
        super.dispatchDraw(canvas);
        if (flag)
        {
            drawSelector(canvas);
        }
    }

    public void draw(Canvas canvas)
    {
label0:
        {
            super.draw(canvas);
            if (mTopEdge != null)
            {
                int i = 0;
                if (!mTopEdge.isFinished())
                {
                    mTopEdge.draw(canvas);
                    i = 1;
                }
                if (!mBottomEdge.isFinished())
                {
                    i = canvas.save();
                    int k = getWidth();
                    canvas.translate(-k, getHeight());
                    canvas.rotate(180F, k, 0.0F);
                    mBottomEdge.draw(canvas);
                    canvas.restoreToCount(i);
                    i = 1;
                }
                if (i != 0)
                {
                    invalidate();
                }
            }
            if (mFastScroller != null)
            {
                int j = getScrollY();
                if (j == 0)
                {
                    break label0;
                }
                int l = canvas.save();
                canvas.translate(0.0F, j);
                mFastScroller.draw(canvas);
                canvas.restoreToCount(l);
            }
            return;
        }
        mFastScroller.draw(canvas);
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        updateSelectorState();
    }

    public void endFastChildLayout()
    {
        mFastChildLayout = false;
        populate(false);
    }

    final int fillDown(int i, int j)
    {
        int l2 = getPaddingLeft();
        int k = getPaddingRight();
        int i3 = (getWidth() - l2 - k) / mColCount;
        int k2 = getHeight() - getPaddingBottom();
        k = getNextColumnDown(i);
        int k1 = i;
        i = k;
        do
        {
            if (i < 0 || mItemBottoms[i] >= k2 + j || k1 >= mItemCount)
            {
                break;
            }
            View view = obtainView(k1, null);
            if (view == null)
            {
                continue;
            }
            Object obj = (LayoutParams)view.getLayoutParams();
            LayoutParams layoutparams = ((LayoutParams) (obj));
            if (obj == null)
            {
                layoutparams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutparams);
            }
            LayoutRecord layoutrecord;
            int l;
            int l1;
            int i2;
            int j3;
            int k3;
            if (view.getParent() != this)
            {
                if (mInLayout)
                {
                    addViewInLayout(view, -1, layoutparams);
                } else
                {
                    addView(view);
                }
            }
            j3 = Math.min(mColCount, layoutparams.span);
            i2 = android.view.View.MeasureSpec.makeMeasureSpec(i3 * j3, 0x40000000);
            if (j3 > 1)
            {
                obj = getNextRecordDown(k1, j3);
            } else
            {
                obj = (LayoutRecord)mLayoutRecords.get(k1);
            }
            l = 0;
            if (obj == null)
            {
                layoutrecord = new LayoutRecord();
                mLayoutRecords.put(k1, layoutrecord);
                layoutrecord.column = i;
                layoutrecord.span = j3;
            } else
            {
                layoutrecord = ((LayoutRecord) (obj));
                if (j3 != ((LayoutRecord) (obj)).span)
                {
                    obj.span = j3;
                    obj.column = i;
                    l = 1;
                    layoutrecord = ((LayoutRecord) (obj));
                }
            }
            if (mHasStableIds)
            {
                long l3 = mAdapter.getItemId(k1);
                layoutrecord.id = l3;
                layoutparams.id = l3;
            }
            layoutparams.column = i;
            if (layoutparams.height == -2)
            {
                l1 = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
            } else
            {
                l1 = android.view.View.MeasureSpec.makeMeasureSpec(layoutparams.height, 0x40000000);
            }
            view.measure(i2, l1);
            k3 = view.getMeasuredHeight();
            if (l != 0 || k3 != layoutrecord.height && layoutrecord.height > 0)
            {
                invalidateLayoutRecordsAfterPosition(k1);
            }
            layoutrecord.height = k3;
            if (j3 > 1)
            {
                l = mItemBottoms[i];
                for (l1 = i + 1; l1 < i + j3;)
                {
                    int j2 = mItemBottoms[l1];
                    i2 = l;
                    if (j2 > l)
                    {
                        i2 = j2;
                    }
                    l1++;
                    l = i2;
                }

            } else
            {
                l = mItemBottoms[i];
            }
            l1 = l + k3;
            i2 = l2 + i * i3;
            view.layout(i2, l, i2 + view.getMeasuredWidth(), l1);
            if (!((ArrayList)mColMappings.get(i)).contains(Integer.valueOf(k1)))
            {
                Iterator iterator = mColMappings.iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    ArrayList arraylist = (ArrayList)iterator.next();
                    if (arraylist.contains(Integer.valueOf(k1)))
                    {
                        arraylist.remove(Integer.valueOf(k1));
                    }
                } while (true);
                ((ArrayList)mColMappings.get(i)).add(Integer.valueOf(k1));
            }
            for (int i1 = i; i1 < i + j3; i1++)
            {
                mItemBottoms[i1] = layoutrecord.getMarginBelow(i1 - i) + l1;
            }

            k1++;
            i = getNextColumnDown(k1);
        } while (true);
        j = 0;
        for (i = 0; i < mColCount;)
        {
            int j1 = j;
            if (mItemBottoms[i] > j)
            {
                j1 = mItemBottoms[i];
            }
            i++;
            j = j1;
        }

        return j - k2;
    }

    final int fillUp(int i, int j)
    {
        int k;
        int l1;
        int k2;
        int l2;
        int i3;
        l2 = getPaddingLeft();
        k = getPaddingRight();
        i3 = (getWidth() - l2 - k) / mColCount;
        mColWidth = i3;
        k2 = getPaddingTop();
        k = getNextColumnUp();
        l1 = i;
_L9:
        if (k < 0 || mItemTops[k] <= k2 - j || l1 < 0)
        {
            break; /* Loop/switch isn't completed */
        }
        i = k;
        if (((ArrayList)mColMappings.get(k)).contains(Integer.valueOf(l1))) goto _L2; else goto _L1
_L1:
        int j1 = 0;
_L7:
        i = k;
        if (j1 >= mColMappings.size()) goto _L2; else goto _L3
_L3:
        if (!((ArrayList)mColMappings.get(j1)).contains(Integer.valueOf(l1))) goto _L5; else goto _L4
_L4:
        i = j1;
_L2:
        View view1 = obtainView(l1, null);
        k = i;
        if (view1 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        Object obj = (LayoutParams)view1.getLayoutParams();
        LayoutParams layoutparams = ((LayoutParams) (obj));
        if (obj == null)
        {
            layoutparams = generateDefaultLayoutParams();
            view1.setLayoutParams(layoutparams);
        }
        LayoutRecord layoutrecord;
        int i2;
        int j3;
        int k3;
        if (view1.getParent() != this)
        {
            if (mInLayout)
            {
                addViewInLayout(view1, 0, layoutparams);
            } else
            {
                addView(view1, 0);
            }
        }
        j3 = Math.min(mColCount, layoutparams.span);
        i2 = android.view.View.MeasureSpec.makeMeasureSpec(i3 * j3, 0x40000000);
        if (j3 > 1)
        {
            obj = getNextRecordUp(l1, j3);
        } else
        {
            obj = (LayoutRecord)mLayoutRecords.get(l1);
        }
        k = 0;
        if (obj == null)
        {
            layoutrecord = new LayoutRecord();
            mLayoutRecords.put(l1, layoutrecord);
            layoutrecord.column = i;
            layoutrecord.span = j3;
        } else
        {
            layoutrecord = ((LayoutRecord) (obj));
            if (j3 != ((LayoutRecord) (obj)).span)
            {
                obj.span = j3;
                obj.column = i;
                k = 1;
                layoutrecord = ((LayoutRecord) (obj));
            }
        }
        if (mHasStableIds)
        {
            long l3 = mAdapter.getItemId(l1);
            layoutrecord.id = l3;
            layoutparams.id = l3;
        }
        layoutparams.column = i;
        if (layoutparams.height == -2)
        {
            j1 = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
        } else
        {
            j1 = android.view.View.MeasureSpec.makeMeasureSpec(layoutparams.height, 0x40000000);
        }
        view1.measure(i2, j1);
        k3 = view1.getMeasuredHeight();
        if (k != 0 || k3 != layoutrecord.height && layoutrecord.height > 0)
        {
            invalidateLayoutRecordsBeforePosition(l1);
        }
        layoutrecord.height = k3;
        if (j3 > 1)
        {
            k = mItemTops[i];
            for (j1 = i + 1; j1 < i + j3;)
            {
                int j2 = mItemTops[j1];
                i2 = k;
                if (j2 < k)
                {
                    i2 = j2;
                }
                j1++;
                k = i2;
            }

        } else
        {
            k = mItemTops[i];
        }
        break; /* Loop/switch isn't completed */
_L5:
        j1++;
        if (true) goto _L7; else goto _L6
_L6:
        j1 = k - k3;
        i2 = l2 + i * i3;
        view1.layout(i2, j1, i2 + view1.getMeasuredWidth(), k);
        for (k = i; k < i + j3; k++)
        {
            mItemTops[k] = j1 - layoutrecord.getMarginAbove(k - i);
        }

        k = getNextColumnUp();
        mFirstPosition = l1;
        l1--;
        if (true) goto _L9; else goto _L8
_L8:
        i = getHeight();
        j = 0;
        do
        {
            View view;
label0:
            {
                int l = i;
                if (j < mColCount)
                {
                    view = getFirstChildAtColumn(j);
                    if (view != null)
                    {
                        break label0;
                    }
                    l = 0;
                }
                return k2 - l;
            }
            int k1 = view.getTop();
            int i1 = i;
            if (k1 < i)
            {
                i1 = k1;
            }
            j++;
            i = i1;
        } while (true);
    }

    protected volatile android.view.ViewGroup.LayoutParams generateDefaultLayoutParams()
    {
        return generateDefaultLayoutParams();
    }

    protected LayoutParams generateDefaultLayoutParams()
    {
        return new LayoutParams(-2);
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeset)
    {
        return new LayoutParams(getContext(), attributeset);
    }

    protected volatile android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return generateLayoutParams(layoutparams);
    }

    protected LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return new LayoutParams(layoutparams);
    }

    public ListAdapter getAdapter()
    {
        return mAdapter;
    }

    public int getColumnCount()
    {
        return mColCount;
    }

    protected android.view.ContextMenu.ContextMenuInfo getContextMenuInfo()
    {
        return mContextMenuInfo;
    }

    public int getCount()
    {
        return mItemCount;
    }

    protected int getFillChildTop()
    {
        if (getChildCount() == 0)
        {
            return 0;
        } else
        {
            return getChildAt(0).getTop();
        }
    }

    public int getFirstPosition()
    {
        return mFirstPosition;
    }

    public long getItemIdAtPosition(int i)
    {
        ListAdapter listadapter = getAdapter();
        if (listadapter == null || i < 0)
        {
            return 0x8000000000000000L;
        } else
        {
            return listadapter.getItemId(i);
        }
    }

    final int getNextColumnDown(int i)
    {
        int l = -1;
        int j = 0x7fffffff;
        int j1 = mColCount;
        for (i = 0; i < j1;)
        {
            int i1 = mItemBottoms[i];
            int k = j;
            if (i1 < j)
            {
                k = i1;
                l = i;
            }
            i++;
            j = k;
        }

        return l;
    }

    final int getNextColumnUp()
    {
        int k = -1;
        int j = 0x80000000;
        for (int i = mColCount - 1; i >= 0;)
        {
            int i1 = mItemTops[i];
            int l = j;
            if (i1 > j)
            {
                l = i1;
                k = i;
            }
            i--;
            j = l;
        }

        return k;
    }

    final LayoutRecord getNextRecordDown(int i, int j)
    {
        LayoutRecord layoutrecord1 = (LayoutRecord)mLayoutRecords.get(i);
        LayoutRecord layoutrecord;
        int l;
        int i1;
        int j2;
        if (layoutrecord1 == null)
        {
            layoutrecord = new LayoutRecord();
            layoutrecord.span = j;
            mLayoutRecords.put(i, layoutrecord);
        } else
        {
            layoutrecord = layoutrecord1;
            if (layoutrecord1.span != j)
            {
                throw new IllegalStateException((new StringBuilder()).append("Invalid LayoutRecord! Record had span=").append(layoutrecord1.span).append(" but caller requested span=").append(j).append(" for position=").append(i).toString());
            }
        }
        i1 = -1;
        l = 0x7fffffff;
        j2 = mColCount;
        for (i = 0; i <= j2 - j;)
        {
            int k = 0x80000000;
            for (int j1 = i; j1 < i + j;)
            {
                int i2 = mItemBottoms[j1];
                int l1 = k;
                if (i2 > k)
                {
                    l1 = i2;
                }
                j1++;
                k = l1;
            }

            int k1 = l;
            if (k < l)
            {
                i1 = i;
                k1 = k;
            }
            i++;
            l = k1;
        }

        layoutrecord.column = i1;
        for (i = 0; i < j; i++)
        {
            layoutrecord.setMarginAbove(i, l - mItemBottoms[i + i1]);
        }

        return layoutrecord;
    }

    final LayoutRecord getNextRecordUp(int i, int j)
    {
        LayoutRecord layoutrecord1 = (LayoutRecord)mLayoutRecords.get(i);
        LayoutRecord layoutrecord;
        int l;
        int i1;
        if (layoutrecord1 == null)
        {
            layoutrecord = new LayoutRecord();
            layoutrecord.span = j;
            mLayoutRecords.put(i, layoutrecord);
        } else
        {
            layoutrecord = layoutrecord1;
            if (layoutrecord1.span != j)
            {
                throw new IllegalStateException((new StringBuilder()).append("Invalid LayoutRecord! Record had span=").append(layoutrecord1.span).append(" but caller requested span=").append(j).append(" for position=").append(i).toString());
            }
        }
        i1 = -1;
        l = 0x80000000;
        for (i = mColCount - j; i >= 0;)
        {
            int k = 0x7fffffff;
            for (int j1 = i; j1 < i + j;)
            {
                int i2 = mItemTops[j1];
                int l1 = k;
                if (i2 < k)
                {
                    l1 = i2;
                }
                j1++;
                k = l1;
            }

            int k1 = l;
            if (k > l)
            {
                i1 = i;
                k1 = k;
            }
            i--;
            l = k1;
        }

        layoutrecord.column = i1;
        for (i = 0; i < j; i++)
        {
            layoutrecord.setMarginBelow(i, mItemTops[i + i1] - l);
        }

        return layoutrecord;
    }

    public final OnItemClickListener getOnItemClickListener()
    {
        return mOnItemClickListener;
    }

    public final OnItemLongClickListener getOnItemLongClickListener()
    {
        return mOnItemLongClickListener;
    }

    protected int getScrollChildBottom()
    {
        int i = getChildCount();
        if (i == 0)
        {
            return 0;
        } else
        {
            return getChildAt(i - 1).getBottom();
        }
    }

    public Drawable getSelector()
    {
        return mSelector;
    }

    void hideSelector()
    {
        if (mSelectorPosition == -1);
    }

    final void invalidateLayoutRecordsAfterPosition(int i)
    {
        int j;
        for (j = mLayoutRecords.size() - 1; j >= 0 && mLayoutRecords.keyAt(j) > i; j--) { }
        i = j + 1;
        mLayoutRecords.removeAtRange(i + 1, mLayoutRecords.size() - i);
    }

    final void invalidateLayoutRecordsBeforePosition(int i)
    {
        int j;
        for (j = 0; j < mLayoutRecords.size() && mLayoutRecords.keyAt(j) < i; j++) { }
        mLayoutRecords.removeAtRange(0, j);
    }

    void invokeOnItemScrollListener()
    {
        if (mFastScroller != null)
        {
            mFastScroller.onScroll(this, mFirstPosition, getChildCount(), mItemCount);
        }
        if (mOnScrollListener != null)
        {
            mOnScrollListener.onScroll(this, mFirstPosition, getChildCount(), mItemCount);
        }
    }

    public boolean isDrawSelectorOnTop()
    {
        return mDrawSelectorOnTop;
    }

    public void jumpDrawablesToCurrentState()
    {
        super.jumpDrawablesToCurrentState();
        if (mSelector != null)
        {
            mSelector.jumpToCurrentState();
        }
    }

    final void layoutChildren(boolean flag)
    {
        int i1;
        int k1;
        byte byte0;
        int l1;
        int k3;
        int l3;
        int i4;
        l3 = getPaddingLeft();
        int i = getPaddingRight();
        i4 = (getWidth() - l3 - i) / mColCount;
        mColWidth = i4;
        i1 = -1;
        byte0 = -1;
        Arrays.fill(mItemBottoms, 0x80000000);
        k3 = getChildCount();
        k1 = 0;
        l1 = 0;
_L3:
        Object obj;
        View view2;
        Object obj1;
        int j;
        int i2;
        int j2;
        int k2;
        int l2;
        if (l1 >= k3)
        {
            break MISSING_BLOCK_LABEL_581;
        }
        view2 = getChildAt(l1);
        obj1 = (LayoutParams)view2.getLayoutParams();
        l2 = ((LayoutParams) (obj1)).column;
        i2 = mFirstPosition + l1;
        if (flag || view2.isLayoutRequested())
        {
            j = 1;
        } else
        {
            j = 0;
        }
        obj = view2;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_236;
        }
        obj1 = obtainView(i2, view2);
        if (obj1 != null) goto _L2; else goto _L1
_L1:
        removeViewAt(l1);
        if (l1 - 1 >= 0)
        {
            invalidateLayoutRecordsAfterPosition(l1 - 1);
        }
        j = k1 + 1;
        k2 = i1;
        j2 = byte0;
        i1 = j;
_L4:
        l1++;
        k1 = i1;
        byte0 = j2;
        i1 = k2;
          goto _L3
_L2:
        obj = view2;
        if (obj1 != view2)
        {
            removeViewAt(l1);
            addView(((View) (obj1)), l1);
            obj = obj1;
        }
        obj1 = (LayoutParams)((View) (obj)).getLayoutParams();
        int j4 = Math.min(mColCount, ((LayoutParams) (obj1)).span);
        if (j != 0)
        {
            j2 = android.view.View.MeasureSpec.makeMeasureSpec(i4 * j4, 0x40000000);
            int i3;
            if (((LayoutParams) (obj1)).height == -2)
            {
                j = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
            } else
            {
                j = android.view.View.MeasureSpec.makeMeasureSpec(((LayoutParams) (obj1)).height, 0x40000000);
            }
            ((View) (obj)).measure(j2, j);
        }
        if (mItemBottoms[l2] > 0x80000000)
        {
            j = mItemBottoms[l2];
        } else
        {
            j = ((View) (obj)).getTop();
        }
        j2 = j;
        if (j4 > 1)
        {
            for (j2 = l2 + 1; j2 < l2 + j4;)
            {
                i3 = mItemBottoms[j2];
                k2 = j;
                if (i3 > j)
                {
                    k2 = i3;
                }
                j2++;
                j = k2;
            }

            j2 = j;
        }
        k2 = ((View) (obj)).getMeasuredHeight();
        int j3 = j2 + k2;
        j = l3 + l2 * i4;
        ((View) (obj)).layout(j, j2, j + ((View) (obj)).getMeasuredWidth(), j3);
        for (j = l2; j < l2 + j4; j++)
        {
            mItemBottoms[j] = j3;
        }

        obj = (LayoutRecord)mLayoutRecords.get(i2);
        j = i1;
        if (obj != null)
        {
            j = i1;
            if (((LayoutRecord) (obj)).height != k2)
            {
                obj.height = k2;
                j = i2;
            }
        }
        i1 = k1;
        j2 = byte0;
        k2 = j;
        if (obj != null)
        {
            i1 = k1;
            j2 = byte0;
            k2 = j;
            if (((LayoutRecord) (obj)).span != j4)
            {
                obj.span = j4;
                i1 = k1;
                j2 = i2;
                k2 = j;
            }
        }
          goto _L4
        for (int k = 0; k < mColCount; k++)
        {
            if (mItemBottoms[k] == 0x80000000)
            {
                mItemBottoms[k] = mItemTops[k];
            }
        }

        if (i1 >= 0 || byte0 >= 0)
        {
            if (i1 >= 0)
            {
                invalidateLayoutRecordsBeforePosition(i1);
            }
            if (byte0 >= 0)
            {
                invalidateLayoutRecordsAfterPosition(byte0);
            }
            for (int l = 0; l < k3 - k1; l++)
            {
                int j1 = mFirstPosition + l;
                View view3 = getChildAt(l);
                LayoutParams layoutparams = (LayoutParams)view3.getLayoutParams();
                LayoutRecord layoutrecord1 = (LayoutRecord)mLayoutRecords.get(j1);
                LayoutRecord layoutrecord = layoutrecord1;
                if (layoutrecord1 == null)
                {
                    layoutrecord = new LayoutRecord();
                    mLayoutRecords.put(j1, layoutrecord);
                }
                layoutrecord.column = layoutparams.column;
                layoutrecord.height = view3.getHeight();
                layoutrecord.id = layoutparams.id;
                layoutrecord.span = Math.min(mColCount, layoutparams.span);
            }

        }
        if (mSelectorPosition == -1) goto _L6; else goto _L5
_L5:
        View view = getChildAt(mMotionPosition - mFirstPosition);
        if (view != null)
        {
            positionSelector(mMotionPosition, view);
        }
_L8:
        invokeOnItemScrollListener();
        return;
_L6:
        if (mTouchMode > 3)
        {
            View view1 = getChildAt(mMotionPosition - mFirstPosition);
            if (view1 != null)
            {
                positionSelector(mMotionPosition, view1);
            }
        } else
        {
            mSelectorRect.setEmpty();
        }
        if (true) goto _L8; else goto _L7
_L7:
    }

    int lookForSelectablePosition(int i, boolean flag)
    {
        ListAdapter listadapter = mAdapter;
        if (listadapter != null && !isInTouchMode()) goto _L2; else goto _L1
_L1:
        return -1;
_L2:
        int j;
        int k;
        k = listadapter.getCount();
        if (mAreAllItemsSelectable)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (flag)
        {
            i = Math.max(0, i);
            do
            {
                j = i;
                if (i >= k)
                {
                    continue; /* Loop/switch isn't completed */
                }
                j = i;
                if (listadapter.isEnabled(i))
                {
                    continue; /* Loop/switch isn't completed */
                }
                i++;
            } while (true);
        }
        i = Math.min(i, k - 1);
        do
        {
            j = i;
            if (i < 0)
            {
                break;
            }
            j = i;
            if (listadapter.isEnabled(i))
            {
                break;
            }
            i--;
        } while (true);
        if (j < 0 || j >= k) goto _L1; else goto _L3
_L3:
        return j;
        if (i < 0 || i >= k) goto _L1; else goto _L4
_L4:
        return i;
    }

    final View obtainView(int i, View view)
    {
        Object obj;
        obj = mRecycler.getTransientStateView(i);
        if (obj != null)
        {
            return ((View) (obj));
        }
        if (i >= mAdapter.getCount())
        {
            return null;
        }
        View view1;
        int j;
        int k;
        if (view != null)
        {
            j = ((LayoutParams)view.getLayoutParams()).viewType;
        } else
        {
            j = -1;
        }
        k = mAdapter.getItemViewType(i);
        if (j != k)
        {
            view = mRecycler.getScrapView(k);
        }
        view1 = mAdapter.getView(i, view, this);
        if (view1 != view && view != null)
        {
            mRecycler.addScrap(view);
        }
        obj = view1.getLayoutParams();
        view = ((View) (obj));
        if (view1.getParent() == this) goto _L2; else goto _L1
_L1:
        if (obj != null) goto _L4; else goto _L3
_L3:
        view = generateDefaultLayoutParams();
_L2:
        view = (LayoutParams)view;
        view.position = i;
        view.viewType = k;
        return view1;
_L4:
        view = ((View) (obj));
        if (!checkLayoutParams(((android.view.ViewGroup.LayoutParams) (obj))))
        {
            view = generateLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    final void offsetChildren(int i)
    {
        int l = getChildCount();
        for (int j = 0; j < l; j++)
        {
            View view = getChildAt(j);
            view.layout(view.getLeft(), view.getTop() + i, view.getRight(), view.getBottom() + i);
        }

        l = mColCount;
        for (int k = 0; k < l; k++)
        {
            int ai[] = mItemTops;
            ai[k] = ai[k] + i;
            ai = mItemBottoms;
            ai[k] = ai[k] + i;
        }

    }

    protected int[] onCreateDrawableState(int i)
    {
        if (!mIsChildViewEnabled) goto _L2; else goto _L1
_L1:
        int ai[] = super.onCreateDrawableState(i);
_L4:
        return ai;
_L2:
        int k = ENABLED_STATE_SET[0];
        int ai1[] = super.onCreateDrawableState(i + 1);
        byte byte0 = -1;
        i = ai1.length - 1;
        do
        {
label0:
            {
                int j = byte0;
                if (i >= 0)
                {
                    if (ai1[i] != k)
                    {
                        break label0;
                    }
                    j = i;
                }
                ai = ai1;
                if (j >= 0)
                {
                    System.arraycopy(ai1, j + 1, ai1, j, ai1.length - j - 1);
                    return ai1;
                }
            }
            if (true)
            {
                continue;
            }
            i--;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        if (mFastScroller != null && mFastScroller.onInterceptTouchEvent(motionevent))
        {
            return true;
        }
        mVelocityTracker.addMovement(motionevent);
        motionevent.getAction() & 0xff;
        JVM INSTR tableswitch 0 2: default 64
    //                   0 66
    //                   1 64
    //                   2 117;
           goto _L1 _L2 _L1 _L3
_L1:
        return false;
_L2:
        mVelocityTracker.clear();
        mScroller.abortAnimation();
        mLastTouchY = motionevent.getY();
        mActivePointerId = MotionEventCompat.getPointerId(motionevent, 0);
        mTouchRemainderY = 0.0F;
        if (mTouchMode == 2)
        {
            mTouchMode = 1;
            return true;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        int i = MotionEventCompat.findPointerIndex(motionevent, mActivePointerId);
        if (i < 0)
        {
            Log.e("StaggeredGridView", (new StringBuilder()).append("onInterceptTouchEvent could not find pointer with id ").append(mActivePointerId).append(" - did StaggeredGridView receive an inconsistent ").append("event stream?").toString());
            return false;
        }
        float f = (MotionEventCompat.getY(motionevent, i) - mLastTouchY) + mTouchRemainderY;
        mTouchRemainderY = f - (float)(int)f;
        if (Math.abs(f) > (float)mTouchSlop)
        {
            mTouchMode = 1;
            return true;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        mInLayout = true;
        populate(false);
        mInLayout = false;
        i = k - i;
        j = l - j;
        mTopEdge.setSize(i, j);
        mBottomEdge.setSize(i, j);
    }

    protected void onMeasure(int i, int j)
    {
        int k = android.view.View.MeasureSpec.getMode(i);
        int l = android.view.View.MeasureSpec.getMode(j);
        i = android.view.View.MeasureSpec.getSize(i);
        j = android.view.View.MeasureSpec.getSize(j);
        if (k == 0x40000000);
        if (l == 0x40000000);
        setMeasuredDimension(i, j);
        if (mColCountSetting == -1)
        {
            i /= mMinColWidth;
            if (i != mColCount)
            {
                mColCount = i;
            }
        }
    }

    public void onRestoreInstanceState(Parcelable parcelable)
    {
        parcelable = (SavedState)parcelable;
        super.onRestoreInstanceState(parcelable.getSuperState());
        mDataChanged = true;
        mFirstPosition = ((SavedState) (parcelable)).position;
        mRestoreOffsets = ((SavedState) (parcelable)).topOffsets;
        Object obj = ((SavedState) (parcelable)).mapping;
        if (obj != null)
        {
            mColMappings.clear();
            ColMap colmap;
            for (obj = ((ArrayList) (obj)).iterator(); ((Iterator) (obj)).hasNext(); mColMappings.add(colmap.values))
            {
                colmap = (ColMap)((Iterator) (obj)).next();
            }

        }
        if (((SavedState) (parcelable)).firstId >= 0L)
        {
            mFirstAdapterId = ((SavedState) (parcelable)).firstId;
            mSelectorPosition = -1;
        }
        requestLayout();
    }

    public Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState(super.onSaveInstanceState());
        int i = mFirstPosition;
        savedstate.position = mFirstPosition;
        if (i >= 0 && mAdapter != null && i < mAdapter.getCount())
        {
            savedstate.firstId = mAdapter.getItemId(i);
        }
        if (getChildCount() > 0)
        {
            int ai[] = new int[mColCount];
            if (mColWidth > 0)
            {
                for (int j = 0; j < mColCount; j++)
                {
                    if (getChildAt(j) == null)
                    {
                        continue;
                    }
                    int l = getChildAt(j).getLeft();
                    int k = 0;
                    Log.w("mColWidth", (new StringBuilder()).append(mColWidth).append(" ").append(l).toString());
                    for (; l > mColWidth * k + getPaddingLeft(); k++) { }
                    ai[k] = getChildAt(j).getTop() - getPaddingTop();
                }

            }
            savedstate.topOffsets = ai;
            ArrayList arraylist = new ArrayList();
            for (Iterator iterator = mColMappings.iterator(); iterator.hasNext(); arraylist.add(new ColMap((ArrayList)iterator.next()))) { }
            savedstate.mapping = arraylist;
        }
        return savedstate;
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        if (getChildCount() > 0)
        {
            mDataChanged = true;
        }
        if (mFastScroller != null)
        {
            mFastScroller.onSizeChanged(i, j, k, l);
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        int i;
        int i1;
        if (mFastScroller != null && mFastScroller.onTouchEvent(motionevent))
        {
            return true;
        }
        mVelocityTracker.addMovement(motionevent);
        i = motionevent.getAction();
        i1 = pointToPosition((int)motionevent.getX(), (int)motionevent.getY());
        i & 0xff;
        JVM INSTR tableswitch 0 3: default 88
    //                   0 90
    //                   1 469
    //                   2 239
    //                   3 384;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return true;
_L2:
        mVelocityTracker.clear();
        mScroller.abortAnimation();
        mLastTouchY = motionevent.getY();
        mLastTouchX = motionevent.getX();
        int j = pointToPosition((int)mLastTouchX, (int)mLastTouchY);
        mActivePointerId = MotionEventCompat.getPointerId(motionevent, 0);
        mTouchRemainderY = 0.0F;
        if (mTouchMode != 2 && !mDataChanged && j >= 0 && getAdapter().isEnabled(j))
        {
            mTouchMode = 3;
            mBeginClick = true;
            if (mPendingCheckForTap == null)
            {
                mPendingCheckForTap = new CheckForTap();
            }
            postDelayed(mPendingCheckForTap, ViewConfiguration.getTapTimeout());
        }
        mMotionPosition = j;
        invalidate();
        continue; /* Loop/switch isn't completed */
_L4:
        int k = MotionEventCompat.findPointerIndex(motionevent, mActivePointerId);
        if (k < 0)
        {
            Log.e("StaggeredGridView", (new StringBuilder()).append("onInterceptTouchEvent could not find pointer with id ").append(mActivePointerId).append(" - did StaggeredGridView receive an inconsistent ").append("event stream?").toString());
            return false;
        }
        float f = MotionEventCompat.getY(motionevent, k);
        float f3 = (f - mLastTouchY) + mTouchRemainderY;
        k = (int)f3;
        mTouchRemainderY = f3 - (float)k;
        if (Math.abs(f3) > (float)mTouchSlop)
        {
            mTouchMode = 1;
        }
        if (mTouchMode == 1)
        {
            mLastTouchY = f;
            if (!trackMotionScroll(k, true))
            {
                mVelocityTracker.clear();
            }
        }
        updateSelectorState();
        continue; /* Loop/switch isn't completed */
_L5:
        mTouchMode = 0;
        updateSelectorState();
        setPressed(false);
        motionevent = getChildAt(mMotionPosition - mFirstPosition);
        if (motionevent != null)
        {
            motionevent.setPressed(false);
        }
        motionevent = getHandler();
        if (motionevent != null)
        {
            motionevent.removeCallbacks(mPendingCheckForLongPress);
        }
        if (mTopEdge != null)
        {
            mTopEdge.onRelease();
            mBottomEdge.onRelease();
        }
        mTouchMode = 0;
        if (true) goto _L1; else goto _L3
_L3:
        mVelocityTracker.computeCurrentVelocity(1000, mMaximumVelocity);
        float f1 = VelocityTrackerCompat.getYVelocity(mVelocityTracker, mActivePointerId);
        int l = mTouchMode;
        if (Math.abs(f1) > (float)mFlingVelocity)
        {
            mTouchMode = 2;
            mScroller.fling(0, 0, 0, (int)f1, 0, 0, 0x80000000, 0x7fffffff);
            mLastTouchY = 0.0F;
            invalidate();
        } else
        {
            mTouchMode = 0;
        }
        if (!mDataChanged && mAdapter.isEnabled(i1))
        {
            mTouchMode = 4;
        } else
        {
            mTouchMode = 6;
        }
        l;
        JVM INSTR tableswitch 3 5: default 604
    //                   3 633
    //                   4 633
    //                   5 633;
           goto _L6 _L7 _L7 _L7
_L6:
        mBeginClick = false;
        updateSelectorState();
          goto _L8
_L7:
        final View child = getChildAt(i1 - mFirstPosition);
        float f2 = motionevent.getX();
        boolean flag;
        if (f2 > (float)getPaddingLeft() && f2 < (float)(getWidth() - getPaddingRight()))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (child != null && !child.hasFocusable() && flag)
        {
            if (mTouchMode != 3)
            {
                child.setPressed(false);
            }
            if (mPerformClick == null)
            {
                invalidate();
                mPerformClick = new PerformClick();
            }
            final PerformClick performClick = mPerformClick;
            performClick.mClickMotionPosition = i1;
            performClick.rememberWindowAttachCount();
            if (mTouchMode == 3 || mTouchMode == 4)
            {
                Handler handler = getHandler();
                if (handler != null)
                {
                    if (mTouchMode == 3)
                    {
                        motionevent = mPendingCheckForTap;
                    } else
                    {
                        motionevent = mPendingCheckForLongPress;
                    }
                    handler.removeCallbacks(motionevent);
                }
                mLayoutMode = 0;
                if (!mDataChanged && mAdapter.isEnabled(i1))
                {
                    mTouchMode = 4;
                    layoutChildren(mDataChanged);
                    child.setPressed(true);
                    positionSelector(mMotionPosition, child);
                    setPressed(true);
                    if (mSelector != null)
                    {
                        motionevent = mSelector.getCurrent();
                        if (motionevent != null && (motionevent instanceof TransitionDrawable))
                        {
                            ((TransitionDrawable)motionevent).resetTransition();
                        }
                    }
                    if (mTouchModeReset != null)
                    {
                        removeCallbacks(mTouchModeReset);
                    }
                    mTouchModeReset = new Runnable() {

                        final StaggeredGridView this$0;
                        final View val$child;
                        final PerformClick val$performClick;

                        public void run()
                        {
                            mTouchMode = 6;
                            child.setPressed(false);
                            setPressed(false);
                            if (!mDataChanged)
                            {
                                performClick.run();
                            }
                        }

            
            {
                this$0 = StaggeredGridView.this;
                child = view;
                performClick = performclick;
                super();
            }
                    };
                    postDelayed(mTouchModeReset, ViewConfiguration.getPressedStateDuration());
                } else
                {
                    mTouchMode = 6;
                }
                return true;
            }
            if (!mDataChanged && mAdapter.isEnabled(i1))
            {
                performClick.run();
            }
        }
        mTouchMode = 6;
        if (true) goto _L6; else goto _L8
_L8:
        if (true) goto _L1; else goto _L9
_L9:
    }

    public boolean performItemClick(View view, int i, long l)
    {
        boolean flag = false;
        if (mOnItemClickListener != null)
        {
            playSoundEffect(0);
            if (view != null)
            {
                view.sendAccessibilityEvent(1);
            }
            mOnItemClickListener.onItemClick(this, view, i, l);
            flag = true;
        }
        return flag;
    }

    boolean performLongPress(View view, int i, long l)
    {
        boolean flag = false;
        if (mOnItemLongClickListener != null)
        {
            flag = mOnItemLongClickListener.onItemLongClick(this, view, i, l);
        }
        boolean flag1 = flag;
        if (!flag)
        {
            mContextMenuInfo = createContextMenuInfo(view, i, l);
            flag1 = super.showContextMenuForChild(this);
        }
        if (flag1)
        {
            performHapticFeedback(0);
        }
        return flag1;
    }

    public int pointToPosition(int i, int j)
    {
        Rect rect1 = mTouchFrame;
        Rect rect = rect1;
        if (rect1 == null)
        {
            mTouchFrame = new Rect();
            rect = mTouchFrame;
        }
        for (int k = getChildCount() - 1; k >= 0; k--)
        {
            View view = getChildAt(k);
            if (view.getVisibility() != 0)
            {
                continue;
            }
            view.getHitRect(rect);
            if (rect.contains(i, j))
            {
                return mFirstPosition + k;
            }
        }

        return -1;
    }

    void positionSelector(int i, View view)
    {
        if (i != -1)
        {
            mSelectorPosition = i;
        }
        Rect rect = mSelectorRect;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        if (view instanceof SelectionBoundsAdjuster)
        {
            ((SelectionBoundsAdjuster)view).adjustListItemSelectionBounds(rect);
        }
        positionSelector(rect.left, rect.top, rect.right, rect.bottom);
        boolean flag = mIsChildViewEnabled;
        if (view.isEnabled() != flag)
        {
            if (!flag)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            mIsChildViewEnabled = flag;
            if (getSelectedItemPosition() != -1)
            {
                refreshDrawableState();
            }
        }
    }

    void reportScrollStateChange(int i)
    {
        if (i != mLastScrollState && mOnScrollListener != null)
        {
            mOnScrollListener.onScrollStateChanged(this, i);
            mLastScrollState = i;
        }
    }

    public void requestLayout()
    {
        if (!mPopulating && !mFastChildLayout)
        {
            super.requestLayout();
        }
    }

    public void setAdapter(ListAdapter listadapter)
    {
        boolean flag = true;
        if (mAdapter != null)
        {
            mAdapter.unregisterDataSetObserver(mObserver);
        }
        clearAllState();
        mAdapter = listadapter;
        mDataChanged = true;
        if (listadapter != null)
        {
            listadapter.registerDataSetObserver(mObserver);
            mRecycler.setViewTypeCount(listadapter.getViewTypeCount());
            mHasStableIds = listadapter.hasStableIds();
        } else
        {
            mHasStableIds = false;
        }
        if (listadapter == null)
        {
            flag = false;
        }
        populate(flag);
    }

    public void setColumnCount(int i)
    {
        boolean flag = true;
        if (i < 1 && i != -1)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Column count must be at least 1 - received ").append(i).toString());
        }
        if (i == mColCount)
        {
            flag = false;
        }
        mColCountSetting = i;
        mColCount = i;
        if (flag)
        {
            populate(false);
        }
    }

    public void setDrawSelectorOnTop(boolean flag)
    {
        mDrawSelectorOnTop = flag;
    }

    public void setFastScrollEnabled(boolean flag)
    {
        mFastScrollEnabled = flag;
        if (flag)
        {
            if (mFastScroller == null)
            {
                mFastScroller = new FastScroller(getContext(), this);
            }
        } else
        if (mFastScroller != null)
        {
            mFastScroller.stop();
            mFastScroller = null;
            return;
        }
    }

    public void setMinColumnWidth(int i)
    {
        mMinColWidth = i;
        setColumnCount(-1);
    }

    void setNextSelectedPositionInt(int i)
    {
        mNextSelectedPosition = i;
        mNextSelectedRowId = getItemIdAtPosition(i);
    }

    public void setOnItemClickListener(OnItemClickListener onitemclicklistener)
    {
        mOnItemClickListener = onitemclicklistener;
    }

    public void setOnItemLongClickListener(OnItemLongClickListener onitemlongclicklistener)
    {
        if (!isLongClickable())
        {
            setLongClickable(true);
        }
        mOnItemLongClickListener = onitemlongclicklistener;
    }

    public void setOnScrollListener(OnScrollListener onscrolllistener)
    {
        mOnScrollListener = onscrolllistener;
        invokeOnItemScrollListener();
    }

    public void setSelection(int i)
    {
        if (mAdapter != null)
        {
            int j = i;
            if (!isInTouchMode())
            {
                i = lookForSelectablePosition(i, true);
                j = i;
                if (i >= 0)
                {
                    setNextSelectedPositionInt(i);
                    j = i;
                }
            }
            Log.d("StaggeredGridView", (new StringBuilder()).append("===========position:").append(j).toString());
            if (j >= 0)
            {
                mLayoutMode = 4;
                requestLayout();
                return;
            }
        }
    }

    public void setSelectionToTop()
    {
        removeAllViews();
        resetStateForGridTop();
        populate(false);
    }

    public void setSelector(int i)
    {
        setSelector(getResources().getDrawable(i));
    }

    public void setSelector(Drawable drawable)
    {
        if (mSelector != null)
        {
            mSelector.setCallback(null);
            unscheduleDrawable(mSelector);
        }
        mSelector = drawable;
        if (mSelector == null)
        {
            return;
        } else
        {
            Rect rect = new Rect();
            drawable.getPadding(rect);
            mSelectionLeftPadding = rect.left;
            mSelectionTopPadding = rect.top;
            mSelectionRightPadding = rect.right;
            mSelectionBottomPadding = rect.bottom;
            drawable.setCallback(this);
            updateSelectorState();
            return;
        }
    }

    boolean shouldShowSelector()
    {
        return (hasFocus() && !isInTouchMode() || touchModeDrawsInPressedState()) && mBeginClick;
    }

    boolean touchModeDrawsInPressedState()
    {
        switch (mTouchMode)
        {
        default:
            return false;

        case 4: // '\004'
        case 5: // '\005'
            return true;
        }
    }

    void updateSelectorState()
    {
label0:
        {
            if (mSelector != null)
            {
                if (!shouldShowSelector())
                {
                    break label0;
                }
                mSelector.setState(getDrawableState());
            }
            return;
        }
        mSelector.setState(new int[] {
            0
        });
    }

    public boolean verifyDrawable(Drawable drawable)
    {
        return mSelector == drawable || super.verifyDrawable(drawable);
    }









/*
    static int access$1602(StaggeredGridView staggeredgridview, int i)
    {
        staggeredgridview.mFirstPosition = i;
        return i;
    }

*/








/*
    static CheckForLongPress access$2402(StaggeredGridView staggeredgridview, CheckForLongPress checkforlongpress)
    {
        staggeredgridview.mPendingCheckForLongPress = checkforlongpress;
        return checkforlongpress;
    }

*/



/*
    static int access$302(StaggeredGridView staggeredgridview, int i)
    {
        staggeredgridview.mTouchMode = i;
        return i;
    }

*/



/*
    static boolean access$402(StaggeredGridView staggeredgridview, boolean flag)
    {
        staggeredgridview.mDataChanged = flag;
        return flag;
    }

*/



/*
    static int access$702(StaggeredGridView staggeredgridview, int i)
    {
        staggeredgridview.mItemCount = i;
        return i;
    }

*/


}
