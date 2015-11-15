// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.ExpandableListView;
import android.widget.Toast;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HeartRateHistoryRecordActivity, ShowHeartReateResultActivity

class this._cls0
    implements android.widget.stener
{

    final HeartRateHistoryRecordActivity this$0;

    public boolean onChildClick(ExpandableListView expandablelistview, View view, int i, int j, long l)
    {
        Toast.makeText(HeartRateHistoryRecordActivity.access$000(HeartRateHistoryRecordActivity.this), (new StringBuilder()).append(HeartRateHistoryRecordActivity.access$100(HeartRateHistoryRecordActivity.this)[i]).append(" : ").append(HeartRateHistoryRecordActivity.access$200(HeartRateHistoryRecordActivity.this)[i][j]).toString(), 0).show();
        expandablelistview = new Intent(HeartRateHistoryRecordActivity.access$000(HeartRateHistoryRecordActivity.this), com/veclink/movnow_q2/activity/ShowHeartReateResultActivity);
        expandablelistview.putExtra("heart_reate", 69);
        HeartRateHistoryRecordActivity.access$000(HeartRateHistoryRecordActivity.this).startActivity(expandablelistview);
        return false;
    }

    ()
    {
        this$0 = HeartRateHistoryRecordActivity.this;
        super();
    }
}
