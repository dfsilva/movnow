// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package hirondelle.date4j;

import java.lang.reflect.Array;

// Referenced classes of package hirondelle.date4j:
//            ToStringUtil

final class ModelUtil
{
    static final class NullsGo extends Enum
    {

        private static final NullsGo $VALUES[];
        public static final NullsGo FIRST;
        public static final NullsGo LAST;

        public static NullsGo valueOf(String s)
        {
            return (NullsGo)Enum.valueOf(hirondelle/date4j/ModelUtil$NullsGo, s);
        }

        public static final NullsGo[] values()
        {
            return (NullsGo[])$VALUES.clone();
        }

        static 
        {
            FIRST = new NullsGo("FIRST", 0);
            LAST = new NullsGo("LAST", 1);
            $VALUES = (new NullsGo[] {
                FIRST, LAST
            });
        }

        private NullsGo(String s, int i)
        {
            super(s, i);
        }
    }


    static final int HASH_SEED = 23;
    private static final int fODD_PRIME_NUMBER = 37;

    private ModelUtil()
    {
    }

    static boolean areEqual(char c, char c1)
    {
        return c == c1;
    }

    static boolean areEqual(double d, double d1)
    {
        return Double.doubleToLongBits(d) == Double.doubleToLongBits(d1);
    }

    static boolean areEqual(float f, float f1)
    {
        return Float.floatToIntBits(f) == Float.floatToIntBits(f1);
    }

    static boolean areEqual(long l, long l1)
    {
        return l == l1;
    }

    static boolean areEqual(Object obj, Object obj1)
    {
        if (isArray(obj) || isArray(obj1))
        {
            throw new IllegalArgumentException("This method does not currently support arrays.");
        }
        if (obj == null)
        {
            return obj1 == null;
        } else
        {
            return obj.equals(obj1);
        }
    }

    static boolean areEqual(boolean flag, boolean flag1)
    {
        return flag == flag1;
    }

    static int comparePossiblyNull(Comparable comparable, Comparable comparable1, NullsGo nullsgo)
    {
        int j = 0;
        if (comparable == null || comparable1 == null) goto _L2; else goto _L1
_L1:
        j = comparable.compareTo(comparable1);
_L4:
        return j;
_L2:
        int i;
        if (comparable != null || comparable1 != null)
        {
            break; /* Loop/switch isn't completed */
        }
        i = j;
_L5:
        j = i;
        if (NullsGo.LAST == nullsgo)
        {
            return i * -1;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (comparable == null && comparable1 != null)
        {
            i = -1;
        } else
        {
            i = j;
            if (comparable != null)
            {
                i = j;
                if (comparable1 == null)
                {
                    i = 1;
                }
            }
        }
          goto _L5
        if (true) goto _L4; else goto _L6
_L6:
    }

    static boolean equalsFor(Object aobj[], Object aobj1[])
    {
        if (aobj.length != aobj1.length)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Array lengths do not match. 'This' length is ").append(aobj.length).append(", while 'That' length is ").append(aobj1.length).append(".").toString());
        }
        for (int i = 0; i < aobj.length; i++)
        {
            if (!areEqual(aobj[i], aobj1[i]))
            {
                return false;
            }
        }

        return true;
    }

    private static int firstTerm(int i)
    {
        return i * 37;
    }

    static int hash(int i, char c)
    {
        return firstTerm(i) + c;
    }

    static int hash(int i, double d)
    {
        return hash(i, Double.doubleToLongBits(d));
    }

    static int hash(int i, float f)
    {
        return hash(i, Float.floatToIntBits(f));
    }

    static int hash(int i, int j)
    {
        return firstTerm(i) + j;
    }

    static int hash(int i, long l)
    {
        return firstTerm(i) + (int)(l >>> 32 ^ l);
    }

    static int hash(int i, Object obj)
    {
        if (obj != null) goto _L2; else goto _L1
_L1:
        int k = hash(i, 0);
_L4:
        return k;
_L2:
        if (!isArray(obj))
        {
            return hash(i, obj.hashCode());
        }
        int l = Array.getLength(obj);
        int j = 0;
        do
        {
            k = i;
            if (j >= l)
            {
                continue;
            }
            i = hash(i, Array.get(obj, j));
            j++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    static int hash(int i, boolean flag)
    {
        int j = firstTerm(i);
        if (flag)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        return i + j;
    }

    static final transient int hashCodeFor(Object aobj[])
    {
        int j = 23;
        int k = aobj.length;
        for (int i = 0; i < k; i++)
        {
            j = hash(j, aobj[i]);
        }

        return j;
    }

    private static boolean isArray(Object obj)
    {
        return obj != null && obj.getClass().isArray();
    }

    static Boolean quickEquals(Object obj, Object obj1)
    {
        Boolean boolean1 = null;
        if (obj == obj1)
        {
            boolean1 = Boolean.TRUE;
        } else
        if (!obj.getClass().isInstance(obj1))
        {
            return Boolean.FALSE;
        }
        return boolean1;
    }

    static String toStringAvoidCyclicRefs(Object obj, Class class1, String s)
    {
        return ToStringUtil.getTextAvoidCyclicRefs(obj, class1, s);
    }

    static String toStringFor(Object obj)
    {
        return ToStringUtil.getText(obj);
    }
}
