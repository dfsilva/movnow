// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.app.Dialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.healthy.business.http.pojo.DeleteCalories;
import com.veclink.healthy.database.entity.SportData;
import com.veclink.healthy.database.entity.UptakeCalorie;
import com.veclink.healthy.database.op.HealthyDBOperate;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.movnow_q2.util.DateTimeUtil;
import com.veclink.movnow_q2.util.MessageModel;
import com.veclink.movnow_q2.util.SharedPreferencesUtils;
import com.veclink.movnow_q2.util.StepDataConverterUtil;
import com.veclink.movnow_q2.util.StorageUtil;
import com.veclink.movnow_q2.util.StringUtil;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;
import com.veclink.waterfall.adapter.StaggeredAdapter;
import com.veclink.waterfall.bitmapfun.util.ImageFetcher;
import com.veclink.waterfall.views.StaggeredGridView;
import de.greenrobot.event.EventBus;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealthyBaseActivity, AddCaloriesActivity

public class ManagerCaloriesActivity extends HealthyBaseActivity
    implements android.view.View.OnClickListener
{
    private class ContentDateBaseTask extends AsyncTask
    {

        private Context mContext;
        final ManagerCaloriesActivity this$0;

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground((String[])aobj);
        }

        protected transient List doInBackground(String as[])
        {
            try
            {
                as = listCalories;
            }
            // Misplaced declaration of an exception variable
            catch (String as[])
            {
                as.printStackTrace();
                return null;
            }
            return as;
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((List)obj);
        }

        protected void onPostExecute(List list)
        {
            mAdapter.addItemTop(list);
            mAdapter.notifyDataSetChanged();
        }

        protected void onPreExecute()
        {
        }

        public ContentDateBaseTask(Context context1)
        {
            this$0 = ManagerCaloriesActivity.this;
            super();
            mContext = context1;
        }
    }


    private String TAG;
    private int aspectX;
    private int aspectY;
    private Button btnPortaitCancle;
    private Button btnSelectLoclPic;
    private Button btnTakePic;
    private Context context;
    private TextView costCalValue;
    private String currentDateTme;
    private ContentDateBaseTask dateBaseTask;
    private int height;
    private Uri imageFileUri;
    private String imgUrl;
    private List listCalories;
    private StaggeredAdapter mAdapter;
    Context mContext;
    Handler mHandler;
    private ImageFetcher mImageFetcher;
    private DisplayMetrics metric;
    private int randomNumber;
    private TextView resultCalValue;
    private Dialog selectPortaitDialog;
    private File tempFile;
    TitleBarRelativeLayout titleBar;
    private Toast toast;
    private TextView totalCalValue;
    private String userId;
    private int width;
    private WindowManager wm;

    public ManagerCaloriesActivity()
    {
        TAG = "ManagerCaloriesActivity";
        dateBaseTask = new ContentDateBaseTask(this);
        tempFile = null;
        width = 300;
        height = 400;
        aspectX = 2;
        aspectY = 3;
        randomNumber = 0;
        mHandler = new Handler() {

            final ManagerCaloriesActivity this$0;

            public void handleMessage(Message message)
            {
                message.what;
                JVM INSTR tableswitch 1004 1004: default 24
            //                           1004 25;
                   goto _L1 _L2
_L1:
                return;
_L2:
                message = (Bitmap)message.obj;
                Log.d("imgUrl", (new StringBuilder()).append("imgUrl--------:").append(imgUrl).toString());
                if (!TextUtils.isEmpty(imgUrl))
                {
                    message = new Intent(mContext, com/veclink/movnow_q2/activity/AddCaloriesActivity);
                    message.putExtra("imgUrl", imgUrl);
                    startActivity(message);
                    finish();
                    return;
                }
                if (true) goto _L1; else goto _L3
_L3:
            }

            
            {
                this$0 = ManagerCaloriesActivity.this;
                super();
            }
        };
    }

    private void cropImageUri(Uri uri, int i, int j, int k)
    {
        Intent intent = new Intent("com.android.camera.action.CROP");
        intent.setDataAndType(uri, "image/*");
        intent.putExtra("crop", "true");
        intent.putExtra("aspectX", aspectX);
        intent.putExtra("aspectY", aspectY);
        intent.putExtra("outputX", i);
        intent.putExtra("outputY", j);
        intent.putExtra("scale", true);
        intent.putExtra("output", uri);
        intent.putExtra("return-data", true);
        intent.putExtra("outputFormat", android.graphics.Bitmap.CompressFormat.JPEG.toString());
        intent.putExtra("noFaceDetection", true);
        startActivityForResult(intent, k);
    }

    private void getListUptakeCalorie()
    {
        listCalories = HealthyDBOperate.loadUptakeCalorieByDay(mContext, currentDateTme, userId);
    }

    private String getPhotoFileName()
    {
        Date date = new Date(System.currentTimeMillis());
        SimpleDateFormat simpledateformat = new SimpleDateFormat("'IMG'_yyyyMMdd_HHmmss");
        return (new StringBuilder()).append(simpledateformat.format(date)).append(".jpg").toString();
    }

    private void initView()
    {
        mContext = this;
        titleBar = (TitleBarRelativeLayout)findViewById(0x7f060017);
        titleBar.setTitleText(getString(0x7f0c014b));
        titleBar.setRightVisisble(0);
        titleBar.setRightBackground(0x7f020163);
        titleBar.setRightButtonListener(this);
        mImageFetcher = new ImageFetcher(this, 240);
        mImageFetcher.setLoadingImage(0x7f020063);
        totalCalValue = (TextView)findViewById(0x7f060067);
        costCalValue = (TextView)findViewById(0x7f060068);
        resultCalValue = (TextView)findViewById(0x7f060069);
        StaggeredGridView staggeredgridview = (StaggeredGridView)findViewById(0x7f060065);
        staggeredgridview.setFastScrollEnabled(true);
        mAdapter = new StaggeredAdapter(mContext, mImageFetcher);
        staggeredgridview.setAdapter(mAdapter);
        staggeredgridview.setOverScrollMode(2);
        mAdapter.notifyDataSetChanged();
        getListUptakeCalorie();
        if (dateBaseTask.getStatus() != android.os.AsyncTask.Status.RUNNING)
        {
            (new ContentDateBaseTask(this)).execute(new String[0]);
        }
        refreshCurrenDateTotalCal();
    }

    private void showPortaitDialog()
    {
        Object obj = getLayoutInflater().inflate(0x7f030033, null);
        btnTakePic = (Button)((View) (obj)).findViewById(0x7f0600a3);
        btnSelectLoclPic = (Button)((View) (obj)).findViewById(0x7f0600a4);
        btnPortaitCancle = (Button)((View) (obj)).findViewById(0x7f0600a5);
        btnTakePic.setOnClickListener(this);
        btnSelectLoclPic.setOnClickListener(this);
        btnPortaitCancle.setOnClickListener(this);
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

    public int getCostCalValue()
    {
        int i = 0;
        int j = 0;
        Object obj = HealthyDBOperate.loadOriginSportDataByDate(this, DateTimeUtil.getDateString(0));
        if (obj != null)
        {
            obj = ((List) (obj)).iterator();
            do
            {
                i = j;
                if (!((Iterator) (obj)).hasNext())
                {
                    break;
                }
                j += Integer.parseInt(((SportData)((Iterator) (obj)).next()).getSportStep());
            } while (true);
        }
        j = i;
        if (currentDateTme.equals(StringUtil.formatCurrDate("yyyyMMdd")))
        {
            int k = ((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, (new StringBuilder()).append(Keeper.getDeviceId(mContext)).append(DateTimeUtil.getDateStringByDate(new Date())).append("tempStepCount").toString(), Integer.valueOf(0))).intValue();
            j = i;
            if (k > i)
            {
                j = k;
            }
        }
        return StepDataConverterUtil.getCaloryByWeightAndDisStance(((Float)SharedPreferencesUtils.getSharedPreferences(mContext, "personal_weight", Float.valueOf(50F))).floatValue(), StepDataConverterUtil.getStepDistanceByHeight(((Float)SharedPreferencesUtils.getSharedPreferences(mContext, "personal_height", Float.valueOf(160F))).floatValue(), 0) * (double)j, 1);
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        i;
        JVM INSTR lookupswitch 3: default 36
    //                   3: 44
    //                   9: 78
    //                   10: 273;
           goto _L1 _L2 _L3 _L4
_L1:
        super.onActivityResult(i, j, intent);
        return;
_L2:
        if (j == -1)
        {
            try
            {
                cropImageUri(Uri.fromFile(tempFile), width, height, 9);
            }
            catch (Exception exception) { }
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (intent == null || "".equals(intent))
        {
            imgUrl = MessageModel.CAPTURE_TEMP_FILE;
        } else
        if (imageFileUri != null)
        {
            Object obj = intent.getExtras();
            if (obj != null)
            {
                obj = (Bitmap)((Bundle) (obj)).getParcelable("data");
                if (obj != null)
                {
                    ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
                    ((Bitmap) (obj)).compress(android.graphics.Bitmap.CompressFormat.JPEG, 80, bytearrayoutputstream);
                    mHandler.obtainMessage(1004, obj).sendToTarget();
                    if (tempFile.exists())
                    {
                        tempFile.delete();
                    }
                    try
                    {
                        FileOutputStream fileoutputstream = new FileOutputStream(tempFile);
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
                    imgUrl = tempFile.getPath();
                } else
                {
                    imgUrl = MessageModel.CAPTURE_TEMP_FILE;
                }
            }
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (intent != null)
        {
            if (android.os.Build.VERSION.SDK_INT < 19)
            {
                if (intent.getData() != null)
                {
                    Object obj1 = convertMediaUriToPath(intent.getData());
                    imgUrl = ((String) (obj1));
                    obj1 = BitmapFactory.decodeFile(((String) (obj1)));
                    mHandler.obtainMessage(1004, obj1).sendToTarget();
                } else
                if (Uri.fromFile(tempFile) != null)
                {
                    imgUrl = tempFile.getPath();
                    Bitmap bitmap = BitmapFactory.decodeFile(imgUrl);
                    if (bitmap != null)
                    {
                        mHandler.obtainMessage(1004, bitmap).sendToTarget();
                    }
                }
            } else
            {
                Object obj2 = intent.getExtras();
                if (obj2 != null)
                {
                    obj2 = (Bitmap)((Bundle) (obj2)).getParcelable("data");
                    if (obj2 != null)
                    {
                        ByteArrayOutputStream bytearrayoutputstream1 = new ByteArrayOutputStream();
                        ((Bitmap) (obj2)).compress(android.graphics.Bitmap.CompressFormat.JPEG, 80, bytearrayoutputstream1);
                        mHandler.obtainMessage(1004, obj2).sendToTarget();
                        if (tempFile.exists())
                        {
                            tempFile.delete();
                        }
                        try
                        {
                            FileOutputStream fileoutputstream1 = new FileOutputStream(tempFile);
                            ((Bitmap) (obj2)).compress(android.graphics.Bitmap.CompressFormat.PNG, 80, fileoutputstream1);
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
                        imgUrl = tempFile.getPath();
                    } else
                    {
                        imgUrl = MessageModel.CAPTURE_TEMP_FILE;
                    }
                }
            }
        }
        if (true) goto _L1; else goto _L5
_L5:
    }

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR lookupswitch 4: default 48
    //                   2131099811: 79
    //                   2131099812: 207
    //                   2131099813: 54
    //                   2131100107: 49;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return;
_L5:
        showPortaitDialog();
        return;
_L4:
        if (selectPortaitDialog == null || !selectPortaitDialog.isShowing()) goto _L1; else goto _L6
_L6:
        selectPortaitDialog.dismiss();
        return;
_L2:
        if (selectPortaitDialog == null || !selectPortaitDialog.isShowing()) goto _L1; else goto _L7
_L7:
        selectPortaitDialog.dismiss();
        if (getPackageManager().hasSystemFeature("android.hardware.camera"))
        {
            try
            {
                tempFile = new File(StorageUtil.getMovnowDataDirPath(), getPhotoFileName());
                view = new Intent("android.media.action.IMAGE_CAPTURE");
                view.putExtra("output", Uri.fromFile(tempFile));
                startActivityForResult(view, 3);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (View view)
            {
                toast = StringUtil.toast(this, toast, getString(0x7f0c0074));
            }
            return;
        } else
        {
            toast = StringUtil.toast(this, toast, getString(0x7f0c0075));
            return;
        }
_L3:
        if (selectPortaitDialog == null || !selectPortaitDialog.isShowing()) goto _L1; else goto _L8
_L8:
        selectPortaitDialog.dismiss();
        try
        {
            tempFile = new File(StorageUtil.getMovnowDataDirPath(), getPhotoFileName());
            if (android.os.Build.VERSION.SDK_INT < 19)
            {
                view = new Intent("android.intent.action.GET_CONTENT", null);
                view.setType("image/*");
                view.putExtra("crop", "true");
                view.putExtra("aspectX", aspectX);
                view.putExtra("aspectY", aspectY);
                view.putExtra("outputX", width);
                view.putExtra("outputY", height);
                view.putExtra("scale", true);
                view.putExtra("return-data", false);
                view.putExtra("output", Uri.fromFile(tempFile));
                view.putExtra("outputFormat", android.graphics.Bitmap.CompressFormat.JPEG.toString());
                view.putExtra("noFaceDetection", false);
                startActivityForResult(view, 10);
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (View view)
        {
            toast = StringUtil.toast(this, toast, getString(0x7f0c0076));
            return;
        }
        view = new Intent();
        Iterator iterator = mContext.getPackageManager().getInstalledPackages(8192).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            if (!((PackageInfo)iterator.next()).packageName.equals("com.google.android.gallery3d"))
            {
                continue;
            }
            view.setPackage("com.google.android.gallery3d");
            break;
        } while (true);
        view.setAction("android.intent.action.PICK");
        view.setType("image/*");
        view.putExtra("crop", "true");
        view.putExtra("aspectX", aspectX);
        view.putExtra("aspectY", aspectY);
        view.putExtra("outputX", width);
        view.putExtra("outputY", height);
        view.putExtra("scale", true);
        view.putExtra("return-data", true);
        view.putExtra("output", Uri.fromFile(tempFile));
        view.putExtra("outputFormat", android.graphics.Bitmap.CompressFormat.JPEG.toString());
        view.putExtra("noFaceDetection", false);
        startActivityForResult(view, 10);
        return;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030015);
        userId = HealthyAccountHolder.getUserId(this);
        currentDateTme = getIntent().getStringExtra("date");
        if (currentDateTme == null || currentDateTme.equals(""))
        {
            currentDateTme = StringUtil.formatCurrDate("yyyyMMdd");
        }
        wm = (WindowManager)getSystemService("window");
        metric = new DisplayMetrics();
        wm.getDefaultDisplay().getMetrics(metric);
        initView();
        context = this;
        imageFileUri = Uri.parse((new StringBuilder()).append("file://").append(MessageModel.CAPTURE_TEMP_FILE).toString());
    }

    public void onEvent(DeleteCalories deletecalories)
    {
        getListUptakeCalorie();
        refreshCurrenDateTotalCal();
        Log.d(TAG, "DeleteCalories");
    }

    protected void onPause()
    {
        super.onPause();
        EventBus.getDefault().unregister(this, new Class[] {
            com/veclink/healthy/business/http/pojo/DeleteCalories
        });
    }

    protected void onResume()
    {
        super.onResume();
        refreshCurrenDateTotalCal();
        EventBus.getDefault().register(this, com/veclink/healthy/business/http/pojo/DeleteCalories, new Class[0]);
        Log.d("onResume", "onResume");
    }

    public void refreshCurrenDateTotalCal()
    {
        int j = 0;
        int i = 0;
        if (listCalories != null)
        {
            Iterator iterator = listCalories.iterator();
            do
            {
                j = i;
                if (!iterator.hasNext())
                {
                    break;
                }
                i += ((UptakeCalorie)iterator.next()).getCalorieContent();
            } while (true);
        }
        totalCalValue.setText(String.valueOf(j));
        i = getCostCalValue();
        costCalValue.setText(String.valueOf(i));
        resultCalValue.setText(String.valueOf(j - i));
    }



}
