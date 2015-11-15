// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.adapter;

import android.content.Context;
import android.view.View;
import com.veclink.movmow.allen.nurse.RemindObject;
import com.veclink.movnow_q2.util.StorageUtil;
import com.veclink.movnow_q2.view.BaseRemindDialog;
import java.util.HashMap;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.adapter:
//            FamilyPhoneNumberListAdapter

class val.dialog
    implements android.view.rListAdapter._cls1._cls1
{

    final fyDataSetChanged this$1;
    final BaseRemindDialog val$dialog;

    public void onClick(View view)
    {
        val$dialog.dismiss();
        remindList.remove(position);
        phoneNumberMap.remove(remindObject.getTitle());
        StorageUtil.writeRemindObject(mContext, remindList, "family_phone_number_file.wao");
        notifyDataSetChanged();
    }

    l.remindObject()
    {
        this$1 = final_remindobject;
        val$dialog = BaseRemindDialog.this;
        super();
    }

    // Unreferenced inner class com/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1

/* anonymous class */
    class FamilyPhoneNumberListAdapter._cls1
        implements android.view.View.OnClickListener
    {

        final FamilyPhoneNumberListAdapter this$0;
        final int val$position;
        final RemindObject val$remindObject;

        public void onClick(View view)
        {
            view = new BaseRemindDialog(mContext);
            view.setTitle(mContext.getString(0x7f0c00e6));
            view.setContent(mContext.getString(0x7f0c01b0));
            view.setOkListener(view. new FamilyPhoneNumberListAdapter._cls1._cls1());
            view.show();
        }

            
            {
                this$0 = final_familyphonenumberlistadapter;
                position = i;
                remindObject = RemindObject.this;
                super();
            }
    }

}
