// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.account;

import android.content.Context;
import android.content.SharedPreferences;
import com.veclink.healthy.business.http.pojo.LoginResponse;
import com.veclink.healthy.database.op.HealthyDBSyncRecordOperate;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.movnow_q2.util.SharedPreferencesUtils;
import java.io.PrintStream;

public class HealthyAccountHolder
{

    public static final String ACCOUNT_FILE_NAME = "account_file";
    public static final String KEY_AVATAR = "avatar";
    public static final String KEY_BIRTHDAY = "birthday";
    public static final String KEY_CALL_REMIND_TIME = "call_remind_time";
    public static final String KEY_CITYID = "cityId";
    public static final String KEY_DISTRICTID = "districtId";
    public static final String KEY_EMAIL = "email";
    public static final String KEY_HEIGHT = "height";
    public static final String KEY_LAST_LOGIN_TIME = "last_login_time";
    public static final String KEY_LAST_SYNC_TIME = "last_sync_time";
    public static final String KEY_NICK_NAME = "nickName";
    public static final String KEY_PASSWORD = "password";
    public static final String KEY_PROVID = "proVId";
    public static final String KEY_REMIND_UPDATE_FIREWARETIME = "remind_update_fireware_time";
    public static final String KEY_SEESIONDID = "sessionId";
    public static final String KEY_SEX = "sex";
    public static final String KEY_USERID = "userId";
    public static final String KEY_USERNAME = "username";
    public static final String KEY_USERR_PIC = "userPic";
    public static final String KEY_WEIGHT = "weight";

    public HealthyAccountHolder()
    {
    }

    public static String getBirthday(Context context)
    {
        return context.getSharedPreferences("account_file", 0).getString("birthday", "");
    }

    public static int getCallRemindTime(Context context)
    {
        return context.getSharedPreferences("account_file", 0).getInt("call_remind_time", 15);
    }

    public static String getEmail(Context context)
    {
        return context.getSharedPreferences("account_file", 0).getString("email", "");
    }

    public static String getNickName(Context context)
    {
        return context.getSharedPreferences("account_file", 0).getString("nickName", "");
    }

    public static String getPortrait(Context context, String s)
    {
        return context.getSharedPreferences("account_file", 0).getString(s, "");
    }

    public static String getSessionId(Context context)
    {
        return context.getSharedPreferences("account_file", 0).getString("sessionId", "");
    }

    public static String getSex(Context context)
    {
        return context.getSharedPreferences("account_file", 0).getString("sex", "");
    }

    public static String getUserIconUrl(Context context)
    {
        return context.getSharedPreferences("account_file", 0).getString("avatar", "");
    }

    public static String getUserId(Context context)
    {
        return context.getSharedPreferences("account_file", 0).getString("userId", "");
    }

    public static String getUserName(Context context)
    {
        return context.getSharedPreferences("account_file", 0).getString("username", "");
    }

    public static String getUserPic(Context context)
    {
        return context.getSharedPreferences("account_file", 0).getString((new StringBuilder()).append("userPic_").append(getUserId(context)).toString(), "");
    }

    public static boolean isNeedLogin(Context context)
    {
        boolean flag1 = true;
        context = context.getSharedPreferences("account_file", 0).getString("sessionId", "");
        boolean flag = flag1;
        if (!context.equals(""))
        {
            flag = flag1;
            if (context.length() > 2)
            {
                flag = false;
            }
        }
        return flag;
    }

    public static boolean isNeedShowUpdateFirewareDialog(Context context)
    {
        boolean flag = false;
        long l = context.getSharedPreferences("account_file", 0).getLong("remind_update_fireware_time", 0L);
        if (System.currentTimeMillis() - l > 0x5265c00L)
        {
            flag = true;
        }
        return flag;
    }

