// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.content.Context;

// Referenced classes of package com.veclink.movnow_q2.view:
//            CustomWaitProgressDialog

public class WaitDialogUtil
{

    private CustomWaitProgressDialog mProgressDialog;

    public WaitDialogUtil(Context context)
    {
        if (mProgressDialog == null)
        {
            mProgressDialog = (new CustomWaitProgressDialog(context)).createDialog();
        }
    }

    public void dismissDialog()
    {
        if (getProgressDialogIsShowing())
        {
            mProgressDialog.dismiss();
        }
    }

    public boolean getProgressDialogIsShowing()
    {
        if (mProgressDialog == null)
        {
            return false;
        } else
        {
            return mProgressDialog.isShowing();
        }
    }

    public void setMessage(String s)
    {
        mProgressDialog.setMessage(s);
    }

    public void showDialog()
    {
        if (!getProgressDialogIsShowing())
        {
            mProgressDialog.showDialog();
        }
    }
}
