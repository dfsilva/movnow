// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.utils;

import android.text.TextUtils;
import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.nio.channels.FileChannel;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.framework.utils:
//            e

public class f
{

    private File a;
    private HashMap b;

    public f()
    {
    }

    private void a()
    {
        while (b == null || a == null) 
        {
            return;
        }
        if (!a.getParentFile().exists())
        {
            a.getParentFile().mkdirs();
        }
        HashMap hashmap = b;
        hashmap;
        JVM INSTR monitorenter ;
        Object obj;
        obj = new FileOutputStream(a);
        if (((FileOutputStream) (obj)).getChannel().tryLock() == null)
        {
            break MISSING_BLOCK_LABEL_108;
        }
        obj = new ObjectOutputStream(((java.io.OutputStream) (obj)));
        ((ObjectOutputStream) (obj)).writeObject(b);
        ((ObjectOutputStream) (obj)).flush();
        ((ObjectOutputStream) (obj)).close();
_L1:
        return;
        obj;
        hashmap;
        JVM INSTR monitorexit ;
        try
        {
            throw obj;
        }
        catch (Throwable throwable)
        {
            cn.sharesdk.framework.utils.e.b(throwable);
        }
        return;
        ((FileOutputStream) (obj)).close();
          goto _L1
    }

    private void b(String s, Object obj)
    {
        if (b == null)
        {
            b = new HashMap();
        }
        b.put(s, obj);
    }

    private Object e(String s)
    {
        if (b == null)
        {
            return null;
        } else
        {
            return b.get(s);
        }
    }

    public void a(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            return;
        }
        try
        {
            a = new File(s);
            if (a.exists())
            {
                s = new ObjectInputStream(new FileInputStream(a));
                b = (HashMap)s.readObject();
                s.close();
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            cn.sharesdk.framework.utils.e.b(s);
        }
        return;
    }

    public void a(String s, Long long1)
    {
        b(s, long1);
        a();
    }

    public void a(String s, Object obj)
    {
        if (obj == null)
        {
            return;
        }
        try
        {
            ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
            ObjectOutputStream objectoutputstream = new ObjectOutputStream(bytearrayoutputstream);
            objectoutputstream.writeObject(obj);
            objectoutputstream.flush();
            objectoutputstream.close();
            a(s, Base64.encodeToString(bytearrayoutputstream.toByteArray(), 2));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            cn.sharesdk.framework.utils.e.b(s);
        }
    }

    public void a(String s, String s1)
    {
        b(s, s1);
        a();
    }

    public String b(String s)
    {
        s = ((String) (e(s)));
        if (s == null)
        {
            return null;
        }
        if (s instanceof String)
        {
            return (String)s;
        } else
        {
            return String.valueOf(s);
        }
    }

    public long c(String s)
    {
        s = ((String) (e(s)));
        if (s == null)
        {
            return 0L;
        }
        if (s instanceof Long)
        {
            return ((Long)s).longValue();
        } else
        {
            return 0L;
        }
    }

    public Object d(String s)
    {
        s = b(s);
        if (TextUtils.isEmpty(s))
        {
            return null;
        }
        Object obj;
        try
        {
            s = new ObjectInputStream(new ByteArrayInputStream(Base64.decode(s, 2)));
            obj = s.readObject();
            s.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            cn.sharesdk.framework.utils.e.b(s);
            return null;
        }
        return obj;
    }
}
