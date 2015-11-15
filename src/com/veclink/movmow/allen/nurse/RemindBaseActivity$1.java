// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movmow.allen.nurse;

import android.view.View;
import com.veclink.movnow_q2.util.ToastUtil;

// Referenced classes of package com.veclink.movmow.allen.nurse:
//            RemindBaseActivity

class this._cls0
    implements android.view.indBaseActivity._cls1
{

    final RemindBaseActivity this$0;

    public void onClick(View view)
    {
        ToastUtil.showShortToast(mContext, "saveRemindSetting");
    }

    _cls9()
    {
        this$0 = RemindBaseActivity.this;
        super();
    }
}
