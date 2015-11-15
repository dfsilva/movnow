// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.fragment;

import android.os.Handler;
import android.os.Message;
import com.veclink.healthy.database.entity.SportData;
import com.veclink.healthy.database.op.HealthyDBOperate;
import com.veclink.healthy.database.op.HealthyDBOprateWalkData;
import com.veclink.movnow_q2.activity.MovnowTwoApplication;
import com.veclink.movnow_q2.util.DateTimeUtil;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.fragment:
//            WalkFragment

class this._cls0
    implements Runnable
{

    final WalkFragment this$0;

    public void run()
    {
        int j = 0;
        int i = 0;
        Object obj = DateTimeUtil.getDateString(0);
        Object obj1 = HealthyDBOperate.loadOriginSportDataByDate(MovnowTwoApplication.application, ((String) (obj)));
        if (obj1 != null)
        {
            obj1 = ((List) (obj1)).iterator();
            do
            {
                j = i;
                if (!((Iterator) (obj1)).hasNext())
                {
                    break;
                }
                i += Integer.parseInt(((SportData)((Iterator) (obj1)).next()).getSportStep());
            } while (true);
        }
        WalkFragment.access$1300(WalkFragment.this).obtainMessage(0, Integer.valueOf(j)).sendToTarget();
        obj = HealthyDBOprateWalkData.loadSportDataByDate(MovnowTwoApplication.application, ((String) (obj)));
        if (obj != null)
        {
            WalkFragment.access$1300(WalkFragment.this).obtainMessage(1, obj).sendToTarget();
        }
    }

    eWalkData()
    {
        this$0 = WalkFragment.this;
        super();
    }
}
