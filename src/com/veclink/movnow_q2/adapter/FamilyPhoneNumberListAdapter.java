// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.TextView;
import com.veclink.movmow.allen.nurse.RemindObject;
import com.veclink.movnow_q2.util.StorageUtil;
import com.veclink.movnow_q2.view.BaseRemindDialog;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class FamilyPhoneNumberListAdapter extends BaseAdapter
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
    public HashMap phoneNumberMap;
    public List remindList;

    public FamilyPhoneNumberListAdapter(Context context)
    {
        phoneNumberMap = new HashMap();
        mContext = context;
        remindList = StorageUtil.readRemindObject(mContext, "family_phone_number_file.wao");
        inflater = LayoutInflater.from(mContext);
        if (remindList != null)
        {
            RemindObject remindobject;
            for (context = remindList.iterator(); context.hasNext(); phoneNumberMap.put(remindobject.getTitle(), remindobject.getTitle()))
            {
                remindobject = (RemindObject)context.next();
            }

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
        ((ViewHolder) (viewgroup)).remindLabel.setText(remindObject.getTitle());
        ((ViewHolder) (viewgroup)).dleteBtn.setOnClickListener(new android.view.View.OnClickListener() {

            final FamilyPhoneNumberListAdapter this$0;
            final int val$position;
            final RemindObject val$remindObject;

            public void onClick(View view1)
            {
                view1 = new BaseRemindDialog(mContext);
                view1.setTitle(mContext.getString(0x7f0c00e6));
                view1.setContent(mContext.getString(0x7f0c01b0));
                view1.setOkListener(view1. new android.view.View.OnClickListener() {

                    final _cls1 this$1;
                    final BaseRemindDialog val$dialog;

                    public void onClick(View view)
                    {
                        dialog.dismiss();
                        remindList.remove(position);
                        phoneNumberMap.remove(remindObject.getTitle());
                        StorageUtil.writeRemindObject(mContext, remindList, "family_phone_number_file.wao");
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
                this$0 = FamilyPhoneNumberListAdapter.this;
                position = i;
                remindObject = remindobject;
                super();
            }
        });
        return view;
    }
}
