// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.op;

import com.veclink.healthy.database.dao.UptakeCalorieDao;
import com.veclink.healthy.database.entity.UptakeCalorie;
import java.util.List;

// Referenced classes of package com.veclink.healthy.database.op:
//            HealthyDBOperate

static final class val.dao
    implements Runnable
{

    final UptakeCalorieDao val$dao;
    final List val$uptakeCalorieList;

    public void run()
    {
        for (int i = 0; i < val$uptakeCalorieList.size(); i++)
        {
            UptakeCalorie uptakecalorie = (UptakeCalorie)val$uptakeCalorieList.get(i);
            val$dao.insertOrReplace(uptakecalorie);
        }

    }

    (List list, UptakeCalorieDao uptakecaloriedao)
    {
        val$uptakeCalorieList = list;
        val$dao = uptakecaloriedao;
        super();
    }
}
