// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.op;

import com.veclink.healthy.database.dao.SportDataDao;
import com.veclink.healthy.database.entity.SportData;
import java.util.List;

// Referenced classes of package com.veclink.healthy.database.op:
//            HealthyDBOperate

static final class val.dao
    implements Runnable
{

    final SportDataDao val$dao;
    final List val$originDataList;

    public void run()
    {
        for (int i = 0; i < val$originDataList.size(); i++)
        {
            SportData sportdata = (SportData)val$originDataList.get(i);
            val$dao.insertOrReplace(sportdata);
        }

    }

    (List list, SportDataDao sportdatadao)
    {
        val$originDataList = list;
        val$dao = sportdatadao;
        super();
    }
}
