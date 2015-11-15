// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package de.greenrobot.dao.test;

import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import de.greenrobot.dao.AbstractDao;
import de.greenrobot.dao.InternalUnitTestDaoAccess;
import de.greenrobot.dao.Property;
import de.greenrobot.dao.internal.SqlUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package de.greenrobot.dao.test:
//            AbstractDaoTest

public abstract class AbstractDaoTestSinglePk extends AbstractDaoTest
{

    private Property pkColumn;
    protected Set usedPks;

    public AbstractDaoTestSinglePk(Class class1)
    {
        super(class1);
        usedPks = new HashSet();
    }

    protected abstract Object createEntity(Object obj);

    protected Object createEntityWithRandomPk()
    {
        return createEntity(nextPk());
    }

    protected abstract Object createRandomPk();

    protected Object nextPk()
    {
        for (int i = 0; i < 0x186a0; i++)
        {
            Object obj = createRandomPk();
            if (usedPks.add(obj))
            {
                return obj;
            }
        }

        throw new IllegalStateException("Could not find a new PK");
    }

    protected Cursor queryWithDummyColumnsInFront(int i, String s, Object obj)
    {
        Object obj1 = new StringBuilder("SELECT ");
        for (int j = 0; j < i; j++)
        {
            ((StringBuilder) (obj1)).append(s).append(",");
        }

        SqlUtils.appendColumns(((StringBuilder) (obj1)), "T", dao.getAllColumns()).append(" FROM ");
        ((StringBuilder) (obj1)).append(dao.getTablename()).append(" T");
        if (obj != null)
        {
            ((StringBuilder) (obj1)).append(" WHERE ");
            assertEquals(1, dao.getPkColumns().length);
            ((StringBuilder) (obj1)).append(dao.getPkColumns()[0]).append("=");
            DatabaseUtils.appendValueToSql(((StringBuilder) (obj1)), obj);
        }
        obj1 = ((StringBuilder) (obj1)).toString();
        obj1 = db.rawQuery(((String) (obj1)), null);
        assertTrue(((Cursor) (obj1)).moveToFirst());
        int k = 0;
        do
        {
            if (k >= i)
            {
                break;
            }
            try
            {
                assertEquals(s, ((Cursor) (obj1)).getString(k));
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                ((Cursor) (obj1)).close();
                throw s;
            }
            k++;
        } while (true);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_204;
        }
        assertEquals(1, ((Cursor) (obj1)).getCount());
        return ((Cursor) (obj1));
    }

    protected void runLoadPkTest(int i)
    {
        Object obj;
        Object obj1;
        obj = nextPk();
        obj1 = createEntity(obj);
        dao.insert(obj1);
        obj1 = queryWithDummyColumnsInFront(i, "42", obj);
        assertEquals(obj, daoAccess.readKey(((Cursor) (obj1)), i));
        ((Cursor) (obj1)).close();
        return;
        Exception exception;
        exception;
        ((Cursor) (obj1)).close();
        throw exception;
    }

    protected void setUp()
    {
        super.setUp();
        Property aproperty[] = daoAccess.getProperties();
        int j = aproperty.length;
        for (int i = 0; i < j; i++)
        {
            Property property = aproperty[i];
            if (!property.primaryKey)
            {
                continue;
            }
            if (pkColumn != null)
            {
                throw new RuntimeException("Test does not work with multiple PK columns");
            }
            pkColumn = property;
        }

        if (pkColumn == null)
        {
            throw new RuntimeException("Test does not work without a PK column");
        } else
        {
            return;
        }
    }

    public void testCount()
    {
        dao.deleteAll();
        assertEquals(0L, dao.count());
        dao.insert(createEntityWithRandomPk());
        assertEquals(1L, dao.count());
        dao.insert(createEntityWithRandomPk());
        assertEquals(2L, dao.count());
    }

    public void testDelete()
    {
        Object obj = nextPk();
        dao.deleteByKey(obj);
        Object obj1 = createEntity(obj);
        dao.insert(obj1);
        assertNotNull(dao.load(obj));
        dao.deleteByKey(obj);
        assertNull(dao.load(obj));
    }

    public void testDeleteAll()
    {
        Object obj = new ArrayList();
        for (int i = 0; i < 10; i++)
        {
            ((List) (obj)).add(createEntityWithRandomPk());
        }

        dao.insertInTx(((Iterable) (obj)));
        dao.deleteAll();
        assertEquals(0L, dao.count());
        Object obj1;
        for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); assertNull(dao.load(obj1)))
        {
            obj1 = ((Iterator) (obj)).next();
            obj1 = daoAccess.getKey(obj1);
            assertNotNull(obj1);
        }

    }

    public void testDeleteByKeyInTx()
    {
        ArrayList arraylist = new ArrayList();
        for (int i = 0; i < 10; i++)
        {
            arraylist.add(createEntityWithRandomPk());
        }

        dao.insertInTx(arraylist);
        Object obj = new ArrayList();
        ((List) (obj)).add(daoAccess.getKey(arraylist.get(0)));
        ((List) (obj)).add(daoAccess.getKey(arraylist.get(3)));
        ((List) (obj)).add(daoAccess.getKey(arraylist.get(4)));
        ((List) (obj)).add(daoAccess.getKey(arraylist.get(8)));
        dao.deleteByKeyInTx(((Iterable) (obj)));
        assertEquals(arraylist.size() - ((List) (obj)).size(), dao.count());
        for (Iterator iterator = ((List) (obj)).iterator(); iterator.hasNext(); assertNull(dao.load(obj)))
        {
            obj = iterator.next();
            assertNotNull(obj);
        }

    }

    public void testDeleteInTx()
    {
        ArrayList arraylist = new ArrayList();
        for (int i = 0; i < 10; i++)
        {
            arraylist.add(createEntityWithRandomPk());
        }

        dao.insertInTx(arraylist);
        Object obj = new ArrayList();
        ((List) (obj)).add(arraylist.get(0));
        ((List) (obj)).add(arraylist.get(3));
        ((List) (obj)).add(arraylist.get(4));
        ((List) (obj)).add(arraylist.get(8));
        dao.deleteInTx(((Iterable) (obj)));
        assertEquals(arraylist.size() - ((List) (obj)).size(), dao.count());
        for (Iterator iterator = ((List) (obj)).iterator(); iterator.hasNext(); assertNull(dao.load(obj)))
        {
            obj = iterator.next();
            obj = daoAccess.getKey(obj);
            assertNotNull(obj);
        }

    }

    public void testInsertAndLoad()
    {
        Object obj1 = nextPk();
        Object obj = createEntity(obj1);
        dao.insert(obj);
        assertEquals(obj1, daoAccess.getKey(obj));
        obj1 = dao.load(obj1);
        assertNotNull(obj1);
        assertEquals(daoAccess.getKey(obj), daoAccess.getKey(obj1));
    }

    public void testInsertInTx()
    {
        dao.deleteAll();
        ArrayList arraylist = new ArrayList();
        for (int i = 0; i < 20; i++)
        {
            arraylist.add(createEntityWithRandomPk());
        }

        dao.insertInTx(arraylist);
        assertEquals(arraylist.size(), dao.count());
    }

    public void testInsertOrReplaceInTx()
    {
        dao.deleteAll();
        ArrayList arraylist = new ArrayList();
        ArrayList arraylist1 = new ArrayList();
        for (int i = 0; i < 20; i++)
        {
            Object obj = createEntityWithRandomPk();
            if (i % 2 == 0)
            {
                arraylist.add(obj);
            }
            arraylist1.add(obj);
        }

        dao.insertOrReplaceInTx(arraylist);
        dao.insertOrReplaceInTx(arraylist1);
        assertEquals(arraylist1.size(), dao.count());
    }

    public void testInsertOrReplaceTwice()
    {
        Object obj = createEntityWithRandomPk();
        long l = dao.insert(obj);
        long l1 = dao.insertOrReplace(obj);
        if (dao.getPkProperty().type == java/lang/Long)
        {
            assertEquals(l, l1);
        }
    }

    public void testInsertTwice()
    {
        Object obj = createEntity(nextPk());
        dao.insert(obj);
        try
        {
            dao.insert(obj);
            fail("Inserting twice should not work");
            return;
        }
        catch (SQLException sqlexception)
        {
            return;
        }
    }

    public void testLoadAll()
    {
        dao.deleteAll();
        ArrayList arraylist = new ArrayList();
        for (int i = 0; i < 15; i++)
        {
            arraylist.add(createEntity(nextPk()));
        }

        dao.insertInTx(arraylist);
        List list = dao.loadAll();
        assertEquals(arraylist.size(), list.size());
    }

    public void testLoadPk()
    {
        runLoadPkTest(0);
    }

    public void testLoadPkWithOffset()
    {
        runLoadPkTest(10);
    }

    public void testQuery()
    {
        dao.insert(createEntityWithRandomPk());
        Object obj = nextPk();
        dao.insert(createEntity(obj));
        dao.insert(createEntityWithRandomPk());
        Object obj1 = (new StringBuilder()).append("WHERE ").append(dao.getPkColumns()[0]).append("=?").toString();
        obj1 = dao.queryRaw(((String) (obj1)), new String[] {
            obj.toString()
        });
        assertEquals(1, ((List) (obj1)).size());
        assertEquals(obj, daoAccess.getKey(((List) (obj1)).get(0)));
    }

    public void testReadWithOffset()
    {
        Object obj;
        Object obj1;
        obj = nextPk();
        obj1 = createEntity(obj);
        dao.insert(obj1);
        obj1 = queryWithDummyColumnsInFront(5, "42", obj);
        Object obj2 = daoAccess.readEntity(((Cursor) (obj1)), 5);
        assertEquals(obj, daoAccess.getKey(obj2));
        ((Cursor) (obj1)).close();
        return;
        Exception exception;
        exception;
        ((Cursor) (obj1)).close();
        throw exception;
    }

    public void testRowId()
    {
        Object obj = createEntityWithRandomPk();
        Object obj1 = createEntityWithRandomPk();
        boolean flag;
        if (dao.insert(obj) != dao.insert(obj1))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        assertTrue(flag);
    }

    public void testUpdate()
    {
        dao.deleteAll();
        Object obj = createEntityWithRandomPk();
        dao.insert(obj);
        dao.update(obj);
        assertEquals(1L, dao.count());
    }
}
