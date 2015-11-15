// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.veclink.healthy.database.entity.UserInfo;
import de.greenrobot.dao.AbstractDao;
import de.greenrobot.dao.Property;
import de.greenrobot.dao.internal.DaoConfig;

// Referenced classes of package com.veclink.healthy.database.dao:
//            DaoSession

public class UserInfoDao extends AbstractDao
{
    public static class Properties
    {

        public static final Property Avatar = new Property(10, java/lang/String, "avatar", false, "AVATAR");
        public static final Property Birthday = new Property(4, java/lang/String, "birthday", false, "BIRTHDAY");
        public static final Property CityId = new Property(8, java/lang/String, "cityId", false, "CITY_ID");
        public static final Property DistrictId = new Property(9, java/lang/String, "districtId", false, "DISTRICT_ID");
        public static final Property Email = new Property(0, java/lang/String, "email", true, "EMAIL");
        public static final Property Height = new Property(5, java/lang/String, "height", false, "HEIGHT");
        public static final Property NickName = new Property(1, java/lang/String, "nickName", false, "NICK_NAME");
        public static final Property ProId = new Property(7, java/lang/String, "proId", false, "PRO_ID");
        public static final Property Sex = new Property(2, java/lang/String, "sex", false, "SEX");
        public static final Property Signature = new Property(3, java/lang/String, "signature", false, "SIGNATURE");
        public static final Property Weight = new Property(6, java/lang/String, "weight", false, "WEIGHT");


        public Properties()
        {
        }
    }


    public static final String TABLENAME = "USER_INFO";

    public UserInfoDao(DaoConfig daoconfig)
    {
        super(daoconfig);
    }

    public UserInfoDao(DaoConfig daoconfig, DaoSession daosession)
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
        sqlitedatabase.execSQL((new StringBuilder()).append("CREATE TABLE ").append(s).append("'USER_INFO' (").append("'EMAIL' TEXT PRIMARY KEY NOT NULL ,").append("'NICK_NAME' TEXT NOT NULL ,").append("'SEX' TEXT NOT NULL ,").append("'SIGNATURE' TEXT,").append("'BIRTHDAY' TEXT NOT NULL ,").append("'HEIGHT' TEXT NOT NULL ,").append("'WEIGHT' TEXT NOT NULL ,").append("'PRO_ID' TEXT,").append("'CITY_ID' TEXT,").append("'DISTRICT_ID' TEXT,").append("'AVATAR' TEXT);").toString());
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
        sqlitedatabase.execSQL(stringbuilder.append(s).append("'USER_INFO'").toString());
    }

    protected void bindValues(SQLiteStatement sqlitestatement, UserInfo userinfo)
    {
        sqlitestatement.clearBindings();
        String s = userinfo.getEmail();
        if (s != null)
        {
            sqlitestatement.bindString(1, s);
        }
        sqlitestatement.bindString(2, userinfo.getNickName());
        sqlitestatement.bindString(3, userinfo.getSex());
        s = userinfo.getSignature();
        if (s != null)
        {
            sqlitestatement.bindString(4, s);
        }
        sqlitestatement.bindString(5, userinfo.getBirthday());
        sqlitestatement.bindString(6, userinfo.getHeight());
        sqlitestatement.bindString(7, userinfo.getWeight());
        s = userinfo.getProId();
        if (s != null)
        {
            sqlitestatement.bindString(8, s);
        }
        s = userinfo.getCityId();
        if (s != null)
        {
            sqlitestatement.bindString(9, s);
        }
        s = userinfo.getDistrictId();
        if (s != null)
        {
            sqlitestatement.bindString(10, s);
        }
        userinfo = userinfo.getAvatar();
        if (userinfo != null)
        {
            sqlitestatement.bindString(11, userinfo);
        }
    }

    protected volatile void bindValues(SQLiteStatement sqlitestatement, Object obj)
    {
        bindValues(sqlitestatement, (UserInfo)obj);
    }

    public volatile Object getKey(Object obj)
    {
        return getKey((UserInfo)obj);
    }

    public String getKey(UserInfo userinfo)
    {
        if (userinfo != null)
        {
            return userinfo.getEmail();
        } else
        {
            return null;
        }
    }

    protected boolean isEntityUpdateable()
    {
        return true;
    }

    public UserInfo readEntity(Cursor cursor, int i)
    {
        Object obj = null;
        String s;
        String s1;
        String s2;
        String s3;
        String s4;
        String s5;
        String s6;
        String s7;
        String s8;
        String s9;
        if (cursor.isNull(i + 0))
        {
            s = null;
        } else
        {
            s = cursor.getString(i + 0);
        }
        s5 = cursor.getString(i + 1);
        s6 = cursor.getString(i + 2);
        if (cursor.isNull(i + 3))
        {
            s1 = null;
        } else
        {
            s1 = cursor.getString(i + 3);
        }
        s7 = cursor.getString(i + 4);
        s8 = cursor.getString(i + 5);
        s9 = cursor.getString(i + 6);
        if (cursor.isNull(i + 7))
        {
            s2 = null;
        } else
        {
            s2 = cursor.getString(i + 7);
        }
        if (cursor.isNull(i + 8))
        {
            s3 = null;
        } else
        {
            s3 = cursor.getString(i + 8);
        }
        if (cursor.isNull(i + 9))
        {
            s4 = null;
        } else
        {
            s4 = cursor.getString(i + 9);
        }
        if (cursor.isNull(i + 10))
        {
            cursor = obj;
        } else
        {
            cursor = cursor.getString(i + 10);
        }
        return new UserInfo(s, s5, s6, s1, s7, s8, s9, s2, s3, s4, cursor);
    }

    public volatile Object readEntity(Cursor cursor, int i)
    {
        return readEntity(cursor, i);
    }

    public void readEntity(Cursor cursor, UserInfo userinfo, int i)
    {
        Object obj = null;
        String s;
        if (cursor.isNull(i + 0))
        {
            s = null;
        } else
        {
            s = cursor.getString(i + 0);
        }
        userinfo.setEmail(s);
        userinfo.setNickName(cursor.getString(i + 1));
        userinfo.setSex(cursor.getString(i + 2));
        if (cursor.isNull(i + 3))
        {
            s = null;
        } else
        {
            s = cursor.getString(i + 3);
        }
        userinfo.setSignature(s);
        userinfo.setBirthday(cursor.getString(i + 4));
        userinfo.setHeight(cursor.getString(i + 5));
        userinfo.setWeight(cursor.getString(i + 6));
        if (cursor.isNull(i + 7))
        {
            s = null;
        } else
        {
            s = cursor.getString(i + 7);
        }
        userinfo.setProId(s);
        if (cursor.isNull(i + 8))
        {
            s = null;
        } else
        {
            s = cursor.getString(i + 8);
        }
        userinfo.setCityId(s);
        if (cursor.isNull(i + 9))
        {
            s = null;
        } else
        {
            s = cursor.getString(i + 9);
        }
        userinfo.setDistrictId(s);
        if (cursor.isNull(i + 10))
        {
            cursor = obj;
        } else
        {
            cursor = cursor.getString(i + 10);
        }
        userinfo.setAvatar(cursor);
    }

    public volatile void readEntity(Cursor cursor, Object obj, int i)
    {
        readEntity(cursor, (UserInfo)obj, i);
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
        return updateKeyAfterInsert((UserInfo)obj, l);
    }

    protected String updateKeyAfterInsert(UserInfo userinfo, long l)
    {
        return userinfo.getEmail();
    }
}
