// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.utils;


// Referenced classes of package cn.sharesdk.framework.utils:
//            k

class l
    implements Appendable
{

    int a;
    char b[];
    final Appendable c;
    final k d;

    l(k k1, Appendable appendable)
    {
        d = k1;
        c = appendable;
        super();
        a = -1;
        b = new char[2];
    }

    private void a(char ac[], int i)
    {
        for (int j = 0; j < i; j++)
        {
            c.append(ac[j]);
        }

    }

    public Appendable append(char c1)
    {
        if (a != -1)
        {
            if (!Character.isLowSurrogate(c1))
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Expected low surrogate character but got '").append(c1).append("' with value ").append(c1).toString());
            }
            char ac[] = d.a(Character.toCodePoint((char)a, c1));
            if (ac != null)
            {
                a(ac, ac.length);
            } else
            {
                c.append((char)a);
                c.append(c1);
            }
            a = -1;
            return this;
        }
        if (Character.isHighSurrogate(c1))
        {
            a = c1;
            return this;
        }
        if (Character.isLowSurrogate(c1))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Unexpected low surrogate character '").append(c1).append("' with value ").append(c1).toString());
        }
        char ac1[] = d.a(c1);
        if (ac1 != null)
        {
            a(ac1, ac1.length);
            return this;
        } else
        {
            c.append(c1);
            return this;
        }
    }

    public Appendable append(CharSequence charsequence)
    {
        return append(charsequence, 0, charsequence.length());
    }

    public Appendable append(CharSequence charsequence, int i, int j)
    {
label0:
        {
label1:
            {
                {
                    if (i >= j)
                    {
                        break label1;
                    }
                    char ac1[];
                    int i1;
                    int j1;
                    if (a != -1)
                    {
                        i1 = i + 1;
                        char c1 = charsequence.charAt(i);
                        if (!Character.isLowSurrogate(c1))
                        {
                            throw new IllegalArgumentException((new StringBuilder()).append("Expected low surrogate character but got ").append(c1).toString());
                        }
                        char ac[] = d.a(Character.toCodePoint((char)a, c1));
                        if (ac != null)
                        {
                            a(ac, ac.length);
                            i++;
                        } else
                        {
                            c.append((char)a);
                        }
                        a = -1;
                    } else
                    {
                        i1 = i;
                    }
                }
                i1 = d.a(charsequence, i1, j);
                if (i1 > i)
                {
                    c.append(charsequence, i, i1);
                }
                if (i1 != j)
                {
                    break label0;
                }
            }
            return this;
        }
        i = k.b(charsequence, i1, j);
        if (i < 0)
        {
            a = -i;
            return this;
        }
        ac1 = d.a(i);
        if (ac1 != null)
        {
            a(ac1, ac1.length);
        } else
        {
            j1 = Character.toChars(i, b, 0);
            a(b, j1);
        }
        if (Character.isSupplementaryCodePoint(i))
        {
            i = 2;
        } else
        {
            i = 1;
        }
        i = i1 + i;
        i1 = i;
        if (false)
        {
        } else
        {
            break MISSING_BLOCK_LABEL_105;
        }
    }
}
