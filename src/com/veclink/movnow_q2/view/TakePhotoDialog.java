// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;

public class TakePhotoDialog extends Dialog
{

    private Button btnPortaitCancle;
    private Button btnSelectLoclPic;
    private Button btnTakePic;
    private android.view.View.OnClickListener chooseLocalImgListener;
    private Context mContext;
    private android.view.View.OnClickListener takePhotoListener;

    public TakePhotoDialog(Context context, int i)
    {
        super(context, i);
        mContext = context;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(getLayoutInflater().inflate(0x7f030033, null), new android.view.ViewGroup.LayoutParams(((Activity)mContext).getWindowManager().getDefaultDisplay().getWidth(), -2));
        btnTakePic = (Button)findViewById(0x7f0600a3);
        btnSelectLoclPic = (Button)findViewById(0x7f0600a4);
        btnPortaitCancle = (Button)findViewById(0x7f0600a5);
        if (takePhotoListener != null)
        {
            btnTakePic.setOnClickListener(takePhotoListener);
        }
        if (chooseLocalImgListener != null)
        {
            btnSelectLoclPic.setOnClickListener(chooseLocalImgListener);
        }
        btnPortaitCancle.setOnClickListener(new android.view.View.OnClickListener() {

            final TakePhotoDialog this$0;

            public void onClick(View view)
            {
                dismiss();
            }

            
            {
                this$0 = TakePhotoDialog.this;
                super();
            }
        });
        bundle = getWindow();
        bundle.setWindowAnimations(0x7f0b0018);
        bundle = bundle.getAttributes();
        bundle.x = 0;
        bundle.y = ((Activity)mContext).getWindowManager().getDefaultDisplay().getHeight();
        onWindowAttributesChanged(bundle);
        setCanceledOnTouchOutside(true);
    }

    public void setChooseLocalImgListener(android.view.View.OnClickListener onclicklistener)
    {
        chooseLocalImgListener = onclicklistener;
    }

    public void setTakePhotoListener(android.view.View.OnClickListener onclicklistener)
    {
        takePhotoListener = onclicklistener;
    }
}
