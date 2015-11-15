// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.views;

import android.support.v4.view.ViewCompat;
import android.util.SparseArray;
import android.view.View;
import java.util.ArrayList;

// Referenced classes of package com.veclink.waterfall.views:
//            StaggeredGridView

private class <init>
{

    private int mMaxScrap;
    private ArrayList mScrapViews[];
    private SparseArray mTransientStateViews;
    private int mViewTypeCount;
    final StaggeredGridView this$0;

    public void addScrap(View view)
    {
        Object obj = (s)view.getLayoutParams();
        if (ViewCompat.hasTransientState(view))
        {
            if (mTransientStateViews == null)
            {
                mTransientStateViews = new SparseArray();
            }
            mTransientStateViews.put(((s) (obj)).position, view);
        } else
        {
            int i = getChildCount();
            if (i > mMaxScrap)
            {
                mMaxScrap = i;
            }
            obj = mScrapViews[((s) (obj)).viewType];
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

    private s()
    {
        this$0 = StaggeredGridView.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
