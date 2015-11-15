// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package hirondelle.date4j;

import java.io.PrintStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package hirondelle.date4j:
//            Util

final class ToStringUtil
{
    private static final class Ping
    {

        private Pong fPong;

        public Integer getId()
        {
            return new Integer(123);
        }

        public Pong getPong()
        {
            return fPong;
        }

        public String getUserPassword()
        {
            return "blah";
        }

        public void setPong(Pong pong)
        {
            fPong = pong;
        }

        public String toString()
        {
            return ToStringUtil.getText(this);
        }

        private Ping()
        {
        }

    }

    private static final class Pong
    {

        private Ping fPing;

        public Ping getPing()
        {
            return fPing;
        }

        public void setPing(Ping ping)
        {
            fPing = ping;
        }

        public String toString()
        {
            return ToStringUtil.getTextAvoidCyclicRefs(this, hirondelle/date4j/ToStringUtil$Ping, "getId");
        }

        private Pong()
        {
        }

    }


    private static String HIDDEN_PASSWORD_VALUE = "****";
    private static final String NEW_LINE = System.getProperty("line.separator");
    private static Pattern PASSWORD_PATTERN = Pattern.compile("password", 2);
    private static final String fAVOID_CIRCULAR_REFERENCES = "[circular reference]";
    private static final String fCLONE = "clone";
    private static final String fGET = "get";
    private static final String fGET_CLASS = "getClass";
    private static final String fHASH_CODE = "hashCode";
    private static final String fINDENT = "";
    private static final Logger fLogger = Util.getLogger(hirondelle/date4j/ToStringUtil);
    private static final Object fNO_ARGS[] = new Object[0];
    private static final Class fNO_PARAMS[] = new Class[0];
    private static final String fTO_STRING = "toString";

    private ToStringUtil()
    {
    }

    private static void addEndLine(StringBuilder stringbuilder)
    {
        stringbuilder.append("}");
        stringbuilder.append(NEW_LINE);
    }

    private static void addLineForGetXXXMethod(Object obj, Method method, StringBuilder stringbuilder, Class class1, String s)
    {
        stringbuilder.append("");
        stringbuilder.append(getMethodNameMinusGet(method));
        stringbuilder.append(": ");
        obj = getMethodReturnValue(obj, method);
        if (obj == null || !obj.getClass().isArray()) goto _L2; else goto _L1
_L1:
        stringbuilder.append(Util.getArrayAsString(obj));
_L4:
        stringbuilder.append(NEW_LINE);
        return;
_L2:
        if (class1 == null)
        {
            stringbuilder.append(obj);
        } else
        if (class1 == obj.getClass())
        {
            method = getMethodFromName(class1, s);
            if (isContributingMethod(method, class1))
            {
                stringbuilder.append(getMethodReturnValue(obj, method));
            } else
            {
                stringbuilder.append("[circular reference]");
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static void addStartLine(Object obj, StringBuilder stringbuilder)
    {
        stringbuilder.append(obj.getClass().getName());
        stringbuilder.append(" {");
        stringbuilder.append(NEW_LINE);
    }

    private static Object dontShowPasswords(Object obj, Method method)
    {
        if (PASSWORD_PATTERN.matcher(method.getName()).find())
        {
            obj = HIDDEN_PASSWORD_VALUE;
        }
        return obj;
    }

    private static Method getMethodFromName(Class class1, String s)
    {
        Method method;
        try
        {
            method = class1.getMethod(s, fNO_PARAMS);
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            vomit(class1, s);
            return null;
        }
        return method;
    }

    private static String getMethodNameMinusGet(Method method)
    {
        String s = method.getName();
        method = s;
        if (s.startsWith("get"))
        {
            method = s.substring("get".length());
        }
        return method;
    }

    private static Object getMethodReturnValue(Object obj, Method method)
    {
        Object obj1 = null;
        Object obj2 = method.invoke(obj, fNO_ARGS);
        obj = obj2;
_L2:
        return dontShowPasswords(obj, method);
        Object obj3;
        obj3;
        vomit(obj, method);
        obj = obj1;
        continue; /* Loop/switch isn't completed */
        obj3;
        vomit(obj, method);
        obj = obj1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    static String getText(Object obj)
    {
        return getTextAvoidCyclicRefs(obj, null, null);
    }

    static String getTextAvoidCyclicRefs(Object obj, Class class1, String s)
    {
        StringBuilder stringbuilder = new StringBuilder();
        addStartLine(obj, stringbuilder);
        Method amethod[] = obj.getClass().getDeclaredMethods();
        int j = amethod.length;
        for (int i = 0; i < j; i++)
        {
            Method method = amethod[i];
            if (isContributingMethod(method, obj.getClass()))
            {
                addLineForGetXXXMethod(obj, method, stringbuilder, class1, s);
            }
        }

        addEndLine(stringbuilder);
        return stringbuilder.toString();
    }

    private static boolean isContributingMethod(Method method, Class class1)
    {
        boolean flag4 = Modifier.isPublic(method.getModifiers());
        boolean flag;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        if (method.getParameterTypes().length == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (method.getReturnType() != Void.TYPE)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (method.getReturnType() == class1)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (method.getName().equals("clone") || method.getName().equals("getClass") || method.getName().equals("hashCode") || method.getName().equals("toString"))
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        return flag4 && flag && flag1 && !flag3 && !flag2;
    }

    public static transient void main(String args[])
    {
        args = new ArrayList();
        args.add("blah");
        args.add("blah");
        args.add("blah");
        System.out.println(getText(args));
        args = new StringTokenizer("This is the end.");
        System.out.println(getText(args));
        args = new Ping();
        Pong pong = new Pong();
        args.setPong(pong);
        pong.setPing(args);
        System.out.println(args);
        System.out.println(pong);
    }

    private static void vomit(Class class1, String s)
    {
        fLogger.severe((new StringBuilder()).append("Reflection fails to get no-arg method named: ").append(Util.quote(s)).append(" for class: ").append(class1.getName()).toString());
    }

    private static void vomit(Object obj, Method method)
    {
        fLogger.severe((new StringBuilder()).append("Cannot get return value using reflection. Class: ").append(obj.getClass().getName()).append(" Method: ").append(method.getName()).toString());
    }

}
