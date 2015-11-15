// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.views;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.widget.ListAdapter;
import android.widget.SectionIndexer;

// Referenced classes of package com.veclink.waterfall.views:
//            StaggeredGridView

class FastScroller
{
    public class ScrollFade
        implements Runnable
    {

        static final int ALPHA_MAX = 208;
        static final long FADE_DURATION = 200L;
        long mFadeDuration;
        long mStartTime;
        final FastScroller this$0;

        int getAlpha()
        {
            if (getState() != 4)
            {
                return 208;
            }
            long l = SystemClock.uptimeMillis();
            if (l > mStartTime + mFadeDuration)
            {
                return 0;
            } else
            {
                return (int)(208L - ((l - mStartTime) * 208L) / mFadeDuration);
            }
        }

        public void run()
        {
            if (getState() != 4)
            {
                startFade();
                return;
            }
            if (getAlpha() > 0)
            {
                mList.invalidate();
                return;
            } else
            {
                setState(0);
                return;
            }
        }

        void startFade()
        {
            mFadeDuration = 200L;
            mStartTime = SystemClock.uptimeMillis();
            setState(4);
        }

        public ScrollFade()
        {
            this$0 = FastScroller.this;
            super();
        }
    }


    private static int MIN_PAGES = 0;
    private static final int STATE_DRAGGING = 3;
    private static final int STATE_ENTER = 1;
    private static final int STATE_EXIT = 4;
    private static final int STATE_NONE = 0;
    private static final int STATE_VISIBLE = 2;
    private boolean mChangedBounds;
    private boolean mDrawOverlay;
    private Handler mHandler;
    private int mItemCount;
    private StaggeredGridView mList;
    private ListAdapter mListAdapter;
    private int mListOffset;
    private boolean mLongList;
    private Drawable mOverlayDrawable;
    private RectF mOverlayPos;
    private int mOverlaySize;
    private Paint mPaint;
    private boolean mScrollCompleted;
    private ScrollFade mScrollFade;
    private SectionIndexer mSectionIndexer;
    private String mSectionText;
    private Object mSections[];
    private int mState;
    private Drawable mThumbDrawable;
    private int mThumbH;
    private int mThumbW;
    private int mThumbY;
    private int mVisibleItem;

    public FastScroller(Context context, StaggeredGridView staggeredgridview)
    {
        mItemCount = -1;
        mHandler = new Handler();
        mList = staggeredgridview;
        init(context);
    }

    private void cancelFling()
    {
        MotionEvent motionevent = MotionEvent.obtain(0L, 0L, 3, 0.0F, 0.0F, 0);
        mList.onTouchEvent(motionevent);
        motionevent.recycle();
    }

    private void getSectionsFromIndexer()
    {
        ListAdapter listadapter = mList.getAdapter();
        mSectionIndexer = null;
        if (listadapter instanceof SectionIndexer)
        {
            mListAdapter = (ListAdapter)listadapter;
            mSectionIndexer = (SectionIndexer)listadapter;
            mSections = mSectionIndexer.getSections();
            return;
        } else
        {
            mListAdapter = (ListAdapter)listadapter;
            mSections = (new String[] {
                " "
            });
            return;
        }
    }

    private void init(Context context)
    {
        Resources resources = context.getResources();
        useThumbDrawable(context, resources.getDrawable(0x7f02012b));
        mOverlayDrawable = resources.getDrawable(0x7f020063);
        mScrollCompleted = true;
        getSectionsFromIndexer();
        mOverlaySize = context.getResources().getDimensionPixelSize(0x7f09002a);
        mOverlayPos = new RectF();
        mScrollFade = new ScrollFade();
        mPaint = new Paint();
        mPaint.setAntiAlias(true);
        mPaint.setTextAlign(android.graphics.Paint.Align.CENTER);
        mPaint.setTextSize(mOverlaySize / 2);
        context = context.getTheme().obtainStyledAttributes(new int[] {
            0x1010036
        });
        int i = context.getColorStateList(context.getIndex(0)).getDefaultColor();
        mPaint.setColor(i);
        mPaint.setStyle(android.graphics.Paint.Style.FILL_AND_STROKE);
        mState = 0;
    }

    private void resetThumbPos()
    {
        int i = mList.getWidth();
        mThumbDrawable.setBounds(i - mThumbW, 0, i, mThumbH);
        mThumbDrawable.setAlpha(208);
    }

