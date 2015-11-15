// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.Context;
import android.os.AsyncTask;
import com.veclink.waterfall.adapter.StaggeredAdapter;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            ManagerCaloriesActivity

private class mContext extends AsyncTask
{

    private Context mContext;
    final ManagerCaloriesActivity this$0;

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((String[])aobj);
    }

    protected transient List doInBackground(String as[])
    {
        try
        {
            as = ManagerCaloriesActivity.access$100(ManagerCaloriesActivity.this);
        }
        // Misplaced declaration of an exception variable
        catch (String as[])
        {
            as.printStackTrace();
            return null;
        }
        return as;
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((List)obj);
    }

    protected void onPostExecute(List list)
    {
        ManagerCaloriesActivity.access$200(ManagerCaloriesActivity.this).addItemTop(list);
        ManagerCaloriesActivity.access$200(ManagerCaloriesActivity.this).notifyDataSetChanged();
    }

    protected void onPreExecute()
    {
    }

    public (Context context)
    {
        this$0 = ManagerCaloriesActivity.this;
        super();
        mContext = context;
    }
}
