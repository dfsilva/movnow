// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package de.greenrobot.dao.query;

import de.greenrobot.dao.AbstractDao;

// Referenced classes of package de.greenrobot.dao.query:
//            CountQuery

private static final class <init> extends ThreadLocal
{

    private final AbstractDao dao;
    private final String initialValues[];
    private final String sql;

    protected CountQuery initialValue()
    {
        return new CountQuery(this, dao, sql, (String[])initialValues.clone(), null);
    }

    protected volatile Object initialValue()
    {
        return initialValue();
    }


    private _cls9(AbstractDao abstractdao, String s, String as[])
    {
        dao = abstractdao;
        sql = s;
        initialValues = as;
    }

    initialValues(AbstractDao abstractdao, String s, String as[], initialValues initialvalues)
    {
        this(abstractdao, s, as);
    }
}
