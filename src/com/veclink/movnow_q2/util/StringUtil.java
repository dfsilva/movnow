// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.util;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.util.Base64;
import android.view.View;
import android.widget.PopupWindow;
import android.widget.Toast;
import java.io.File;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.veclink.movnow_q2.util:
//            LanguageUtil

public class StringUtil
{

    private static ConnectivityManager connectivity;

    public StringUtil()
    {
    }

    public static Drawable add2Bitmap(Context context, Bitmap bitmap, Bitmap bitmap1)
    {
        Bitmap bitmap2 = Bitmap.createBitmap(bitmap.getWidth(), Math.max(bitmap.getHeight(), bitmap1.getHeight()), android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap2);
        canvas.drawBitmap(bitmap, 0.0F, 0.0F, null);
        canvas.drawBitmap(bitmap1, 4F, 4F, null);
        return new BitmapDrawable(context.getResources(), bitmap2);
    }

    public static String commonDecode(String s)
    {
        try
        {
            s = URLDecoder.decode(new String(Base64.decode(s, 3)), "UTF-8");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return "";
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return "";
        }
        return s;
    }

    public static String commonEncode(String s)
    {
        s = Base64.encodeToString(URLEncoder.encode(s, "UTF-8").getBytes(), 3);
        return s;
        s;
_L2:
        return null;
        s;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String commonEncodeBase64(String s)
    {
        try
        {
            s = Base64.encodeToString(s.getBytes(), 3);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

    public static void createFile(String s)
    {
        com/veclink/movnow_q2/util/StringUtil;
        JVM INSTR monitorenter ;
        s = new File(s);
        if (!s.exists())
        {
            s.mkdirs();
        }
        com/veclink/movnow_q2/util/StringUtil;
        JVM INSTR monitorexit ;
        return;
        s;
        throw s;
    }

    public static boolean emptyString(String s)
    {
        return s == null || s.trim().length() == 0;
    }

    public static boolean equalNoThrow(String s, String s1)
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if (s != null)
        {
            flag = flag1;
            if (s1 != null)
            {
                flag = flag1;
                if (s.contentEquals(s1))
                {
                    flag = true;
                }
            }
        }
        return flag;
    }

    public static String fixNullStringAndTrim(String s)
    {
        if (s == null)
        {
            return "";
        } else
        {
            return s.trim();
        }
    }

    public static String formatCurrDate()
    {
        return (new SimpleDateFormat("yyyyMMddHHmmss")).format(new Date());
    }

    public static String formatCurrDate(String s)
    {
        return (new SimpleDateFormat(s)).format(new Date());
    }

    public static String formatCurrDate(Date date)
    {
        return (new SimpleDateFormat("yyyyMMdd")).format(date);
    }

    public static String formatCurrDay()
    {
        return (new SimpleDateFormat("yyyy-MM-dd")).format(new Date());
    }

    public static String formatCurrDay(Date date)
    {
        String s = "MM/dd/yyyy";
        if (LanguageUtil.isChina())
        {
            s = "yyyy/MM/dd";
        }
        return (new SimpleDateFormat(s)).format(date);
    }

    public static String fromatCurrDateByLanguage()
    {
        String s = "MM/dd/yyyy EEEE";
        if (LanguageUtil.isChina())
        {
            s = "yyyy/MM/dd EEEE";
        }
        return (new SimpleDateFormat(s)).format(new Date());
    }

    public static ConnectivityManager getConnectivityManager(Context context)
    {
        connectivity = (ConnectivityManager)context.getSystemService("connectivity");
        return connectivity;
    }

    public static Date getFirstDayOfWeek(int i, int j)
    {
        GregorianCalendar gregoriancalendar = new GregorianCalendar();
        gregoriancalendar.clear();
        gregoriancalendar.set(1, i);
        gregoriancalendar.set(2, 0);
        gregoriancalendar.set(5, 1);
        gregoriancalendar = (GregorianCalendar)gregoriancalendar.clone();
        gregoriancalendar.add(5, j * 7);
        return getFirstDayOfWeek(gregoriancalendar.getTime());
    }

    public static Date getFirstDayOfWeek(Date date)
    {
        GregorianCalendar gregoriancalendar = new GregorianCalendar();
        gregoriancalendar.setFirstDayOfWeek(2);
        gregoriancalendar.clear();
        gregoriancalendar.setTime(date);
        gregoriancalendar.set(7, gregoriancalendar.getFirstDayOfWeek());
        return gregoriancalendar.getTime();
    }

    public static Date getLastDayOfWeek(int i, int j)
    {
        GregorianCalendar gregoriancalendar = new GregorianCalendar();
        gregoriancalendar.clear();
        gregoriancalendar.set(1, i);
        gregoriancalendar.set(2, 0);
        gregoriancalendar.set(5, 1);
        gregoriancalendar = (GregorianCalendar)gregoriancalendar.clone();
        gregoriancalendar.add(5, j * 7);
        return getLastDayOfWeek(gregoriancalendar.getTime());
    }

    public static Date getLastDayOfWeek(Date date)
    {
        GregorianCalendar gregoriancalendar = new GregorianCalendar();
        gregoriancalendar.setFirstDayOfWeek(2);
        gregoriancalendar.clear();
        gregoriancalendar.setTime(date);
        gregoriancalendar.set(7, gregoriancalendar.getFirstDayOfWeek() + 6);
        return gregoriancalendar.getTime();
    }

    public static String getMD5Str(String s)
    {
        Object obj;
        MessageDigest messagedigest;
        messagedigest = null;
        obj = null;
        MessageDigest messagedigest1 = MessageDigest.getInstance("MD5");
        obj = messagedigest1;
        messagedigest = messagedigest1;
        messagedigest1.reset();
        obj = messagedigest1;
        messagedigest = messagedigest1;
        messagedigest1.update(s.getBytes("UTF-8"));
        obj = messagedigest1;
_L1:
        s = ((MessageDigest) (obj)).digest();
        obj = new StringBuffer();
        int i = 0;
        while (i < s.length) 
        {
            if (Integer.toHexString(s[i] & 0xff).length() == 1)
            {
                ((StringBuffer) (obj)).append("0").append(Integer.toHexString(s[i] & 0xff));
            } else
            {
                ((StringBuffer) (obj)).append(Integer.toHexString(s[i] & 0xff));
            }
            i++;
        }
        break MISSING_BLOCK_LABEL_151;
        s;
        System.out.println("NoSuchAlgorithmException caught!");
        System.exit(-1);
          goto _L1
        s;
        s.printStackTrace();
        obj = messagedigest;
          goto _L1
        return ((StringBuffer) (obj)).toString();
    }

    public static String getMonthFirstDay(Date date)
    {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(5, calendar.getActualMinimum(5));
        calendar.set(5, 1);
        return (new SimpleDateFormat("yyyyMMdd")).format(calendar.getTime());
    }

    public static String getMonthLastDay(Date date)
    {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(5, calendar.getActualMaximum(5));
        return (new SimpleDateFormat("yyyyMMdd")).format(calendar.getTime());
    }

    public static transient String getResourceStringWithParam(Context context, int i, Object aobj[])
    {
        return String.format(context.getResources().getString(i), aobj);
    }

    public static String getStringNotNull(String s)
    {
        String s1 = s;
        if (s == null)
        {
            s1 = "";
        }
        return s1;
    }

    public static PopupWindow initPopupWindow(Context context, View view, int i, int j, Drawable drawable)
    {
        context = new PopupWindow(view, i, j);
        context.setBackgroundDrawable(drawable);
        context.setOutsideTouchable(true);
        context.setAnimationStyle(0x1030002);
        context.update();
        context.setTouchable(true);
        context.setFocusable(true);
        return context;
    }

    public static PopupWindow initPopupWindow(Context context, View view, int i, int j, Drawable drawable, int k)
    {
        context = new PopupWindow(view, i, j);
        context.setBackgroundDrawable(drawable);
        context.setOutsideTouchable(true);
        context.setAnimationStyle(k);
        context.update();
        context.setTouchable(true);
        context.setFocusable(true);
        return context;
    }

    public static PopupWindow initPopupWindow(Context context, View view, Drawable drawable)
    {
        context = new PopupWindow(view, -1, -1);
        context.setBackgroundDrawable(drawable);
        context.setOutsideTouchable(true);
        context.setAnimationStyle(0x1030002);
        context.update();
        context.setTouchable(true);
        context.setFocusable(true);
        return context;
    }

    public static boolean integerCompare(Integer integer, Integer integer1)
    {
        boolean flag = false;
        if (integer == null)
        {
            if (integer1 == null)
            {
                flag = true;
            }
        } else
        if (integer1 != null)
        {
            return integer.compareTo(integer1) == 0;
        }
        return flag;
    }

    public static boolean isContainGBK(String s)
    {
        int i;
        i = 0;
        s = Pattern.compile("[\\u4e00-\\u9fa5a]").matcher(s);
        do
        {
label0:
            {
                if (!s.find())
                {
                    break label0;
                }
                int k = 0;
                int j = i;
                do
                {
                    i = j;
                    if (k > s.groupCount())
                    {
                        break;
                    }
                    j++;
                    k++;
                } while (true);
            }
        } while (true);
        System.out.println((new StringBuilder()).append("\u5171\u6709 ").append(i).append("\u4E2A ").toString());
        return s.matches();
    }

    public static boolean isEmpty(CharSequence charsequence)
    {
        return charsequence == null || charsequence.length() == 0;
    }

    public static boolean isNetworkAvailable(Context context)
    {
        connectivity = getConnectivityManager(context);
        if (connectivity != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        if ((context = connectivity.getAllNetworkInfo()) != null)
        {
            int i = 0;
            while (i < context.length) 
            {
                if (context[i].getState() == android.net.NetworkInfo.State.CONNECTED)
                {
                    return true;
                }
                i++;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public static boolean isNumeric(String s)
    {
        int i = s.length();
        do
        {
            int j = i - 1;
            if (j >= 0)
            {
                i = j;
                if (!Character.isDigit(s.charAt(j)))
                {
                    return false;
                }
            } else
            {
                return true;
            }
        } while (true);
    }

    public static boolean isNumericOrEmpty(String s)
    {
        if (s == null || s.trim().length() == 0)
        {
            return true;
        } else
        {
            return isNumeric(s);
        }
    }

    public static boolean isRegularMatch_Ch_num_Let(String s)
    {
        return Pattern.compile("^[\u4E00-\u9FA5a-zA-Z0-9]+$").matcher(s).matches();
    }

    public static boolean isRegularMatch_Let_sprit(String s)
    {
        return Pattern.compile("^</?[a-z]+>$").matcher(s).matches();
    }

    public static boolean loadPreferenceInfo(Context context, String s)
    {
        boolean flag = false;
        context = context.getSharedPreferences(context.getPackageName(), 0);
        if (context != null)
        {
            flag = context.getBoolean(s, false);
        }
        return flag;
    }

    public static boolean longCompare(Long long1, Long long2)
    {
        boolean flag = false;
        if (long1 == null)
        {
            if (long2 == null)
            {
                flag = true;
            }
        } else
        if (long2 != null)
        {
            return long1.compareTo(long2) == 0;
        }
        return flag;
    }

    public static String parseESC2Symbol(String s)
    {
        return s.replace("&amp;", "&").replace("&lt;", "<").replace("&gt;", ">").replace("&quot;", "\"").replace("&nbsp;", " ").replace("&copy;", "\251").replace("&reg;", "\256").replace("&apos;", "'");
    }

    public static int parseIntNotEmpty(String s)
    {
        return parseIntNotEmpty(s, 0);
    }

    public static int parseIntNotEmpty(String s, int i)
    {
        int j = i;
        if (s != null)
        {
            j = i;
            if (s.trim().length() > 0)
            {
                j = Integer.parseInt(s);
            }
        }
        return j;
    }

    public static String parseLabel2Null(String s)
    {
        return s.replace("^</?[a-z]+>$", "");
    }

    public static long parseLongNotEmpty(String s)
    {
        return parseLongNotEmpty(s, 0L);
    }

    public static long parseLongNotEmpty(String s, long l)
    {
        long l1 = l;
        if (s != null)
        {
            l1 = l;
            if (s.trim().length() > 0)
            {
                l1 = Long.parseLong(s);
            }
        }
        return l1;
    }

    public static void persistentPreferenceInfo(Context context, String s, boolean flag)
    {
        context = context.getSharedPreferences(context.getPackageName(), 0).edit();
        context.putBoolean(s, flag);
        context.commit();
    }

    public static void showPopupWindowBelowView(PopupWindow popupwindow, View view)
    {
        if (!popupwindow.isShowing())
        {
            popupwindow.showAsDropDown(view, 0, 0);
        }
    }

    public static void showPopupWindowCenter(PopupWindow popupwindow, View view)
    {
        if (!popupwindow.isShowing())
        {
            popupwindow.showAtLocation(view, 17, 0, 0);
        }
    }

    public static void showToastForeground(Context context, int i, int j)
    {
label0:
        {
            String s = ((android.app.ActivityManager.RunningTaskInfo)((ActivityManager)context.getSystemService("activity")).getRunningTasks(1).get(0)).topActivity.getPackageName();
            if (s != null && s.contentEquals(context.getPackageName()))
            {
                if (Looper.myLooper() == Looper.getMainLooper())
                {
                    break label0;
                }
                (new Handler(Looper.getMainLooper())).post(new Runnable(context, i, j) {

                    final Context val$context;
                    final int val$duration;
                    final int val$resId;

                    public void run()
                    {
                        Toast.makeText(context, resId, duration).show();
                    }

            
            {
                context = context1;
                resId = i;
                duration = j;
                super();
            }
                });
            }
            return;
        }
        Toast.makeText(context, i, j).show();
    }

    public static void showToastForeground(Context context, String s, int i)
    {
label0:
        {
            String s1 = ((android.app.ActivityManager.RunningTaskInfo)((ActivityManager)context.getSystemService("activity")).getRunningTasks(1).get(0)).topActivity.getPackageName();
            if (s1 != null && s1.contentEquals(context.getPackageName()))
            {
                if (Looper.myLooper() == Looper.getMainLooper())
                {
                    break label0;
                }
                (new Handler(Looper.getMainLooper())).post(new Runnable(context, s, i) {

                    final Context val$context;
                    final int val$duration;
                    final String val$text;

                    public void run()
                    {
                        Toast.makeText(context, text, duration).show();
                    }

            
            {
                context = context1;
                text = s;
                duration = i;
                super();
            }
                });
            }
            return;
        }
        Toast.makeText(context, s, i).show();
    }

    public static boolean stringCompare(String s, String s1)
    {
        boolean flag = false;
        if (s == null)
        {
            if (s1 == null)
            {
                flag = true;
            }
        } else
        if (s1 != null)
        {
            return s.equals(s1);
        }
        return flag;
    }

    public static Toast toast(Context context, Toast toast1, String s)
    {
        if (toast1 != null)
        {
            toast1.setText(s);
            toast1.show();
            return toast1;
        } else
        {
            context = Toast.makeText(context, s, 0);
            context.show();
            return context;
        }
    }

    public static Toast toast(Context context, Toast toast1, String s, int i)
    {
        if (toast1 != null)
        {
            toast1.setText(s);
            toast1.show();
            return toast1;
        } else
        {
            context = Toast.makeText(context, s, i);
            context.show();
            return context;
        }
    }
}
