// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.os.Bundle;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.veclink.movnow_q2.util.LanguageUtil;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealthyBaseActivity

public class UserAgreementActivity extends HealthyBaseActivity
    implements android.view.View.OnClickListener
{

    private WebView mWebView;
    private TitleBarRelativeLayout titleBarRelativeLayout;

    public UserAgreementActivity()
    {
    }

    public void onClick(View view)
    {
        view.getId();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030017);
        mWebView = (WebView)findViewById(0x7f06006b);
        titleBarRelativeLayout = (TitleBarRelativeLayout)findViewById(0x7f060023);
        titleBarRelativeLayout.setTitleText(getString(0x7f0c00e5));
        titleBarRelativeLayout.setRightVisisble(8);
        mWebView.getSettings().setJavaScriptEnabled(true);
        if (LanguageUtil.isChina())
        {
            mWebView.loadUrl("file:///android_asset/agreement.html ");
            return;
        }
        if (LanguageUtil.isSpanish())
        {
            mWebView.loadUrl("file:///android_asset/agreement_spanish.html");
            return;
        } else
        {
            mWebView.loadUrl("file:///android_asset/agreement_en.html");
            return;
        }
    }
}
