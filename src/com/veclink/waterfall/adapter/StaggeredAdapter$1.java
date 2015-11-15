// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.adapter;

import android.content.Context;
import android.view.View;
import com.veclink.healthy.business.http.pojo.DeleteCalories;
import com.veclink.healthy.database.entity.UptakeCalorie;
import com.veclink.movnow_q2.view.BaseRemindDialog;
import de.greenrobot.event.EventBus;

// Referenced classes of package com.veclink.waterfall.adapter:
//            StaggeredAdapter

class 
    implements android.view.r
{

    final StaggeredAdapter this$0;
    final UptakeCalorie val$calorie;

    public void onClick(final View dialog)
    {
        dialog = new BaseRemindDialog(StaggeredAdapter.access$000(StaggeredAdapter.this));
        dialog.setTitle(StaggeredAdapter.access$000(StaggeredAdapter.this).getString(0x7f0c014e));
        dialog.setContent(StaggeredAdapter.access$000(StaggeredAdapter.this).getString(0x7f0c0085));
        dialog.setOkListener(new android.view.View.OnClickListener() {

            final StaggeredAdapter._cls1 this$1;
            final BaseRemindDialog val$dialog;

            public void onClick(View view)
            {
                deleteItem(calorie);
                dialog.dismiss();
                EventBus.getDefault().post(new DeleteCalories());
            }

            
            {
                this$1 = StaggeredAdapter._cls1.this;
                dialog = basereminddialog;
                super();
            }
        });
        dialog.show();
    }

    ()
    {
        this$0 = final_staggeredadapter;
        val$calorie = UptakeCalorie.this;
        super();
    }
}
