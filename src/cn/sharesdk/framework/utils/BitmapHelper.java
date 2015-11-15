// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.TextUtils;
import android.view.View;
import cn.sharesdk.framework.network.i;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.reflect.Array;

// Referenced classes of package cn.sharesdk.framework.utils:
//            e, R

public class BitmapHelper
{

    public BitmapHelper()
    {
    }

    private static Bitmap a(Bitmap bitmap, int j, boolean flag)
    {
        if (!flag)
        {
            bitmap = bitmap.copy(bitmap.getConfig(), true);
        }
        if (j < 1)
        {
            return null;
        }
        int i11 = bitmap.getWidth();
        int j11 = bitmap.getHeight();
        int ai[] = new int[i11 * j11];
        bitmap.getPixels(ai, 0, i11, 0, 0, i11, j11);
        int j10 = i11 - 1;
        int k11 = j11 - 1;
        int k = i11 * j11;
        int l11 = j + j + 1;
        int ai1[] = new int[k];
        int ai2[] = new int[k];
        int ai3[] = new int[k];
        int ai4[] = new int[Math.max(i11, j11)];
        k = l11 + 1 >> 1;
        int i1 = k * k;
        int ai5[] = new int[i1 * 256];
        for (k = 0; k < i1 * 256; k++)
        {
            ai5[k] = k / i1;
        }

        int ai6[][] = (int[][])Array.newInstance(Integer.TYPE, new int[] {
            l11, 3
        });
        int i12 = j + 1;
        int l6 = 0;
        k = 0;
        for (int j6 = 0; j6 < j11; j6++)
        {
            int j1 = 0;
            int j7 = -j;
            int k2 = 0;
            int i3 = 0;
            int k3 = 0;
            int i4 = 0;
            int k4 = 0;
            int j5 = 0;
            int l5 = 0;
            int i2 = 0;
            while (j7 <= j) 
            {
                int i8 = ai[Math.min(j10, Math.max(j7, 0)) + k];
                int ai7[] = ai6[j7 + j];
                ai7[0] = (0xff0000 & i8) >> 16;
                ai7[1] = (0xff00 & i8) >> 8;
                ai7[2] = i8 & 0xff;
                i8 = i12 - Math.abs(j7);
                l5 += ai7[0] * i8;
                j5 += ai7[1] * i8;
                k4 += i8 * ai7[2];
                if (j7 > 0)
                {
                    k2 += ai7[0];
                    i2 += ai7[1];
                    j1 += ai7[2];
                } else
                {
                    i4 += ai7[0];
                    k3 += ai7[1];
                    i3 += ai7[2];
                }
                j7++;
            }
            j7 = j5;
            boolean flag1 = false;
            j5 = j;
            int j8 = l5;
            l5 = k4;
            for (int l4 = ((flag1) ? 1 : 0); l4 < i11; l4++)
            {
                ai1[k] = ai5[j8];
                ai2[k] = ai5[j7];
                ai3[k] = ai5[l5];
                int ai8[] = ai6[((j5 - j) + l11) % l11];
                int i13 = ai8[0];
                int j12 = ai8[1];
                int j9 = ai8[2];
                if (j6 == 0)
                {
                    ai4[l4] = Math.min(l4 + j + 1, j10);
                }
                int j13 = ai[ai4[l4] + l6];
                ai8[0] = (0xff0000 & j13) >> 16;
                ai8[1] = (0xff00 & j13) >> 8;
                ai8[2] = j13 & 0xff;
                k2 += ai8[0];
                i2 += ai8[1];
                j1 += ai8[2];
                j8 = (j8 - i4) + k2;
                j7 = (j7 - k3) + i2;
                l5 = (l5 - i3) + j1;
                j5 = (j5 + 1) % l11;
                ai8 = ai6[j5 % l11];
                i4 = (i4 - i13) + ai8[0];
                k3 = (k3 - j12) + ai8[1];
                i3 = (i3 - j9) + ai8[2];
                k2 -= ai8[0];
                i2 -= ai8[1];
                j1 -= ai8[2];
                k++;
            }

            l6 += i11;
        }

        for (int l = 0; l < i11; l++)
        {
            int i6 = 0;
            int i7 = -j * i11;
            int k6 = -j;
            int i5 = 0;
            int j3 = 0;
            int l3 = 0;
            int j4 = 0;
            int k1 = 0;
            int l2 = 0;
            int j2 = 0;
            int k5 = 0;
            while (k6 <= j) 
            {
                int k7 = Math.max(0, i7) + l;
                int ai9[] = ai6[k6 + j];
                ai9[0] = ai1[k7];
                ai9[1] = ai2[k7];
                ai9[2] = ai3[k7];
                int k8 = i12 - Math.abs(k6);
                int k9 = ai1[k7];
                int k10 = ai2[k7];
                int k12 = ai3[k7];
                if (k6 > 0)
                {
                    i5 += ai9[0];
                    k5 += ai9[1];
                    i6 += ai9[2];
                } else
                {
                    j4 += ai9[0];
                    l3 += ai9[1];
                    j3 += ai9[2];
                }
                k7 = i7;
                if (k6 < k11)
                {
                    k7 = i7 + i11;
                }
                k6++;
                k1 = k12 * k8 + k1;
                l2 = k10 * k8 + l2;
                j2 = k9 * k8 + j2;
                i7 = k7;
            }
            int l8 = l2;
            int l9 = j2;
            boolean flag2 = false;
            j2 = l;
            k6 = i6;
            i7 = k5;
            int l7 = i5;
            l2 = j3;
            j3 = l3;
            l3 = j4;
            j4 = j;
            i6 = l9;
            k5 = l8;
            i5 = k1;
            for (int l1 = ((flag2) ? 1 : 0); l1 < j11; l1++)
            {
                ai[j2] = 0xff000000 & ai[j2] | ai5[i6] << 16 | ai5[k5] << 8 | ai5[i5];
                int ai10[] = ai6[((j4 - j) + l11) % l11];
                int l10 = ai10[0];
                int i10 = ai10[1];
                int i9 = ai10[2];
                if (l == 0)
                {
                    ai4[l1] = Math.min(l1 + i12, k11) * i11;
                }
                int l12 = ai4[l1] + l;
                ai10[0] = ai1[l12];
                ai10[1] = ai2[l12];
                ai10[2] = ai3[l12];
                l7 += ai10[0];
                i7 += ai10[1];
                k6 += ai10[2];
                i6 = (i6 - l3) + l7;
                k5 = (k5 - j3) + i7;
                i5 = (i5 - l2) + k6;
                j4 = (j4 + 1) % l11;
                ai10 = ai6[j4];
                l3 = (l3 - l10) + ai10[0];
                j3 = (j3 - i10) + ai10[1];
                l2 = (l2 - i9) + ai10[2];
                l7 -= ai10[0];
                i7 -= ai10[1];
                k6 -= ai10[2];
                j2 += i11;
            }

        }

        bitmap.setPixels(ai, 0, i11, 0, 0, i11, j11);
        return bitmap;
    }