    private void scrollTo(float f)
    {
        float f1;
        Object aobj[];
        int i;
        int j;
        int k;
        int l;
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        int l2;
        i2 = mList.getCount();
        mScrollCompleted = false;
        f1 = 1.0F / (float)i2 / 8F;
        aobj = mSections;
        if (aobj == null || aobj.length <= 1)
        {
            break MISSING_BLOCK_LABEL_435;
        }
        l2 = aobj.length;
        j = (int)((float)l2 * f);
        i = j;
        if (j >= l2)
        {
            i = l2 - 1;
        }
        l1 = i;
        k2 = mSectionIndexer.getPositionForSection(i);
        j1 = i2;
        l = k2;
        k1 = i;
        j2 = i + 1;
        if (i < l2 - 1)
        {
            j1 = mSectionIndexer.getPositionForSection(i + 1);
        }
        k = l;
        i1 = k1;
        j = l1;
        if (j1 != k2) goto _L2; else goto _L1
_L1:
        i1 = i;
        k = l;
_L4:
        l = i1;
        i1 = k1;
        j = l1;
        if (l > 0)
        {
            j = l - 1;
            l = mSectionIndexer.getPositionForSection(j);
            if (l != k2)
            {
                i1 = j;
                k = l;
            } else
            {
                k = l;
                i1 = j;
                if (j != 0)
                {
                    continue; /* Loop/switch isn't completed */
                }
                j = 0;
                k = l;
                i1 = k1;
            }
        }
_L2:
        k1 = j2 + 1;
        for (l = j2; k1 < l2 && mSectionIndexer.getPositionForSection(k1) == j1; l++)
        {
            k1++;
        }

        break; /* Loop/switch isn't completed */
        if (true) goto _L4; else goto _L3
_L3:
        float f2 = (float)i1 / (float)l2;
        float f3 = (float)l / (float)l2;
        String s;
        if (i1 == i && f - f2 < f1)
        {
            i = k;
        } else
        {
            i = k + (int)(((float)(j1 - k) * (f - f2)) / (f3 - f2));
        }
        k = i;
        if (i > i2 - 1)
        {
            k = i2 - 1;
        }
        mList.setSelection(mListOffset + k);
_L5:
        if (j >= 0)
        {
            s = aobj[j].toString();
            mSectionText = s;
            boolean flag;
            if ((s.length() != 1 || s.charAt(0) != ' ') && j < aobj.length)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            mDrawOverlay = flag;
            return;
        } else
        {
            mDrawOverlay = false;
            return;
        }
        i = (int)((float)i2 * f);
        mList.setSelection(mListOffset + i);
        j = -1;
          goto _L5
    }

    private void useThumbDrawable(Context context, Drawable drawable)
    {
        mThumbDrawable = drawable;
        mThumbW = context.getResources().getDimensionPixelSize(0x7f09002b);
        mThumbH = context.getResources().getDimensionPixelSize(0x7f09002c);
        mChangedBounds = true;
    }

    public void draw(Canvas canvas)
    {
        if (mState != 0)
        {
            int j = mThumbY;
            int k = mList.getWidth();
            ScrollFade scrollfade = mScrollFade;
            int i = -1;
            if (mState == 4)
            {
                i = scrollfade.getAlpha();
                if (i < 104)
                {
                    mThumbDrawable.setAlpha(i * 2);
                }
                int l = (mThumbW * i) / 208;
                mThumbDrawable.setBounds(k - l, 0, k, mThumbH);
                mChangedBounds = true;
            }
            canvas.translate(0.0F, j);
            mThumbDrawable.draw(canvas);
            canvas.translate(0.0F, -j);
            if (mState == 3 && mDrawOverlay)
            {
                mOverlayDrawable.draw(canvas);
                Paint paint = mPaint;
                float f = paint.descent();
                RectF rectf = mOverlayPos;
                canvas.drawText(mSectionText, (int)(rectf.left + rectf.right) / 2, (float)((int)(rectf.bottom + rectf.top) / 2 + mOverlaySize / 4) - f, paint);
                return;
            }
            if (mState == 4)
            {
                if (i == 0)
                {
                    setState(0);
                    return;
                } else
                {
                    mList.invalidate(k - mThumbW, j, k, mThumbH + j);
                    return;
                }
            }
        }
    }

    SectionIndexer getSectionIndexer()
    {
        return mSectionIndexer;
    }

    Object[] getSections()
    {
        if (mListAdapter == null && mList != null)
        {
            getSectionsFromIndexer();
        }
        return mSections;
    }

    public int getState()
    {
        return mState;
    }

    boolean isPointInside(float f, float f1)
    {
        return f > (float)(mList.getWidth() - mThumbW) && f1 >= (float)mThumbY && f1 <= (float)(mThumbY + mThumbH);
    }

