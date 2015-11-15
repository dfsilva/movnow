// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package hirondelle.date4j;

import java.lang.reflect.Array;
import java.util.logging.Logger;

final class Util
{

    private static final String SINGLE_QUOTE = "'";

    Util()
    {
    }

    private static void checkObjectIsArray(Object obj)
    {
        if (!obj.getClass().isArray())
        {
            throw new IllegalArgumentException("Object is not an array.");
        } else
        {
            return;
        }
    }

    static String getArrayAsString(Object obj)
    {
        if (obj == null)
        {
            return "null";
        }
        checkObjectIsArray(obj);
        StringBuilder stringbuilder = new StringBuilder("[");
        int j = Array.getLength(obj);
        int i = 0;
        while (i < j) 
        {
            Object obj1 = Array.get(obj, i);
            if (isNonNullArray(obj1))
            {
                stringbuilder.append(getArrayAsString(obj1));
            } else
            {
                stringbuilder.append(obj1);
            }
            if (!isLastItem(i, j))
            {
                stringbuilder.append(", ");
            }
            i++;
        }
        stringbuilder.append("]");
        return stringbuilder.toString();
    }

    static Logger getLogger(Class class1)
    {
        return Logger.getLogger(class1.getPackage().getName());
    }

    private static boolean isLastItem(int i, int j)
    {
        return i == j - 1;
    }

    private static boolean isNonNullArray(Object obj)
    {
        return obj != null && obj.getClass().isArray();
    }

    static String quote(Object obj)
    {
        return (new StringBuilder()).append("'").append(String.valueOf(obj)).append("'").toString();
    }

    static boolean textHasContent(String s)
    {
        return s != null && s.trim().length() > 0;
    }
}