    private static String a(String s)
    {
        try
        {
            s = new FileInputStream(s);
            byte abyte0[] = new byte[8];
            s.read(abyte0);
            s.close();
            s = a(abyte0);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            e.b(s);
            return null;
        }
        return s;
    }

    private static String a(byte abyte0[])
    {
        if (a(abyte0, new byte[] {
    -1, -40, -1, -32
}) || a(abyte0, new byte[] {
    -1, -40, -1, -31
}))
        {
            return "jpg";
        }
        if (a(abyte0, new byte[] {
    -119, 80, 78, 71
}))
        {
            return "png";
        }
        if (a(abyte0, "GIF".getBytes()))
        {
            return "gif";
        }
        if (a(abyte0, "BM".getBytes()))
        {
            return "bmp";
        }
        if (a(abyte0, new byte[] {
    73, 73, 42
}) || a(abyte0, new byte[] {
    77, 77, 42
}))
        {
            return "tif";
        } else
        {
            return null;
        }
    }

    private static boolean a(byte abyte0[], byte abyte1[])
    {
        boolean flag1 = false;
        if (abyte0 != abyte1) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (abyte0 != null)
        {
            flag = flag1;
            if (abyte1 != null)
            {
                flag = flag1;
                if (abyte0.length >= abyte1.length)
                {
                    int j = 0;
label0:
                    do
                    {
label1:
                        {
                            if (j >= abyte1.length)
                            {
                                break label1;
                            }
                            flag = flag1;
                            if (abyte0[j] != abyte1[j])
                            {
                                break label0;
                            }
                            j++;
                        }
                    } while (true);
                }
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        return true;
    }

    public static Bitmap blur(Bitmap bitmap, int j, int k)
    {
        int l = bitmap.getWidth();
        int i1 = bitmap.getHeight();
        j = (int)((float)j / (float)k + 0.5F);
        Bitmap bitmap1 = Bitmap.createBitmap((int)((float)l / (float)k + 0.5F), (int)((float)i1 / (float)k + 0.5F), android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap1);
        canvas.scale(1.0F / (float)k, 1.0F / (float)k);
        Paint paint = new Paint();
        paint.setFlags(2);
        canvas.drawBitmap(bitmap, 0.0F, 0.0F, paint);
        a(bitmap1, j, true);
        return bitmap1;
    }

    public static Bitmap captureView(View view, int j, int k)
    {
        Bitmap bitmap = Bitmap.createBitmap(j, k, android.graphics.Bitmap.Config.ARGB_8888);
        view.draw(new Canvas(bitmap));
        return bitmap;
    }

    public static Bitmap cropBitmap(Bitmap bitmap, int j, int k, int l, int i1)
    {
        l = bitmap.getWidth() - j - l;
        i1 = bitmap.getHeight() - k - i1;
        if (l == bitmap.getWidth() && i1 == bitmap.getHeight())
        {
            return bitmap;
        } else
        {
            Bitmap bitmap1 = Bitmap.createBitmap(l, i1, android.graphics.Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmap1);
            Paint paint = new Paint();
            canvas.drawBitmap(bitmap, -j, -k, paint);
            return bitmap1;
        }
    }

    public static String downloadBitmap(Context context, String s)
    {
        return (new i()).a(context, s, "images", true);
    }

    public static int[] fixRect(int ai[], int ai1[])
    {
        int ai2[] = new int[2];
        if ((float)ai[0] / (float)ai[1] > (float)ai1[0] / (float)ai1[1])
        {
            ai2[0] = ai1[0];
            ai2[1] = (int)(((float)ai[1] * (float)ai1[0]) / (float)ai[0] + 0.5F);
            return ai2;
        } else
        {
            ai2[1] = ai1[1];
            ai2[0] = (int)(((float)ai[0] * (float)ai1[1]) / (float)ai[1] + 0.5F);
            return ai2;
        }
    }

    public static int[] fixRect_2(int ai[], int ai1[])
    {
        int ai2[] = new int[2];
        if ((float)ai[0] / (float)ai[1] > (float)ai1[0] / (float)ai1[1])
        {
            ai2[1] = ai1[1];
            ai2[0] = (int)(((float)ai[0] * (float)ai1[1]) / (float)ai[1] + 0.5F);
            return ai2;
        } else
        {
            ai2[0] = ai1[0];
            ai2[1] = (int)(((float)ai[1] * (float)ai1[0]) / (float)ai[0] + 0.5F);
            return ai2;
        }
    }

    public static Bitmap getBitmap(Context context, String s)
    {
        return getBitmap(downloadBitmap(context, s));
    }

    public static Bitmap getBitmap(File file, int j)
    {
        if (file == null || !file.exists())
        {
            return null;
        } else
        {
            file = new FileInputStream(file);
            Bitmap bitmap = getBitmap(((InputStream) (file)), j);
            file.close();
            return bitmap;
        }
    }

    public static Bitmap getBitmap(InputStream inputstream, int j)
    {
        if (inputstream == null)
        {
            return null;
        } else
        {
            android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
            options.inPreferredConfig = android.graphics.Bitmap.Config.RGB_565;
            options.inPurgeable = true;
            options.inInputShareable = true;
            options.inSampleSize = j;
            return BitmapFactory.decodeStream(inputstream, null, options);
        }
    }

    public static Bitmap getBitmap(String s)
    {
        return getBitmap(s, 1);
    }

    public static Bitmap getBitmap(String s, int j)
    {
        if (TextUtils.isEmpty(s))
        {
            return null;
        } else
        {
            return getBitmap(new File(s), j);
        }
    }

    public static android.graphics.Bitmap.CompressFormat getBmpFormat(String s)
    {
        String s1 = s.toLowerCase();
        if (s1.endsWith("png") || s1.endsWith("gif"))
        {
            return android.graphics.Bitmap.CompressFormat.PNG;
        }
        if (s1.endsWith("jpg") || s1.endsWith("jpeg") || s1.endsWith("bmp") || s1.endsWith("tif"))
        {
            return android.graphics.Bitmap.CompressFormat.JPEG;
        }
        s = a(s);
        if (s.endsWith("png") || s.endsWith("gif"))
        {
            return android.graphics.Bitmap.CompressFormat.PNG;
        } else
        {
            return android.graphics.Bitmap.CompressFormat.JPEG;
        }
    }

    public static android.graphics.Bitmap.CompressFormat getBmpFormat(byte abyte0[])
    {
label0:
        {
            String s = a(abyte0);
            android.graphics.Bitmap.CompressFormat compressformat = android.graphics.Bitmap.CompressFormat.JPEG;
            abyte0 = compressformat;
            if (s == null)
            {
                break label0;
            }
            if (!s.endsWith("png"))
            {
                abyte0 = compressformat;
                if (!s.endsWith("gif"))
                {
                    break label0;
                }
            }
            abyte0 = android.graphics.Bitmap.CompressFormat.PNG;
        }
        return abyte0;
    }

    public static boolean isBlackBitmap(Bitmap bitmap)
    {
        boolean flag = false;
        if (bitmap != null && !bitmap.isRecycled()) goto _L2; else goto _L1
_L1:
        flag = true;
_L5:
        return flag;
_L2:
        int ai[];
        int j;
        ai = new int[bitmap.getWidth() * bitmap.getHeight()];
        bitmap.getPixels(ai, 0, bitmap.getWidth(), 0, 0, bitmap.getWidth(), bitmap.getHeight());
        j = 0;
_L6:
        if (j >= ai.length)
        {
            break MISSING_BLOCK_LABEL_82;
        }
        if ((ai[j] & 0xffffff) == 0) goto _L4; else goto _L3
_L3:
        j = 1;
_L7:
        if (j == 0)
        {
            return true;
        }
          goto _L5
_L4:
        j++;
          goto _L6
        j = 0;
          goto _L7
    }

    public static int mixAlpha(int j, int k)
    {
        int l = j >>> 24;
        int i1 = (((0xff0000 & k) >>> 16) * (256 - l)) / 256;
        int j1 = ((256 - l) * ((0xff00 & k) >>> 8)) / 256;
        return ((256 - l) * (k & 0xff)) / 256 + l * (j & 0xff) | (((0xff0000 & j) >>> 16) * l + i1 << 16 | 0xff000000 | ((0xff00 & j) >>> 8) * l + j1 << 8);
    }

    public static Bitmap roundBitmap(Bitmap bitmap, int j, int k, float f, float f1, float f2, float f3)
    {
        int l = bitmap.getWidth();
        int i1 = bitmap.getHeight();
        Rect rect = new Rect(0, 0, l, i1);
        Bitmap bitmap1;
        Canvas canvas;
        Paint paint;
        Rect rect1;
        float af[];
        ShapeDrawable shapedrawable;
        if (l != j || i1 != k)
        {
            bitmap1 = Bitmap.createBitmap(j, k, android.graphics.Bitmap.Config.ARGB_8888);
        } else
        {
            bitmap1 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
        }
        canvas = new Canvas(bitmap1);
        paint = new Paint();
        rect1 = new Rect(0, 0, j, k);
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(0xff424242);
        af = new float[8];
        af[0] = f;
        af[1] = f;
        af[2] = f1;
        af[3] = f1;
        af[4] = f2;
        af[5] = f2;
        af[6] = f3;
        af[7] = f3;
        shapedrawable = new ShapeDrawable(new RoundRectShape(af, new RectF(0.0F, 0.0F, 0.0F, 0.0F), af));
        shapedrawable.setBounds(rect1);
        shapedrawable.draw(canvas);
        paint.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect1, paint);
        return bitmap1;
    }

    public static String saveBitmap(Context context, Bitmap bitmap)
    {
        return saveBitmap(context, bitmap, android.graphics.Bitmap.CompressFormat.JPEG, 80);
    }

    public static String saveBitmap(Context context, Bitmap bitmap, android.graphics.Bitmap.CompressFormat compressformat, int j)
    {
        Object obj = R.getCachePath(context, "images");
        context = ".jpg";
        if (compressformat == android.graphics.Bitmap.CompressFormat.PNG)
        {
            context = ".png";
        }
        context = new File(((String) (obj)), (new StringBuilder()).append(String.valueOf(System.currentTimeMillis())).append(context).toString());
        obj = new FileOutputStream(context);
        bitmap.compress(compressformat, j, ((java.io.OutputStream) (obj)));
        ((FileOutputStream) (obj)).flush();
        ((FileOutputStream) (obj)).close();
        return context.getAbsolutePath();
    }

    public static String saveViewToImage(View view)
    {
        if (view != null)
        {
            int j = view.getWidth();
            int k = view.getHeight();
            if (j > 0 && k > 0)
            {
                return saveViewToImage(view, j, k);
            }
        }
        return null;
    }

    public static String saveViewToImage(View view, int j, int k)
    {
        Bitmap bitmap = captureView(view, j, k);
        if (bitmap == null || bitmap.isRecycled())
        {
            return null;
        } else
        {
            view = new File(R.getCachePath(view.getContext(), "screenshot"), (new StringBuilder()).append(String.valueOf(System.currentTimeMillis())).append(".jpg").toString());
            FileOutputStream fileoutputstream = new FileOutputStream(view);
            bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 100, fileoutputstream);
            fileoutputstream.flush();
            fileoutputstream.close();
            return view.getAbsolutePath();
        }
    }
}
