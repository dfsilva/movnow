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

class val.dialog
    implements android.view.geredAdapter._cls1._cls1
{

    final es this$1;
    final BaseRemindDialog val$dialog;

    public void onClick(View view)
    {
        deleteItem(calorie);
        val$dialog.dismiss();
        EventBus.getDefault().post(new DeleteCalories());
    }

    l.calorie()
    {
        this$1 = final_calorie;
        val$dialog = BaseRemindDialog.this;
        super();
    }

    // Unreferenced inner class com/veclink/waterfall/adapter/StaggeredAdapter$1

/* anonymous class */
    class StaggeredAdapter._cls1
        implements android.view.View.OnClickListener
    {

        final StaggeredAdapter this$0;
        final UptakeCalorie val$calorie;

        public void onClick(View view)
        {
            view = new BaseRemindDialog(StaggeredAdapter.access$000(StaggeredAdapter.this));
            view.setTitle(StaggeredAdapter.access$000(StaggeredAdapter.this).getString(0x7f0c014e));
            view.setContent(StaggeredAdapter.access$000(StaggeredAdapter.this).getString(0x7f0c0085));
            view.setOkListener(view. new StaggeredAdapter._cls1._cls1());
            view.show();
        }

            
            {
                this$0 = final_staggeredadapter;
                calorie = UptakeCalorie.this;
                super();
            }
    }

}
