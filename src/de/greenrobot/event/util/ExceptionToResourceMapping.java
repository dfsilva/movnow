// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package de.greenrobot.event.util;

import android.util.Log;
import de.greenrobot.event.EventBus;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class ExceptionToResourceMapping
{

    public final Map throwableToMsgIdMap = new HashMap();

    public ExceptionToResourceMapping()
    {
    }

    public ExceptionToResourceMapping addMapping(Class class1, int i)
    {
        throwableToMsgIdMap.put(class1, Integer.valueOf(i));
        return this;
    }

    public Integer mapThrowable(Throwable throwable)
    {
        Throwable throwable1 = throwable;
        int i = 20;
        Object obj;
        do
        {
            obj = mapThrowableFlat(throwable1);
            if (obj != null)
            {
                return ((Integer) (obj));
            }
            obj = throwable1.getCause();
            i--;
            if (i <= 0 || obj == throwable)
            {
                break;
            }
            throwable1 = ((Throwable) (obj));
        } while (obj != null);
        Log.d(EventBus.TAG, (new StringBuilder("No specific message ressource ID found for ")).append(throwable).toString());
        return null;
    }

    protected Integer mapThrowableFlat(Throwable throwable)
    {
        Object obj;
        Class class2;
        class2 = throwable.getClass();
        throwable = (Integer)throwableToMsgIdMap.get(class2);
        obj = throwable;
        if (throwable != null) goto _L2; else goto _L1
_L1:
        Iterator iterator;
        obj = null;
        iterator = throwableToMsgIdMap.entrySet().iterator();
_L6:
        if (iterator.hasNext()) goto _L4; else goto _L3
_L3:
        obj = throwable;
_L2:
        return ((Integer) (obj));
_L4:
        java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
        Class class1 = (Class)entry.getKey();
        if (class1.isAssignableFrom(class2) && (obj == null || ((Class) (obj)).isAssignableFrom(class1)))
        {
            obj = class1;
            throwable = (Integer)entry.getValue();
        }
        if (true) goto _L6; else goto _L5
_L5:
    }
}
