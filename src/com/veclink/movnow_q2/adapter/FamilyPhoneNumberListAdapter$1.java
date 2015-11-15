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

class val.remindObject
    implements android.view.berListAdapter._cls1
{

    final FamilyPhoneNumberListAdapter this$0;
    final int val$position;
    final RemindObject val$remindObject;

    public void onClick(final View dialog)
    {
        dialog = new BaseRemindDialog(mContext);
        dialog.setTitle(mContext.getString(0x7f0c00e6));
        dialog.setContent(mContext.getString(0x7f0c01b0));
        dialog.setOkListener(new android.view.View.OnClickListener() {

            final FamilyPhoneNumberListAdapter._cls1 this$1;
            final BaseRemindDialog val$dialog;

            public void onClick(View view)
            {
                dialog.dismiss();
                remindList.remove(position);
                phoneNumberMap.remove(remindObject.getTitle());
                StorageUtil.writeRemindObject(mContext, remindList, "family_phone_number_file.wao");
                notifyDataSetChanged();
            }

            
            {
                this$1 = FamilyPhoneNumberListAdapter._cls1.this;
                dialog = basereminddialog;
                super();
            }
        });
        dialog.show();
    }

    _cls1.val.dialog()
    {
        this$0 = final_familyphonenumberlistadapter;
        val$position = i;
        val$remindObject = RemindObject.this;
        super();
    }
}
