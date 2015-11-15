// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.gui;

import android.content.Context;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.util.FloatMath;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ImageView;
import cn.sharesdk.framework.utils.e;

public class ScaledImageView extends ImageView
    implements android.view.View.OnTouchListener
{
    public static interface OnMatrixChangedListener
    {

        public abstract void onMactrixChage(Matrix matrix);
    }


    private float a;
    private float b[];
    private int c;
    private OnMatrixChangedListener d;
    private Matrix e;
    private int f;
    private Matrix g;

    public ScaledImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a(context);
    }

    public ScaledImageView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a(context);
    }

    private void a(Context context)
    {
        c = ViewConfiguration.get(context).getScaledTouchSlop();
        c = c * c;
        setOnTouchListener(this);
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        motionevent.getAction();
        JVM INSTR lookupswitch 7: default 788
    //                   0: 72
    //                   1: 155
    //                   2: 500
    //                   5: 250
    //                   6: 333
    //                   261: 375
    //                   262: 458;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L2:
        e = new Matrix();
        e.set(getImageMatrix());
        g = new Matrix();
        g.set(e);
        b = (new float[] {
            motionevent.getX(0), motionevent.getY(0)
        });
        f = 1;
_L9:
        setImageMatrix(e);
        break MISSING_BLOCK_LABEL_790;
_L3:
        try
        {
            if (d != null)
            {
                d.onMactrixChage(e);
            }
            float f1 = motionevent.getX(0) - b[0];
            float f3 = motionevent.getY(0) - b[1];
            if (f == 1 && f1 * f1 + f3 * f3 <= (float)c)
            {
                performClick();
            }
            f = 0;
        }
        // Misplaced declaration of an exception variable
        catch (View view)
        {
            cn.sharesdk.framework.utils.e.b(view);
            break MISSING_BLOCK_LABEL_790;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        float af[];
        view = new float[2];
        view[0] = motionevent.getX(0);
        view[1] = motionevent.getY(0);
        af = new float[2];
        af[0] = motionevent.getX(1);
        af[1] = motionevent.getY(1);
        float f2;
        float f4;
        f2 = view[0] - af[0];
        f4 = view[1] - af[1];
        a = f4 * f4 + f2 * f2;
        f = 3;
        continue; /* Loop/switch isn't completed */
_L6:
        b = (new float[] {
            motionevent.getX(1), motionevent.getY(1)
        });
        g.set(e);
        f = 2;
        continue; /* Loop/switch isn't completed */
_L7:
        view = new float[2];
        view[0] = motionevent.getX(0);
        view[1] = motionevent.getY(0);
        af = new float[2];
        af[0] = motionevent.getX(1);
        af[1] = motionevent.getY(1);
        f2 = view[0] - af[0];
        f4 = view[1] - af[1];
        a = f4 * f4 + f2 * f2;
        f = 3;
        continue; /* Loop/switch isn't completed */
_L8:
        b = (new float[] {
            motionevent.getX(0), motionevent.getY(0)
        });
        g.set(e);
        f = 1;
        continue; /* Loop/switch isn't completed */
_L4:
        if (f == 1)
        {
            view = new float[2];
            view[0] = motionevent.getX(0);
            view[1] = motionevent.getY(0);
            e.set(g);
            e.postTranslate(view[0] - b[0], view[1] - b[1]);
            continue; /* Loop/switch isn't completed */
        }
        if (f == 2)
        {
            view = new float[2];
            view[0] = motionevent.getX(1);
            view[1] = motionevent.getY(1);
            e.set(g);
            e.postTranslate(view[0] - b[0], view[1] - b[1]);
            continue; /* Loop/switch isn't completed */
        }
        if (f != 3)
        {
            continue; /* Loop/switch isn't completed */
        }
        view = new float[2];
        view[0] = motionevent.getX(0);
        view[1] = motionevent.getY(0);
        af = new float[2];
        af[0] = motionevent.getX(1);
        af[1] = motionevent.getY(1);
        f2 = view[0] - af[0];
        f4 = view[1] - af[1];
        e.set(g);
        f2 = FloatMath.sqrt((f2 * f2 + f4 * f4) / a);
        motionevent = new float[2];
        motionevent[0] = (view[0] + af[0]) / 2.0F;
        motionevent[1] = (view[1] + af[1]) / 2.0F;
        e.postScale(f2, f2, motionevent[0], motionevent[1]);
        if (true) goto _L9; else goto _L1
_L1:
        return false;
        return true;
    }
}
