// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.view.View;
import android.widget.TextView;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.movnow_q2.util.SharedPreferencesUtils;
import com.veclink.movnow_q2.view.CustomEditTextDialog;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            MyAccountActivity

class val.customEditTextDialog
    implements android.view.countActivity._cls4._cls2
{

    final ss this$1;
    final CustomEditTextDialog val$customEditTextDialog;

    public void onClick(View view)
    {
        val$customEditTextDialog.dismiss();
    }

    is._cls0()
    {
        this$1 = final__pcls0;
        val$customEditTextDialog = CustomEditTextDialog.this;
        super();
    }

    // Unreferenced inner class com/veclink/movnow_q2/activity/MyAccountActivity$4

/* anonymous class */
    class MyAccountActivity._cls4
        implements android.view.View.OnClickListener
    {

        final MyAccountActivity this$0;

        public void onClick(final View customEditTextDialog)
        {
            customEditTextDialog = new CustomEditTextDialog(MyAccountActivity.this);
            customEditTextDialog.createDialog().setTip(getString(0x7f0c0050)).setNegativeButton(getString(0x7f0c0047), customEditTextDialog. new MyAccountActivity._cls4._cls2()).setPositiveButton(getString(0x7f0c0046), new MyAccountActivity._cls4._cls1()).setEditText(MyAccountActivity.access$600(MyAccountActivity.this).getText().toString()).showDialog();
        }

            
            {
                this$0 = MyAccountActivity.this;
                super();
            }

        // Unreferenced inner class com/veclink/movnow_q2/activity/MyAccountActivity$4$1

/* anonymous class */
        class MyAccountActivity._cls4._cls1
            implements android.view.View.OnClickListener
        {

            final MyAccountActivity._cls4 this$1;
            final CustomEditTextDialog val$customEditTextDialog;

            public void onClick(View view)
            {
                if (customEditTextDialog.getEditText().equals(""))
                {
                    return;
                } else
                {
                    MyAccountActivity.access$600(this$0).setText(customEditTextDialog.getEditText());
                    HealthyAccountHolder.setNickName(MyAccountActivity.access$200(this$0), MyAccountActivity.access$600(this$0).getText().toString().trim());
                    SharedPreferencesUtils.setSharedPreferences(getApplication(), "nickName", customEditTextDialog.getEditText().toString());
                    customEditTextDialog.dismiss();
                    MyAccountActivity.access$000(this$0);
                    return;
                }
            }

                    
                    {
                        this$1 = MyAccountActivity._cls4.this;
                        customEditTextDialog = customedittextdialog;
                        super();
                    }
        }

    }

}
