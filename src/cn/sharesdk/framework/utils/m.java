// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.utils;


final class m extends ThreadLocal
{

    m()
    {
    }

    protected char[] a()
    {
        return new char[1024];
    }

    protected Object initialValue()
    {
        return a();
    }
}
