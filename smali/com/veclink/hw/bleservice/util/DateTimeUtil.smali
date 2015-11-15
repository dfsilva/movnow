.class public Lcom/veclink/hw/bleservice/util/DateTimeUtil;
.super Ljava/lang/Object;
.source "DateTimeUtil.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTimeStringByDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 25
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 26
    .local v1, "timeformat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "time":Ljava/lang/String;
    return-object v0
.end method

.method public static getYearMonthDayArrayByDate(Ljava/util/Date;)[I
    .locals 6
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 14
    const/4 v2, 0x3

    new-array v1, v2, [I

    .line 16
    .local v1, "yearMonthDay":[I
    invoke-static {p0}, Lcom/veclink/hw/bleservice/util/DateTimeUtil;->getTimeStringByDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "time":Ljava/lang/String;
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v3

    .line 18
    const/4 v2, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 19
    const/4 v2, 0x2

    const/16 v3, 0x8

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 20
    return-object v1
.end method
