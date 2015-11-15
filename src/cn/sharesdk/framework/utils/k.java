// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.utils;


// Referenced classes of package cn.sharesdk.framework.utils:
//            Escaper, m, i, l

public abstract class k
    implements Escaper
{

    private static final ThreadLocal a = new m();

    public k()
    {
    }

    private static final char[] a(char ac[], int j, int i1)
    {
        char ac1[] = new char[i1];
        if (j > 0)
        {
            System.arraycopy(ac, 0, ac1, 0, j);
        }
        return ac1;
    }

    protected static final int b(CharSequence charsequence, int j, int i1)
    {
        if (j < i1)
        {
            int j1 = j + 1;
            char c = charsequence.charAt(j);
            if (c < '\uD800' || c > '\uDFFF')
            {
                return c;
            }
            if (c <= '\uDBFF')
            {
                if (j1 == i1)
                {
                    return -c;
                }
                char c1 = charsequence.charAt(j1);
                if (Character.isLowSurrogate(c1))
                {
                    return Character.toCodePoint(c, c1);
                } else
                {
                    throw new IllegalArgumentException((new StringBuilder()).append("Expected low surrogate but got char '").append(c1).append("' with value ").append(c1).append(" at index ").append(j1).toString());
                }
            } else
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Unexpected low surrogate character '").append(c).append("' with value ").append(c).append(" at index ").append(j1 - 1).toString());
            }
        } else
        {
            throw new IndexOutOfBoundsException("Index exceeds specified range");
        }
    }

    protected int a(CharSequence charsequence, int j, int i1)
    {
        do
        {
            int j1;
label0:
            {
                if (j < i1)
                {
                    j1 = b(charsequence, j, i1);
                    if (j1 >= 0 && a(j1) == null)
                    {
                        break label0;
                    }
                }
                return j;
            }
            if (Character.isSupplementaryCodePoint(j1))
            {
                j1 = 2;
            } else
            {
                j1 = 1;
            }
            j += j1;
        } while (true);
    }

    protected final String a(String s, int j)
    {
        int j2 = s.length();
        char ac[] = (char[])a.get();
        int i2 = 0;
        int i1 = 0;
        int l1 = j;
        j = i1;
        while (l1 < j2) 
        {
            int k2 = b(s, l1, j2);
            if (k2 < 0)
            {
                throw new IllegalArgumentException("Trailing high surrogate at end of input");
            }
            char ac4[] = a(k2);
            i1 = j;
            char ac3[] = ac;
            if (ac4 != null)
            {
                i1 = l1 - i2;
                int j1 = j + i1 + ac4.length;
                char ac1[] = ac;
                if (ac.length < j1)
                {
                    ac1 = a(ac, j, j1 + (j2 - l1) + 32);
                }
                j1 = j;
                if (i1 > 0)
                {
                    s.getChars(i2, l1, ac1, j);
                    j1 = j + i1;
                }
                i1 = j1;
                ac3 = ac1;
                if (ac4.length > 0)
                {
                    System.arraycopy(ac4, 0, ac1, j1, ac4.length);
                    i1 = j1 + ac4.length;
                    ac3 = ac1;
                }
            }
            if (Character.isSupplementaryCodePoint(k2))
            {
                j = 2;
            } else
            {
                j = 1;
            }
            i2 = j + l1;
            l1 = a(((CharSequence) (s)), i2, j2);
            j = i1;
            ac = ac3;
        }
        int k1 = j2 - i2;
        i1 = j;
        char ac2[] = ac;
        if (k1 > 0)
        {
            i1 = k1 + j;
            ac2 = ac;
            if (ac.length < i1)
            {
                ac2 = a(ac, j, i1);
            }
            s.getChars(i2, j2, ac2, j);
        }
        return new String(ac2, 0, i1);
    }

    protected abstract char[] a(int j);

    public Appendable escape(Appendable appendable)
    {
        i.a(appendable);
        return new l(this, appendable);
    }

    public String escape(String s)
    {
        int j = s.length();
        int i1 = a(s, 0, j);
        if (i1 == j)
        {
            return s;
        } else
        {
            return a(s, i1);
        }
    }

}
