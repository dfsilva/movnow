// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.model;


public class DuitangInfo
{

    private String albid;
    private int height;
    private String isrc;
    private String msg;

    public DuitangInfo()
    {
        albid = "";
        msg = "";
        isrc = "";
    }

    public String getAlbid()
    {
        return albid;
    }

    public int getHeight()
    {
        return height;
    }

    public String getIsrc()
    {
        return isrc;
    }

    public String getMsg()
    {
        return msg;
    }

    public int getWidth()
    {
        return 200;
    }

    public void setAlbid(String s)
    {
        albid = s;
    }

    public void setHeight(int i)
    {
        height = i;
    }

    public void setIsrc(String s)
    {
        isrc = s;
    }

    public void setMsg(String s)
    {
        msg = s;
    }
}
