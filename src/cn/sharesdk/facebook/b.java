// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.facebook;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.text.TextUtils;
import cn.sharesdk.framework.authorize.SSOListener;
import cn.sharesdk.framework.authorize.e;
import cn.sharesdk.framework.authorize.f;

public class b extends f
{

    private String d;
    private String e[];

    public b(e e1)
    {
        super(e1);
    }

    private boolean b()
    {
        boolean flag = true;
        Intent intent = new Intent();
        intent.setClassName("com.facebook.katana", "com.facebook.katana.ProxyAuth");
        intent.putExtra("client_id", d);
        if (e != null && e.length > 0)
        {
            intent.putExtra("scope", TextUtils.join(",", e));
        }
        if (!b(intent))
        {
            return false;
        }
        try
        {
            a.startActivityForResult(intent, b);
        }
        catch (Throwable throwable)
        {
            flag = false;
        }
        return flag;
    }

    private boolean b(Intent intent)
    {
        intent = a.getContext().getPackageManager().resolveActivity(intent, 0);
        if (intent != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        intent = ((ResolveInfo) (intent)).activityInfo.packageName;
        int i;
        int j;
        boolean flag;
        try
        {
            intent = a.getContext().getPackageManager().getPackageInfo(intent, 64).signatures;
            j = intent.length;
        }
        // Misplaced declaration of an exception variable
        catch (Intent intent)
        {
            return false;
        }
        i = 0;
        if (i >= j)
        {
            continue; /* Loop/switch isn't completed */
        }
        flag = "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2".equals(intent[i].toCharsString());
        if (flag)
        {
            return true;
        }
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        break MISSING_BLOCK_LABEL_83;
_L4:
        break MISSING_BLOCK_LABEL_55;
        if (true) goto _L1; else goto _L5
_L5:
    }

    private void c(Intent intent)
    {
        if (c == null)
        {
            return;
        }
        String s1 = intent.getStringExtra("error_message");
        String s = s1;
        if (s1 == null)
        {
            s = intent.getStringExtra("error_code");
        }
        if (s == null)
        {
            c.onComplete(intent.getExtras());
            return;
        }
        if (s.equals("access_denied") || s.equals("OAuthAccessDeniedException"))
        {
            c.onCancel();
            return;
        }
        s1 = intent.getStringExtra("error_message");
        if (s1 != null)
        {
            s = (new StringBuilder()).append(intent.getStringExtra("error_code")).append(": ").append(s1).toString();
        }
        c.onFailed(new Throwable(s));
    }

    private void d(Intent intent)
    {
        if (intent != null)
        {
            String s = intent.getStringExtra("error");
            int i = intent.getIntExtra("error_code", -1);
            intent = new Throwable((new StringBuilder()).append(s).append(" (").append(i).append(")").toString());
            if (c != null)
            {
                c.onFailed(intent);
            }
        } else
        if (c != null)
        {
            c.onCancel();
            return;
        }
    }

    public void a()
    {
        if (!b())
        {
            a.finish();
            if (c != null)
            {
                c.onFailed(new Throwable());
            }
        }
    }

    public void a(int i, int j, Intent intent)
    {
        a.finish();
        if (i != b) goto _L2; else goto _L1
_L1:
        j;
        JVM INSTR tableswitch -1 0: default 40
    //                   -1 41
    //                   0 47;
           goto _L2 _L3 _L4
_L2:
        return;
_L3:
        c(intent);
        return;
_L4:
        d(intent);
        return;
    }

    public void a(String s, String as[])
    {
        d = s;
        e = as;
    }
}
