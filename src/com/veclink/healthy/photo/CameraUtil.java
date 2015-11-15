// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.photo;

import android.hardware.Camera;
import android.media.CamcorderProfile;
import android.util.Log;
import java.lang.reflect.Method;

public class CameraUtil
{

    private static final String TAG = "CameraUtil";
    private static final int TIME_LAPSE_VIDEO_QUALITY[] = {
        1006, 1005, 1004, 1003, 1007, 1002
    };
    private static final int VIDEO_QUALITY[] = {
        6, 5, 4, 3, 7, 2
    };

    public CameraUtil()
    {
    }

    public static Camera getCameraInstance(boolean flag, StringBuffer stringbuffer)
    {
        com/veclink/healthy/photo/CameraUtil;
        JVM INSTR monitorenter ;
        Object obj = null;
        android.hardware.Camera.CameraInfo camerainfo = new android.hardware.Camera.CameraInfo();
        Object obj1;
        int j;
        int i;
        int k;
        int l;
        if (flag)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        j = 0;
        k = Camera.getNumberOfCameras();
_L2:
        obj1 = obj;
        if (j >= k)
        {
            break MISSING_BLOCK_LABEL_79;
        }
        Camera.getCameraInfo(j, camerainfo);
        l = camerainfo.facing;
        obj1 = obj;
        if (l != i)
        {
            break MISSING_BLOCK_LABEL_105;
        }
        obj1 = Camera.open(j);
        obj = obj1;
        stringbuffer.append(String.valueOf(j));
        com/veclink/healthy/photo/CameraUtil;
        JVM INSTR monitorexit ;
        return ((Camera) (obj1));
        obj1;
        ((RuntimeException) (obj1)).printStackTrace();
        Log.i("CameraUtil", "Camera open error !");
        obj1 = obj;
        j++;
        obj = obj1;
        if (true) goto _L2; else goto _L1
_L1:
        stringbuffer;
        throw stringbuffer;
    }

    public static int getCameraQuality(int i)
    {
label0:
        {
            byte byte0 = 6;
            if (!CamcorderProfile.hasProfile(i, 6))
            {
                if (!CamcorderProfile.hasProfile(i, 5))
                {
                    break label0;
                }
                byte0 = 5;
            }
            return byte0;
        }
        if (CamcorderProfile.hasProfile(i, 4))
        {
            return 4;
        }
        if (CamcorderProfile.hasProfile(i))
        {
            return 3;
        }
        if (CamcorderProfile.hasProfile(i, 7))
        {
            return 7;
        }
        return !CamcorderProfile.hasProfile(i, 2) ? 0 : 2;
    }

    private static void setDisplayOrientation(Camera camera, int i)
    {
        Method method;
        try
        {
            method = camera.getClass().getMethod("setDisplayOrientation", new Class[] {
                Integer.TYPE
            });
        }
        // Misplaced declaration of an exception variable
        catch (Camera camera)
        {
            Log.i("CameraUtil", (new StringBuilder()).append("setDisplayOrientation(), error: ").append(camera.toString()).toString());
            return;
        }
        if (method == null)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        method.invoke(camera, new Object[] {
            Integer.valueOf(i)
        });
    }

    public static void setPreviewRotation(Camera camera, int i)
    {
label0:
        {
            if (android.os.Build.VERSION.SDK_INT >= 8)
            {
                if (false)
                {
                    break label0;
                }
                camera.setDisplayOrientation(i);
            }
            return;
        }
        setDisplayOrientation(camera, i);
    }

}
