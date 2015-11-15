// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.op;

import com.veclink.healthy.database.dao.SleepQualityDao;
import com.veclink.healthy.database.entity.SleepQuality;
import java.util.List;

// Referenced classes of package com.veclink.healthy.database.op:
//            HealthyDBOperate

static final class val.dao
    implements Runnable
{

    final SleepQualityDao val$dao;
    final List val$sleepQualityList;

    public void run()
    {
        for (int i = 0; i < val$sleepQualityList.size(); i++)
        {
            SleepQuality sleepquality = (SleepQuality)val$sleepQualityList.get(i);
            val$dao.insertOrReplace(sleepquality);
        }

    }

    (List list, SleepQualityDao sleepqualitydao)
    {
        val$sleepQualityList = list;
        val$dao = sleepqualitydao;
        super();
    }
}
