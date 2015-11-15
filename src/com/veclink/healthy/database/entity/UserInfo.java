// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.entity;

import java.io.Serializable;

public class UserInfo
    implements Serializable
{

    private String avatar;
    private String birthday;
    private String cityId;
    private String districtId;
    private String email;
    private String height;
    private String nickName;
    private String proId;
    private String sex;
    private String signature;
    private String weight;

    public UserInfo()
    {
    }

    public UserInfo(String s)
    {
        email = s;
    }

    public UserInfo(String s, String s1, String s2, String s3, String s4, String s5, String s6, 
            String s7, String s8, String s9, String s10)
    {
        email = s;
        nickName = s1;
        sex = s2;
        signature = s3;
        birthday = s4;
        height = s5;
        weight = s6;
        proId = s7;
        cityId = s8;
        districtId = s9;
        avatar = s10;
    }

    public String getAvatar()
    {
        return avatar;
    }

    public String getBirthday()
    {
        return birthday;
    }

    public String getCityId()
    {
        return cityId;
    }

    public String getDistrictId()
    {
        return districtId;
    }

    public String getEmail()
    {
        return email;
    }

    public String getHeight()
    {
        return height;
    }

    public String getNickName()
    {
        return nickName;
    }

    public String getProId()
    {
        return proId;
    }

    public String getSex()
    {
        return sex;
    }

    public String getSignature()
    {
        return signature;
    }

    public String getWeight()
    {
        return weight;
    }

    public void setAvatar(String s)
    {
        avatar = s;
    }

    public void setBirthday(String s)
    {
        birthday = s;
    }

    public void setCityId(String s)
    {
        cityId = s;
    }

    public void setDistrictId(String s)
    {
        districtId = s;
    }

    public void setEmail(String s)
    {
        email = s;
    }

    public void setHeight(String s)
    {
        height = s;
    }

    public void setNickName(String s)
    {
        nickName = s;
    }

    public void setProId(String s)
    {
        proId = s;
    }

    public void setSex(String s)
    {
        sex = s;
    }

    public void setSignature(String s)
    {
        signature = s;
    }

    public void setWeight(String s)
    {
        weight = s;
    }
}
