// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.network.base;

import android.util.Log;
import com.google.gson.Gson;
import com.loopj.android.http.RequestParams;
import de.greenrobot.event.EventBus;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

// Referenced classes of package com.veclink.movnow_q2.network.base:
//            BaseSession

public abstract class BaseAdapterSession extends BaseSession
{

    public static final String FORMAT_ERROR = "-1001";
    public static final String NWT_ERROR = "-1000";
    private static final long serialVersionUID = 1L;
    protected final Class mRespClazz;
    private EventBus specifiedEventBus;

    protected BaseAdapterSession(Class class1)
    {
        specifiedEventBus = null;
        mRespClazz = class1;
    }

    public String createTimeStamp()
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        simpledateformat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpledateformat.format(new Date());
    }

    public boolean getSyncParam()
    {
        return false;
    }

    public void onFailure(Throwable throwable)
    {
        postNetErrorResult(mRespClazz);
    }

    public void onSuccess(String s)
    {
        String s1 = s;
        s = onSuccessBefore(s);
        s1 = s;
        Log.d("BaseAdapterSession", (new StringBuilder()).append("onSuccess:").append(s).toString());
        s1 = s;
        Object obj = onSuccessDoMore(s, (new Gson()).fromJson(s, mRespClazz));
        if (obj == null) goto _L2; else goto _L1
_L1:
        s1 = s;
        postEvent(obj);
_L3:
        s1 = s;
        try
        {
            onSuccessAfter(obj);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            postNetErrorResult(mRespClazz);
        }
        break MISSING_BLOCK_LABEL_99;
_L2:
        s1 = s;
        postNetErrorResult(mRespClazz);
          goto _L3
        (new StringBuilder()).append("BaseAdapterSession:").append(getUrl()).append("|").append(getRequestParams()).append("|").append(s1).toString();
        return;
    }

    public void onSuccessAfter(Object obj)
    {
    }

    public String onSuccessBefore(String s)
    {
        return s;
    }

    public Object onSuccessDoMore(String s, Object obj)
    {
        return obj;
    }

    protected void postEvent(Object obj)
    {
        if (specifiedEventBus != null)
        {
            specifiedEventBus.post(obj);
            return;
        } else
        {
            EventBus.getDefault().post(obj);
            return;
        }
    }

    public void postNetErrorResult(Class class1)
    {
        Object obj;
        Method method;
        try
        {
            obj = class1.newInstance();
            method = class1.getMethod("setError", new Class[] {
                java/lang/String
            });
        }
        // Misplaced declaration of an exception variable
        catch (Class class1)
        {
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Class class1)
        {
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Class class1)
        {
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Class class1)
        {
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Class class1)
        {
            return;
        }
        if (method == null) goto _L2; else goto _L1
_L1:
        method.invoke(obj, new Object[] {
            "-1000"
        });
_L4:
        postEvent(obj);
        return;
_L2:
        class1 = class1.getField("error");
        if (class1 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        class1.set(obj, "-1000");
        continue; /* Loop/switch isn't completed */
        class1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void putParamIfNotEmpty(RequestParams requestparams, String s, String s1)
    {
        if (requestparams != null && s1 != null && !s1.trim().equals("") && s != null && !s.trim().equals(""))
        {
            requestparams.put(s, s1);
        }
    }

    public void setSpecifiedEventBus(EventBus eventbus)
    {
        specifiedEventBus = eventbus;
    }
}
