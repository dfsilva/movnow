// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.op;

import com.veclink.healthy.database.dao.ExerciseAmountDao;
import com.veclink.healthy.database.entity.ExerciseAmount;
import java.util.List;

// Referenced classes of package com.veclink.healthy.database.op:
//            HealthyDBOperate

static final class val.dao
    implements Runnable
{

    final ExerciseAmountDao val$dao;
    final List val$exerciseAmountList;

    public void run()
    {
        for (int i = 0; i < val$exerciseAmountList.size(); i++)
        {
            ExerciseAmount exerciseamount = (ExerciseAmount)val$exerciseAmountList.get(i);
            val$dao.insertOrReplace(exerciseamount);
        }

    }

    (List list, ExerciseAmountDao exerciseamountdao)
    {
        val$exerciseAmountList = list;
        val$dao = exerciseamountdao;
        super();
    }
}
