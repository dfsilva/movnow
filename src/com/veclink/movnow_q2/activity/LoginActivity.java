// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.loopj.android.http.AsyncHttpClient;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.healthy.business.http.pojo.LoginResponse;
import com.veclink.healthy.business.http.pojo.SubError;
import com.veclink.healthy.business.http.session.HealthyLoginSession;
import com.veclink.healthy.database.op.HealthyDBOperate;
import com.veclink.movnow_q2.network.base.Encodes;
import com.veclink.movnow_q2.network.base.SimpleHttpSchedualer;
import com.veclink.movnow_q2.util.EmailTool;
import com.veclink.movnow_q2.util.MyActivityManager;
import com.veclink.movnow_q2.view.CustomWaitProgressDialog;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;
import de.greenrobot.event.EventBus;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealthyBaseActivity, RegisterActivity, ResetPasswordActivity, MainActivity, 
//            MovnowTwoApplication

public class LoginActivity extends HealthyBaseActivity
    implements android.view.View.OnClickListener
{

    private static String HISTORY_PREF = "Q2_login_history";
    private AutoCompleteTextView actvAccount;
    private Button btnLogin;
    private TextView btnRegister;
    private Context context;
    private EditText etPwd;
    private Handler handlerLogin;
    private CustomWaitProgressDialog mProgressDialog;
    public AsyncHttpClient m_AsyncHttpClient;
    private String strSaveAccount;
    private String strSavePwd;
    private TitleBarRelativeLayout titleBarRelativeLayoutSettings;
    private Toast toast;
    private View transport_layout;
    private TextView tvForgetPwd;

    public LoginActivity()
    {
        strSaveAccount = null;
        strSavePwd = null;
    }

    private void finishProgressDialog()
    {
        if (getProgressDialogIsShowing())
        {
            getProgressDialog().dismiss();
        }
    }

    private List getLoginUserHistory(String s)
    {
        Object obj = getSharedPreferences(HISTORY_PREF, 0).getAll();
        ArrayList arraylist = new ArrayList();
        if (obj != null && !((Map) (obj)).isEmpty())
        {
            obj = ((Map) (obj)).keySet();
            String as[] = (String[])((Set) (obj)).toArray(new String[((Set) (obj)).size()]);
            int j = as.length;
            int i = 0;
            while (i < j) 
            {
                String s1 = as[i];
                if (s1.startsWith(s))
                {
                    arraylist.add(s1);
                }
                i++;
            }
        }
        return arraylist;
    }

    private CustomWaitProgressDialog getProgressDialog()
    {
        if (mProgressDialog == null)
        {
            mProgressDialog = (new CustomWaitProgressDialog(this)).createDialog();
        }
        return mProgressDialog;
    }

    private boolean getProgressDialogIsShowing()
    {
        if (mProgressDialog == null)
        {
            return false;
        } else
        {
            return mProgressDialog.isShowing();
        }
    }

    private void haveNotSumitUserInfoDataBack()
    {
        if (getIntent().getBooleanExtra("firstLogin", false))
        {
            HealthyAccountHolder.logOut(this);
        }
    }

    private void initView()
    {
        titleBarRelativeLayoutSettings = (TitleBarRelativeLayout)findViewById(0x7f060032);
        actvAccount = (AutoCompleteTextView)findViewById(0x7f060038);
        etPwd = (EditText)findViewById(0x7f06003c);
        tvForgetPwd = (TextView)findViewById(0x7f060040);
        tvForgetPwd.getPaint().setFlags(8);
        btnRegister = (TextView)findViewById(0x7f060041);
        btnRegister.getPaint().setFlags(8);
        btnLogin = (Button)findViewById(0x7f06003e);
        transport_layout = findViewById(0x7f060035);
        actvAccount.setThreshold(1);
        tvForgetPwd.setOnClickListener(this);
        btnRegister.setOnClickListener(this);
        btnLogin.setOnClickListener(this);
        titleBarRelativeLayoutSettings.setLefttButtonListener(new android.view.View.OnClickListener() {

            final LoginActivity this$0;

            public void onClick(View view)
            {
                if (MainActivity.mainActivity != null)
                {
                    MainActivity.mainActivity.finish();
                }
                finish();
            }

            
            {
                this$0 = LoginActivity.this;
                super();
            }
        });
        etPwd.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {

            final LoginActivity this$0;

            public void onFocusChange(View view, boolean flag)
            {
                if (view.hasFocus())
                {
                    transport_layout.setVisibility(8);
                    return;
                } else
                {
                    transport_layout.setVisibility(0);
                    return;
                }
            }

            
            {
                this$0 = LoginActivity.this;
                super();
            }
        });
        actvAccount.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {

            final LoginActivity this$0;

            public void onFocusChange(View view, boolean flag)
            {
                if (view.hasFocus())
                {
                    transport_layout.setVisibility(8);
                    return;
                } else
                {
                    transport_layout.setVisibility(0);
                    return;
                }
            }

            
            {
                this$0 = LoginActivity.this;
                super();
            }
        });
        actvAccount.addTextChangedListener(new TextWatcher() {

            final LoginActivity this$0;

            public void afterTextChanged(Editable editable)
            {
                etPwd.setText(queryPasswordHistory(editable.toString()));
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
                charsequence = getLoginUserHistory(charsequence.toString());
                charsequence = new ArrayAdapter(LoginActivity.this, 0x7f030045, charsequence);
                actvAccount.setAdapter(charsequence);
            }

            
            {
                this$0 = LoginActivity.this;
                super();
            }
        });
        titleBarRelativeLayoutSettings.setRightVisisble(8);
    }

    private boolean isPassWord(String s)
    {
        return Pattern.compile("^[0-9a-zA-Z]{6,16}").matcher(s).matches();
    }

    private void onLoginFailed(String s)
    {
        if (s.equals("-1"))
        {
            showToast(getString(0x7f0c009b));
        } else
        {
            if (s.equals("isv.user-login-service-error:INVLIAD_USERNAME_OR_PASSWORD"))
            {
                showToast(getString(0x7f0c009c));
                return;
            }
            if (!s.equals("isv.user-login-service-error:INACTIVE_ACCOUNT"))
            {
                if (s.equals("isv.user-login-service-error:ACCOUNT_LOCKED"))
                {
                    showToast(getString(0x7f0c009e));
                    return;
                } else
                {
                    showToast(getString(0x7f0c009a));
                    return;
                }
            }
        }
    }

    private String queryPasswordHistory(String s)
    {
        Map map = getSharedPreferences(HISTORY_PREF, 0).getAll();
        if (map != null)
        {
            s = (String)map.get(s);
            if (s != null)
            {
                return s;
            }
        }
        return "";
    }

    private void saveLoginHistory(String s, String s1)
    {
        android.content.SharedPreferences.Editor editor = getSharedPreferences(HISTORY_PREF, 0).edit();
        editor.putString(s, s1);
        editor.commit();
    }

    private void showToast(final String toastString)
    {
        handlerLogin.post(new Runnable() {

            final LoginActivity this$0;
            final String val$toastString;

            public void run()
            {
                Toast.makeText(LoginActivity.this, toastString, 0).show();
            }

            
            {
                this$0 = LoginActivity.this;
                toastString = s;
                super();
            }
        });
    }

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR tableswitch 2131099710 2131099713: default 36
    //                   2131099710 53
    //                   2131099711 36
    //                   2131099712 229
    //                   2131099713 37;
           goto _L1 _L2 _L1 _L3 _L4
