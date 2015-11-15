// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.app.Activity;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import com.veclink.movmow.allen.nurse.RemindObject;
import com.veclink.movnow_q2.adapter.FamilyPhoneNumberListAdapter;
import com.veclink.movnow_q2.util.StorageUtil;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;
import java.util.HashMap;
import java.util.List;

public class SetFamilyActivity extends Activity
{

    private FamilyPhoneNumberListAdapter adapter;
    private Button add_number_btn;
    private ListView numberListView;
    private EditText phone_number_edit;
    private TitleBarRelativeLayout titleBar;

    public SetFamilyActivity()
    {
    }

    private void addListener()
    {
        add_number_btn.setOnClickListener(new android.view.View.OnClickListener() {

            final SetFamilyActivity this$0;

            public void onClick(View view)
            {
                if (adapter.remindList.size() < 3)
                {
                    if (!adapter.phoneNumberMap.containsKey(view = phone_number_edit.getText().toString()))
                    {
                        RemindObject remindobject = new RemindObject("", view);
                        adapter.remindList.add(remindobject);
                        adapter.phoneNumberMap.put(view, view);
                        StorageUtil.writeRemindObject(getApplicationContext(), adapter.remindList, "family_phone_number_file.wao");
                        adapter.notifyDataSetChanged();
                        phone_number_edit.setText("");
                        return;
                    }
                }
            }

            
            {
                this$0 = SetFamilyActivity.this;
                super();
            }
        });
        phone_number_edit.addTextChangedListener(new TextWatcher() {

            final SetFamilyActivity this$0;

            public void afterTextChanged(Editable editable)
            {
                if (editable.length() > 0 && !adapter.phoneNumberMap.containsKey(editable.toString()) && adapter.phoneNumberMap.size() < 3)
                {
                    add_number_btn.setEnabled(true);
                    return;
                } else
                {
                    add_number_btn.setEnabled(false);
                    return;
                }
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            
            {
                this$0 = SetFamilyActivity.this;
                super();
            }
        });
    }

    private void initListViewData()
    {
        adapter = new FamilyPhoneNumberListAdapter(this);
        numberListView.setAdapter(adapter);
    }

    private void initView()
    {
        titleBar = (TitleBarRelativeLayout)findViewById(0x7f060032);
        titleBar.setTitleText(getString(0x7f0c01b1));
        titleBar.setRightVisisble(8);
        phone_number_edit = (EditText)findViewById(0x7f060059);
        add_number_btn = (Button)findViewById(0x7f06005a);
        numberListView = (ListView)findViewById(0x7f06005b);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030012);
        initView();
        initListViewData();
        addListener();
    }



}
