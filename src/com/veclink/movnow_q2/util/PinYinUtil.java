// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.util;

import net.sourceforge.pinyin4j.PinyinHelper;
import net.sourceforge.pinyin4j.format.HanyuPinyinCaseType;
import net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat;
import net.sourceforge.pinyin4j.format.HanyuPinyinToneType;
import net.sourceforge.pinyin4j.format.HanyuPinyinVCharType;
import net.sourceforge.pinyin4j.format.exception.BadHanyuPinyinOutputFormatCombination;

public class PinYinUtil
{

    public PinYinUtil()
    {
    }

    public static String getFirstSpell(String s)
    {
        StringBuffer stringbuffer;
        HanyuPinyinOutputFormat hanyupinyinoutputformat;
        int i;
        stringbuffer = new StringBuffer();
        s = s.toCharArray();
        hanyupinyinoutputformat = new HanyuPinyinOutputFormat();
        hanyupinyinoutputformat.setCaseType(HanyuPinyinCaseType.LOWERCASE);
        hanyupinyinoutputformat.setToneType(HanyuPinyinToneType.WITHOUT_TONE);
        i = 0;
_L7:
        if (i >= s.length) goto _L2; else goto _L1
_L1:
        if (s[i] <= '\200') goto _L4; else goto _L3
_L3:
        String as[] = PinyinHelper.toHanyuPinyinStringArray(s[i], hanyupinyinoutputformat);
        if (as != null)
        {
            try
            {
                stringbuffer.append(as[0].charAt(0));
            }
            catch (BadHanyuPinyinOutputFormatCombination badhanyupinyinoutputformatcombination)
            {
                badhanyupinyinoutputformatcombination.printStackTrace();
            }
        }
_L5:
        i++;
        continue; /* Loop/switch isn't completed */
_L4:
        stringbuffer.append(s[i]);
        if (true) goto _L5; else goto _L2
_L2:
        return stringbuffer.toString().replaceAll("\\W", "").trim().substring(0, 1).toUpperCase();
        if (true) goto _L7; else goto _L6
_L6:
    }

    public static String getPingYin(String s)
    {
        HanyuPinyinOutputFormat hanyupinyinoutputformat;
        char ac[];
        int i;
        hanyupinyinoutputformat = new HanyuPinyinOutputFormat();
        hanyupinyinoutputformat.setCaseType(HanyuPinyinCaseType.LOWERCASE);
        hanyupinyinoutputformat.setToneType(HanyuPinyinToneType.WITHOUT_TONE);
        hanyupinyinoutputformat.setVCharType(HanyuPinyinVCharType.WITH_V);
        ac = s.trim().toCharArray();
        s = "";
        i = 0;
_L2:
        String s1;
        if (i >= ac.length)
        {
            break MISSING_BLOCK_LABEL_135;
        }
        if (!Character.toString(ac[i]).matches("[\\u4E00-\\u9FA5]+"))
        {
            break MISSING_BLOCK_LABEL_100;
        }
        String as[] = PinyinHelper.toHanyuPinyinStringArray(ac[i], hanyupinyinoutputformat);
        s1 = (new StringBuilder()).append(s).append(as[0]).toString();
        s = s1;
        break MISSING_BLOCK_LABEL_137;
        s1 = (new StringBuilder()).append(s).append(Character.toString(ac[i])).toString();
        s = s1;
        break MISSING_BLOCK_LABEL_137;
        BadHanyuPinyinOutputFormatCombination badhanyupinyinoutputformatcombination;
        badhanyupinyinoutputformatcombination;
        badhanyupinyinoutputformatcombination.printStackTrace();
        return s;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
