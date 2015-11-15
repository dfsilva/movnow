// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.network;


public class f
{

    public final String a;
    public final Object b;

    public f(String s, Object obj)
    {
        a = s;
        b = obj;
    }

    public String toString()
    {
        return (new StringBuilder()).append(a).append(" = ").append(b).toString();
    }
}
