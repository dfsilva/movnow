// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.network;

import java.io.ByteArrayOutputStream;

public class a extends ByteArrayOutputStream
{

    public a()
    {
    }

    public a(int i)
    {
        super(i);
    }

    public byte[] a()
    {
        return buf;
    }
}
