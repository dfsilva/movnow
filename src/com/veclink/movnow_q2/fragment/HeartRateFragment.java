// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.fragment;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.veclink.movnow_q2.util.StringUtil;

public class HeartRateFragment extends Fragment
{

    private TextView tvTime;

    public HeartRateFragment()
    {
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        layoutinflater = layoutinflater.inflate(0x7f030037, viewgroup, false);
        tvTime = (TextView)layoutinflater.findViewById(0x7f0600b3);
        return layoutinflater;
    }

    public void onResume()
    {
        super.onResume();
        tvTime.setText(StringUtil.formatCurrDate("yyyy/MM/dd EEEE"));
    }
}
