// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bean;


public class BleUserInfoBean
{

    public int age;
    public int distanceUnit;
    public float height;
    public int keptOnOff;
    public int motionMode;
    public int sex;
    public int targetStepNumber;
    public int wearPosition;
    public float weight;

    public BleUserInfoBean(int i, int j, int k, int l, int i1, float f, float f1, 
            int j1, int k1)
    {
        targetStepNumber = i;
        wearPosition = j;
        motionMode = k;
        sex = l;
        age = i1;
        weight = f;
        height = f1;
        distanceUnit = j1;
        keptOnOff = k1;
    }
}
