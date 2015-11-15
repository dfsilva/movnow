// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Toast;
import com.veclink.healthy.business.http.pojo.RegisterbyemailResponse;
import com.veclink.healthy.business.http.pojo.SubError;
import com.veclink.healthy.business.http.session.HealthyResetPassWordSession;
import com.veclink.movnow_q2.network.base.Encodes;
import com.veclink.movnow_q2.network.base.SimpleHttpSchedualer;
import com.veclink.movnow_q2.util.EmailTool;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;
import de.greenrobot.event.EventBus;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealthyBaseActivity, ResetPasswordSuccessTipActivity

public class ResetPasswordActivity extends HealthyBaseActivity
    implements android.view.View.OnClickListener
{

    private static final String TAG = "ResetPasswordActivity";
    private String email;
    private String password;
    private EditText pwd_view;
    private TitleBarRelativeLayout titleBarRelativeLayout;
    private AutoCompleteTextView username_view;

    public ResetPasswordActivity()
    {
    }

    private void initView()
    {
        titleBarRelativeLayout = (TitleBarRelativeLayout)findViewById(0x7f060023);
        username_view = (AutoCompleteTextView)findViewById(0x7f060054);
        pwd_view = (EditText)findViewById(0x7f060056);
        titleBarRelativeLayout.setTitleText(getString(0x7f0c008c));
        titleBarRelativeLayout.setRightVisisble(0);
        titleBarRelativeLayout.setRightText(getString(0x7f0c015e));
        titleBarRelativeLayout.setRightBackground(0x7f020168);
        titleBarRelativeLayout.setRightButtonListener(this);
    }

    private boolean isPassWord(String s)
    {
        return Pattern.compile("^[0-9a-zA-Z]{6,16}").matcher(s).matches();
    }

    public void onClick(View view)
    {
        switch (view.getId())
        {
        default:
            return;

        case 2131100107: 
            email = username_view.getText().toString();
            break;
        }
        password = pwd_view.getText().toString();
        if (!TextUtils.isEmpty(email) && !EmailTool.isEmail(email))
        {
            Toast.makeText(this, getString(0x7f0c0136), 0).show();
            return;
        }
        if (!TextUtils.isEmpty(email))
        {
            EventBus.getDefault().unregister(this, new Class[] {
                com/veclink/healthy/business/http/pojo/RegisterbyemailResponse
            });
            EventBus.getDefault().register(this, com/veclink/healthy/business/http/pojo/RegisterbyemailResponse, new Class[0]);
            SimpleHttpSchedualer.ansycSchedual(this, new HealthyResetPassWordSession(this, email, Encodes.MD5(password)));
            return;
        } else
        {
            Toast.makeText(this, getString(0x7f0c0097), 0).show();
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030010);
        initView();
    }

    public void onEvent(RegisterbyemailResponse registerbyemailresponse)
    {
        EventBus.getDefault().unregister(this, new Class[] {
            com/veclink/healthy/business/http/pojo/RegisterbyemailResponse
        });
        registerbyemailresponse.getError();
        Log.v("ResetPasswordActivity", registerbyemailresponse.toString());
        if (registerbyemailresponse.getError().trim().equals("0"))
        {
            startActivity(new Intent(this, com/veclink/movnow_q2/activity/ResetPasswordSuccessTipActivity));
            finish();
            return;
        }
        if (((SubError)registerbyemailresponse.getSubErrors().get(0)).getCode().equals("isv.user-resetpasswordbyemail-service-error:EMAIL_DOES_NOT_EXIST"))
        {
            Toast.makeText(this, getString(0x7f0c0160), 1).show();
            return;
        } else
        {
            Toast.makeText(this, getString(0x7f0c0128), 1).show();
            return;
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(pwd_view.getWindowToken(), 0);
        return false;
    }
}