    boolean isVisible()
    {
        return mState != 0;
    }

    boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        if (mState > 0 && motionevent.getAction() == 0 && isPointInside(motionevent.getX(), motionevent.getY()))
        {
            setState(3);
            return true;
        } else
        {
            return false;
        }
    }

    void onScroll(StaggeredGridView staggeredgridview, int i, int j, int k)
    {
        if (mItemCount != k && j > 0)
        {
            mItemCount = k;
            boolean flag;
            if (mItemCount / j >= MIN_PAGES)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            mLongList = flag;
        }
        if (!mLongList)
        {
            if (mState != 0)
            {
                setState(0);
            }
        } else
        {
            if (k - j > 0 && mState != 3)
            {
                mThumbY = ((mList.getHeight() - mThumbH) * i) / (k - j);
                if (mChangedBounds)
                {
                    resetThumbPos();
                    mChangedBounds = false;
                }
            }
            mScrollCompleted = true;
            if (i != mVisibleItem)
            {
                mVisibleItem = i;
                if (mState != 3)
                {
                    setState(2);
                    mHandler.postDelayed(mScrollFade, 1500L);
                    return;
                }
            }
        }
    }

    void onSizeChanged(int i, int j, int k, int l)
    {
        if (mThumbDrawable != null)
        {
            mThumbDrawable.setBounds(i - mThumbW, 0, i, mThumbH);
        }
        RectF rectf = mOverlayPos;
        rectf.left = (i - mOverlaySize) / 2;
        rectf.right = rectf.left + (float)mOverlaySize;
        rectf.top = j / 10;
        rectf.bottom = rectf.top + (float)mOverlaySize;
        if (mOverlayDrawable != null)
        {
            mOverlayDrawable.setBounds((int)rectf.left, (int)rectf.top, (int)rectf.right, (int)rectf.bottom);
        }
    }

    boolean onTouchEvent(MotionEvent motionevent)
    {
        if (mState != 0) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int i;
        i = motionevent.getAction();
        if (i != 0)
        {
            break; /* Loop/switch isn't completed */
        }
        if (isPointInside(motionevent.getX(), motionevent.getY()))
        {
            setState(3);
            if (mListAdapter == null && mList != null)
            {
                getSectionsFromIndexer();
            }
            if (mList != null)
            {
                mList.requestDisallowInterceptTouchEvent(true);
                mList.reportScrollStateChange(1);
            }
            cancelFling();
            return true;
        }
        if (true) goto _L1; else goto _L3
_L3:
        if (i != 1)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (mState != 3) goto _L1; else goto _L4
_L4:
        if (mList != null)
        {
            mList.requestDisallowInterceptTouchEvent(false);
            mList.reportScrollStateChange(0);
        }
        setState(2);
        motionevent = mHandler;
        motionevent.removeCallbacks(mScrollFade);
        motionevent.postDelayed(mScrollFade, 1000L);
        return true;
        if (i != 2 || mState != 3) goto _L1; else goto _L5
_L5:
        int j;
        int k;
        k = mList.getHeight();
        j = ((int)motionevent.getY() - mThumbH) + 10;
        if (j >= 0) goto _L7; else goto _L6
_L6:
        i = 0;
_L9:
        if (Math.abs(mThumbY - i) < 2)
        {
            return true;
        }
        break; /* Loop/switch isn't completed */
_L7:
        i = j;
        if (mThumbH + j > k)
        {
            i = k - mThumbH;
        }
        if (true) goto _L9; else goto _L8
_L8:
        mThumbY = i;
        if (mScrollCompleted)
        {
            scrollTo((float)mThumbY / (float)(k - mThumbH));
        }
        return true;
    }

    public void setState(int i)
    {
        i;
        JVM INSTR tableswitch 0 4: default 36
    //                   0 42
    //                   1 36
    //                   2 63
    //                   3 75
    //                   4 89;
           goto _L1 _L2 _L1 _L3 _L4 _L5
_L1:
        mState = i;
        return;
_L2:
        mHandler.removeCallbacks(mScrollFade);
        mList.invalidate();
        continue; /* Loop/switch isn't completed */
_L3:
        if (mState != 2)
        {
            resetThumbPos();
        }
_L4:
        mHandler.removeCallbacks(mScrollFade);
        continue; /* Loop/switch isn't completed */
_L5:
        int j = mList.getWidth();
        mList.invalidate(j - mThumbW, mThumbY, j, mThumbY + mThumbH);
        if (true) goto _L1; else goto _L6
_L6:
    }

    void stop()
    {
        setState(0);
    }

    static 
    {
        MIN_PAGES = 4;
    }

}
