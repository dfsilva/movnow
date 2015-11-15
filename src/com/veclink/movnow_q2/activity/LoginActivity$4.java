// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            LoginActivity

class this._cls0
    implements TextWatcher
{

    final LoginActivity this$0;

    public void afterTextChanged(Editable editable)
    {
        LoginActivity.access$400(LoginActivity.this).setText(LoginActivity.access$300(LoginActivity.this, editable.toString()));
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        charsequence = LoginActivity.access$100(LoginActivity.this, charsequence.toString());
        charsequence = new ArrayAdapter(LoginActivity.this, 0x7f030045, charsequence);
        LoginActivity.access$200(LoginActivity.this).setAdapter(charsequence);
    }

    ()
    {
        this$0 = LoginActivity.this;
        super();
    }
}
