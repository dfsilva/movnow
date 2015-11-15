// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.view.View;
import android.widget.EditText;
import com.veclink.movmow.allen.nurse.RemindObject;
import com.veclink.movnow_q2.adapter.FamilyPhoneNumberListAdapter;
import com.veclink.movnow_q2.util.StorageUtil;
import java.util.HashMap;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            SetFamilyActivity

class this._cls0
    implements android.view.
{

    final SetFamilyActivity this$0;

    public void onClick(View view)
    {
        if (SetFamilyActivity.access$000(SetFamilyActivity.this).remindList.size() < 3)
        {
            if (!SetFamilyActivity.access$000(SetFamilyActivity.this).phoneNumberMap.containsKey(view = SetFamilyActivity.access$100(SetFamilyActivity.this).getText().toString()))
            {
                RemindObject remindobject = new RemindObject("", view);
                SetFamilyActivity.access$000(SetFamilyActivity.this).remindList.add(remindobject);
                SetFamilyActivity.access$000(SetFamilyActivity.this).phoneNumberMap.put(view, view);
                StorageUtil.writeRemindObject(getApplicationContext(), SetFamilyActivity.access$000(SetFamilyActivity.this).remindList, "family_phone_number_file.wao");
                SetFamilyActivity.access$000(SetFamilyActivity.this).notifyDataSetChanged();
                SetFamilyActivity.access$100(SetFamilyActivity.this).setText("");
                return;
            }
        }
    }

    Adapter()
    {
        this$0 = SetFamilyActivity.this;
        super();
    }
}
