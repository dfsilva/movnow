// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.facebookmessenger;


// Referenced classes of package cn.sharesdk.facebookmessenger:
//            f

private static class c
{

    private final String a;
    private final String b;
    private final String c;

    public String a()
    {
        return a;
    }

    public String b()
    {
        return b;
    }

    public String c()
    {
        return c;
    }

    public boolean equals(Object obj)
    {
        if (this != obj) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        if (obj == null)
        {
            return false;
        }
        if (getClass() != obj.getClass())
        {
            return false;
        }
        obj = (c)obj;
        if (c == null)
        {
            if (((c) (obj)).c != null)
            {
                return false;
            }
        } else
        if (!c.equals(((c) (obj)).c))
        {
            return false;
        }
        if (b == null)
        {
            if (((b) (obj)).b != null)
            {
                return false;
            }
        } else
        if (!b.equals(((b) (obj)).b))
        {
            return false;
        }
        if (a != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (((a) (obj)).a == null) goto _L1; else goto _L3
_L3:
        return false;
        if (a.equals(((a) (obj)).a)) goto _L1; else goto _L4
_L4:
        return false;
    }

    public int hashCode()
    {
        int k = 0;
        int i;
        int j;
        if (c == null)
        {
            i = 0;
        } else
        {
            i = c.hashCode();
        }
        if (b == null)
        {
            j = 0;
        } else
        {
            j = b.hashCode();
        }
        if (a != null)
        {
            k = a.hashCode();
        }
        return (j + (i + 31) * 31) * 31 + k;
    }

    public (String s, String s1, String s2)
    {
        a = s;
        b = s1;
        c = s2;
    }
}
