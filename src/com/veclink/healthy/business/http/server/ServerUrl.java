// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.business.http.server;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class ServerUrl
{

    public static final String APP_KEY = "app_key";
    public static final String APP_KEY_VALUE = "q2_android";
    public static final String APP_SECRET = "appSecret";
    public static final String APP_SECRETFF3FVALUE = "wkl201102333333";
    public static final String AVATAR = "avatar";
    public static String BASEURL = "http://q.movnow.com/rest";
    public static final String BIRTHDAY = "birthday";
    public static final String BRACELET_FIRMWAREUPGRADE_METHORD = "bracelet.firmwareupgrade";
    public static final String CITYID = "cityId";
    public static final String DELETE_BRACELET_DATA_METHORD = "bracelet.deletesportsdata";
    public static final String DEVICEID = "deviceId";
    public static final String DEVICE_TYPE = "deviceType";
    public static final String DISTRICTID = "districtId";
    public static final String EMAIL = "email";
    public static final String ENDTIME = "endDate";
    public static final String FILE_UPLOAD_METHORD = "file.upload";
    public static final String GET_SLEEPDATA_METHORD = "bracelet.getsleepdata";
    public static final String GET_SPORTSDATA_METHORD = "bracelet.getsportsdata";
    public static final String HEIGHT = "height";
    public static final String LOCALE = "locale";
    public static final String METHORD = "method";
    public static final String NEWPASSWORD = "newPassword";
    public static final String NICK_NAME = "nickName";
    public static final String OLDPASSWORD = "oldPassword";
    public static final String PASSWORD = "password";
    public static final String PROID = "proId";
    public static final String PUBLICBASEURL = "http://q.movnow.com/rest";
    public static final String PUBLIC_UPLOAD_BRACELET_DATA_URL = "http://dataq.movnow.com/Bracelet";
    public static final String SERVER_VERSION = "v";
    public static final String SERVER_VERSION_VALUE = "2.0.0";
    public static final String SESSIONID = "session";
    public static final String SEX = "sex";
    public static final String SIGN = "sign";
    public static final String SIGNATURE = "signature";
    public static final String STARTTIME = "startDate";
    public static final String TESTBASEURL = "http://113.108.103.150:8985/rest";
    public static final String TESTBAUSEURL2 = "http://192.168.0.11/router/rest";
    public static final String TEST_UPLOAD_BRACELET_DATA_URL = "http://113.108.103.150:8985/Bracelet";
    public static final String TIMESTAMP = "timestamp";
    public static final String UID = "uid";
    public static final String UPLOADFILE_URL = "http://upload.movnow.com/upload/file.do";
    public static final String UPLOAD_BRACELET_DATA_METHORD = "bracelet.receivebraceletdata";
    public static final String UPLOAD_BRACELET_DATA_TYPE = "data_type";
    public static String UPLOAD_BRACELET_DATA_URL = "http://dataq.movnow.com/Bracelet";
    public static final String USERID = "userId";
    public static final String USERNAME = "username";
    public static final String USER_CHANGEPWD_METHORD = "user.changepassword";
    public static final String USER_GETUPLOADFILE_TOKEN_METHORD = "user.getuploadfiletoken";
    public static final String USER_LOGIN_METHORD = "user.login";
    public static final String USER_LOGOUT_METHORD = "user.logout";
    public static final String USER_RESET_PWD_BY_EMAIL_METHORD = "user.resetpasswordbyemail";
    public static final String USER_RGEISTER_METHORD = "user.registerbyemail";
    public static final String USER_UPDATEUSERINFO_METHORD = "user.updateinfo";
    public static final String WEIGHT = "weight";

    public ServerUrl()
    {
    }

    public static String bytesToHexString(byte abyte0[])
    {
        StringBuilder stringbuilder = new StringBuilder("");
        if (abyte0 == null || abyte0.length <= 0)
        {
            return null;
        }
        for (int i = 0; i < abyte0.length; i++)
        {
            String s = Integer.toHexString(abyte0[i] & 0xff);
            if (s.length() < 2)
            {
                stringbuilder.append(0);
            }
            stringbuilder.append(s);
        }

        return stringbuilder.toString();
    }

    public static String getPrimarySign(HashMap hashmap, String s)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("wkl201102333333");
        ArrayList arraylist = new ArrayList();
        String s1;
        String s2;
        for (Iterator iterator = hashmap.keySet().iterator(); iterator.hasNext(); arraylist.add((new StringBuilder()).append(s1).append(s2).toString()))
        {
            s1 = (String)iterator.next();
            s2 = (String)hashmap.get(s1);
        }

        arraylist.add("v2.0.0");
        arraylist.add((new StringBuilder()).append("timestamp").append(s).toString());
        arraylist.add("app_keyq2_android");
        Collections.sort(arraylist);
        for (hashmap = arraylist.iterator(); hashmap.hasNext(); stringbuilder.append((String)hashmap.next())) { }
        stringbuilder.append("wkl201102333333");
        return stringbuilder.toString();
    }

    public static String getSHASignValue(String s)
    {
        try
        {
            s = bytesToHexString(MessageDigest.getInstance("SHA-1").digest(s.toString().getBytes())).toUpperCase();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        return s;
    }

    public static String getUploadDataPrimarySign(HashMap hashmap, String s)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("wkl201102333333");
        ArrayList arraylist = new ArrayList();
        String s1;
        String s2;
        for (Iterator iterator = hashmap.keySet().iterator(); iterator.hasNext(); arraylist.add((new StringBuilder()).append(s1).append(s2).toString()))
        {
            s1 = (String)iterator.next();
            s2 = (String)hashmap.get(s1);
        }

        arraylist.add((new StringBuilder()).append("timestamp").append(s).toString());
        arraylist.add("app_keyq2_android");
        Collections.sort(arraylist);
        for (hashmap = arraylist.iterator(); hashmap.hasNext(); stringbuilder.append((String)hashmap.next())) { }
        stringbuilder.append("wkl201102333333");
        return stringbuilder.toString();
    }

}
