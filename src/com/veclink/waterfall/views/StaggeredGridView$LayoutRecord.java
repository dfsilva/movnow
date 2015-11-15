// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.views;


// Referenced classes of package com.veclink.waterfall.views:
//            StaggeredGridView

private static final class <init>
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

    private ()
    {
        id = -1L;
    }

    id(id id1)
    {
        this();
    }
}
