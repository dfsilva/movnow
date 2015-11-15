// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.util;

import android.content.Context;
import com.veclink.healthy.database.entity.SportData;
import java.math.BigDecimal;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.util:
//            SharedPreferencesUtils

public class StepDataConverterUtil
{

    private static final float KM_TO_MILE_C = 0.6213712F;
    public static final int TYPE_DISTANCES = 1;
    public static final int TYPE_KCAL = 2;
    public static final int TYPE_STEPS = 0;

    public StepDataConverterUtil()
    {
    }

    public static String getBmiHeightByChooseResult(Context context, float f)
    {
        if (((Integer)SharedPreferencesUtils.getSharedPreferences(context, "pre_DistanceType", Integer.valueOf(0))).intValue() == 0)
        {
            double d = round(f / 100F, 2, 4);
            return String.format(context.getString(0x7f0c0139), new Object[] {
                Double.valueOf(d)
            });
        } else
        {
            double d1 = round(f, 2, 4);
            return String.format(context.getString(0x7f0c013a), new Object[] {
                Double.valueOf(d1)
            });
        }
    }

    public static String getBmiWeightByChooseResult(Context context, float f)
    {
        if (((Integer)SharedPreferencesUtils.getSharedPreferences(context, "pre_Weight_Type", Integer.valueOf(1))).intValue() == 1)
        {
            f = roundFloat(f, 1, 4);
            return String.format(context.getString(0x7f0c013b), new Object[] {
                Float.valueOf(f)
            });
        } else
        {
            return String.format(context.getString(0x7f0c013c), new Object[] {
                Integer.valueOf((int)f)
            });
        }
    }

    public static int getCaloryByWeightAndDisStance(float f, double d, int i)
    {
        double d1 = 0.0D;
        i;
        JVM INSTR tableswitch 1 1: default 24
    //                   1 35;
           goto _L1 _L2
_L1:
        d = d1;
_L4:
        return (int)round(d, 0, 4);
_L2:
        d = 0.59999999999999998D * (double)f * d;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static double getDistance(Context context, int i)
    {
        return getFormatDistance(getStepDistanceByHeight(((Float)SharedPreferencesUtils.getSharedPreferences(context, "personal_height", Float.valueOf(160F))).floatValue(), ((Integer)SharedPreferencesUtils.getSharedPreferences(context, "pre_DistanceType", Integer.valueOf(0))).intValue()) * (double)i);
    }

    public static double getFormatDistance(double d)
    {
        if (1000D * d < 100D)
        {
            return 0.0D;
        } else
        {
            return round(d, 1, 5);
        }
    }

    public static float getFtByM(float f)
    {
        return roundFloat((float)((double)f * 3.2808399000000001D), 2, 4);
    }

    public static int getKcal(Context context, int i)
    {
        return getCaloryByWeightAndDisStance(((Float)SharedPreferencesUtils.getSharedPreferences(context, "personal_weight", Float.valueOf(50F))).floatValue(), getStepDistanceByHeight(((Float)SharedPreferencesUtils.getSharedPreferences(context, "personal_height", Float.valueOf(160F))).floatValue(), 0) * (double)i, 1);
    }

    public static float getKgUnitWeight(float f)
    {
        return roundFloat((float)((double)f / 2.2046226D), 2, 4);
    }

    public static float getKmDistance(float f)
    {
        return roundFloat(f / 0.6213712F, 2, 4);
    }

    public static float getLbUnitWeight(float f)
    {
        return roundFloat((float)((double)f * 2.2046226D), 1, 4);
    }

    public static float getMbyFt(float f)
    {
        return roundFloat((float)((double)f * 0.30480000000000002D), 2, 4);
    }

    public static float getMileDistance(float f)
    {
        return roundFloat(f * 0.6213712F, 2, 4);
    }

    public static double getRunStepDistanceByHeight(float f, int i)
    {
        double d = 0.0D;
        if (f > 50F) goto _L2; else goto _L1
_L1:
        d = 40D;
_L8:
        if (i != 0) goto _L4; else goto _L3
_L3:
        double d1 = d / 100000D;
_L6:
        return d1;
_L2:
        if (50F < f && f <= 60F)
        {
            d = 40D;
        } else
        if (60F < f && f <= 70F)
        {
            d = 40D;
        } else
        if (70F < f && f <= 80F)
        {
            d = 40D;
        } else
        if (80F < f && f <= 90F)
        {
            d = 40D;
        } else
        if (90F < f && f <= 100F)
        {
            d = 45D;
        } else
        if (100F < f && f <= 110F)
        {
            d = 49D;
        } else
        if (110F < f && f <= 120F)
        {
            d = 54D;
        } else
        if (120F < f && f <= 130F)
        {
            d = 58D;
        } else
        if (130F < f && f <= 140F)
        {
            d = 63D;
        } else
        if (140F < f && f <= 150F)
        {
            d = 67D;
        } else
        if (150F < f && f <= 160F)
        {
            d = 72D;
        } else
        if (160F < f && f <= 170F)
        {
            d = 76D;
        } else
        if (170F < f && f <= 180F)
        {
            d = 81D;
        } else
        if (180F < f && f <= 190F)
        {
            d = 85D;
        } else
        if (190F < f && f <= 200F)
        {
            d = 90D;
        } else
        if (f > 200F)
        {
            d = 90D;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        d1 = d;
        if (i != 1) goto _L6; else goto _L5
_L5:
        return (d / 100000D) * 0.62137120962142944D;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public static double getStepDistanceByHeight(float f, int i)
    {
        double d = 0.0D;
        if (f > 50F) goto _L2; else goto _L1
_L1:
        d = 20D;
_L4:
        double d1 = d / 100000D;
        d = d1;
        if (i == 1)
        {
            d = d1 * 0.62137120962142944D;
        }
        return d;
_L2:
        if (50F < f && f <= 60F)
        {
            d = 22D;
        } else
        if (60F < f && f <= 70F)
        {
            d = 25D;
        } else
        if (70F < f && f <= 80F)
        {
            d = 29D;
        } else
        if (80F < f && f <= 90F)
        {
            d = 33D;
        } else
        if (90F < f && f <= 100F)
        {
            d = 37D;
        } else
        if (100F < f && f <= 110F)
        {
            d = 40D;
        } else
        if (110F < f && f <= 120F)
        {
            d = 44D;
        } else
        if (120F < f && f <= 130F)
        {
            d = 48D;
        } else
        if (130F < f && f <= 140F)
        {
            d = 51D;
        } else
        if (140F < f && f <= 150F)
        {
            d = 55D;
        } else
        if (150F < f && f <= 160F)
        {
            d = 59D;
        } else
        if (160F < f && f <= 170F)
        {
            d = 62D;
        } else
        if (170F < f && f <= 180F)
        {
            d = 66D;
        } else
        if (180F < f && f <= 190F)
        {
            d = 70D;
        } else
        if (190F < f && f <= 200F)
        {
            d = 74D;
        } else
        if (f > 200F)
        {
            d = 74D;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static int getTotalStepByOriginData(List list)
    {
        int j = 0;
        int i = 0;
        if (list != null)
        {
            list = list.iterator();
            do
            {
                j = i;
                if (!list.hasNext())
                {
                    break;
                }
                i += Integer.parseInt(((SportData)list.next()).getSportStep());
            } while (true);
        }
        return j;
    }

    public static double round(double d, int i, int j)
    {
        return (new BigDecimal(d)).setScale(i, j).doubleValue();
    }

    public static float roundFloat(double d, int i, int j)
    {
        return (new BigDecimal(d)).setScale(i, j).floatValue();
    }
}
