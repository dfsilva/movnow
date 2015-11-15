// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.healthy.business.http.pojo.LoginResponse;
import com.veclink.healthy.business.http.pojo.RegisterbyemailResponse;
import com.veclink.healthy.business.http.pojo.SubError;
import com.veclink.healthy.business.http.session.HealthyLoginSession;
import com.veclink.healthy.business.http.session.HealthyRegisterSession;
import com.veclink.movnow_q2.network.base.Encodes;
import com.veclink.movnow_q2.network.base.SimpleHttpSchedualer;
import com.veclink.movnow_q2.util.EmailTool;
import com.veclink.movnow_q2.util.StringUtil;
import com.veclink.movnow_q2.util.ToastUtil;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;
import de.greenrobot.event.EventBus;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealthyBaseActivity, UserAgreementActivity, RegisiterBmiActivity

public class RegisterActivity extends HealthyBaseActivity
    implements android.view.View.OnClickListener
{

    private static final int NOT_REGISTRE = 5;
    private static final int REGISTRE = 2;
    public static final String SCENSE = "1";
    private static final String TAG = "register";
    private String password;
    private EditText pwd_view;
    private TitleBarRelativeLayout titleBarRelativeLayout;
    private Toast toast;
    private TextView tvAgreenmentHtml;
    private String username;
    private AutoCompleteTextView username_view;

    public RegisterActivity()
    {
    }

    private void initView()
    {
        titleBarRelativeLayout = (TitleBarRelativeLayout)findViewById(0x7f060023);
        tvAgreenmentHtml = (TextView)findViewById(0x7f060057);
        username_view = (AutoCompleteTextView)findViewById(0x7f060054);
        pwd_view = (EditText)findViewById(0x7f060056);
        tvAgreenmentHtml.setOnClickListener(this);
        tvAgreenmentHtml.getPaint().setFlags(8);
        titleBarRelativeLayout.setTitleText(getString(0x7f0c008b));
        titleBarRelativeLayout.setRightVisisble(0);
        titleBarRelativeLayout.setRightBackground(0x7f020168);
        titleBarRelativeLayout.setRightText(getString(0x7f0c015e));
        titleBarRelativeLayout.setRightButtonListener(this);
        if (getResources().getString(0x7f0c0000).equals("iwalk plus"))
        {
            tvAgreenmentHtml.setVisibility(8);
        }
    }

    public boolean isPassWord(String s)
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
            username = username_view.getText().toString();
            password = pwd_view.getText().toString();
            if (password.equals(""))
            {
                toast = StringUtil.toast(this, toast, getString(0x7f0c0098));
                return;
            }
            if (password.length() < 6)
            {
                toast = StringUtil.toast(this, toast, getString(0x7f0c0135));
                return;
            }
            if (!TextUtils.isEmpty(username) && !EmailTool.isEmail(username))
            {
                Toast.makeText(this, getString(0x7f0c0136), 0).show();
                return;
            }
            if (username != null && !"".equals(username))
            {
                if (isPassWord(password))
                {
                    EventBus.getDefault().unregister(this, new Class[] {
                        com/veclink/healthy/business/http/pojo/RegisterbyemailResponse
                    });
                    EventBus.getDefault().register(this, com/veclink/healthy/business/http/pojo/RegisterbyemailResponse, new Class[0]);
                    SimpleHttpSchedualer.ansycSchedual(this, new HealthyRegisterSession(this, username, Encodes.MD5(password)));
                    HealthyAccountHolder.saveUserNameAndPassWord(this, username, Encodes.MD5(password));
                    return;
                } else
                {
                    toast = StringUtil.toast(this, toast, getString(0x7f0c0135));
                    return;
                }
            } else
            {
                toast = StringUtil.toast(this, toast, getString(0x7f0c0097));
                return;
            }

        case 2131099735: 
            view = new Intent();
            view.setClass(this, com/veclink/movnow_q2/activity/UserAgreementActivity);
            startActivity(view);
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03000e);
        initView();
    }

    public void onEvent(LoginResponse loginresponse)
    {
        EventBus.getDefault().unregister(this, new Class[] {
            com/veclink/healthy/business/http/pojo/LoginResponse
        });
        if (loginresponse.getError().equals("0"))
        {
            startActivity(new Intent(this, com/veclink/movnow_q2/activity/RegisiterBmiActivity));
            HealthyAccountHolder.saveLoginResponse(this, loginresponse);
            finish();
            return;
        }
        if (loginresponse.getSubErrors() == null)
        {
            ToastUtil.showTextToast(this, getString(0x7f0c009a));
            return;
        } else
        {
            ToastUtil.showTextToast(this, ((SubError)loginresponse.getSubErrors().get(0)).getCode());
            return;
        }
    }

    public void onEvent(RegisterbyemailResponse registerbyemailresponse)
    {
        EventBus.getDefault().unregister(this, new Class[] {
            com/veclink/healthy/business/http/pojo/RegisterbyemailResponse
        });
        registerbyemailresponse.getError();
        Log.v("RegisterbyemailResponse", registerbyemailresponse.toString());
        if (registerbyemailresponse.getError().trim().equals("0"))
        {
            EventBus.getDefault().unregister(this, new Class[] {
                com/veclink/healthy/business/http/pojo/LoginResponse
            });
            EventBus.getDefault().register(this, com/veclink/healthy/business/http/pojo/LoginResponse, new Class[0]);
            SimpleHttpSchedualer.ansycSchedual(this, new HealthyLoginSession(this, username, Encodes.MD5(password)));
        } else
        {
            if (registerbyemailresponse.getError().trim().equals("-1000"))
            {
                Toast.makeText(this, getString(0x7f0c009a), 1).show();
                return;
            }
            if (((SubError)registerbyemailresponse.getSubErrors().get(0)).getCode().equals("isv.user-registerbyemail-service-error:EMAIL_IS_USED"))
            {
                Toast.makeText(this, getString(0x7f0c0137), 1).show();
                return;
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        motionevent = (InputMethodManager)getSystemService("input_method");
        motionevent.hideSoftInputFromWindow(username_view.getWindowToken(), 0);
        motionevent.hideSoftInputFromWindow(pwd_view.getWindowToken(), 0);
        return false;
    }
}
