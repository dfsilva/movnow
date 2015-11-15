// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bean;


public abstract class BaseRemindParam
{

    public static final byte ALERTREMIND = 3;
    public static final int CLOSE_REMIND = 0;
    public static final byte DRINKREMIND = 1;
    public static final int OPEN_REMIND = 1;
    public static final int QUERY_REMIND = 1;
    public static final int SET_REMIND = 0;
    public static final byte SITTLINGREMIND = 2;
    public int openflag;
    protected byte paramArray[];
    public int querysetflag;
    public byte remindType;

    public BaseRemindParam()
    {
        openflag = 1;
        querysetflag = 0;
        paramArray = new byte[11];
    }

    public abstract byte[] toByteArrayParam();
}
