// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.bleservice;

import android.accessibilityservice.AccessibilityService;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.os.Bundle;
import android.os.Handler;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.veclink.bracelet.bletask.BleCallBack;
import com.veclink.bracelet.bletask.BleSendShortMsgRemindTask;
import com.veclink.bracelet.bletask.BleTask;
import com.veclink.hw.bleservice.util.Debug;
import java.io.PrintStream;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class MsgService extends AccessibilityService
    implements android.speech.tts.TextToSpeech.OnInitListener
{

    public static final String WHATSAPP_PACKAGENAME = "com.whatsapp";
    private String TAG;

    public MsgService()
    {
        TAG = "MsgService";
    }

    public void onAccessibilityEvent(AccessibilityEvent accessibilityevent)
    {
        System.out.println("***** onAccessibilityEvent");
        if (!accessibilityevent.getPackageName().equals(getPackageName()))
        {
            Debug.logV(TAG, (new StringBuilder()).append("pkgname ").append(accessibilityevent.getPackageName()).toString());
            Debug.logV(TAG, (new StringBuilder()).append("classname ").append(accessibilityevent.getClassName()).toString());
            Debug.logV(TAG, (new StringBuilder()).append("action      : ").append(accessibilityevent.getAction()).toString());
            Object obj = accessibilityevent.getText();
            StringBuilder stringbuilder = new StringBuilder();
            for (int i = 0; i < ((List) (obj)).size(); i++)
            {
                stringbuilder.append((CharSequence)((List) (obj)).get(i));
                System.out.println((new StringBuilder()).append("t ").append(((List) (obj)).get(i)).toString());
            }

            stringbuilder.toString();
            Debug.logV(TAG, (new StringBuilder()).append("message content ").append(stringbuilder.toString()).toString());
            if (accessibilityevent.getPackageName().equals("com.whatsapp"))
            {
                (new BleSendShortMsgRemindTask(this, new BleCallBack(new Handler()), (byte)5, new byte[0])).work();
            }
            accessibilityevent = accessibilityevent.getSource();
            if (accessibilityevent == null)
            {
                System.out.println(" null ");
                return;
            }
            System.out.println((new StringBuilder()).append("count ").append(accessibilityevent.getChildCount()).toString());
            accessibilityevent = accessibilityevent.getExtras();
            obj = accessibilityevent.keySet().iterator();
            while (((Iterator) (obj)).hasNext()) 
            {
                String s = (String)((Iterator) (obj)).next();
                Object obj1 = accessibilityevent.get(s);
                System.out.println((new StringBuilder()).append(" . ").append(s).append(" . ").append(obj1).toString());
            }
        }
    }

    public void onInit(int i)
    {
    }

    public void onInterrupt()
    {
    }

    public void onServiceConnected()
    {
        AccessibilityServiceInfo accessibilityserviceinfo = new AccessibilityServiceInfo();
        accessibilityserviceinfo.eventTypes = 64;
        accessibilityserviceinfo.notificationTimeout = 100L;
        accessibilityserviceinfo.feedbackType = -1;
        setServiceInfo(accessibilityserviceinfo);
    }
}
