// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.Toast;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.healthy.database.entity.UptakeCalorie;
import com.veclink.healthy.database.op.HealthyDBOperate;
import com.veclink.movnow_q2.util.StringUtil;
import com.veclink.movnow_q2.view.BaseRemindDialog;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealthyBaseActivity, ManagerCaloriesActivity

public class AddCaloriesActivity extends HealthyBaseActivity
    implements android.view.View.OnClickListener, android.view.View.OnTouchListener
{

    private Bitmap b;
    private Context context;
    private EditText etFoodCal;
    private EditText etFoodName;
    private ImageView imgCal;
    private String imgUrl;
    private ScrollView scrollView;
    TitleBarRelativeLayout titleBar;
    private Toast toast;

    public AddCaloriesActivity()
    {
    }

    private void backDialog()
    {
        BaseRemindDialog basereminddialog = new BaseRemindDialog(context);
        basereminddialog.setTitle(context.getString(0x7f0c00e6));
        basereminddialog.setContent(context.getString(0x7f0c016e));
        basereminddialog.setOkListener(new android.view.View.OnClickListener() {

            final AddCaloriesActivity this$0;

            public void onClick(View view)
            {
                finish();
            }

            
            {
                this$0 = AddCaloriesActivity.this;
                super();
            }
        });
        basereminddialog.show();
    }

    private void initView()
    {
        titleBar = (TitleBarRelativeLayout)findViewById(0x7f060017);
        titleBar.setTitleText(getString(0x7f0c014c));
        titleBar.setRightVisisble(0);
        titleBar.setRightBackground(0x7f020128);
        titleBar.setLefttButtonListener(this);
        titleBar.setTitleButtonListener(this);
        titleBar.setRightText(getString(0x7f0c00f4));
        imgCal = (ImageView)findViewById(0x7f060019);
        etFoodName = (EditText)findViewById(0x7f06001a);
        etFoodCal = (EditText)findViewById(0x7f06001b);
        titleBar.setRightButtonListener(this);
        scrollView = (ScrollView)findViewById(0x7f060018);
        scrollView.setOnTouchListener(this);
        if (!TextUtils.isEmpty(imgUrl))
        {
            if (b != null)
            {
                b.recycle();
            }
            b = BitmapFactory.decodeFile(imgUrl);
            if (b != null)
            {
                imgCal.setImageBitmap(b);
            }
        }
    }

    public void onBackPressed()
    {
        backDialog();
    }

    public void onClick(View view)
    {
        switch (view.getId())
        {
        default:
            return;

        case 2131100107: 
            view = etFoodName.getText().toString().trim();
            String s = etFoodCal.getText().toString().trim();
            if (TextUtils.isEmpty(view))
            {
                toast = StringUtil.toast(this, toast, getString(0x7f0c0078));
                return;
            }
            if (TextUtils.isEmpty(s))
            {
                toast = StringUtil.toast(this, toast, getString(0x7f0c007a));
                return;
            }
            if (Integer.parseInt(s) > 2000)
            {
                toast = StringUtil.toast(this, toast, getString(0x7f0c007b));
                return;
            } else
            {
                UptakeCalorie uptakecalorie = new UptakeCalorie();
                uptakecalorie.setFoodName(view);
                uptakecalorie.setCalorieContent(Integer.parseInt(s));
                uptakecalorie.setCounts(1.0F);
                uptakecalorie.setDateTime(StringUtil.formatCurrDate("yyyyMMdd"));
                uptakecalorie.setUserId(HealthyAccountHolder.getUserId(this));
                uptakecalorie.setImgUrl(imgUrl);
                HealthyDBOperate.addUptakeCalorie(this, uptakecalorie);
                startActivity(new Intent(this, com/veclink/movnow_q2/activity/ManagerCaloriesActivity));
                finish();
                return;
            }

        case 2131100105: 
        case 2131100106: 
            backDialog();
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030000);
        context = this;
        imgUrl = getIntent().getStringExtra("imgUrl");
        initView();
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        view = (InputMethodManager)getSystemService("input_method");
        view.hideSoftInputFromWindow(scrollView.getWindowToken(), 0);
        view.hideSoftInputFromWindow(etFoodName.getWindowToken(), 0);
        view.hideSoftInputFromWindow(etFoodCal.getWindowToken(), 0);
        return false;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        motionevent = (InputMethodManager)getSystemService("input_method");
        motionevent.hideSoftInputFromWindow(scrollView.getWindowToken(), 0);
        motionevent.hideSoftInputFromWindow(etFoodName.getWindowToken(), 0);
        motionevent.hideSoftInputFromWindow(etFoodCal.getWindowToken(), 0);
        return false;
    }
}
