// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movmow.allen.nurse.adapter;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.TextView;
import com.veclink.bracelet.bean.BleAlarmRemindParam;
import com.veclink.healthy.task.SetRemindTask;
import com.veclink.movmow.allen.nurse.AddOrEditWaterClockActivity;
import com.veclink.movmow.allen.nurse.RemindObject;
import com.veclink.movnow_q2.activity.MovnowTwoApplication;
import com.veclink.movnow_q2.util.StorageUtil;
import com.veclink.movnow_q2.view.BaseRemindDialog;
import java.io.Serializable;
import java.util.List;

public class WaterRemindListAdapter extends BaseAdapter
{
    public static class ViewHolder
    {

        public Button dleteBtn;
        public TextView remindLabel;

        public ViewHolder()
        {
        }
    }


    LayoutInflater inflater;
    Context mContext;
    public List remindList;

    public WaterRemindListAdapter(Context context)
    {
        mContext = context;
        remindList = StorageUtil.readRemindObject(mContext, "water_remind_objects_file.wao");
        inflater = LayoutInflater.from(mContext);
    }

    public int getCount()
    {
        if (remindList != null)
        {
            return remindList.size();
        } else
        {
            return 0;
        }
    }

    public Object getItem(int i)
    {
        return null;
    }

    public long getItemId(int i)
    {
        return 0L;
    }

    public View getView(final int position, View view, ViewGroup viewgroup)
    {
        final RemindObject remindObject;
        if (view == null)
        {
            view = inflater.inflate(0x7f030020, null);
            viewgroup = new ViewHolder();
            viewgroup.remindLabel = (TextView)view.findViewById(0x7f060074);
            viewgroup.dleteBtn = (Button)view.findViewById(0x7f060075);
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (ViewHolder)view.getTag();
        }
        remindObject = (RemindObject)remindList.get(position);
        ((ViewHolder) (viewgroup)).remindLabel.setText((new StringBuilder()).append(remindObject.getTime()).append(" ").append(mContext.getString(0x7f0c0103)).toString());
        ((ViewHolder) (viewgroup)).dleteBtn.setOnClickListener(new android.view.View.OnClickListener() {

            final WaterRemindListAdapter this$0;
            final int val$position;
            final RemindObject val$remindObject;

            public void onClick(View view1)
            {
                view1 = new BaseRemindDialog(mContext);
                view1.setTitle(mContext.getString(0x7f0c00e6));
                view1.setContent(mContext.getString(0x7f0c0153));
                view1.setOkListener(view1. new android.view.View.OnClickListener() {

                    final _cls1 this$1;
                    final BaseRemindDialog val$dialog;

                    public void onClick(View view)
                    {
                        dialog.dismiss();
                        view = new BleAlarmRemindParam(remindObject.getHour(), remindObject.getMinute(), new int[] {
                            0, 0, 0, 0, 0, 0, 0
                        });
                        view.openflag = 0;
                        (new Thread(new SetRemindTask(mContext, 1, view))).start();
                        MovnowTwoApplication.cancelRemind(remindObject.getHour(), remindObject.getMinute(), "dringk_water_remind_action");
                        remindList.remove(position);
                        StorageUtil.writeRemindObject(mContext, remindList, "water_remind_objects_file.wao");
                        notifyDataSetChanged();
                    }

            
            {
                this$1 = final__pcls1;
                dialog = BaseRemindDialog.this;
                super();
            }
                });
                view1.show();
            }

            
            {
                this$0 = WaterRemindListAdapter.this;
                remindObject = remindobject;
                position = i;
                super();
            }
        });
        view.setOnClickListener(new android.view.View.OnClickListener() {

            final WaterRemindListAdapter this$0;
            final int val$position;

            public void onClick(View view1)
            {
                view1 = new Intent(mContext, com/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity);
                Bundle bundle = new Bundle();
                bundle.putSerializable(com/veclink/movmow/allen/nurse/RemindObject.getSimpleName(), (Serializable)remindList.get(position));
                view1.putExtras(bundle);
                view1.putExtra("position", position);
                mContext.startActivity(view1);
            }

            
            {
                this$0 = WaterRemindListAdapter.this;
                position = i;
                super();
            }
        });
        return view;
    }
}
