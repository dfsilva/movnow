// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movmow.allen.nurse.adapter;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.TextView;
import com.veclink.movmow.allen.nurse.AddOrEditLongSittingRemindActivity;
import com.veclink.movmow.allen.nurse.RemindObject;
import com.veclink.movnow_q2.activity.MovnowTwoApplication;
import com.veclink.movnow_q2.util.StorageUtil;
import com.veclink.movnow_q2.view.BaseRemindDialog;
import java.io.Serializable;
import java.util.List;

public class LongSittingRemindListAdapter extends BaseAdapter
{
    public static class ViewHolder
    {

        public Button dleteBtn;
        public TextView remindLabel;

        public ViewHolder()
        {
        }
    }


    Handler handler;
    LayoutInflater inflater;
    Context mContext;
    List remindList;

    public LongSittingRemindListAdapter(Context context, List list, Handler handler1)
    {
        mContext = context;
        remindList = list;
        inflater = LayoutInflater.from(mContext);
        handler = handler1;
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
        String s;
        final RemindObject remindObject;
        View view1;
        if (view == null)
        {
            view1 = inflater.inflate(0x7f03001e, null);
            viewgroup = new ViewHolder();
            viewgroup.remindLabel = (TextView)view1.findViewById(0x7f060074);
            viewgroup.dleteBtn = (Button)view1.findViewById(0x7f060075);
            view1.setTag(viewgroup);
        } else
        {
            viewgroup = (ViewHolder)view.getTag();
            view1 = view;
        }
        remindObject = (RemindObject)remindList.get(position);
        s = String.format(mContext.getString(0x7f0c0108), new Object[] {
            Integer.valueOf(remindObject.getHour()), Integer.valueOf(remindObject.getMinute())
        });
        if (remindObject.getHour() != 0 || remindObject.getMinute() == 0) goto _L2; else goto _L1
_L1:
        view = String.format(mContext.getString(0x7f0c0107), new Object[] {
            Integer.valueOf(remindObject.getMinute())
        });
_L4:
        ((ViewHolder) (viewgroup)).remindLabel.setText((new StringBuilder()).append(view).append(remindObject.getTitle()).toString());
        ((ViewHolder) (viewgroup)).dleteBtn.setOnClickListener(new android.view.View.OnClickListener() {

            final LongSittingRemindListAdapter this$0;
            final int val$position;
            final RemindObject val$remindObject;

            public void onClick(View view2)
            {
                view2 = new BaseRemindDialog(mContext);
                view2.setTitle(mContext.getString(0x7f0c00e6));
                view2.setContent(mContext.getString(0x7f0c0155));
                view2.setOkListener(view2. new android.view.View.OnClickListener() {

                    final _cls1 this$1;
                    final BaseRemindDialog val$dialog;

                    public void onClick(View view)
                    {
                        dialog.dismiss();
                        remindList.remove(position);
                        StorageUtil.writeRemindObject(mContext, remindList, "sitting_remind_objects_file.wao");
                        notifyDataSetChanged();
                        handler.sendEmptyMessage(0);
                        MovnowTwoApplication.cancelRemind(remindObject.getHour(), remindObject.getMinute(), "sitting_long_remind_action");
                    }

            
            {
                this$1 = final__pcls1;
                dialog = BaseRemindDialog.this;
                super();
            }
                });
                view2.show();
            }

            
            {
                this$0 = LongSittingRemindListAdapter.this;
                position = i;
                remindObject = remindobject;
                super();
            }
        });
        view1.setOnClickListener(new android.view.View.OnClickListener() {

            final LongSittingRemindListAdapter this$0;
            final int val$position;

            public void onClick(View view2)
            {
                view2 = new Intent(mContext, com/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity);
                Bundle bundle = new Bundle();
                bundle.putSerializable(com/veclink/movmow/allen/nurse/RemindObject.getSimpleName(), (Serializable)remindList.get(position));
                view2.putExtras(bundle);
                view2.putExtra("position", position);
                mContext.startActivity(view2);
            }

            
            {
                this$0 = LongSittingRemindListAdapter.this;
                position = i;
                super();
            }
        });
        return view1;
_L2:
        view = s;
        if (remindObject.getHour() != 0)
        {
            view = s;
            if (remindObject.getMinute() == 0)
            {
                view = String.format(mContext.getString(0x7f0c0106), new Object[] {
                    Integer.valueOf(remindObject.getHour())
                });
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
