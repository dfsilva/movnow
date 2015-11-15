// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.entity;

import java.io.Serializable;

public class ExerciseAmount
    implements Serializable
{

    private int CalorieConsume;
    private String DateTime;
    private int Mileage;
    private int StepNumber;
    private Long id;

    public ExerciseAmount()
    {
    }

    public ExerciseAmount(Long long1)
    {
        id = long1;
    }

    public ExerciseAmount(Long long1, int i, int j, int k, String s)
    {
        id = long1;
        StepNumber = i;
        Mileage = j;
        CalorieConsume = k;
        DateTime = s;
    }

    public int getCalorieConsume()
    {
        return CalorieConsume;
    }

    public String getDateTime()
    {
        return DateTime;
    }

    public Long getId()
    {
        return id;
    }

    public int getMileage()
    {
        return Mileage;
    }

    public int getStepNumber()
    {
        return StepNumber;
    }

    public void setCalorieConsume(int i)
    {
        CalorieConsume = i;
    }

    public void setDateTime(String s)
    {
        DateTime = s;
    }

    public void setId(Long long1)
    {
        id = long1;
    }

    public void setMileage(int i)
    {
        Mileage = i;
    }

    public void setStepNumber(int i)
    {
        StepNumber = i;
    }
}
