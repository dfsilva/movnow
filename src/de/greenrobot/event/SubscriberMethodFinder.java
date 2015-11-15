// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package de.greenrobot.event;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package de.greenrobot.event:
//            EventBusException, ThreadMode, SubscriberMethod

class SubscriberMethodFinder
{

    private static final Map methodCache = new HashMap();
    private static final Map skipMethodNameVerificationForClasses = new ConcurrentHashMap();

    SubscriberMethodFinder()
    {
    }

    static void clearCaches()
    {
        methodCache.clear();
    }

    public static void clearSkipMethodNameVerifications()
    {
        skipMethodNameVerificationForClasses.clear();
    }

    static void skipMethodNameVerificationFor(Class class1)
    {
        if (!methodCache.isEmpty())
        {
            throw new IllegalStateException("This method must be called before registering anything");
        } else
        {
            skipMethodNameVerificationForClasses.put(class1, class1);
            return;
        }
    }

    List findSubscriberMethods(Class class1, String s)
    {
        String s2;
        s2 = (new StringBuilder(String.valueOf(class1.getName()))).append('.').append(s).toString();
        List list;
        synchronized (methodCache)
        {
            list = (List)methodCache.get(s2);
        }
        if (list != null)
        {
            return list;
        }
        break MISSING_BLOCK_LABEL_64;
        class1;
        map;
        JVM INSTR monitorexit ;
        throw class1;
        Class class2;
        ArrayList arraylist;
        HashSet hashset;
        StringBuilder stringbuilder;
        arraylist = new ArrayList();
        class2 = class1;
        hashset = new HashSet();
        stringbuilder = new StringBuilder();
_L6:
        Method amethod[];
        int i;
        int j;
        String s1;
        while (class2 == null || ((s1 = class2.getName()).startsWith("java.") || s1.startsWith("javax.") || s1.startsWith("android."))) 
        {
            if (arraylist.isEmpty())
            {
                throw new EventBusException((new StringBuilder("Subscriber ")).append(class1).append(" has no methods called ").append(s).toString());
            }
            break MISSING_BLOCK_LABEL_429;
        }
        amethod = class2.getDeclaredMethods();
        j = amethod.length;
        i = 0;
_L2:
        Method method;
        if (i >= j)
        {
            class2 = class2.getSuperclass();
            continue; /* Loop/switch isn't completed */
        }
        method = amethod[i];
        String s3 = method.getName();
        if (s3.startsWith(s))
        {
            Class aclass[] = method.getParameterTypes();
            if (aclass.length == 1)
            {
                Object obj = s3.substring(s.length());
                Class class3;
                if (((String) (obj)).length() == 0)
                {
                    obj = ThreadMode.PostThread;
                } else
                if (((String) (obj)).equals("MainThread"))
                {
                    obj = ThreadMode.MainThread;
                } else
                if (((String) (obj)).equals("BackgroundThread"))
                {
                    obj = ThreadMode.BackgroundThread;
                } else
                {
                    if (!((String) (obj)).equals("Async"))
                    {
                        continue; /* Loop/switch isn't completed */
                    }
                    obj = ThreadMode.Async;
                }
                class3 = aclass[0];
                stringbuilder.setLength(0);
                stringbuilder.append(s3);
                stringbuilder.append('>').append(class3.getName());
                if (hashset.add(stringbuilder.toString()))
                {
                    arraylist.add(new SubscriberMethod(method, ((ThreadMode) (obj)), class3));
                }
            }
        }
_L4:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        if (skipMethodNameVerificationForClasses.containsKey(class2)) goto _L4; else goto _L3
_L3:
        throw new EventBusException((new StringBuilder("Illegal onEvent method, check for typos: ")).append(method).toString());
        synchronized (methodCache)
        {
            methodCache.put(s2, arraylist);
        }
        return arraylist;
        s;
        class1;
        JVM INSTR monitorexit ;
        throw s;
        if (true) goto _L6; else goto _L5
_L5:
    }

}
