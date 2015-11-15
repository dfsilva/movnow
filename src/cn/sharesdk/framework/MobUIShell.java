// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import cn.sharesdk.framework.utils.e;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.framework:
//            FakeActivity

public class MobUIShell extends Activity
{

    private static HashMap a = new HashMap();
    private FakeActivity b;

    public MobUIShell()
    {
    }

    public static String a(FakeActivity fakeactivity)
    {
        return a(String.valueOf(System.currentTimeMillis()), fakeactivity);
    }

    public static String a(String s, FakeActivity fakeactivity)
    {
        a.put(s, fakeactivity);
        return s;
    }

    public void finish()
    {
        if (b != null && b.onFinish())
        {
            return;
        } else
        {
            super.finish();
            return;
        }
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (b != null)
        {
            b.onActivityResult(i, j, intent);
        }
        super.onActivityResult(i, j, intent);
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        if (b != null)
        {
            b.onConfigurationChanged(configuration);
        }
    }

    protected void onCreate(Bundle bundle)
    {
        Object obj = getIntent();
        String s = ((Intent) (obj)).getStringExtra("launch_time");
        String s1 = ((Intent) (obj)).getStringExtra("executor_name");
        b = (FakeActivity)a.remove(s);
        if (b == null)
        {
            obj = ((Intent) (obj)).getScheme();
            b = (FakeActivity)a.remove(obj);
            if (b == null)
            {
                e.c(new RuntimeException((new StringBuilder()).append("Executor lost! launchTime = ").append(s).append(", executorName: ").append(s1).toString()));
                super.onCreate(bundle);
                finish();
                return;
            }
        }
        e.b((new StringBuilder()).append("MobUIShell found executor: ").append(b.getClass()).toString(), new Object[0]);
        b.setActivity(this);
        super.onCreate(bundle);
        b.onCreate();
    }

    protected void onDestroy()
    {
        if (b != null)
        {
            b.sendResult();
            b.onDestroy();
        }
        super.onDestroy();
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        boolean flag = false;
        if (b != null)
        {
            flag = b.onKeyEvent(i, keyevent);
        }
        if (flag)
        {
            return true;
        } else
        {
            return super.onKeyDown(i, keyevent);
        }
    }

    public boolean onKeyUp(int i, KeyEvent keyevent)
    {
        boolean flag = false;
        if (b != null)
        {
            flag = b.onKeyEvent(i, keyevent);
        }
        if (flag)
        {
            return true;
        } else
        {
            return super.onKeyUp(i, keyevent);
        }
    }

    protected void onNewIntent(Intent intent)
    {
        if (b == null)
        {
            super.onNewIntent(intent);
            return;
        } else
        {
            b.onNewIntent(intent);
            return;
        }
    }

    protected void onPause()
    {
        if (b != null)
        {
            b.onPause();
        }
        super.onPause();
    }

    protected void onRestart()
    {
        if (b != null)
        {
            b.onRestart();
        }
        super.onRestart();
    }

    protected void onResume()
    {
        if (b != null)
        {
            b.onResume();
        }
        super.onResume();
    }

    protected void onStart()
    {
        if (b != null)
        {
            b.onStart();
        }
        super.onStart();
    }

    protected void onStop()
    {
        if (b != null)
        {
            b.onStop();
        }
        super.onStop();
    }

    public void setContentView(int i)
    {
        setContentView(LayoutInflater.from(this).inflate(i, null));
    }

    public void setContentView(View view)
    {
        if (view != null)
        {
            super.setContentView(view);
            if (b != null)
            {
                b.setContentView(view);
                return;
            }
        }
    }

    public void setContentView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        if (view != null)
        {
            if (layoutparams == null)
            {
                super.setContentView(view);
            } else
            {
                super.setContentView(view, layoutparams);
            }
            if (b != null)
            {
                b.setContentView(view);
                return;
            }
        }
    }

}
