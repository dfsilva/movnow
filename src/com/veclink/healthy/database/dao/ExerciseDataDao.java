// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.veclink.healthy.database.entity.ExerciseData;
import de.greenrobot.dao.AbstractDao;
import de.greenrobot.dao.Property;
import de.greenrobot.dao.internal.DaoConfig;

// Referenced classes of package com.veclink.healthy.database.dao:
//            DaoSession

public class ExerciseDataDao extends AbstractDao
{
    public static class Properties
    {

        public static final Property CalorieConsume;
        public static final Property DateTime = new Property(0, java/lang/String, "DateTime", true, "DATE_TIME");
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


    public static final String TABLENAME = "EXERCISE_DATA";

    public ExerciseDataDao(DaoConfig daoconfig)
    {
        super(daoconfig);
    }

    public ExerciseDataDao(DaoConfig daoconfig, DaoSession daosession)
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
        sqlitedatabase.execSQL((new StringBuilder()).append("CREATE TABLE ").append(s).append("'EXERCISE_DATA' (").append("'DATE_TIME' TEXT PRIMARY KEY NOT NULL ,").append("'STEP_NUMBER' INTEGER NOT NULL ,").append("'MILEAGE' INTEGER NOT NULL ,").append("'CALORIE_CONSUME' INTEGER NOT NULL );").toString());
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
        sqlitedatabase.execSQL(stringbuilder.append(s).append("'EXERCISE_DATA'").toString());
    }

    protected void bindValues(SQLiteStatement sqlitestatement, ExerciseData exercisedata)
    {
        sqlitestatement.clearBindings();
        String s = exercisedata.getDateTime();
        if (s != null)
        {
            sqlitestatement.bindString(1, s);
        }
        sqlitestatement.bindLong(2, exercisedata.getStepNumber());
        sqlitestatement.bindLong(3, exercisedata.getMileage());
        sqlitestatement.bindLong(4, exercisedata.getCalorieConsume());
    }

    protected volatile void bindValues(SQLiteStatement sqlitestatement, Object obj)
    {
        bindValues(sqlitestatement, (ExerciseData)obj);
    }

    public volatile Object getKey(Object obj)
    {
        return getKey((ExerciseData)obj);
    }

    public String getKey(ExerciseData exercisedata)
    {
        if (exercisedata != null)
        {
            return exercisedata.getDateTime();
        } else
        {
            return null;
        }
    }

    protected boolean isEntityUpdateable()
    {
        return true;
    }

    public ExerciseData readEntity(Cursor cursor, int i)
    {
        String s;
        if (cursor.isNull(i + 0))
        {
            s = null;
        } else
        {
            s = cursor.getString(i + 0);
        }
        return new ExerciseData(s, cursor.getInt(i + 1), cursor.getInt(i + 2), cursor.getInt(i + 3));
    }

    public volatile Object readEntity(Cursor cursor, int i)
    {
        return readEntity(cursor, i);
    }

    public void readEntity(Cursor cursor, ExerciseData exercisedata, int i)
    {
        String s;
        if (cursor.isNull(i + 0))
        {
            s = null;
        } else
        {
            s = cursor.getString(i + 0);
        }
        exercisedata.setDateTime(s);
        exercisedata.setStepNumber(cursor.getInt(i + 1));
        exercisedata.setMileage(cursor.getInt(i + 2));
        exercisedata.setCalorieConsume(cursor.getInt(i + 3));
    }

    public volatile void readEntity(Cursor cursor, Object obj, int i)
    {
        readEntity(cursor, (ExerciseData)obj, i);
    }

    public volatile Object readKey(Cursor cursor, int i)
    {
        return readKey(cursor, i);
    }

    public String readKey(Cursor cursor, int i)
    {
        if (cursor.isNull(i + 0))
        {
            return null;
        } else
        {
            return cursor.getString(i + 0);
        }
    }

    protected volatile Object updateKeyAfterInsert(Object obj, long l)
    {
        return updateKeyAfterInsert((ExerciseData)obj, l);
    }

    protected String updateKeyAfterInsert(ExerciseData exercisedata, long l)
    {
        return exercisedata.getDateTime();
    }
}
