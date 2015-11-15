// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.veclink.healthy.database.entity.UptakeCalorie;
import de.greenrobot.dao.AbstractDao;
import de.greenrobot.dao.Property;
import de.greenrobot.dao.internal.DaoConfig;

// Referenced classes of package com.veclink.healthy.database.dao:
//            DaoSession

public class UptakeCalorieDao extends AbstractDao
{
    public static class Properties
    {

        public static final Property CalorieContent;
        public static final Property Counts;
        public static final Property DateTime = new Property(5, java/lang/String, "DateTime", false, "DATE_TIME");
        public static final Property FoodName = new Property(2, java/lang/String, "FoodName", false, "FOOD_NAME");
        public static final Property Id = new Property(0, java/lang/Long, "id", true, "_id");
        public static final Property ImgUrl = new Property(6, java/lang/String, "ImgUrl", false, "IMG_URL");
        public static final Property UserId = new Property(1, java/lang/String, "userId", false, "USER_ID");

        static 
        {
            CalorieContent = new Property(3, Integer.TYPE, "CalorieContent", false, "CALORIE_CONTENT");
            Counts = new Property(4, Float.TYPE, "Counts", false, "COUNTS");
        }

        public Properties()
        {
        }
    }


    public static final String TABLENAME = "UPTAKE_CALORIE";

    public UptakeCalorieDao(DaoConfig daoconfig)
    {
        super(daoconfig);
    }

    public UptakeCalorieDao(DaoConfig daoconfig, DaoSession daosession)
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
        sqlitedatabase.execSQL((new StringBuilder()).append("CREATE TABLE ").append(s).append("'UPTAKE_CALORIE' (").append("'_id' INTEGER PRIMARY KEY ,").append("'USER_ID' TEXT NOT NULL ,").append("'FOOD_NAME' TEXT NOT NULL ,").append("'CALORIE_CONTENT' INTEGER NOT NULL ,").append("'COUNTS' REAL NOT NULL ,").append("'DATE_TIME' TEXT NOT NULL ,").append("'IMG_URL' TEXT NOT NULL );").toString());
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
        sqlitedatabase.execSQL(stringbuilder.append(s).append("'UPTAKE_CALORIE'").toString());
    }

    protected void bindValues(SQLiteStatement sqlitestatement, UptakeCalorie uptakecalorie)
    {
        sqlitestatement.clearBindings();
        Long long1 = uptakecalorie.getId();
        if (long1 != null)
        {
            sqlitestatement.bindLong(1, long1.longValue());
        }
        sqlitestatement.bindString(2, uptakecalorie.getUserId());
        sqlitestatement.bindString(3, uptakecalorie.getFoodName());
        sqlitestatement.bindLong(4, uptakecalorie.getCalorieContent());
        sqlitestatement.bindDouble(5, uptakecalorie.getCounts());
        sqlitestatement.bindString(6, uptakecalorie.getDateTime());
        sqlitestatement.bindString(7, uptakecalorie.getImgUrl());
    }

    protected volatile void bindValues(SQLiteStatement sqlitestatement, Object obj)
    {
        bindValues(sqlitestatement, (UptakeCalorie)obj);
    }

    public Long getKey(UptakeCalorie uptakecalorie)
    {
        if (uptakecalorie != null)
        {
            return uptakecalorie.getId();
        } else
        {
            return null;
        }
    }

    public volatile Object getKey(Object obj)
    {
        return getKey((UptakeCalorie)obj);
    }

    protected boolean isEntityUpdateable()
    {
        return true;
    }

    public UptakeCalorie readEntity(Cursor cursor, int i)
    {
        Long long1;
        if (cursor.isNull(i + 0))
        {
            long1 = null;
        } else
        {
            long1 = Long.valueOf(cursor.getLong(i + 0));
        }
        return new UptakeCalorie(long1, cursor.getString(i + 1), cursor.getString(i + 2), cursor.getInt(i + 3), cursor.getFloat(i + 4), cursor.getString(i + 5), cursor.getString(i + 6));
    }

    public volatile Object readEntity(Cursor cursor, int i)
    {
        return readEntity(cursor, i);
    }

    public void readEntity(Cursor cursor, UptakeCalorie uptakecalorie, int i)
    {
        Long long1;
        if (cursor.isNull(i + 0))
        {
            long1 = null;
        } else
        {
            long1 = Long.valueOf(cursor.getLong(i + 0));
        }
        uptakecalorie.setId(long1);
        uptakecalorie.setUserId(cursor.getString(i + 1));
        uptakecalorie.setFoodName(cursor.getString(i + 2));
        uptakecalorie.setCalorieContent(cursor.getInt(i + 3));
        uptakecalorie.setCounts(cursor.getFloat(i + 4));
        uptakecalorie.setDateTime(cursor.getString(i + 5));
        uptakecalorie.setImgUrl(cursor.getString(i + 6));
    }

    public volatile void readEntity(Cursor cursor, Object obj, int i)
    {
        readEntity(cursor, (UptakeCalorie)obj, i);
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

    protected Long updateKeyAfterInsert(UptakeCalorie uptakecalorie, long l)
    {
        uptakecalorie.setId(Long.valueOf(l));
        return Long.valueOf(l);
    }

    protected volatile Object updateKeyAfterInsert(Object obj, long l)
    {
        return updateKeyAfterInsert((UptakeCalorie)obj, l);
    }
}
