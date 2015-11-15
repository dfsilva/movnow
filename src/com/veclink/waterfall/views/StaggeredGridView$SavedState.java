// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.views;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

// Referenced classes of package com.veclink.waterfall.views:
//            StaggeredGridView

static class firstId extends android.view.iew.SavedState
{

    public static final android.os.dView.SavedState.mapping CREATOR = new android.os.Parcelable.Creator() {

        public StaggeredGridView.SavedState createFromParcel(Parcel parcel)
        {
            return new StaggeredGridView.SavedState(parcel, null);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public StaggeredGridView.SavedState[] newArray(int i)
        {
            return new StaggeredGridView.SavedState[i];
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
        super.rcel(parcel, i);
        parcel.writeLong(firstId);
        parcel.writeInt(position);
        parcel.writeIntArray(topOffsets);
        parcel.writeTypedList(mapping);
    }


    private _cls1(Parcel parcel)
    {
        super(parcel);
        firstId = -1L;
        firstId = parcel.readLong();
        position = parcel.readInt();
        parcel.readIntArray(topOffsets);
        parcel.readTypedList(mapping, TOR);
    }

    TOR(Parcel parcel, TOR tor)
    {
        this(parcel);
    }

    <init>(Parcelable parcelable)
    {
        super(parcelable);
        firstId = -1L;
    }
}
