// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.google.gson.Gson;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.healthy.business.http.pojo.GetUploadTokenResponse;
import com.veclink.healthy.business.http.pojo.UpdateUserInfoResponse;
import com.veclink.healthy.business.http.pojo.UploadFileResponse;
import com.veclink.healthy.business.http.session.HealthyGetUploadTokenSession;
import com.veclink.healthy.business.http.session.HealthyUpdateUserInfoSession;
import com.veclink.healthy.database.entity.UserInfo;
import com.veclink.movnow_q2.network.base.SimpleHttpSchedualer;
import com.veclink.movnow_q2.util.FileUtil;
import com.veclink.movnow_q2.util.LanguageUtil;
import com.veclink.movnow_q2.util.SharedPreferencesUtils;
import com.veclink.movnow_q2.util.StepDataConverterUtil;
import com.veclink.movnow_q2.util.ToastUtil;
import com.veclink.movnow_q2.view.CircleImageView;
import com.veclink.movnow_q2.view.CustomEditTextDialog;
import com.veclink.movnow_q2.view.ReBmiWheelViewDialog;
import com.veclink.movnow_q2.view.TakePhotoDialogProxy;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;
import com.veclink.movnow_q2.view.WaitDialogUtil;
import de.greenrobot.event.EventBus;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.HttpURLConnection;
import java.net.URL;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealthyBaseActivity, MovnowTwoApplication

