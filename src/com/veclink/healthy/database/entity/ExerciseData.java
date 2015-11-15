// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.entity;

import java.io.Serializable;

public class ExerciseData
    implements Serializable
{

    private int CalorieConsume;
    private String DateTime;
    private int Mileage;
    private int StepNumber;

    public ExerciseData()
    {
    }

    public ExerciseData(String s)
    {
        DateTime = s;
    }

    public ExerciseData(String s, int i, int j, int k)
    {
        DateTime = s;
        StepNumber = i;
        Mileage = j;
        CalorieConsume = k;
    }

    public int getCalorieConsume()
    {
        return CalorieConsume;
    }

    public String getDateTime()
    {
        return DateTime;
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

    public void setMileage(int i)
    {
        Mileage = i;
    }

    public void setStepNumber(int i)
    {
        StepNumber = i;
    }
}
