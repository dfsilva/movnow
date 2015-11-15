// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package de.greenrobot.dao.query;

import de.greenrobot.dao.DaoException;
import de.greenrobot.dao.Property;
import java.util.Date;
import java.util.List;

public interface WhereCondition
{
    public static abstract class AbstractCondition
        implements WhereCondition
    {

        protected final boolean hasSingleValue;
        protected final Object value;
        protected final Object values[];

        public void appendValuesTo(List list)
        {
            if (hasSingleValue)
            {
                list.add(value);
            }
            if (values != null)
            {
                Object aobj[] = values;
                int j = aobj.length;
                for (int i = 0; i < j; i++)
                {
                    list.add(aobj[i]);
                }

            }
        }

        public AbstractCondition()
        {
            hasSingleValue = false;
            value = null;
            values = null;
        }

        public AbstractCondition(Object obj)
        {
            value = obj;
            hasSingleValue = true;
            values = null;
        }

        public AbstractCondition(Object aobj[])
        {
            value = null;
            hasSingleValue = false;
            values = aobj;
        }
    }

    public static class PropertyCondition extends AbstractCondition
    {

        public final String op;
        public final Property property;

        private static Object checkValueForType(Property property1, Object obj)
        {
            int i;
            i = 0;
            if (obj != null && obj.getClass().isArray())
            {
                throw new DaoException("Illegal value: found array, but simple object required");
            }
            if (property1.type != java/util/Date) goto _L2; else goto _L1
_L1:
            if (!(obj instanceof Date)) goto _L4; else goto _L3
_L3:
            Object obj1 = Long.valueOf(((Date)obj).getTime());
_L6:
            return obj1;
_L4:
            obj1 = obj;
            if (!(obj instanceof Long))
            {
                throw new DaoException((new StringBuilder()).append("Illegal date value: expected java.util.Date or Long for value ").append(obj).toString());
            }
            continue; /* Loop/switch isn't completed */
_L2:
            if (property1.type == Boolean.TYPE)
            {
                break; /* Loop/switch isn't completed */
            }
            obj1 = obj;
            if (property1.type != java/lang/Boolean) goto _L6; else goto _L5
_L5:
            if (obj instanceof Boolean)
            {
                if (((Boolean)obj).booleanValue())
                {
                    i = 1;
                }
                return Integer.valueOf(i);
            }
            if (!(obj instanceof Number))
            {
                break; /* Loop/switch isn't completed */
            }
            i = ((Number)obj).intValue();
            obj1 = obj;
            if (i != 0)
            {
                obj1 = obj;
                if (i != 1)
                {
                    throw new DaoException((new StringBuilder()).append("Illegal boolean value: numbers must be 0 or 1, but was ").append(obj).toString());
                }
            }
            if (true) goto _L6; else goto _L7
_L7:
            obj1 = obj;
            if (obj instanceof String)
            {
                property1 = (String)obj;
                if ("TRUE".equalsIgnoreCase(property1))
                {
                    return Integer.valueOf(1);
                }
                if ("FALSE".equalsIgnoreCase(property1))
                {
                    return Integer.valueOf(0);
                } else
                {
                    throw new DaoException((new StringBuilder()).append("Illegal boolean value: Strings must be \"TRUE\" or \"FALSE\" (case insesnsitive), but was ").append(obj).toString());
                }
            }
            if (true) goto _L6; else goto _L8
_L8:
        }

        private static Object[] checkValuesForType(Property property1, Object aobj[])
        {
            for (int i = 0; i < aobj.length; i++)
            {
                aobj[i] = checkValueForType(property1, aobj[i]);
            }

            return aobj;
        }

        public void appendTo(StringBuilder stringbuilder, String s)
        {
            if (s != null)
            {
                stringbuilder.append(s).append('.');
            }
            stringbuilder.append('\'').append(property.columnName).append('\'').append(op);
        }

        public PropertyCondition(Property property1, String s)
        {
            property = property1;
            op = s;
        }

        public PropertyCondition(Property property1, String s, Object obj)
        {
            super(checkValueForType(property1, obj));
            property = property1;
            op = s;
        }

        public PropertyCondition(Property property1, String s, Object aobj[])
        {
            super(checkValuesForType(property1, aobj));
            property = property1;
            op = s;
        }
    }

    public static class StringCondition extends AbstractCondition
    {

        protected final String string;

        public void appendTo(StringBuilder stringbuilder, String s)
        {
            stringbuilder.append(string);
        }

        public StringCondition(String s)
        {
            string = s;
        }

        public StringCondition(String s, Object obj)
        {
            super(obj);
            string = s;
        }

        public transient StringCondition(String s, Object aobj[])
        {
            super(aobj);
            string = s;
        }
    }


    public abstract void appendTo(StringBuilder stringbuilder, String s);

    public abstract void appendValuesTo(List list);
}
