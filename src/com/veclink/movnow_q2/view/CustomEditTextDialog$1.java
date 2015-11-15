// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.widget.EditText;

// Referenced classes of package com.veclink.movnow_q2.view:
//            CustomEditTextDialog

class this._cls0
    implements TextWatcher
{

    final CustomEditTextDialog this$0;

    public void afterTextChanged(Editable editable)
    {
        if (CustomEditTextDialog.isChinese(editable.toString()))
        {
            editable = new android.text.r(8);
            CustomEditTextDialog.access$000(CustomEditTextDialog.this).setFilters(new InputFilter[] {
                editable
            });
        } else
        {
            editable = new android.text.r(15);
            CustomEditTextDialog.access$000(CustomEditTextDialog.this).setFilters(new InputFilter[] {
                editable
            });
        }
        CustomEditTextDialog.access$000(CustomEditTextDialog.this).setSelection(CustomEditTextDialog.access$000(CustomEditTextDialog.this).length());
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    ()
    {
        this$0 = CustomEditTextDialog.this;
        super();
    }
}
