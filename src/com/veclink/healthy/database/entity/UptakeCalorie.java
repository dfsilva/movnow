// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.entity;

import java.io.Serializable;

public class UptakeCalorie
    implements Serializable
{

    private int CalorieContent;
    private float Counts;
    private String DateTime;
    private String FoodName;
    private String ImgUrl;
    private Long id;
    private String userId;

    public UptakeCalorie()
    {
    }

    public UptakeCalorie(Long long1)
    {
        id = long1;
    }

    public UptakeCalorie(Long long1, String s, String s1, int i, float f, String s2, String s3)
    {
        id = long1;
        userId = s;
        FoodName = s1;
        CalorieContent = i;
        Counts = f;
        DateTime = s2;
        ImgUrl = s3;
    }

    public int getCalorieContent()
    {
        return CalorieContent;
    }

    public float getCounts()
    {
        return Counts;
    }

    public String getDateTime()
    {
        return DateTime;
    }

    public String getFoodName()
    {
        return FoodName;
    }

    public Long getId()
    {
        return id;
    }

    public String getImgUrl()
    {
        return ImgUrl;
    }

    public String getUserId()
    {
        return userId;
    }

    public void setCalorieContent(int i)
    {
        CalorieContent = i;
    }

    public void setCounts(float f)
    {
        Counts = f;
    }

    public void setDateTime(String s)
    {
        DateTime = s;
    }

    public void setFoodName(String s)
    {
        FoodName = s;
    }

    public void setId(Long long1)
    {
        id = long1;
    }

    public void setImgUrl(String s)
    {
        ImgUrl = s;
    }

    public void setUserId(String s)
    {
        userId = s;
    }
}