    public static void logOut(Context context)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("account_file", 0).edit();
        editor.putString("userId", "");
        editor.putString("username", "");
        editor.putString("email", "");
        editor.putString("sessionId", "");
        editor.putString("password", "");
        editor.putString("last_sync_time", "");
        editor.apply();
        Keeper.setBindDeviceName(context, "");
        Keeper.setDeviceRomVersion(context, "");
    }

    public static void saveLoginResponse(Context context, LoginResponse loginresponse)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("account_file", 0).edit();
        editor.putString("userId", loginresponse.getUserId());
        editor.putString("username", loginresponse.getUsername());
        editor.putString("email", loginresponse.getEmail());
        editor.putString("sessionId", loginresponse.getSessionId());
        editor.putString("sex", String.valueOf(loginresponse.getSex()));
        String s;
        if (loginresponse.getNickName() == null)
        {
            s = loginresponse.getEmail().substring(0, loginresponse.getEmail().indexOf("@"));
        } else
        {
            s = loginresponse.getNickName();
        }
        editor.putString("nickName", String.valueOf(s));
        editor.putString("birthday", loginresponse.getBirthday());
        editor.putString("proVId", String.valueOf(loginresponse.getProvId()));
        editor.putString("cityId", String.valueOf(loginresponse.getCityId()));
        editor.putString("districtId", String.valueOf(loginresponse.getDistrict_id()));
        editor.putString("avatar", loginresponse.getAvatar());
        editor.putLong("last_login_time", System.currentTimeMillis());
        editor.apply();
        SharedPreferencesUtils.setSharedPreferences(context, "personal_weight", Float.valueOf((float)loginresponse.getWeight() / 1000F));
        SharedPreferencesUtils.setSharedPreferences(context, "personal_height", Float.valueOf(loginresponse.getHeight()));
        SharedPreferencesUtils.setSharedPreferences(context, "pre_Sex", Integer.valueOf(loginresponse.getSex()));
        loginresponse = loginresponse.getBirthday();
        if (loginresponse != null && loginresponse.length() >= 8)
        {
            int i = Integer.parseInt(loginresponse.substring(0, 4));
            int j = Integer.parseInt(loginresponse.substring(4, 6));
            int k = Integer.parseInt(loginresponse.substring(6, 8));
            System.out.println((new StringBuilder()).append("save birthday:").append(i).append("-").append(j).append("-").append(k).toString());
            SharedPreferencesUtils.setSharedPreferences(context, "personal_year", Integer.valueOf(i));
            SharedPreferencesUtils.setSharedPreferences(context, "personal_month", Integer.valueOf(j));
            SharedPreferencesUtils.setSharedPreferences(context, "personal_day", Integer.valueOf(k));
        }
    }

    public static void saveUserNameAndPassWord(Context context, String s, String s1)
    {
        context = context.getSharedPreferences("account_file", 0).edit();
        context.putString("username", s);
        context.putString("password", s1);
        context.putString("email", s);
        context.apply();
    }

    public static void setCallRemindTime(Context context, int i)
    {
        context = context.getSharedPreferences("account_file", 0).edit();
        context.putInt("call_remind_time", i);
        context.apply();
    }

    public static void setNickName(Context context, String s)
    {
        context = context.getSharedPreferences("account_file", 0).edit();
        context.putString("nickName", s);
        context.apply();
    }

    public static void setPortrait(Context context, String s, String s1)
    {
        context = context.getSharedPreferences("account_file", 0).edit();
        context.putString(s1, s);
        context.apply();
    }

    public static void setSessionId(Context context, String s)
    {
        context = context.getSharedPreferences("account_file", 0).edit();
        context.putString("sessionId", s);
        context.apply();
    }

    public static void setUpdateFirewareRemidTime(Context context, long l)
    {
        context = context.getSharedPreferences("account_file", 0).edit();
        context.putLong("remind_update_fireware_time", l);
        context.apply();
    }

    public static void setUserIconUrl(Context context, String s)
    {
        context = context.getSharedPreferences("account_file", 0).edit();
        context.putString("avatar", s);
        context.apply();
    }

    public static void setUserName(Context context, String s)
    {
        context = context.getSharedPreferences("account_file", 0).edit();
        context.putString("username", s);
        context.apply();
    }

    public static void setUserPic(Context context, String s)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("account_file", 0).edit();
        editor.putString((new StringBuilder()).append("userPic_").append(getUserId(context)).toString(), s);
        editor.apply();
    }

    public static void unBindDevice(Context context)
    {
        HealthyDBSyncRecordOperate.deleteSyncRecordByDeviceId(context);
        Keeper.setBindDeviceMacAddress(context, "");
        Keeper.setBindDeviceName(context, "");
        Keeper.setDeviceId(context, "");
        Keeper.setDeviceRomVersion(context, "");
        Keeper.setDeviceType(context, "");
        Keeper.setUserHasBindBand(context, false);
        Keeper.setChangeToOldProtocol(context, false);
    }
}