_L1:
        return;
_L4:
        startActivity(new Intent(this, com/veclink/movnow_q2/activity/RegisterActivity));
        return;
_L2:
        strSaveAccount = actvAccount.getText().toString();
        strSavePwd = etPwd.getText().toString();
        if (strSaveAccount.equals(""))
        {
            showToast(getString(0x7f0c0097));
            return;
        }
        if (strSavePwd.equals(""))
        {
            showToast(getString(0x7f0c0098));
            return;
        }
        if (!EmailTool.isEmail(strSaveAccount))
        {
            showToast(getString(0x7f0c0099));
            return;
        }
        EventBus.getDefault().unregister(this, new Class[] {
            com/veclink/healthy/business/http/pojo/LoginResponse
        });
        EventBus.getDefault().register(this, com/veclink/healthy/business/http/pojo/LoginResponse, new Class[0]);
        m_AsyncHttpClient = SimpleHttpSchedualer.ansycSchedual(this, new HealthyLoginSession(context, strSaveAccount, Encodes.MD5(strSavePwd)));
        if (m_AsyncHttpClient != null)
        {
            getProgressDialog().show();
            return;
        }
          goto _L1
_L3:
        view = new Intent();
        view.setClass(this, com/veclink/movnow_q2/activity/ResetPasswordActivity);
        startActivity(view);
        return;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030008);
        context = this;
        handlerLogin = new Handler();
        initView();
    }

    protected void onDestroy()
    {
        super.onDestroy();
        if (m_AsyncHttpClient != null)
        {
            m_AsyncHttpClient.cancelRequests(this, true);
        }
    }

    public void onEvent(LoginResponse loginresponse)
    {
        EventBus.getDefault().unregister(this, new Class[] {
            com/veclink/healthy/business/http/pojo/LoginResponse
        });
        finishProgressDialog();
        m_AsyncHttpClient = null;
        if (loginresponse.getError().equals("0"))
        {
            if (strSaveAccount != null && strSavePwd != null)
            {
                saveLoginHistory(strSaveAccount, strSavePwd);
            }
            HealthyAccountHolder.saveLoginResponse(this, loginresponse);
            HealthyDBOperate.updateDataUserIdIfUserIdIsEmty(context);
            loginresponse = new Intent();
            loginresponse.setFlags(0x4000000);
            loginresponse.setClass(this, com/veclink/movnow_q2/activity/MainActivity);
            startActivity(loginresponse);
            finish();
            return;
        }
        if (loginresponse.getSubErrors() == null)
        {
            showToast(getString(0x7f0c009a));
            return;
        } else
        {
            onLoginFailed(((SubError)loginresponse.getSubErrors().get(0)).getCode());
            return;
        }
    }

    public void onEvent(String s)
    {
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (i == 4)
        {
            keyevent = (MovnowTwoApplication)getApplication();
            keyevent.setHasSyncSleepData(false);
            keyevent.setHasSyncStepData(false);
            keyevent.getActivityManager().popAllActivityExceptOne(android/app/Activity);
        }
        return true;
    }

    protected void onResume()
    {
        super.onResume();
        if (!HealthyAccountHolder.isNeedLogin(context))
        {
            finish();
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        motionevent = (InputMethodManager)getSystemService("input_method");
        motionevent.hideSoftInputFromWindow(actvAccount.getWindowToken(), 0);
        motionevent.hideSoftInputFromWindow(etPwd.getWindowToken(), 0);
        return false;
    }






}