public class MyAccountActivity extends HealthyBaseActivity
    implements android.view.View.OnClickListener
{
    private class UploadIconTask extends AsyncTask
    {

        final MyAccountActivity this$0;

        protected transient Object doInBackground(Object aobj[])
        {
            String s = "";
            Object obj = s;
            Object obj1;
            Object obj2;
            byte abyte0[];
            byte abyte1[];
            byte abyte2[];
            try
            {
                Thread.sleep(500L);
            }
            // Misplaced declaration of an exception variable
            catch (Object aobj[])
            {
                ((Exception) (aobj)).printStackTrace();
                return obj;
            }
            obj = s;
            obj1 = (String)aobj[0];
            obj = s;
            obj2 = (String)aobj[1];
            obj = s;
            aobj = (String)aobj[2];
            obj = s;
            System.out.println((new StringBuilder()).append("filepath:").append(((String) (obj1))).append("  ").append(((String) (obj2))).append("  ").append(((String) (aobj))).toString());
            obj = s;
            aobj = (HttpURLConnection)(new URL((new StringBuilder()).append("http://upload.movnow.com/upload/file.do?method=file.upload&filename=").append(((String) (obj2))).append("&token=").append(((String) (aobj))).toString())).openConnection();
            obj = s;
            ((HttpURLConnection) (aobj)).setRequestMethod("POST");
            obj = s;
            ((HttpURLConnection) (aobj)).setDoOutput(true);
            obj = s;
            abyte0 = FileUtil.getFileByte(((String) (obj1)));
            obj = s;
            System.out.println((new StringBuilder()).append("\u5B57\u8282\u6570\u7EC4\u7684\u5927\u5C0F:").append(abyte0.length).toString());
            obj = s;
            abyte1 = ("--" + "---------------------------7d4a6d158c9" + "\r\n" + "Content-Disposition: form-data; name=\"s\"; filename=\"test.doc\"\r\n" + "Content-Type: application/octet-stream\r\n\r\n").getBytes();
            obj = s;
            abyte2 = (new StringBuilder()).append("\r\n--").append("---------------------------7d4a6d158c9").append("--\r\n").toString().getBytes();
            obj = s;
            ((HttpURLConnection) (aobj)).setRequestProperty("Content-Type", (new StringBuilder()).append("multipart/form-data;boundary=").append("---------------------------7d4a6d158c9").toString());
            obj = s;
            ((HttpURLConnection) (aobj)).setRequestProperty("Content-Length", String.valueOf(abyte1.length + abyte0.length + abyte2.length));
            obj = s;
            ((HttpURLConnection) (aobj)).setRequestProperty("User-Agent", (new StringBuilder()).append(android.os.Build.VERSION.SDK_INT).append(",").append(SimpleHttpSchedualer.getVersionName(mContext)).toString());
            obj = s;
            obj1 = ((HttpURLConnection) (aobj)).getOutputStream();
            obj = s;
            ((OutputStream) (obj1)).write(abyte1);
            obj = s;
            ((OutputStream) (obj1)).write(abyte0);
            obj = s;
            ((OutputStream) (obj1)).write(abyte2);
            obj = s;
            ((OutputStream) (obj1)).flush();
            obj = s;
            abyte0 = new BufferedReader(new InputStreamReader(((HttpURLConnection) (aobj)).getInputStream()));
            aobj = s;
_L2:
            obj = ((Object) (aobj));
            s = abyte0.readLine();
            if (s == null)
            {
                break; /* Loop/switch isn't completed */
            }
            obj = ((Object) (aobj));
            aobj = (new StringBuilder()).append(((String) (aobj))).append(s).toString();
            if (true) goto _L2; else goto _L1
_L1:
            obj = ((Object) (aobj));
            System.out.println((new StringBuilder()).append("result:").append(((String) (aobj))).toString());
            obj = ((Object) (aobj));
            abyte0.close();
            obj = ((Object) (aobj));
            ((OutputStream) (obj1)).close();
            return ((Object) (aobj));
        }

        protected void onPostExecute(Object obj)
        {
            super.onPostExecute(obj);
            waitDialogUtil.dismissDialog();
            Log.d("uploadresult:", obj.toString());
            obj = (UploadFileResponse)(new Gson()).fromJson(obj.toString(), com/veclink/healthy/business/http/pojo/UploadFileResponse);
            if (obj != null && ((UploadFileResponse) (obj)).error != null && ((UploadFileResponse) (obj)).error.equalsIgnoreCase("succeed"))
            {
                HealthyAccountHolder.setUserIconUrl(mContext, ((UploadFileResponse) (obj)).fileId);
                submitUserInfo();
                return;
            }
            if (obj != null && ((UploadFileResponse) (obj)).messag != null)
            {
                ToastUtil.showShortToast(mContext, ((UploadFileResponse) (obj)).messag);
                return;
            } else
            {
                ToastUtil.showShortToast(mContext, mContext.getString(0x7f0c009a));
                return;
            }
        }

        private UploadIconTask()
        {
            this$0 = MyAccountActivity.this;
            super();
        }

    }


    public static final String TAG = "MyAccountActivity";
    private int aspectX;
    private int aspectY;
    private android.view.View.OnClickListener dialogListener;
    ImageView female_img;
    private int height;
    protected ImageLoader imageLoader;
    private File imgFile;
    private String imgUrl;
    private Context mContext;
    private Handler mHandler;
    ImageView male_img;
    private TextView myEdit;
    private CircleImageView myFavicon;
    private TextView myName;
    private DisplayImageOptions options;
    View person_birthday_layout;
    TextView person_birthday_textview;
    View person_height_layout;
    TextView person_height_textview;
    View person_weight_layout;
    TextView person_weight_textview;
    ReBmiWheelViewDialog reBmiWheelViewDialog;
    private TakePhotoDialogProxy takePhotoDialogProxy;
    private TitleBarRelativeLayout titleBarRelativeLayout;
    private Toast toast;
    private TextView tvSex;
    private WaitDialogUtil waitDialogUtil;
    private int width;

    public MyAccountActivity()
    {
        imgFile = null;
        width = 150;
        height = 150;
        aspectX = 1;
        aspectY = 1;
        imageLoader = ImageLoader.getInstance();
        reBmiWheelViewDialog = null;
        dialogListener = new android.view.View.OnClickListener() {

            final MyAccountActivity this$0;

            public void onClick(View view)
            {
                view = reBmiWheelViewDialog.saveResult();
                if (view.equals(""))
                {
                    return;
                } else
                {
                    reBmiWheelViewDialog.show_result_view.setText(view);
                    reBmiWheelViewDialog.dismiss();
                    submitUserInfo();
                    return;
                }
            }

            
            {
                this$0 = MyAccountActivity.this;
                super();
            }
        };
        mHandler = new Handler() {

            final MyAccountActivity this$0;

            public void handleMessage(Message message)
            {
                waitDialogUtil = new WaitDialogUtil(mContext);
                waitDialogUtil.setMessage(getString(0x7f0c018d));
                waitDialogUtil.showDialog();
                EventBus.getDefault().unregister(mContext, new Class[] {
                    com/veclink/healthy/business/http/pojo/GetUploadTokenResponse
                });
                EventBus.getDefault().register(mContext, com/veclink/healthy/business/http/pojo/GetUploadTokenResponse, new Class[0]);
                message = new HealthyGetUploadTokenSession(mContext);
                SimpleHttpSchedualer.ansycSchedual(mContext, message);
            }

            
            {
                this$0 = MyAccountActivity.this;
                super();
            }
        };
    }

    private void initPersonaInfo()
    {
        male_img = (ImageView)findViewById(0x7f06004c);
        female_img = (ImageView)findViewById(0x7f06004d);
        person_birthday_textview = (TextView)findViewById(0x7f06004f);
        person_height_textview = (TextView)findViewById(0x7f060053);
        person_weight_textview = (TextView)findViewById(0x7f060051);
        person_birthday_layout = findViewById(0x7f06004e);
        person_height_layout = findViewById(0x7f060052);
        person_weight_layout = findViewById(0x7f060050);
        male_img.setOnClickListener(this);
        female_img.setOnClickListener(this);
        person_birthday_layout.setOnClickListener(this);
        person_height_layout.setOnClickListener(this);
        person_weight_layout.setOnClickListener(this);
        int i = ((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "personal_year", Integer.valueOf(0))).intValue();
        int j = ((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "personal_month", Integer.valueOf(0))).intValue();
        int k = ((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "personal_day", Integer.valueOf(0))).intValue();
        Object obj = new StringBuffer();
        float f;
        float f1;
        Object obj1;
        if (LanguageUtil.isChina())
        {
            ((StringBuffer) (obj)).append(String.valueOf(i));
            ((StringBuffer) (obj)).append("/");
            ((StringBuffer) (obj)).append(String.valueOf(j));
            ((StringBuffer) (obj)).append("/");
            ((StringBuffer) (obj)).append(String.valueOf(k));
        } else
        {
            ((StringBuffer) (obj)).append(String.valueOf(j));
            ((StringBuffer) (obj)).append("/");
            ((StringBuffer) (obj)).append(String.valueOf(k));
            ((StringBuffer) (obj)).append("/");
            ((StringBuffer) (obj)).append(String.valueOf(i));
        }
        person_birthday_textview.setText(((StringBuffer) (obj)).toString());
        f = ((Float)SharedPreferencesUtils.getSharedPreferences(mContext, "personal_height", Float.valueOf(0.0F))).floatValue();
        f1 = ((Float)SharedPreferencesUtils.getSharedPreferences(mContext, "personal_weight", Float.valueOf(0.0F))).floatValue();
        i = ((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "pre_DistanceType", Integer.valueOf(0))).intValue();
        obj = getResources().getStringArray(0x7f050001);
        if (i == 0)
        {
            obj = obj[1];
            f = StepDataConverterUtil.roundFloat(0.01F * f, 2, 4);
        } else
        {
            obj = obj[0];
            f = StepDataConverterUtil.getFtByM(0.01F * f);
        }
        i = ((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "pre_Weight_Type", Integer.valueOf(1))).intValue();
        obj1 = getResources().getStringArray(0x7f050002);
        if (i == 1)
        {
            obj1 = obj1[1];
        } else
        {
            obj1 = obj1[0];
            f1 = StepDataConverterUtil.getLbUnitWeight(f1);
        }
        i = (int)f1;
        person_height_textview.setText((new StringBuilder()).append(f).append(((String) (obj))).toString());
        person_weight_textview.setText((new StringBuilder()).append(i).append(((String) (obj1))).toString());
        if (((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "pre_Sex", Integer.valueOf(1))).intValue() == 0)
        {
            male_img.setSelected(true);
            female_img.setSelected(false);
            return;
        } else
        {
            male_img.setSelected(false);
            female_img.setSelected(true);
            return;
        }
    }

    private void initView()
    {
        titleBarRelativeLayout = (TitleBarRelativeLayout)findViewById(0x7f060047);
        titleBarRelativeLayout.setTitleText(getString(0x7f0c00c5));
        myFavicon = (CircleImageView)findViewById(0x7f060048);
        imageLoader.displayImage(HealthyAccountHolder.getUserIconUrl(mContext), myFavicon, options);
        myFavicon.setOnClickListener(new android.view.View.OnClickListener() {

            final MyAccountActivity this$0;

            public void onClick(View view)
            {
                takePhotoDialogProxy = new TakePhotoDialogProxy(MyAccountActivity.this, myFavicon);
                takePhotoDialogProxy.setExtendHandler(mHandler);
                takePhotoDialogProxy.show();
            }

            
            {
                this$0 = MyAccountActivity.this;
                super();
            }
        });
        myName = (TextView)findViewById(0x7f060049);
        myEdit = (TextView)findViewById(0x7f06004b);
        tvSex = (TextView)findViewById(0x7f06004a);
        String s = HealthyAccountHolder.getNickName(mContext);
        myName.setText(s);
        if (((Integer)SharedPreferencesUtils.getSharedPreferences(getApplication(), "pre_Sex", Integer.valueOf(1))).intValue() == 1)
        {
            tvSex.setBackgroundResource(0x7f0200f3);
        } else
        {
            tvSex.setBackgroundResource(0x7f0200f2);
        }
        myEdit.setOnClickListener(new android.view.View.OnClickListener() {

            final MyAccountActivity this$0;

            public void onClick(View view)
            {
                view = new CustomEditTextDialog(MyAccountActivity.this);
                view.createDialog().setTip(getString(0x7f0c0050)).setNegativeButton(getString(0x7f0c0047), view. new android.view.View.OnClickListener() {

                    final _cls4 this$1;
                    final CustomEditTextDialog val$customEditTextDialog;

                    public void onClick(View view)
                    {
                        customEditTextDialog.dismiss();
                    }

            
            {
                this$1 = final__pcls4;
                customEditTextDialog = CustomEditTextDialog.this;
                super();
            }
                }).setPositiveButton(getString(0x7f0c0046), view. new android.view.View.OnClickListener() {

                    final _cls4 this$1;
                    final CustomEditTextDialog val$customEditTextDialog;

                    public void onClick(View view)
                    {
                        if (customEditTextDialog.getEditText().equals(""))
                        {
                            return;
                        } else
                        {
                            myName.setText(customEditTextDialog.getEditText());
                            HealthyAccountHolder.setNickName(mContext, myName.getText().toString().trim());
                            SharedPreferencesUtils.setSharedPreferences(getApplication(), "nickName", customEditTextDialog.getEditText().toString());
                            customEditTextDialog.dismiss();
                            submitUserInfo();
                            return;
                        }
                    }

            
            {
                this$1 = final__pcls4;
                customEditTextDialog = CustomEditTextDialog.this;
                super();
            }
                }).setEditText(myName.getText().toString()).showDialog();
            }

            
            {
                this$0 = MyAccountActivity.this;
                super();
            }
        });
    }

    private void submitUserInfo()
    {
        waitDialogUtil = new WaitDialogUtil(mContext);
        waitDialogUtil.setMessage(getString(0x7f0c018f));
        waitDialogUtil.showDialog();
        Object obj = (String)SharedPreferencesUtils.getSharedPreferences(mContext, "nickName", "");
        UserInfo userinfo = new UserInfo();
        userinfo.setNickName(((String) (obj)));
        String s1 = String.valueOf((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "pre_Sex", Integer.valueOf(1)));
        int i = ((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "personal_year", Integer.valueOf(1970))).intValue();
        int j = ((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "personal_month", Integer.valueOf(1))).intValue();
        int k = ((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "personal_day", Integer.valueOf(1))).intValue();
        StringBuilder stringbuilder = new StringBuilder();
        float f;
        float f1;
        String s;
        if (j < 10)
        {
            obj = (new StringBuilder()).append("0").append(String.valueOf(j)).toString();
        } else
        {
            obj = String.valueOf(j);
        }
        if (k < 10)
        {
            s = (new StringBuilder()).append("0").append(String.valueOf(k)).toString();
        } else
        {
            s = String.valueOf(k);
        }
        stringbuilder.append(String.valueOf(i)).append(((String) (obj))).append(s);
        obj = stringbuilder.toString();
        f = ((Float)SharedPreferencesUtils.getSharedPreferences(mContext, "personal_height", Float.valueOf(160F))).floatValue();
        f1 = ((Float)SharedPreferencesUtils.getSharedPreferences(mContext, "personal_weight", Float.valueOf(50F))).floatValue();
        userinfo.setSex(s1);
        userinfo.setBirthday(((String) (obj)));
        userinfo.setHeight(String.valueOf((int)f));
        userinfo.setWeight(String.valueOf((int)(1000F * f1)));
        userinfo.setAvatar(HealthyAccountHolder.getUserIconUrl(mContext));
        Log.d("MyAccountActivity", (new StringBuilder()).append("sex:").append(s1).toString());
        Log.d("MyAccountActivity", (new StringBuilder()).append("birthday:").append(((String) (obj))).toString());
        Log.d("MyAccountActivity", (new StringBuilder()).append("(int)(height):").append((int)f).toString());
        Log.d("MyAccountActivity", (new StringBuilder()).append("(int)(weight*1000):").append((int)(1000F * f1)).toString());
        EventBus.getDefault().unregister(mContext, new Class[] {
            com/veclink/healthy/business/http/pojo/UpdateUserInfoResponse
        });
        EventBus.getDefault().register(mContext, com/veclink/healthy/business/http/pojo/UpdateUserInfoResponse, new Class[0]);
        obj = new HealthyUpdateUserInfoSession(mContext, userinfo);
        SimpleHttpSchedualer.ansycSchedual(mContext, ((com.veclink.movnow_q2.network.base.BaseSession) (obj)));
        MovnowTwoApplication.syncParams();
    }

    private void uploadFile(String s)
    {
        (new UploadIconTask()).execute(new Object[] {
            takePhotoDialogProxy.getPhotoIconPath(), takePhotoDialogProxy.getPhotoFileName(), s
        });
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        takePhotoDialogProxy.handleActivityResult(i, j, intent);
    }

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR tableswitch 2131099724 2131099730: default 48
    //                   2131099724 49
    //                   2131099725 104
    //                   2131099726 159
    //                   2131099727 48
    //                   2131099728 247
    //                   2131099729 48
    //                   2131099730 203;
           goto _L1 _L2 _L3 _L4 _L1 _L5 _L1 _L6
_L6:
        break MISSING_BLOCK_LABEL_203;
_L1:
        break; /* Loop/switch isn't completed */
_L5:
        break MISSING_BLOCK_LABEL_247;
_L7:
        return;
_L2:
        if (!male_img.isSelected())
        {
            male_img.setSelected(true);
            female_img.setSelected(false);
            SharedPreferencesUtils.setSharedPreferences(mContext, "pre_Sex", Integer.valueOf(0));
            tvSex.setBackgroundResource(0x7f0200f2);
            submitUserInfo();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (!female_img.isSelected())
        {
            male_img.setSelected(false);
            female_img.setSelected(true);
            SharedPreferencesUtils.setSharedPreferences(mContext, "pre_Sex", Integer.valueOf(1));
            tvSex.setBackgroundResource(0x7f0200f3);
            submitUserInfo();
            return;
        }
        if (true) goto _L7; else goto _L4
_L4:
        reBmiWheelViewDialog = new ReBmiWheelViewDialog(this, 1, person_birthday_textview);
        reBmiWheelViewDialog.setCanceledOnTouchOutside(true);
        reBmiWheelViewDialog.setSaveListener(dialogListener);
        reBmiWheelViewDialog.show();
        return;
        reBmiWheelViewDialog = new ReBmiWheelViewDialog(this, 3, person_height_textview);
        reBmiWheelViewDialog.setCanceledOnTouchOutside(true);
        reBmiWheelViewDialog.setSaveListener(dialogListener);
        reBmiWheelViewDialog.show();
        return;
        reBmiWheelViewDialog = new ReBmiWheelViewDialog(this, 2, person_weight_textview);
        reBmiWheelViewDialog.setCanceledOnTouchOutside(true);
        reBmiWheelViewDialog.setSaveListener(dialogListener);
        reBmiWheelViewDialog.show();
        return;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        mContext = this;
        setContentView(0x7f03000d);
        options = (new com.nostra13.universalimageloader.core.DisplayImageOptions.Builder()).showStubImage(0x7f0200ee).showImageForEmptyUri(0x7f0200ee).showImageOnFail(0x7f0200ee).cacheInMemory().cacheOnDisc().bitmapConfig(android.graphics.Bitmap.Config.RGB_565).build();
        initView();
        initPersonaInfo();
    }

    public void onEvent(GetUploadTokenResponse getuploadtokenresponse)
    {
        EventBus.getDefault().unregister(this, new Class[] {
            com/veclink/healthy/business/http/pojo/GetUploadTokenResponse
        });
        String s = getuploadtokenresponse.getError().trim();
        if (!s.equals("0"))
        {
            waitDialogUtil.dismissDialog();
        }
        if (s.equals("0"))
        {
            uploadFile(getuploadtokenresponse.getToken());
            return;
        }
        if (s.equals("-1000"))
        {
            Toast.makeText(this, getString(0x7f0c009a), 0).show();
            return;
        }
        if (s.equals("10"))
        {
            Toast.makeText(this, getString(0x7f0c0128), 0).show();
            return;
        } else
        {
            Toast.makeText(this, getuploadtokenresponse.getMessage(), 0).show();
            return;
        }
    }

    public void onEvent(UpdateUserInfoResponse updateuserinforesponse)
    {
        EventBus.getDefault().unregister(mContext, new Class[] {
            com/veclink/healthy/business/http/pojo/UpdateUserInfoResponse
        });
        waitDialogUtil.dismissDialog();
        Log.v("MyAccountActivity", updateuserinforesponse.toString());
        if (updateuserinforesponse.getError().trim().equals("0"))
        {
            ToastUtil.showShortToast(mContext, getString(0x7f0c018e));
            imageLoader.displayImage(HealthyAccountHolder.getUserIconUrl(mContext), myFavicon, options);
        } else
        {
            if (updateuserinforesponse.getError().trim().equals("-1000"))
            {
                Toast.makeText(this, getString(0x7f0c0128), 1).show();
                return;
            }
            updateuserinforesponse = updateuserinforesponse.getMessage();
            if (updateuserinforesponse != null)
            {
                Toast.makeText(this, updateuserinforesponse, 1).show();
                return;
            }
        }
    }

    public void onResume()
    {
        super.onResume();
        imageLoader.displayImage(HealthyAccountHolder.getUserIconUrl(mContext), myFavicon, options);
    }




/*
    static WaitDialogUtil access$102(MyAccountActivity myaccountactivity, WaitDialogUtil waitdialogutil)
    {
        myaccountactivity.waitDialogUtil = waitdialogutil;
        return waitdialogutil;
    }

*/




/*
    static TakePhotoDialogProxy access$302(MyAccountActivity myaccountactivity, TakePhotoDialogProxy takephotodialogproxy)
    {
        myaccountactivity.takePhotoDialogProxy = takephotodialogproxy;
        return takephotodialogproxy;
    }

*/



}
