// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.adapter;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.veclink.healthy.business.http.pojo.DeleteCalories;
import com.veclink.healthy.database.entity.UptakeCalorie;
import com.veclink.healthy.database.op.HealthyDBOperate;
import com.veclink.movnow_q2.activity.EditCaloriesActivity;
import com.veclink.movnow_q2.activity.ManagerCaloriesActivity;
import com.veclink.movnow_q2.util.StorageUtil;
import com.veclink.movnow_q2.view.BaseRemindDialog;
import com.veclink.waterfall.bitmapfun.util.ImageFetcher;
import de.greenrobot.event.EventBus;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class StaggeredAdapter extends BaseAdapter
{
    class ViewHolder
    {

        TextView contentView;
        TextView foodCalValue;
        ImageView imageView;
        final StaggeredAdapter this$0;

        ViewHolder()
        {
            this$0 = StaggeredAdapter.this;
            super();
        }
    }


    private LinkedList calories;
    private Context mContext;
    ImageFetcher mImageFetcher;
    private LinkedList mInfos;
    private ManagerCaloriesActivity managerCaloriesActivity;
    private int width;
    private WindowManager wm;

    public StaggeredAdapter(Context context, ImageFetcher imagefetcher)
    {
        width = 0;
        mInfos = new LinkedList();
        calories = new LinkedList();
        mImageFetcher = imagefetcher;
        mContext = context;
        managerCaloriesActivity = (ManagerCaloriesActivity)context;
        wm = (WindowManager)context.getSystemService("window");
        context = new DisplayMetrics();
        wm.getDefaultDisplay().getMetrics(context);
    }

    public void addItemLast(List list)
    {
        calories.addAll(list);
    }

    public void addItemTop(List list)
    {
        if (list != null)
        {
            list = list.iterator();
            do
            {
                if (!list.hasNext())
                {
                    break;
                }
                UptakeCalorie uptakecalorie = (UptakeCalorie)list.next();
                if (uptakecalorie != null)
                {
                    calories.addFirst(uptakecalorie);
                }
            } while (true);
        }
    }

    public void deleteItem(UptakeCalorie uptakecalorie)
    {
        if (uptakecalorie.getImgUrl() != null && !"".equals(uptakecalorie.getImgUrl()))
        {
            int i = uptakecalorie.getImgUrl().lastIndexOf("/");
            if (i >= 0)
            {
                Object obj = uptakecalorie.getImgUrl().substring(i);
                obj = new File(StorageUtil.getMovnowDataDirPath(), ((String) (obj)));
                if (((File) (obj)).exists())
                {
                    ((File) (obj)).delete();
                }
            }
        }
        calories.remove(uptakecalorie);
        HealthyDBOperate.delUptakeCalorie(mContext, uptakecalorie);
        refresh();
    }

    public LinkedList getCalories()
    {
        return calories;
    }

    public int getCount()
    {
        return calories.size();
    }

    public Object getItem(int i)
    {
        return calories.get(i);
    }

    public long getItemId(int i)
    {
        return 0L;
    }

    public CharSequence getTextByResID(int i)
    {
        return mContext.getResources().getText(i);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        final UptakeCalorie calorie = (UptakeCalorie)calories.get(i);
        View view1 = view;
        if (view == null)
        {
            view1 = LayoutInflater.from(viewgroup.getContext()).inflate(0x7f030034, null);
            view = new ViewHolder();
            view.imageView = (ImageView)view1.findViewById(0x7f0600a7);
            view.contentView = (TextView)view1.findViewById(0x7f06001a);
            view.foodCalValue = (TextView)view1.findViewById(0x7f06001b);
            view1.setTag(view);
        }
        view = (ViewHolder)view1.getTag();
        ((Button)view1.findViewById(0x7f0600a8)).setOnClickListener(new android.view.View.OnClickListener() {

            final StaggeredAdapter this$0;
            final UptakeCalorie val$calorie;

            public void onClick(View view2)
            {
                view2 = new BaseRemindDialog(mContext);
                view2.setTitle(mContext.getString(0x7f0c014e));
                view2.setContent(mContext.getString(0x7f0c0085));
                view2.setOkListener(view2. new android.view.View.OnClickListener() {

                    final _cls1 this$1;
                    final BaseRemindDialog val$dialog;

                    public void onClick(View view)
                    {
                        deleteItem(calorie);
                        dialog.dismiss();
                        EventBus.getDefault().post(new DeleteCalories());
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
                this$0 = StaggeredAdapter.this;
                calorie = uptakecalorie;
                super();
            }
        });
        ((ViewHolder) (view)).contentView.setText(String.valueOf(calorie.getFoodName()));
        ((ViewHolder) (view)).foodCalValue.setText(String.valueOf(calorie.getCalorieContent()));
        if (!TextUtils.isEmpty(calorie.getImgUrl()))
        {
            viewgroup = BitmapFactory.decodeFile(calorie.getImgUrl());
            if (viewgroup != null)
            {
                ((ViewHolder) (view)).imageView.setImageBitmap(viewgroup);
            }
        }
        ((ViewHolder) (view)).imageView.setOnClickListener(new android.view.View.OnClickListener() {

            final StaggeredAdapter this$0;
            final UptakeCalorie val$calorie;

            public void onClick(View view2)
            {
                view2 = new Intent(mContext, com/veclink/movnow_q2/activity/EditCaloriesActivity);
                Bundle bundle = new Bundle();
                bundle.putSerializable("Calorie", calorie);
                view2.putExtras(bundle);
                mContext.startActivity(view2);
                managerCaloriesActivity.finish();
            }

            
            {
                this$0 = StaggeredAdapter.this;
                calorie = uptakecalorie;
                super();
            }
        });
        return view1;
    }

    public void refresh()
    {
        notifyDataSetChanged();
    }

    public void setCalories(LinkedList linkedlist)
    {
        calories = linkedlist;
    }


}
