// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.veclink.bracelet.bean.BluetoothDeviceBean;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class BleDeviceListAdapter extends BaseAdapter
{
    public final class ViewHolder
    {

        public TextView address_view;
        public TextView name_view;
        public TextView rssi_view;
        final BleDeviceListAdapter this$0;

        public ViewHolder()
        {
            this$0 = BleDeviceListAdapter.this;
            super();
        }
    }


    public List listItems;
    private Context mContext;

    public BleDeviceListAdapter(Context context)
    {
        listItems = new ArrayList();
        mContext = context;
    }

    public void addDeviceItem(BluetoothDeviceBean bluetoothdevicebean)
    {
        listItems.add(bluetoothdevicebean);
        Collections.sort(listItems);
        notifyDataSetChanged();
    }

    public void clearAllDeviceItem()
    {
        listItems.clear();
        notifyDataSetChanged();
    }

    public int getCount()
    {
        return listItems.size();
    }

    public Object getItem(int i)
    {
        return Integer.valueOf(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        BluetoothDeviceBean bluetoothdevicebean = (BluetoothDeviceBean)listItems.get(i);
        if (view == null)
        {
            viewgroup = new ViewHolder();
            view = LayoutInflater.from(mContext).inflate(0x7f030043, null);
            viewgroup.name_view = (TextView)view.findViewById(0x7f060103);
            viewgroup.address_view = (TextView)view.findViewById(0x7f060104);
            viewgroup.rssi_view = (TextView)view.findViewById(0x7f060105);
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (ViewHolder)view.getTag();
        }
        ((ViewHolder) (viewgroup)).name_view.setText(bluetoothdevicebean.getDevice_name());
        ((ViewHolder) (viewgroup)).address_view.setText(bluetoothdevicebean.getDevice_address());
        ((ViewHolder) (viewgroup)).rssi_view.setText(String.valueOf(bluetoothdevicebean.getDevice_rssi()));
        return view;
    }
}
