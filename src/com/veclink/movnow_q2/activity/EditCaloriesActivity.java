// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.app.Dialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.Selection;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Toast;
import com.veclink.healthy.database.entity.UptakeCalorie;
import com.veclink.healthy.database.op.HealthyDBOperate;
import com.veclink.movnow_q2.util.MessageModel;
import com.veclink.movnow_q2.util.StorageUtil;
import com.veclink.movnow_q2.util.StringUtil;
import com.veclink.movnow_q2.view.BaseRemindDialog;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealthyBaseActivity, ManagerCaloriesActivity

public class EditCaloriesActivity extends HealthyBaseActivity
    implements android.view.View.OnClickListener
{

    private int aspectX;
    private int aspectY;
    private Bitmap b;
    private Button btnPortaitCancle;
    private Button btnSelectLoclPic;
    private Button btnTakePic;
    private UptakeCalorie calorie;
    private Context context;
    private EditText editEtFoodCal;
    private EditText editEtFoodName;
    private ImageView editImgCal;
    private String editImgUrl;
    TitleBarRelativeLayout editTitleBar;
    private int height;
    private File imgFile;
    private String oldImgUrl;
    private Dialog selectPortaitDialog;
    private Toast toast;
    private int width;
    private WindowManager wm;

    public EditCaloriesActivity()
    {
        imgFile = null;
        width = 200;
        height = 300;
        aspectX = 2;
        aspectY = 3;
    }

    private void backDialog()
    {
        BaseRemindDialog basereminddialog = new BaseRemindDialog(context);
        basereminddialog.setTitle(context.getString(0x7f0c00e6));
        basereminddialog.setContent(context.getString(0x7f0c016f));
        basereminddialog.setOkListener(new android.view.View.OnClickListener() {

            final EditCaloriesActivity this$0;

            public void onClick(View view)
            {
                view = new Intent(EditCaloriesActivity.this, com/veclink/movnow_q2/activity/ManagerCaloriesActivity);
                startActivity(view);
                finish();
            }

            
            {
                this$0 = EditCaloriesActivity.this;
                super();
            }
        });
        basereminddialog.show();
    }

    private void cropImageUri(Uri uri, int i, int j, int k)
    {
        Intent intent = new Intent("com.android.camera.action.CROP");
        intent.setDataAndType(uri, "image/*");
        intent.putExtra("crop", "true");
        intent.putExtra("aspectX", i);
        intent.putExtra("aspectY", j);
        intent.putExtra("outputX", width);
        intent.putExtra("outputY", height);
        intent.putExtra("scale", true);
        intent.putExtra("output", uri);
        intent.putExtra("return-data", true);
        intent.putExtra("outputFormat", android.graphics.Bitmap.CompressFormat.JPEG.toString());
        intent.putExtra("noFaceDetection", true);
        startActivityForResult(intent, k);
    }

    private String getPhotoFileName()
    {
        Date date = new Date(System.currentTimeMillis());
        SimpleDateFormat simpledateformat = new SimpleDateFormat("'IMG'_yyyyMMdd_HHmmss");
        return (new StringBuilder()).append(simpledateformat.format(date)).append(".jpg").toString();
    }

    private void initView()
    {
        editTitleBar = (TitleBarRelativeLayout)findViewById(0x7f06002b);
        editTitleBar.setTitleText(getString(0x7f0c014d));
        editTitleBar.setRightVisisble(0);
        editTitleBar.setRightBackground(0x7f020128);
        editTitleBar.setRightText(getString(0x7f0c00f4));
        editImgCal = (ImageView)findViewById(0x7f06002c);
        editTitleBar.setLefttButtonListener(this);
        editImgCal.setOnClickListener(new android.view.View.OnClickListener() {

            final EditCaloriesActivity this$0;

            public void onClick(View view)
            {
                showPortaitDialog();
            }

            
            {
                this$0 = EditCaloriesActivity.this;
                super();
            }
        });
        editEtFoodName = (EditText)findViewById(0x7f06002d);
        editEtFoodName.setText(String.valueOf(calorie.getFoodName()));
        Editable editable = editEtFoodName.getText();
        Selection.setSelection(editable, editable.length());
        editEtFoodCal = (EditText)findViewById(0x7f06002e);
        editEtFoodCal.setText(String.valueOf(calorie.getCalorieContent()));
        editTitleBar.setRightButtonListener(this);
        editTitleBar.setLefttButtonListener(this);
        editTitleBar.setTitleButtonListener(this);
        editImgUrl = calorie.getImgUrl();
        oldImgUrl = editImgUrl;
        if (!TextUtils.isEmpty(editImgUrl))
        {
            if (b != null)
            {
                b.recycle();
            }
            b = BitmapFactory.decodeFile(editImgUrl);
            if (b != null)
            {
                editImgCal.setImageBitmap(b);
            }
        }
    }

    private void showPortaitDialog()
    {
        Object obj = getLayoutInflater().inflate(0x7f030033, null);
        btnTakePic = (Button)((View) (obj)).findViewById(0x7f0600a3);
        btnSelectLoclPic = (Button)((View) (obj)).findViewById(0x7f0600a4);
        btnPortaitCancle = (Button)((View) (obj)).findViewById(0x7f0600a5);
        btnTakePic.setOnClickListener(new android.view.View.OnClickListener() {

            final EditCaloriesActivity this$0;

            public void onClick(View view)
            {
                btnTakePic();
            }

            
            {
                this$0 = EditCaloriesActivity.this;
                super();
            }
        });
        btnSelectLoclPic.setOnClickListener(new android.view.View.OnClickListener() {

            final EditCaloriesActivity this$0;

            public void onClick(View view)
            {
                btnLocalPic();
            }

            
            {
                this$0 = EditCaloriesActivity.this;
                super();
            }
        });
        btnPortaitCancle.setOnClickListener(new android.view.View.OnClickListener() {

            final EditCaloriesActivity this$0;

            public void onClick(View view)
            {
                selectPortaitDialog.dismiss();
            }

            
            {
                this$0 = EditCaloriesActivity.this;
                super();
            }
        });
        selectPortaitDialog = new Dialog(this, 0x7f0b0015);
        selectPortaitDialog.setContentView(((View) (obj)), new android.view.ViewGroup.LayoutParams(getWindowManager().getDefaultDisplay().getWidth(), -2));
        obj = selectPortaitDialog.getWindow();
        ((Window) (obj)).setWindowAnimations(0x7f0b0018);
        obj = ((Window) (obj)).getAttributes();
        obj.x = 0;
        obj.y = getWindowManager().getDefaultDisplay().getHeight();
        selectPortaitDialog.onWindowAttributesChanged(((android.view.WindowManager.LayoutParams) (obj)));
        selectPortaitDialog.setCanceledOnTouchOutside(true);
        selectPortaitDialog.show();
    }

    public void btnLocalPic()
    {
        if (selectPortaitDialog != null && selectPortaitDialog.isShowing())
        {
            selectPortaitDialog.dismiss();
        }
        imgFile = new File(StorageUtil.getMovnowDataDirPath(), getPhotoFileName());
        if (android.os.Build.VERSION.SDK_INT < 19)
        {
            Intent intent = new Intent("android.intent.action.GET_CONTENT", null);
            intent.setType("image/*");
            intent.putExtra("crop", "true");
            intent.putExtra("aspectX", aspectX);
            intent.putExtra("aspectY", aspectY);
            intent.putExtra("outputX", width);
            intent.putExtra("outputY", height);
            intent.putExtra("scale", true);
            intent.putExtra("return-data", false);
            intent.putExtra("output", Uri.fromFile(imgFile));
            intent.putExtra("outputFormat", android.graphics.Bitmap.CompressFormat.JPEG.toString());
            intent.putExtra("noFaceDetection", false);
            startActivityForResult(intent, 10);
            return;
        }
        try
        {
            Intent intent1 = new Intent("android.intent.action.PICK");
            intent1.setType("image/*");
            intent1.putExtra("crop", "true");
            intent1.putExtra("aspectX", aspectX);
            intent1.putExtra("aspectY", aspectY);
            intent1.putExtra("outputX", width);
            intent1.putExtra("outputY", height);
            intent1.putExtra("scale", true);
            intent1.putExtra("return-data", true);
            intent1.putExtra("output", Uri.fromFile(imgFile));
            intent1.putExtra("outputFormat", android.graphics.Bitmap.CompressFormat.JPEG.toString());
            intent1.putExtra("noFaceDetection", false);
            startActivityForResult(intent1, 10);
            return;
        }
        catch (Exception exception)
        {
            toast = StringUtil.toast(this, toast, getString(0x7f0c0076));
        }
        return;
    }

    public void btnTakePic()
    {
        if (selectPortaitDialog != null && selectPortaitDialog.isShowing())
        {
            selectPortaitDialog.dismiss();
        }
        if (getPackageManager().hasSystemFeature("android.hardware.camera"))
        {
            try
            {
                imgFile = new File(StorageUtil.getMovnowDataDirPath(), getPhotoFileName());
                Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
                intent.putExtra("output", Uri.fromFile(imgFile));
                startActivityForResult(intent, 3);
                return;
            }
            catch (Exception exception)
            {
                toast = StringUtil.toast(this, toast, getString(0x7f0c0074));
            }
            return;
        } else
        {
            toast = StringUtil.toast(this, toast, getString(0x7f0c0075));
            return;
        }
    }

    protected String convertMediaUriToPath(Uri uri)
    {
        String s = null;
        if ("content".equals(uri.getScheme()))
        {
            uri = getContentResolver().query(uri, new String[] {
                "_data"
            }, null, null, null);
            int i = uri.getColumnIndexOrThrow("_data");
            uri.moveToFirst();
            s = uri.getString(i);
            uri.close();
        } else
        if ("file".equals(uri.getScheme()))
        {
            return uri.getPath();
        }
        return s;
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        i;
        JVM INSTR lookupswitch 3: default 36
    //                   3: 44
    //                   9: 78
    //                   10: 260;
           goto _L1 _L2 _L3 _L4
_L1:
        super.onActivityResult(i, j, intent);
        return;
_L2:
        if (j == -1)
        {
            try
            {
                cropImageUri(Uri.fromFile(imgFile), width, height, 9);
            }
            catch (Exception exception) { }
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (intent == null || "".equals(intent))
        {
            editImgUrl = MessageModel.CAPTURE_TEMP_FILE;
        } else
        {
            Object obj = intent.getExtras();
            if (obj != null)
            {
                obj = (Bitmap)((Bundle) (obj)).getParcelable("data");
                if (obj != null)
                {
                    ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
                    ((Bitmap) (obj)).compress(android.graphics.Bitmap.CompressFormat.JPEG, 80, bytearrayoutputstream);
                    if (imgFile.exists())
                    {
                        imgFile.delete();
                    }
                    try
                    {
                        FileOutputStream fileoutputstream = new FileOutputStream(imgFile);
                        ((Bitmap) (obj)).compress(android.graphics.Bitmap.CompressFormat.PNG, 80, fileoutputstream);
                        fileoutputstream.flush();
                        fileoutputstream.close();
                    }
                    catch (FileNotFoundException filenotfoundexception)
                    {
                        filenotfoundexception.printStackTrace();
                    }
                    catch (IOException ioexception)
                    {
                        ioexception.printStackTrace();
                    }
                    editImgUrl = imgFile.getPath();
                } else
                {
                    editImgUrl = MessageModel.CAPTURE_TEMP_FILE;
                }
                editImgCal.setImageBitmap(((Bitmap) (obj)));
            }
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (intent == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (android.os.Build.VERSION.SDK_INT >= 19) goto _L6; else goto _L5
_L5:
        Object obj1 = null;
        if (intent.getData() == null) goto _L8; else goto _L7
_L7:
        obj1 = convertMediaUriToPath(intent.getData());
        editImgUrl = ((String) (obj1));
        obj1 = BitmapFactory.decodeFile(((String) (obj1)));
_L9:
        editImgCal.setImageBitmap(((Bitmap) (obj1)));
        continue; /* Loop/switch isn't completed */
_L8:
        if (Uri.fromFile(imgFile) != null)
        {
            editImgUrl = imgFile.getPath();
            obj1 = BitmapFactory.decodeFile(editImgUrl);
        }
        if (true) goto _L9; else goto _L6
_L6:
        Object obj2 = intent.getExtras();
        if (obj2 != null)
        {
            obj2 = (Bitmap)((Bundle) (obj2)).getParcelable("data");
            if (obj2 != null)
            {
                ByteArrayOutputStream bytearrayoutputstream1 = new ByteArrayOutputStream();
                ((Bitmap) (obj2)).compress(android.graphics.Bitmap.CompressFormat.JPEG, 80, bytearrayoutputstream1);
                if (imgFile.exists())
                {
                    imgFile.delete();
                }
                try
                {
                    FileOutputStream fileoutputstream1 = new FileOutputStream(imgFile);
                    ((Bitmap) (obj2)).compress(android.graphics.Bitmap.CompressFormat.PNG, 90, fileoutputstream1);
                    fileoutputstream1.flush();
                    fileoutputstream1.close();
                    Log.i("save", "\u5DF2\u7ECF\u4FDD\u5B58");
                }
                catch (FileNotFoundException filenotfoundexception1)
                {
                    filenotfoundexception1.printStackTrace();
                }
                catch (IOException ioexception1)
                {
                    ioexception1.printStackTrace();
                }
                editImgUrl = imgFile.getPath();
            } else
            {
                editImgUrl = MessageModel.CAPTURE_TEMP_FILE;
            }
            editImgCal.setImageBitmap(((Bitmap) (obj2)));
        }
        if (true) goto _L1; else goto _L10
_L10:
    }

    public void onBackPressed()
    {
        backDialog();
    }

    public void onClick(View view)
    {
        Intent intent = new Intent(this, com/veclink/movnow_q2/activity/ManagerCaloriesActivity);
        switch (view.getId())
        {
        default:
            return;

        case 2131100107: 
            view = editEtFoodName.getText().toString().trim();
            String s = editEtFoodCal.getText().toString().trim();
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
            }
            calorie.setFoodName(view);
            calorie.setCalorieContent(Integer.parseInt(s));
            calorie.setImgUrl(editImgUrl);
            HealthyDBOperate.updateUptakeCalorie(this, calorie);
            if (oldImgUrl != null && !"".equals(oldImgUrl) && !oldImgUrl.equals(editImgUrl))
            {
                int i = oldImgUrl.lastIndexOf("/");
                if (i >= 0)
                {
                    view = oldImgUrl.substring(i);
                    view = new File(StorageUtil.getMovnowDataDirPath(), view);
                    if (view.exists())
                    {
                        view.delete();
                    }
                }
            }
            startActivity(intent);
            finish();
            return;

        case 2131100105: 
        case 2131100106: 
            backDialog();
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030004);
        context = this;
        calorie = (UptakeCalorie)getIntent().getSerializableExtra("Calorie");
        initView();
        wm = (WindowManager)getSystemService("window");
        bundle = new DisplayMetrics();
        wm.getDefaultDisplay().getMetrics(bundle);
    }


}
