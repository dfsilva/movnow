// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.veclink.healthy.database.entity.ExerciseAmount;
import de.greenrobot.dao.AbstractDao;
import de.greenrobot.dao.Property;
import de.greenrobot.dao.internal.DaoConfig;

// Referenced classes of package com.veclink.healthy.database.dao:
//            DaoSession

public class ExerciseAmountDao extends AbstractDao
{
    public static class Properties
    {

        public static final Property CalorieConsume;
        public static final Property DateTime = new Property(4, java/lang/String, "DateTime", false, "DATE_TIME");
        public static final Property Id = new Property(0, java/lang/Long, "id", true, "_id");
        public static final Property Mileage;
        public static final Property StepNumber;

        static 
        {
            StepNumber = new Property(1, Integer.TYPE, "StepNumber", false, "STEP_NUMBER");
            Mileage = new Property(2, Integer.TYPE, "Mileage", false, "MILEAGE");
            CalorieConsume = new Property(3, Integer.TYPE, "CalorieConsume", false, "CALORIE_CONSUME");
        }

        public Properties()
        {
        }
    }


    public static final String TABLENAME = "EXERCISE_AMOUNT";

    public ExerciseAmountDao(DaoConfig daoconfig)
    {
        super(daoconfig);
    }

    public ExerciseAmountDao(DaoConfig daoconfig, DaoSession daosession)
    {
        super(daoconfig, daosession);
    }

    public static void createTable(SQLiteDatabase sqlitedatabase, boolean flag)
    {
        String s;
        if (flag)
        {
            s = "IF NOT EXISTS ";
        } else
        {
            s = "";
        }
        sqlitedatabase.execSQL((new StringBuilder()).append("CREATE TABLE ").append(s).append("'EXERCISE_AMOUNT' (").append("'_id' INTEGER PRIMARY KEY ,").append("'STEP_NUMBER' INTEGER NOT NULL ,").append("'MILEAGE' INTEGER NOT NULL ,").append("'CALORIE_CONSUME' INTEGER NOT NULL ,").append("'DATE_TIME' TEXT NOT NULL );").toString());
    }

    public static void dropTable(SQLiteDatabase sqlitedatabase, boolean flag)
    {
        StringBuilder stringbuilder = (new StringBuilder()).append("DROP TABLE ");
        String s;
        if (flag)
        {
            s = "IF EXISTS ";
        } else
        {
            s = "";
        }
        sqlitedatabase.execSQL(stringbuilder.append(s).append("'EXERCISE_AMOUNT'").toString());
    }

    protected void bindValues(SQLiteStatement sqlitestatement, ExerciseAmount exerciseamount)
    {
        sqlitestatement.clearBindings();
        Long long1 = exerciseamount.getId();
        if (long1 != null)
        {
            sqlitestatement.bindLong(1, long1.longValue());
        }
        sqlitestatement.bindLong(2, exerciseamount.getStepNumber());
        sqlitestatement.bindLong(3, exerciseamount.getMileage());
        sqlitestatement.bindLong(4, exerciseamount.getCalorieConsume());
        sqlitestatement.bindString(5, exerciseamount.getDateTime());
    }

    protected volatile void bindValues(SQLiteStatement sqlitestatement, Object obj)
    {
        bindValues(sqlitestatement, (ExerciseAmount)obj);
    }

    public Long getKey(ExerciseAmount exerciseamount)
    {
        if (exerciseamount != null)
        {
            return exerciseamount.getId();
        } else
        {
            return null;
        }
    }

    public volatile Object getKey(Object obj)
    {
        return getKey((ExerciseAmount)obj);
    }

    protected boolean isEntityUpdateable()
    {
        return true;
    }

    public ExerciseAmount readEntity(Cursor cursor, int i)
    {
        Long long1;
        if (cursor.isNull(i + 0))
        {
            long1 = null;
        } else
        {
            long1 = Long.valueOf(cursor.getLong(i + 0));
        }
        return new ExerciseAmount(long1, cursor.getInt(i + 1), cursor.getInt(i + 2), cursor.getInt(i + 3), cursor.getString(i + 4));
    }

    public volatile Object readEntity(Cursor cursor, int i)
    {
        return readEntity(cursor, i);
    }

    public void readEntity(Cursor cursor, ExerciseAmount exerciseamount, int i)
    {
        Long long1;
        if (cursor.isNull(i + 0))
        {
            long1 = null;
        } else
        {
            long1 = Long.valueOf(cursor.getLong(i + 0));
        }
        exerciseamount.setId(long1);
        exerciseamount.setStepNumber(cursor.getInt(i + 1));
        exerciseamount.setMileage(cursor.getInt(i + 2));
        exerciseamount.setCalorieConsume(cursor.getInt(i + 3));
        exerciseamount.setDateTime(cursor.getString(i + 4));
    }

    public volatile void readEntity(Cursor cursor, Object obj, int i)
    {
        readEntity(cursor, (ExerciseAmount)obj, i);
    }

    public Long readKey(Cursor cursor, int i)
    {
        if (cursor.isNull(i + 0))
        {
            return null;
        } else
        {
            return Long.valueOf(cursor.getLong(i + 0));
        }
    }

    public volatile Object readKey(Cursor cursor, int i)
    {
        return readKey(cursor, i);
    }

    protected Long updateKeyAfterInsert(ExerciseAmount exerciseamount, long l)
    {
        exerciseamount.setId(Long.valueOf(l));
        return Long.valueOf(l);
    }

    protected volatile Object updateKeyAfterInsert(Object obj, long l)
    {
        return updateKeyAfterInsert((ExerciseAmount)obj, l);
    }
}
