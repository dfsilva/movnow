// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.Toast;
import com.veclink.movnow_q2.network.base.Encodes;
import com.veclink.movnow_q2.util.BitmapUtil;
import com.veclink.movnow_q2.util.MessageModel;
import com.veclink.movnow_q2.util.StorageUtil;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

// Referenced classes of package com.veclink.movnow_q2.view:
//            TakePhotoDialog, Utils

public class TakePhotoDialogProxy
{

    private Activity activity;
    private int aspectX;
    private int aspectY;
    private Bitmap b;
    private Handler extendHandler;
    Handler handler;
    private int height;
    private String iconStringFormatContent;
    private ImageView iconView;
    private File imgFile;
    private String photoIconPath;
    private TakePhotoDialog takePhotoDialog;
    private int width;

    public TakePhotoDialogProxy(Activity activity1, ImageView imageview)
    {
        imgFile = null;
        width = 150;
        height = 150;
        aspectX = 1;
        aspectY = 1;
        photoIconPath = "";
        handler = new Handler() {

            final TakePhotoDialogProxy this$0;

            public void handleMessage(Message message)
            {
                if (!photoIconPath.equals(""))
                {
                    if (b != null)
                    {
                        b.recycle();
                    }
                    b = BitmapFactory.decodeFile(photoIconPath);
                    if (b != null)
                    {
                        if (extendHandler != null)
                        {
                            extendHandler.sendMessage(new Message());
                        }
                        b.recycle();
                    }
                }
            }

            
            {
                this$0 = TakePhotoDialogProxy.this;
                super();
            }
        };
        activity = activity1;
        iconView = imageview;
        takePhotoDialog = new TakePhotoDialog(activity1, 0x7f0b0015);
        takePhotoDialog.setTakePhotoListener(new android.view.View.OnClickListener() {

            final TakePhotoDialogProxy this$0;

            public void onClick(View view)
            {
                btnTakePic();
                takePhotoDialog.dismiss();
            }

            
            {
                this$0 = TakePhotoDialogProxy.this;
                super();
            }
        });
        takePhotoDialog.setChooseLocalImgListener(new android.view.View.OnClickListener() {

            final TakePhotoDialogProxy this$0;

            public void onClick(View view)
            {
                btnLocalPic();
                takePhotoDialog.dismiss();
            }

            
            {
                this$0 = TakePhotoDialogProxy.this;
                super();
            }
        });
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
        activity.startActivityForResult(intent, k);
    }

    public void btnLocalPic()
    {
        Utils.getInstance().selectPicture(activity);
    }

    public void btnTakePic()
    {
        if (activity.getPackageManager().hasSystemFeature("android.hardware.camera"))
        {
            try
            {
                imgFile = new File(StorageUtil.getMovnowDataDirPath(), getPhotoFileName());
                Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
                intent.putExtra("output", Uri.fromFile(imgFile));
                activity.startActivityForResult(intent, 3);
                return;
            }
            catch (Exception exception)
            {
                Toast.makeText(activity, "\u5F00\u542F\u76F8\u673A\u5931\u8D25", 0).show();
            }
            return;
        } else
        {
            Toast.makeText(activity, "\u8BBE\u5907\u65E0\u76F8\u673A", 0).show();
            return;
        }
    }

    protected String convertMediaUriToPath(Uri uri)
    {
        String s = null;
        if ("content".equals(uri.getScheme()))
        {
            uri = activity.getContentResolver().query(uri, new String[] {
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

    public String getIconStringFormatContent()
    {
        return iconStringFormatContent;
    }

    public String getPhotoFileName()
    {
        long l = System.currentTimeMillis();
        return (new StringBuilder()).append("IMG_").append(Encodes.MD5(String.valueOf(l))).append(".jpg").toString();
    }

    public String getPhotoIconPath()
    {
        return photoIconPath;
    }

    public void handleActivityResult(int i, int j, Intent intent)
    {
        i;
        JVM INSTR tableswitch 0 9: default 56
    //                   0 243
    //                   1 289
    //                   2 357
    //                   3 72
    //                   4 56
    //                   5 56
    //                   6 56
    //                   7 56
    //                   8 56
    //                   9 105;
           goto _L1 _L2 _L3 _L4 _L5 _L1 _L1 _L1 _L1 _L1 _L6
_L1:
        handler.sendMessage(new Message());
        return;
_L5:
        if (j == -1)
        {
            try
            {
                cropImageUri(Uri.fromFile(imgFile), width, height, 9);
            }
            // Misplaced declaration of an exception variable
            catch (Intent intent) { }
        }
        continue; /* Loop/switch isn't completed */
_L6:
        if (intent == null || "".equals(intent))
        {
            photoIconPath = MessageModel.CAPTURE_TEMP_FILE;
        } else
        {
            intent = intent.getExtras();
            if (intent != null)
            {
                intent = (Bitmap)intent.getParcelable("data");
                if (intent != null)
                {
                    if (imgFile.exists())
                    {
                        imgFile.delete();
                    }
                    try
                    {
                        i = BitmapUtil.getQualityCompressBitmap(intent, 100);
                        FileOutputStream fileoutputstream = new FileOutputStream(imgFile);
                        intent.compress(android.graphics.Bitmap.CompressFormat.PNG, i, fileoutputstream);
                        fileoutputstream.flush();
                        fileoutputstream.close();
                    }
                    // Misplaced declaration of an exception variable
                    catch (Intent intent)
                    {
                        intent.printStackTrace();
                    }
                    photoIconPath = imgFile.getPath();
                } else
                {
                    photoIconPath = MessageModel.CAPTURE_TEMP_FILE;
                }
            }
        }
        continue; /* Loop/switch isn't completed */
_L2:
        intent = intent.getData();
        Log.d("tag", (new StringBuilder()).append("uri=").append(intent).toString());
        Utils.getInstance().cropPicture(activity, intent);
        continue; /* Loop/switch isn't completed */
_L3:
        intent = intent.getData();
        Log.d("tag", (new StringBuilder()).append("uri=").append(intent).toString());
        intent = Utils.getInstance().getPath(activity, intent);
        Utils.getInstance().cropPicture(activity, Uri.fromFile(new File(intent)));
        continue; /* Loop/switch isn't completed */
_L4:
        intent = (Bitmap)intent.getParcelableExtra("data");
        FileOutputStream fileoutputstream1;
        imgFile = new File(StorageUtil.getMovnowDataDirPath(), getPhotoFileName());
        fileoutputstream1 = new FileOutputStream(imgFile);
        try
        {
            if (!intent.compress(android.graphics.Bitmap.CompressFormat.JPEG, 100, fileoutputstream1));
            photoIconPath = imgFile.getPath();
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (Intent intent) { }
_L8:
        intent.printStackTrace();
        if (true) goto _L1; else goto _L7
_L7:
        intent;
          goto _L8
    }

    public void setExtendHandler(Handler handler1)
    {
        extendHandler = handler1;
    }

    public void show()
    {
        takePhotoDialog.show();
    }





/*
    static Bitmap access$202(TakePhotoDialogProxy takephotodialogproxy, Bitmap bitmap)
    {
        takephotodialogproxy.b = bitmap;
        return bitmap;
    }

*/

}
