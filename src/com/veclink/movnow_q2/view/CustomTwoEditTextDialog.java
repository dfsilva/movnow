// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class CustomTwoEditTextDialog extends Dialog
{

    private Context m_Context;
    private Button m_btnEditCancel;
    private Button m_btnEditSure;
    private EditText m_etFirstText;
    private EditText m_etSecondText;
    private TextView m_tvTip;

    public CustomTwoEditTextDialog(Context context)
    {
        this(context, 0x7f0b000e);
    }

    public CustomTwoEditTextDialog(Context context, int i)
    {
        super(context, i);
        m_Context = context;
    }

    public static String filter(String s)
    {
        return s.replaceAll("[^(a-zA-Z0-9\\u4e00-\\u9fa5)]", "");
    }

    private static boolean isChinese(char c)
    {
        Character.UnicodeBlock unicodeblock = Character.UnicodeBlock.of(c);
        return unicodeblock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS || unicodeblock == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS || unicodeblock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A || unicodeblock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B || unicodeblock == Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION || unicodeblock == Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS || unicodeblock == Character.UnicodeBlock.GENERAL_PUNCTUATION;
    }

    public static boolean isChinese(String s)
    {
        s = s.toCharArray();
        for (int i = 0; i < s.length; i++)
        {
            if (isChinese(s[i]))
            {
                return true;
            }
        }

        return false;
    }

    public CustomTwoEditTextDialog createDialog()
    {
        setContentView(0x7f03002b);
        getWindow().getAttributes().gravity = 17;
        getWindow().getAttributes().width = -2;
        getWindow().getAttributes().height = -2;
        setCanceledOnTouchOutside(false);
        m_tvTip = (TextView)findViewById(0x7f06008a);
        m_tvTip.setText(m_Context.getResources().getString(0x7f0c0044));
        m_etFirstText = (EditText)findViewById(0x7f060095);
        m_etFirstText.setHintTextColor(0xff888888);
        m_etFirstText.addTextChangedListener(new TextWatcher() {

            final CustomTwoEditTextDialog this$0;

            public void afterTextChanged(Editable editable)
            {
                if (CustomTwoEditTextDialog.isChinese(editable.toString()))
                {
                    editable = new android.text.InputFilter.LengthFilter(8);
                    m_etFirstText.setFilters(new InputFilter[] {
                        editable
                    });
                } else
                {
                    editable = new android.text.InputFilter.LengthFilter(21);
                    m_etFirstText.setFilters(new InputFilter[] {
                        editable
                    });
                }
                m_etFirstText.setSelection(m_etFirstText.length());
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            
            {
                this$0 = CustomTwoEditTextDialog.this;
                super();
            }
        });
        m_etSecondText = (EditText)findViewById(0x7f060096);
        m_etSecondText.setHintTextColor(0xff888888);
        m_etSecondText.setInputType(2);
        m_btnEditCancel = (Button)findViewById(0x7f06008d);
        m_btnEditCancel.setText(m_Context.getString(0x7f0c0047));
        m_btnEditSure = (Button)findViewById(0x7f06008e);
        m_btnEditSure.setText(m_Context.getString(0x7f0c0046));
        return this;
    }

    public String getFirstEditText()
    {
        return m_etFirstText.getText().toString();
    }

    public String getSecondEditText()
    {
        return m_etSecondText.getText().toString();
    }

    public void onAttachedToWindow()
    {
        super.onAttachedToWindow();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
    }

    public void onWindowFocusChanged(boolean flag)
    {
    }

    public CustomTwoEditTextDialog setFirstEditText(String s)
    {
        if (s.equals(m_Context.getResources().getString(0x7f0c0073)))
        {
            return this;
        } else
        {
            m_etFirstText.setText(s);
            return this;
        }
    }

    public CustomTwoEditTextDialog setFirstHint(String s)
    {
        m_etFirstText.setHint(s);
        return this;
    }

    public CustomTwoEditTextDialog setNegativeButton(String s, android.view.View.OnClickListener onclicklistener)
    {
        m_btnEditCancel.setText(s);
        m_btnEditCancel.setOnClickListener(onclicklistener);
        m_btnEditCancel.setTag(Integer.valueOf(0));
        return this;
    }

    public CustomTwoEditTextDialog setPositiveButton(String s, android.view.View.OnClickListener onclicklistener)
    {
        m_btnEditSure.setText(s);
        m_btnEditSure.setOnClickListener(onclicklistener);
        m_btnEditSure.setTag(Integer.valueOf(1));
        return this;
    }

    public CustomTwoEditTextDialog setSecondEditText(String s)
    {
        if (s.equals(m_Context.getResources().getString(0x7f0c0073)))
        {
            return this;
        } else
        {
            m_etSecondText.setText(s);
            return this;
        }
    }

    public CustomTwoEditTextDialog setSecondHint(String s)
    {
        m_etSecondText.setHint(s);
        return this;
    }

    public CustomTwoEditTextDialog setTip(String s)
    {
        m_tvTip.setText(s);
        return this;
    }

    public void showDialog()
    {
        show();
    }

}
