// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.viewpager;

import android.view.animation.Interpolator;

// Referenced classes of package m.framework.ui.widget.viewpager:
//            ViewPagerClassic

class this._cls0
    implements Interpolator
{

    final ViewPagerClassic this$0;
    float values[] = {
        0.0F, 0.0157073F, 0.0314108F, 0.0471065F, 0.0627905F, 0.0784591F, 0.0941083F, 0.109734F, 0.125333F, 0.140901F, 
        0.156434F, 0.171929F, 0.187381F, 0.202787F, 0.218143F, 0.233445F, 0.24869F, 0.263873F, 0.278991F, 0.29404F, 
        0.309017F, 0.323917F, 0.338738F, 0.353475F, 0.368125F, 0.382683F, 0.397148F, 0.411514F, 0.425779F, 0.439939F, 
        0.45399F, 0.46793F, 0.481754F, 0.495459F, 0.509041F, 0.522499F, 0.535827F, 0.549023F, 0.562083F, 0.575005F, 
        0.587785F, 0.60042F, 0.612907F, 0.625243F, 0.637424F, 0.649448F, 0.661312F, 0.673013F, 0.684547F, 0.695913F, 
        0.707107F, 0.718126F, 0.728969F, 0.739631F, 0.750111F, 0.760406F, 0.770513F, 0.78043F, 0.790155F, 0.799685F, 
        0.809017F, 0.81815F, 0.827081F, 0.835807F, 0.844328F, 0.85264F, 0.860742F, 0.868632F, 0.876307F, 0.883766F, 
        0.891007F, 0.898028F, 0.904827F, 0.911403F, 0.917755F, 0.92388F, 0.929776F, 0.935444F, 0.940881F, 0.946085F, 
        0.951057F, 0.955793F, 0.960294F, 0.964557F, 0.968583F, 0.97237F, 0.975917F, 0.979223F, 0.982287F, 0.985109F, 
        0.987688F, 0.990024F, 0.992115F, 0.993961F, 0.995562F, 0.996917F, 0.998027F, 0.99889F, 0.999507F, 0.999877F, 
        1.0F
    };

    public float getInterpolation(float f)
    {
        int i = (int)(100F * f);
        return values[i];
    }

    ()
    {
        this$0 = ViewPagerClassic.this;
        super();
    }
}
