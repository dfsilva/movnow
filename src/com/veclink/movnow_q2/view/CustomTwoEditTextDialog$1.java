// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.widget.EditText;

// Referenced classes of package com.veclink.movnow_q2.view:
//            CustomTwoEditTextDialog

class this._cls0
    implements TextWatcher
{

    final CustomTwoEditTextDialog this$0;

    public void afterTextChanged(Editable editable)
    {
        if (CustomTwoEditTextDialog.isChinese(editable.toString()))
        {
            editable = new android.text.init>(8);
            CustomTwoEditTextDialog.access$000(CustomTwoEditTextDialog.this).setFilters(new InputFilter[] {
                editable
            });
        } else
        {
            editable = new android.text.init>(21);
            CustomTwoEditTextDialog.access$000(CustomTwoEditTextDialog.this).setFilters(new InputFilter[] {
                editable
            });
        }
        CustomTwoEditTextDialog.access$000(CustomTwoEditTextDialog.this).setSelection(CustomTwoEditTextDialog.access$000(CustomTwoEditTextDialog.this).length());
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    ()
    {
        this$0 = CustomTwoEditTextDialog.this;
        super();
    }
}
