// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Message;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import cn.sharesdk.framework.utils.R;
import cn.sharesdk.framework.utils.UIHandler;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.framework:
//            b, c, MobUIShell, a

public class FakeActivity
{

    private static Class shell;
    protected Activity activity;
    private View contentView;
    private HashMap result;
    private FakeActivity resultReceiver;

    public FakeActivity()
    {
    }

    public static void setShell(Class class1)
    {
        shell = class1;
    }

    public View findViewById(int i)
    {
        if (activity == null)
        {
            return null;
        } else
        {
            return activity.findViewById(i);
        }
    }

    public View findViewByResName(View view, String s)
    {
        int i;
        if (activity != null)
        {
            if ((i = R.getIdRes(activity, s)) > 0)
            {
                return view.findViewById(i);
            }
        }
        return null;
    }

    public View findViewByResName(String s)
    {
        int i;
        if (activity != null)
        {
            if ((i = R.getIdRes(activity, s)) > 0)
            {
                return findViewById(i);
            }
        }
        return null;
    }

    public final void finish()
    {
        if (activity != null)
        {
            activity.finish();
        }
    }

    public View getContentView()
    {
        return contentView;
    }

    public Context getContext()
    {
        if (activity == null)
        {
            return null;
        } else
        {
            return activity;
        }
    }

    public int getOrientation()
    {
        return activity.getResources().getConfiguration().orientation;
    }

    public FakeActivity getParent()
    {
        return resultReceiver;
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
    }

    public void onConfigurationChanged(Configuration configuration)
    {
    }

    public void onCreate()
    {
    }

    public void onDestroy()
    {
    }

    public boolean onFinish()
    {
        return false;
    }

    public boolean onKeyEvent(int i, KeyEvent keyevent)
    {
        return false;
    }

    protected void onNewIntent(Intent intent)
    {
    }

    public void onPause()
    {
    }

    public void onRestart()
    {
    }

    public void onResult(HashMap hashmap)
    {
    }

    public void onResume()
    {
    }

    public void onStart()
    {
    }

    public void onStop()
    {
    }

    public void requestFullScreen(boolean flag)
    {
        if (activity == null)
        {
            return;
        }
        if (flag)
        {
            activity.getWindow().addFlags(1024);
            activity.getWindow().clearFlags(2048);
        } else
        {
            activity.getWindow().addFlags(2048);
            activity.getWindow().clearFlags(1024);
        }
        activity.getWindow().getDecorView().requestLayout();
    }

    public void requestLandscapeOrientation()
    {
        setRequestedOrientation(0);
    }

    public void requestPortraitOrientation()
    {
        setRequestedOrientation(1);
    }

    public void runOnUIThread(Runnable runnable)
    {
        UIHandler.sendEmptyMessage(0, new b(this, runnable));
    }

    public void runOnUIThread(Runnable runnable, long l)
    {
        UIHandler.sendEmptyMessageDelayed(0, l, new c(this, runnable));
    }

    void sendResult()
    {
        if (resultReceiver != null)
        {
            resultReceiver.onResult(result);
        }
    }

    public void setActivity(Activity activity1)
    {
        activity = activity1;
    }

    final void setContentView(View view)
    {
        contentView = view;
    }

    public void setContentViewLayoutResName(String s)
    {
        int i;
        if (activity != null)
        {
            if ((i = R.getLayoutRes(activity, s)) > 0)
            {
                activity.setContentView(i);
                return;
            }
        }
    }

    public void setRequestedOrientation(int i)
    {
        if (activity == null)
        {
            return;
        } else
        {
            activity.setRequestedOrientation(i);
            return;
        }
    }

    public final void setResult(HashMap hashmap)
    {
        result = hashmap;
    }

    public void show(Context context, Intent intent)
    {
        showForResult(context, intent, null);
    }

    public void showForResult(Context context, Intent intent, FakeActivity fakeactivity)
    {
        resultReceiver = fakeactivity;
        Message message = new Message();
        if (shell == null)
        {
            fakeactivity = cn/sharesdk/framework/MobUIShell;
        } else
        {
            fakeactivity = shell;
        }
        fakeactivity = new Intent(context, fakeactivity);
        fakeactivity.putExtra("launch_time", MobUIShell.a(this));
        fakeactivity.putExtra("executor_name", getClass().getName());
        if (intent != null)
        {
            fakeactivity.putExtras(intent);
        }
        message.obj = ((Object) (new Object[] {
            context, fakeactivity
        }));
        UIHandler.sendMessage(message, new a(this));
    }

    public void startActivity(Intent intent)
    {
        startActivityForResult(intent, -1);
    }

    public void startActivityForResult(Intent intent, int i)
    {
        if (activity == null)
        {
            return;
        } else
        {
            activity.startActivityForResult(intent, i);
            return;
        }
    }
}
