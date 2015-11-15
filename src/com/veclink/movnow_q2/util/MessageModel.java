// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.util;

import android.os.Environment;

public class MessageModel
{

    public static final int ASK_CAPTURE_PHOTO = 3;
    public static final int ASK_FRIEND_DATA = 4;
    public static final int ASK_LOCAL_IMAGE = 2;
    public static final String CAPTURE_TEMP_FILE = (new StringBuilder()).append(Environment.getExternalStorageDirectory()).append("/q2_temp_capture.jpg").toString();
    public static final int CHOOSE_CONTACT_REQUEST_CODE = 0;
    public static final int CHOOSE_CONTACT_RESULT_CODE = 1;
    public static final int CHOOSE_SMALL_PICTURE = 10;
    public static final int CROP_SMALL_PICTURE = 9;
    public static final int FINISH_ACTIVITY = 1006;
    public static final String GET_NET_DEVICE_POINT = "action_get_new_device_point";
    public static final int HIDE_VIEW = 1001;
    public static final int IS_FROM_LOGIN = 1007;
    public static final int MAP_ADD_AND_SHOW_WARNING_INFO = 12;
    public static final int MAP_CHOOSE_POSITION_RESULT_CODE = 11;
    public static final int MAP_GET_MKPOINT_INFO = 1009;
    public static final int MAP_SHOW_MKPOINT_INFO = 1010;
    public static final int MICROBLOG_RESULT_CODE = 5;
    public static final int MODIFY_DEVICE_NAME_RETURN = 13;
    public static final int MOOD_UPDATE_EDITVIEW_USERNAME = 1003;
    public static final int MOOD_UPDATE_FACE = 1008;
    public static final int MOOD_UPDATE_IMG = 1004;
    public static final int NETWORK_GET_WEATHER = 1011;
    public static final int NETWORK_GET_WEATHER_LOC = 1012;
    public static final int PERSONAL_TO_LOCATION = 8;
    public static final int SETTINGS_TO_PERSONAL_REQUEST = 6;
    public static final int SETTINGS_TO_PERSONAL_RESULT = 7;
    public static final int UPDATE_DATABASES = 1002;
    public static final int UPDATE_PERSONAL_INFO = 1005;

    public MessageModel()
    {
    }

}
