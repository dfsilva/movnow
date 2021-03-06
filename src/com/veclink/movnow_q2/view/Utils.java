// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.provider.DocumentsContract;

public class Utils
{

    private static Utils utils;

    public Utils()
    {
    }

    public static Utils getInstance()
    {
        if (utils == null)
        {
            utils = new Utils();
        }
        return utils;
    }

    public static boolean isDownloadsDocument(Uri uri)
    {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    public static boolean isExternalStorageDocument(Uri uri)
    {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    public static boolean isGooglePhotosUri(Uri uri)
    {
        return "com.google.android.apps.photos.content".equals(uri.getAuthority());
    }

    public static boolean isMediaDocument(Uri uri)
    {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    public void cropPicture(Activity activity, Uri uri)
    {
        Intent intent = new Intent("com.android.camera.action.CROP");
        intent.setDataAndType(uri, "image/*");
        intent.putExtra("crop", "true");
        intent.putExtra("aspectX", 150);
        intent.putExtra("aspectY", 150);
        intent.putExtra("outputX", 150);
        intent.putExtra("outputY", 150);
        intent.putExtra("return-data", true);
        intent.putExtra("scale", true);
        intent.putExtra("output", uri);
        intent.putExtra("outputFormat", android.graphics.Bitmap.CompressFormat.JPEG.toString());
        intent.putExtra("noFaceDetection", true);
        activity.startActivityForResult(intent, 2);
    }

    public String getDataColumn(Context context, Uri uri, String s, String as[])
    {
        Context context1 = null;
        context = context.getContentResolver().query(uri, new String[] {
            "_data"
        }, s, as, null);
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        context1 = context;
        if (!context.moveToFirst())
        {
            break MISSING_BLOCK_LABEL_71;
        }
        context1 = context;
        uri = context.getString(context.getColumnIndexOrThrow("_data"));
        if (context != null)
        {
            context.close();
        }
        return uri;
        if (context != null)
        {
            context.close();
        }
        return null;
        context;
        if (context1 != null)
        {
            context1.close();
        }
        throw context;
    }

    public String getPath(Context context, Uri uri)
    {
        String s = null;
        boolean flag;
        if (android.os.Build.VERSION.SDK_INT >= 19)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag || !DocumentsContract.isDocumentUri(context, uri)) goto _L2; else goto _L1
_L1:
        if (!isExternalStorageDocument(uri)) goto _L4; else goto _L3
_L3:
        context = DocumentsContract.getDocumentId(uri).split(":");
        if ("primary".equalsIgnoreCase(context[0]))
        {
            s = (new StringBuilder()).append(Environment.getExternalStorageDirectory()).append("/").append(context[1]).toString();
        }
_L9:
        return s;
_L4:
        String as[];
        String s1;
        if (isDownloadsDocument(uri))
        {
            uri = DocumentsContract.getDocumentId(uri);
            return getDataColumn(context, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(uri).longValue()), null, null);
        }
        if (!isMediaDocument(uri))
        {
            continue; /* Loop/switch isn't completed */
        }
        as = DocumentsContract.getDocumentId(uri).split(":");
        s1 = as[0];
        uri = null;
        if (!"image".equals(s1)) goto _L6; else goto _L5
_L5:
        uri = android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
_L7:
        return getDataColumn(context, uri, "_id=?", new String[] {
            as[1]
        });
_L6:
        if ("video".equals(s1))
        {
            uri = android.provider.MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
        } else
        if ("audio".equals(s1))
        {
            uri = android.provider.MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
        }
        if (true) goto _L7; else goto _L2
_L2:
        if ("content".equalsIgnoreCase(uri.getScheme()))
        {
            if (isGooglePhotosUri(uri))
            {
                return uri.getLastPathSegment();
            } else
            {
                return getDataColumn(context, uri, null, null);
            }
        }
        if ("file".equalsIgnoreCase(uri.getScheme()))
        {
            return uri.getPath();
        }
        if (true) goto _L9; else goto _L8
_L8:
    }

    public void selectPicture(Activity activity)
    {
        if (android.os.Build.VERSION.SDK_INT < 19)
        {
            Intent intent = new Intent();
            intent.setType("image/*");
            intent.setAction("android.intent.action.GET_CONTENT");
            activity.startActivityForResult(intent, 0);
            return;
        } else
        {
            Intent intent1 = new Intent();
            intent1.setType("image/*");
            intent1.setAction("android.intent.action.OPEN_DOCUMENT");
            activity.startActivityForResult(intent1, 1);
            return;
        }
    }
}
