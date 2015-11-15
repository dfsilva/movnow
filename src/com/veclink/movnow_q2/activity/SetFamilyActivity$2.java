// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import com.veclink.movnow_q2.adapter.FamilyPhoneNumberListAdapter;
import java.util.HashMap;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            SetFamilyActivity

class this._cls0
    implements TextWatcher
{

    final SetFamilyActivity this$0;

    public void afterTextChanged(Editable editable)
    {
        if (editable.length() > 0 && !SetFamilyActivity.access$000(SetFamilyActivity.this).phoneNumberMap.containsKey(editable.toString()) && SetFamilyActivity.access$000(SetFamilyActivity.this).phoneNumberMap.size() < 3)
        {
            SetFamilyActivity.access$200(SetFamilyActivity.this).setEnabled(true);
            return;
        } else
        {
            SetFamilyActivity.access$200(SetFamilyActivity.this).setEnabled(false);
            return;
        }
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    Adapter()
    {
        this$0 = SetFamilyActivity.this;
        super();
    }
}
