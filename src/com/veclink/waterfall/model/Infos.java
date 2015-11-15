// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.model;

import java.util.List;

public class Infos
{

    private List newsInfos;
    private String newsLast;
    private int type;

    public Infos()
    {
        newsLast = "0";
        type = 0;
    }

    public List getNewsInfos()
    {
        return newsInfos;
    }

    public String getNewsLast()
    {
        return newsLast;
    }

    public int getType()
    {
        return type;
    }

    public void setNewsInfos(List list)
    {
        newsInfos = list;
    }

    public void setNewsLast(String s)
    {
        newsLast = s;
    }

    public void setType(int i)
    {
        type = i;
    }
}
