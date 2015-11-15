// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.business.http.session;

import android.content.Context;
import android.content.Intent;
import com.google.gson.Gson;
import com.loopj.android.http.RequestParams;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.healthy.business.http.server.ServerUrl;
import com.veclink.movnow_q2.activity.MainActivity;
import com.veclink.movnow_q2.network.base.BaseAdapterSession;
import com.veclink.movnow_q2.util.DebugUtil;
import com.veclink.movnow_q2.util.ToastUtil;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import org.json.JSONObject;

public class HealthyCommentSession extends BaseAdapterSession
{

    private static final long serialVersionUID = 1L;
    protected String email;
    private Context mContext;
    protected String newPassword;
    protected String oldPassword;
    protected String password;
    protected String uid;
    protected String username;

    protected HealthyCommentSession(Class class1, Context context)
    {
        super(class1);
        mContext = context;
    }

    public String createTimeStamp()
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        simpledateformat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpledateformat.format(new Date());
    }

    public RequestParams getRequestParams()
    {
        return null;
    }

    public String getUrl()
    {
        return ServerUrl.BASEURL;
    }

    public boolean handlerResponse(Object obj)
    {
        return true;
    }

    public void onSuccess(String s)
    {
        String s1 = s;
        if (!(new JSONObject(s)).getString("error").equals("27"))
        {
            break MISSING_BLOCK_LABEL_78;
        }
        s1 = s;
        ToastUtil.showShortToast(mContext, mContext.getString(0x7f0c0191));
        s1 = s;
        HealthyAccountHolder.setSessionId(mContext, "");
        s1 = s;
        Object obj = new Intent(mContext, com/veclink/movnow_q2/activity/MainActivity);
        s1 = s;
        mContext.startActivity(((Intent) (obj)));
        s1 = s;
        s = onSuccessBefore(s);
        s1 = s;
        DebugUtil.logv("response:", s);
        s1 = s;
        obj = onSuccessDoMore(s, (new Gson()).fromJson(s, mRespClazz));
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
        break MISSING_BLOCK_LABEL_158;
_L2:
        s1 = s;
        postNetErrorResult(mRespClazz);
          goto _L3
        (new StringBuilder()).append("BaseAdapterSession:").append(getUrl()).append("|").append(getRequestParams()).append("|").append(s1).toString();
        return;
    }
}
