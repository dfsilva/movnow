.class public Lcom/veclink/movnow_q2/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field private static connectivity:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add2Bitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "first"    # Landroid/graphics/Bitmap;
    .param p2, "second"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x40800000    # 4.0f

    const/4 v7, 0x0

    .line 328
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 329
    .local v4, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 330
    .local v2, "height":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 331
    .local v3, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 332
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, p1, v7, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 333
    invoke-virtual {v0, p2, v8, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 334
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v1, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 335
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    return-object v1
.end method

.method public static commonDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "encrypted"    # Ljava/lang/String;

    .prologue
    .line 698
    const-string v1, ""

    .line 700
    .local v1, "decoded":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 701
    .local v0, "base64Dec":Ljava/lang/String;
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 705
    .end local v0    # "base64Dec":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 703
    :catch_0
    move-exception v2

    goto :goto_0

    .line 702
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static commonEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "srcString"    # Ljava/lang/String;

    .prologue
    .line 716
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {p0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 717
    .local v1, "urlEncoded":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 722
    .end local v1    # "urlEncoded":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 720
    :catch_0
    move-exception v2

    .line 722
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 719
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static commonEncodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "srcString"    # Ljava/lang/String;

    .prologue
    .line 731
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 736
    :goto_0
    return-object v0

    .line 734
    :catch_0
    move-exception v1

    .line 736
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized createFile(Ljava/lang/String;)V
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 166
    const-class v2, Lcom/veclink/movnow_q2/util/StringUtil;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_0
    monitor-exit v2

    return-void

    .line 166
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static emptyString(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 624
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 625
    :cond_0
    const/4 v0, 0x1

    .line 627
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equalNoThrow(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 608
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 609
    invoke-virtual {p0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    const/4 v0, 0x1

    .line 614
    :cond_0
    return v0
.end method

.method public static fixNullStringAndTrim(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 597
    if-nez p0, :cond_0

    .line 598
    const-string v0, ""

    .line 600
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatCurrDate()Ljava/lang/String;
    .locals 3

    .prologue
    .line 141
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method public static formatCurrDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "format"    # Ljava/lang/String;

    .prologue
    .line 119
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method public static formatCurrDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 130
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method public static formatCurrDay()Ljava/lang/String;
    .locals 3

    .prologue
    .line 152
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 153
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method public static formatCurrDay(Ljava/util/Date;)Ljava/lang/String;
    .locals 4
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 311
    const-string v0, "MM/dd/yyyy"

    .line 312
    .local v0, "format":Ljava/lang/String;
    invoke-static {}, Lcom/veclink/movnow_q2/util/LanguageUtil;->isChina()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    const-string v0, "yyyy/MM/dd"

    .line 315
    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 316
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "ret":Ljava/lang/String;
    return-object v1
.end method

.method public static fromatCurrDateByLanguage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 101
    const-string v0, "MM/dd/yyyy EEEE"

    .line 102
    .local v0, "format":Ljava/lang/String;
    invoke-static {}, Lcom/veclink/movnow_q2/util/LanguageUtil;->isChina()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    const-string v0, "yyyy/MM/dd EEEE"

    .line 105
    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 106
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "ret":Ljava/lang/String;
    return-object v1
.end method

.method public static getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/veclink/movnow_q2/util/StringUtil;->connectivity:Landroid/net/ConnectivityManager;

    .line 183
    sget-object v0, Lcom/veclink/movnow_q2/util/StringUtil;->connectivity:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static getFirstDayOfWeek(II)Ljava/util/Date;
    .locals 6
    .param p0, "year"    # I
    .param p1, "week"    # I

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 218
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 219
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 220
    invoke-virtual {v0, v4, p0}, Ljava/util/Calendar;->set(II)V

    .line 221
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 222
    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 224
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/GregorianCalendar;

    .line 225
    .local v1, "cal":Ljava/util/Calendar;
    mul-int/lit8 v2, p1, 0x7

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->add(II)V

    .line 226
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/movnow_q2/util/StringUtil;->getFirstDayOfWeek(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public static getFirstDayOfWeek(Ljava/util/Date;)Ljava/util/Date;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 256
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 257
    .local v0, "c":Ljava/util/Calendar;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 258
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 259
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 260
    const/4 v1, 0x7

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 261
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static getLastDayOfWeek(II)Ljava/util/Date;
    .locals 6
    .param p0, "year"    # I
    .param p1, "week"    # I

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 237
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 238
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 239
    invoke-virtual {v0, v4, p0}, Ljava/util/Calendar;->set(II)V

    .line 240
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 241
    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 243
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/GregorianCalendar;

    .line 244
    .local v1, "cal":Ljava/util/Calendar;
    mul-int/lit8 v2, p1, 0x7

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->add(II)V

    .line 246
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/movnow_q2/util/StringUtil;->getLastDayOfWeek(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public static getLastDayOfWeek(Ljava/util/Date;)Ljava/util/Date;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 271
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 272
    .local v0, "c":Ljava/util/Calendar;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 273
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 274
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 275
    const/4 v1, 0x7

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 276
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static getMD5Str(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v4, 0x0

    .line 47
    .local v4, "messageDigest":Ljava/security/MessageDigest;
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 48
    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    .line 49
    const-string v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    :goto_0
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 57
    .local v0, "byteArray":[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    .local v3, "md5StrBuff":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v0

    if-ge v2, v5, :cond_1

    .line 59
    aget-byte v5, v0, v2

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 60
    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    aget-byte v6, v0, v2

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 50
    .end local v0    # "byteArray":[B
    .end local v2    # "i":I
    .end local v3    # "md5StrBuff":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "NoSuchAlgorithmException caught!"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 52
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 53
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 54
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 62
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "byteArray":[B
    .restart local v2    # "i":I
    .restart local v3    # "md5StrBuff":Ljava/lang/StringBuffer;
    :cond_0
    aget-byte v5, v0, v2

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 64
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getMonthFirstDay(Ljava/util/Date;)Ljava/lang/String;
    .locals 4
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    const/4 v3, 0x5

    .line 284
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 285
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 286
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 288
    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 289
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 290
    .local v1, "simpleFormate":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getMonthLastDay(Ljava/util/Date;)Ljava/lang/String;
    .locals 4
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    const/4 v3, 0x5

    .line 297
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 298
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 299
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 301
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 302
    .local v1, "simpleFormate":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static varargs getResourceStringWithParam(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 747
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "formatString":Ljava/lang/String;
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStringNotNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 770
    if-nez p0, :cond_0

    .line 771
    const-string p0, ""

    .line 773
    :cond_0
    return-object p0
.end method

.method public static initPopupWindow(Landroid/content/Context;Landroid/view/View;IILandroid/graphics/drawable/Drawable;)Landroid/widget/PopupWindow;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x1

    .line 372
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 373
    .local v0, "mPopupWindow":Landroid/widget/PopupWindow;
    invoke-virtual {v0, p4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 374
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 376
    const v1, 0x1030002

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 377
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 378
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 379
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 380
    return-object v0
.end method

.method public static initPopupWindow(Landroid/content/Context;Landroid/view/View;IILandroid/graphics/drawable/Drawable;I)Landroid/widget/PopupWindow;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "animStyle"    # I

    .prologue
    const/4 v1, 0x1

    .line 350
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 351
    .local v0, "mPopupWindow":Landroid/widget/PopupWindow;
    invoke-virtual {v0, p4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 352
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 354
    invoke-virtual {v0, p5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 355
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 356
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 357
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 358
    return-object v0
.end method

.method public static initPopupWindow(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)Landroid/widget/PopupWindow;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 393
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 394
    .local v0, "mPopupWindow":Landroid/widget/PopupWindow;
    invoke-virtual {v0, p2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 397
    const v1, 0x1030002

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 398
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 399
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 400
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 401
    return-object v0
.end method

.method public static integerCompare(Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 2
    .param p0, "integer1"    # Ljava/lang/Integer;
    .param p1, "integer2"    # Ljava/lang/Integer;

    .prologue
    .line 668
    const/4 v0, 0x0

    .line 669
    .local v0, "bRet":Z
    if-nez p0, :cond_1

    .line 670
    if-nez p1, :cond_0

    .line 671
    const/4 v0, 0x1

    .line 679
    :cond_0
    :goto_0
    return v0

    .line 675
    :cond_1
    if-eqz p1, :cond_0

    .line 676
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isContainGBK(Ljava/lang/String;)Z
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "count":I
    const-string v4, "[\\u4e00-\\u9fa5a]"

    .line 86
    .local v4, "regEx":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 87
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 88
    .local v2, "m":Ljava/util/regex/Matcher;
    :cond_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 89
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    if-gt v1, v5, :cond_0

    .line 90
    add-int/lit8 v0, v0, 0x1

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "i":I
    :cond_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5171\u6709 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u4e2a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    return v5
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 72
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 73
    :cond_0
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-static {p0}, Lcom/veclink/movnow_q2/util/StringUtil;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v3

    sput-object v3, Lcom/veclink/movnow_q2/util/StringUtil;->connectivity:Landroid/net/ConnectivityManager;

    .line 194
    sget-object v3, Lcom/veclink/movnow_q2/util/StringUtil;->connectivity:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v2

    .line 197
    :cond_1
    sget-object v3, Lcom/veclink/movnow_q2/util/StringUtil;->connectivity:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    .line 198
    .local v1, "info":[Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 199
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 200
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    .line 201
    const/4 v2, 0x1

    goto :goto_0

    .line 199
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 574
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 575
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 576
    const/4 v1, 0x0

    .line 579
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isNumericOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 589
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 590
    :cond_0
    const/4 v0, 0x1

    .line 593
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/veclink/movnow_q2/util/StringUtil;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isRegularMatch_Ch_num_Let(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 467
    const-string v2, "^[\u4e00-\u9fa5a-zA-Z0-9]+$"

    .line 468
    .local v2, "regular":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 469
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 471
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method public static isRegularMatch_Let_sprit(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 481
    const-string v2, "^</?[a-z]+>$"

    .line 482
    .local v2, "regular":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 483
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 485
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method public static loadPreferenceInfo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 442
    const/4 v0, 0x0

    .line 443
    .local v0, "isLogin":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 444
    .local v1, "preferences":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 445
    invoke-interface {v1, p1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 447
    :cond_0
    return v0
.end method

.method public static longCompare(Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 2
    .param p0, "integer1"    # Ljava/lang/Long;
    .param p1, "integer2"    # Ljava/lang/Long;

    .prologue
    .line 683
    const/4 v0, 0x0

    .line 684
    .local v0, "bRet":Z
    if-nez p0, :cond_1

    .line 685
    if-nez p1, :cond_0

    .line 686
    const/4 v0, 0x1

    .line 694
    :cond_0
    :goto_0
    return v0

    .line 690
    :cond_1
    if-eqz p1, :cond_0

    .line 691
    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static parseESC2Symbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 758
    const-string v0, "&amp;"

    const-string v1, "&"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 759
    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 760
    const-string v0, "&gt;"

    const-string v1, ">"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 761
    const-string v0, "&quot;"

    const-string v1, "\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 762
    const-string v0, "&nbsp;"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 763
    const-string v0, "&copy;"

    const-string v1, "\u00a9"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 764
    const-string v0, "&reg;"

    const-string v1, "\u00ae"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 765
    const-string v0, "&apos;"

    const-string v1, "\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 766
    return-object p0
.end method

.method public static parseIntNotEmpty(Ljava/lang/String;)I
    .locals 1
    .param p0, "numberString"    # Ljava/lang/String;

    .prologue
    .line 638
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/veclink/movnow_q2/util/StringUtil;->parseIntNotEmpty(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static parseIntNotEmpty(Ljava/lang/String;I)I
    .locals 1
    .param p0, "numberString"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .prologue
    .line 631
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 632
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 634
    .end local p1    # "defValue":I
    :cond_0
    return p1
.end method

.method public static parseLabel2Null(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 434
    const-string v0, "^</?[a-z]+>$"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 435
    return-object p0
.end method

.method public static parseLongNotEmpty(Ljava/lang/String;)J
    .locals 2
    .param p0, "numberString"    # Ljava/lang/String;

    .prologue
    .line 649
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/veclink/movnow_q2/util/StringUtil;->parseLongNotEmpty(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLongNotEmpty(Ljava/lang/String;J)J
    .locals 1
    .param p0, "numberString"    # Ljava/lang/String;
    .param p1, "defValue"    # J

    .prologue
    .line 642
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 643
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 645
    .end local p1    # "defValue":J
    :cond_0
    return-wide p1
.end method

.method public static persistentPreferenceInfo(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isLogin"    # Z

    .prologue
    .line 454
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 455
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 456
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 457
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 458
    return-void
.end method

.method public static showPopupWindowBelowView(Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 2
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 421
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    invoke-virtual {p0, p1, v1, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 424
    :cond_0
    return-void
.end method

.method public static showPopupWindowCenter(Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 2
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 410
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    const/16 v0, 0x11

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 413
    :cond_0
    return-void
.end method

.method public static showToastForeground(Landroid/content/Context;II)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 548
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 549
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 550
    .local v1, "foregroundTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 552
    .local v3, "topAppPackage":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 553
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    if-eq v4, v5, :cond_1

    .line 554
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 555
    .local v2, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/veclink/movnow_q2/util/StringUtil$2;

    invoke-direct {v4, p0, p1, p2}, Lcom/veclink/movnow_q2/util/StringUtil$2;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 565
    .end local v2    # "handler":Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static showToastForeground(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 528
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 529
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 530
    .local v1, "foregroundTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 532
    .local v3, "topAppPackage":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 533
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    if-eq v4, v5, :cond_1

    .line 534
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 535
    .local v2, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/veclink/movnow_q2/util/StringUtil$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/veclink/movnow_q2/util/StringUtil$1;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 545
    .end local v2    # "handler":Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static stringCompare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .prologue
    .line 653
    const/4 v0, 0x0

    .line 654
    .local v0, "bRet":Z
    if-nez p0, :cond_1

    .line 655
    if-nez p1, :cond_0

    .line 656
    const/4 v0, 0x1

    .line 664
    :cond_0
    :goto_0
    return v0

    .line 660
    :cond_1
    if-eqz p1, :cond_0

    .line 661
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static toast(Landroid/content/Context;Landroid/widget/Toast;Ljava/lang/String;)Landroid/widget/Toast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toast"    # Landroid/widget/Toast;
    .param p2, "showStr"    # Ljava/lang/String;

    .prologue
    .line 496
    if-eqz p1, :cond_0

    .line 497
    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 498
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 504
    :goto_0
    return-object p1

    .line 500
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 501
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static toast(Landroid/content/Context;Landroid/widget/Toast;Ljava/lang/String;I)Landroid/widget/Toast;
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toast"    # Landroid/widget/Toast;
    .param p2, "showStr"    # Ljava/lang/String;
    .param p3, "showTime"    # I

    .prologue
    .line 516
    if-eqz p1, :cond_0

    .line 517
    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 518
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 524
    :goto_0
    return-object p1

    .line 520
    :cond_0
    invoke-static {p0, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 521
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
