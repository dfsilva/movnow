// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.adapter;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.TextView;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.hw.bleservice.VLBleServiceManager;
import java.util.List;

public class DeviceListAdapter extends BaseAdapter
{
    public static class ViewHolder
    {

        public TextView device_id_view;
        public Button unbind_btn;

        public ViewHolder()
        {
        }
    }


    private List deviceList;
    private Context mContext;

    public DeviceListAdapter(List list, Context context)
    {
        deviceList = list;
        mContext = context;
    }

    public int getCount()
    {
        return deviceList.size();
    }

    public Object getItem(int i)
    {
        return null;
    }

    public long getItemId(int i)
    {
        return 0L;
    }

    public View getView(final int posititon, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = LayoutInflater.from(mContext).inflate(0x7f030031, null);
            viewgroup = new ViewHolder();
            viewgroup.device_id_view = (TextView)view.findViewById(0x7f06009e);
            viewgroup.unbind_btn = (Button)view.findViewById(0x7f0600a0);
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (ViewHolder)view.getTag();
        }
        ((ViewHolder) (viewgroup)).device_id_view.setText((CharSequence)deviceList.get(posititon));
        ((ViewHolder) (viewgroup)).unbind_btn.setOnClickListener(new android.view.View.OnClickListener() {

            final DeviceListAdapter this$0;
            final int val$posititon;

            public void onClick(View view1)
            {
                HealthyAccountHolder.unBindDevice(mContext);
                deviceList.remove(posititon);
                notifyDataSetChanged();
                view1 = (Activity)mContext;
                VLBleServiceManager.getInstance().unBindService(view1.getApplication());
            }

            
            {
                this$0 = DeviceListAdapter.this;
                posititon = i;
                super();
            }
        });
        return view;
    }


}
