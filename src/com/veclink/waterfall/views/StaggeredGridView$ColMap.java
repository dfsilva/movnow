// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.views;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

// Referenced classes of package com.veclink.waterfall.views:
//            StaggeredGridView

static class values
    implements Parcelable
{

    public static final android.os.dGridView.ColMap.tempMap CREATOR = new android.os.Parcelable.Creator() {

        public StaggeredGridView.ColMap createFromParcel(Parcel parcel)
        {
            return new StaggeredGridView.ColMap(parcel, null);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public StaggeredGridView.ColMap[] newArray(int i)
        {
            return new StaggeredGridView.ColMap[i];
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



    private _cls1(Parcel parcel)
    {
        parcel.readIntArray(tempMap);
        values = new ArrayList();
        for (int i = 0; i < tempMap.length; i++)
        {
            values.add(Integer.valueOf(tempMap[i]));
        }

    }

    tempMap(Parcel parcel, tempMap tempmap)
    {
        this(parcel);
    }

    public <init>(ArrayList arraylist)
    {
        values = arraylist;
    }
}
