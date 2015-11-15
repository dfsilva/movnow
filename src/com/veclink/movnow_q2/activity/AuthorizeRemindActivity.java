// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.app.Activity;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import cn.sharesdk.framework.TitleLayout;
import cn.sharesdk.framework.authorize.AuthorizeAdapter;
import com.veclink.healthy.view.ShareDialog;

public class AuthorizeRemindActivity extends AuthorizeAdapter
{

    public AuthorizeRemindActivity()
    {
    }

    public void onCreate()
    {
        super.onCreate();
        getTitleLayout().getTvTitle().setVisibility(8);
        getBodyView().setVisibility(8);
        getWebBody().setVisibility(8);
        showRmindText();
        getActivity().finish();
    }

    public void onDestroy()
    {
        super.onDestroy();
    }

    public void showRmindText()
    {
        String s = "";
        ShareDialog.SHARETYPE;
        JVM INSTR tableswitch 1 4: default 36
    //                   1 49
    //                   2 62
    //                   3 75
    //                   4 88;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        Toast.makeText(getActivity(), s, 1).show();
        return;
_L2:
        s = getActivity().getString(0x7f0c01b6);
        continue; /* Loop/switch isn't completed */
_L3:
        s = getActivity().getString(0x7f0c01b7);
        continue; /* Loop/switch isn't completed */
_L4:
        s = getActivity().getString(0x7f0c017a);
        continue; /* Loop/switch isn't completed */
_L5:
        s = getActivity().getString(0x7f0c017b);
        if (true) goto _L1; else goto _L6
_L6:
    }
}
