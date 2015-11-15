// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movmow.allen.nurse.adapter;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.TextView;
import com.veclink.bracelet.bean.BleAlarmRemindParam;
import com.veclink.healthy.task.SetRemindTask;
import com.veclink.movmow.allen.nurse.AddOrEditWakeUpRemindActivity;
import com.veclink.movmow.allen.nurse.RemindObject;
import com.veclink.movnow_q2.activity.MovnowTwoApplication;
import com.veclink.movnow_q2.util.StorageUtil;
import com.veclink.movnow_q2.view.BaseRemindDialog;
import java.util.List;

public class WakeUpListAdapter extends BaseAdapter
{
    public static class ViewHolder
    {

        public Button dleteBtn;
        public TextView remindLabel;
        public TextView repeatDayTextView;

        public ViewHolder()
        {
        }
    }


    LayoutInflater inflater;
    Context mContext;
    List remindList;
    String weekStringArray[];

    public WakeUpListAdapter(Context context)
    {
        mContext = context;
        remindList = StorageUtil.readRemindObject(mContext, "wakeup_remind_objects_file.wao");
        inflater = LayoutInflater.from(mContext);
        weekStringArray = context.getResources().getStringArray(0x7f050000);
    }

    private String getRepeartDayString(boolean aflag[])
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(mContext.getString(0x7f0c0144));
        if (aflag[0] && aflag[1] && aflag[2] && aflag[3] && aflag[4] && aflag[5] && aflag[6])
        {
            stringbuilder.append(mContext.getString(0x7f0c0147));
            return stringbuilder.toString();
        }
        if (aflag[1] && aflag[2] && aflag[3] && aflag[4] && aflag[5])
        {
            stringbuilder.append(mContext.getString(0x7f0c0146));
            return stringbuilder.toString();
        }
        boolean flag = false;
        for (int i = 0; i < aflag.length; i++)
        {
            if (aflag[i])
            {
                stringbuilder.append(weekStringArray[i]);
                flag = true;
            }
        }

        if (!flag)
        {
            stringbuilder.append(mContext.getString(0x7f0c0145));
            return stringbuilder.toString();
        } else
        {
            aflag = stringbuilder.toString();
            return aflag.substring(0, aflag.length() - 1);
        }
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

    public List getRemindList()
    {
        return remindList;
    }

    public View getView(final int position, View view, ViewGroup viewgroup)
    {
        final RemindObject remindObject;
        if (view == null)
        {
            view = inflater.inflate(0x7f030066, null);
            viewgroup = new ViewHolder();
            viewgroup.remindLabel = (TextView)view.findViewById(0x7f060074);
            viewgroup.dleteBtn = (Button)view.findViewById(0x7f060075);
            viewgroup.repeatDayTextView = (TextView)view.findViewById(0x7f0601cc);
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (ViewHolder)view.getTag();
        }
        remindObject = (RemindObject)remindList.get(position);
        ((ViewHolder) (viewgroup)).remindLabel.setText((new StringBuilder()).append(remindObject.getTime()).append(" ").append(mContext.getString(0x7f0c0109)).toString());
        ((ViewHolder) (viewgroup)).repeatDayTextView.setText(getRepeartDayString(remindObject.getRepeateArray()));
        ((ViewHolder) (viewgroup)).dleteBtn.setOnClickListener(new android.view.View.OnClickListener() {

            final WakeUpListAdapter this$0;
            final int val$position;

            public void onClick(View view1)
            {
                view1 = new BaseRemindDialog(mContext);
                view1.setTitle(mContext.getString(0x7f0c00e6));
                view1.setContent(mContext.getString(0x7f0c0151));
                view1.setOkListener(view1. new android.view.View.OnClickListener() {

                    final _cls1 this$1;
                    final BaseRemindDialog val$dialog;

                    public void onClick(View view)
                    {
                        dialog.dismiss();
                        view = new int[7];
                        view = (RemindObject)remindList.get(position);
                        BleAlarmRemindParam blealarmremindparam = new BleAlarmRemindParam(view.getHour(), view.getMinute(), new int[] {
                            0, 0, 0, 0, 0, 0, 0
                        });
                        blealarmremindparam.openflag = 0;
                        (new Thread(new SetRemindTask(mContext, 3, blealarmremindparam))).start();
                        remindList.remove(position);
                        StorageUtil.writeRemindObject(mContext, remindList, "wakeup_remind_objects_file.wao");
                        notifyDataSetChanged();
                        MovnowTwoApplication.cancelRemind(view.getHour(), view.getMinute(), "wake_up_remind_action");
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
                this$0 = WakeUpListAdapter.this;
                position = i;
                super();
            }
        });
        view.setOnClickListener(new android.view.View.OnClickListener() {

            final WakeUpListAdapter this$0;
            final int val$position;
            final RemindObject val$remindObject;

            public void onClick(View view1)
            {
                view1 = new Intent(mContext, com/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity);
                Bundle bundle = new Bundle();
                bundle.putSerializable(com/veclink/movmow/allen/nurse/RemindObject.getSimpleName(), remindObject);
                view1.putExtras(bundle);
                view1.putExtra("position", position);
                mContext.startActivity(view1);
            }

            
            {
                this$0 = WakeUpListAdapter.this;
                remindObject = remindobject;
                position = i;
                super();
            }
        });
        return view;
    }
}
