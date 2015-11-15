.class public Lcom/veclink/movnow_q2/util/DateTimeUtil;
.super Ljava/lang/Object;
.source "DateTimeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentDate(I)Ljava/util/Date;
    .locals 3
    .param p0, "pre"    # I

    .prologue
    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, "date":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 64
    .local v0, "calendar":Ljava/util/Calendar;
    if-gez p0, :cond_0

    const/4 v2, 0x5

    invoke-virtual {v0, v2, p0}, Ljava/util/Calendar;->add(II)V

    .line 65
    :cond_0
    return-object v1
.end method

.method public static getDateString(I)Ljava/lang/String;
    .locals 5
    .param p0, "pre"    # I

    .prologue
    .line 26
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 27
    .local v3, "dateformat1":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 28
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x0

    .line 29
    .local v1, "date":Ljava/util/Date;
    if-gez p0, :cond_0

    const/4 v4, 0x5

    invoke-virtual {v0, v4, p0}, Ljava/util/Calendar;->add(II)V

    .line 30
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, "dateString":Ljava/lang/String;
    return-object v2
.end method

.method public static getDateStringByCalendar(ILjava/util/Calendar;)Ljava/lang/String;
    .locals 4
    .param p0, "pre"    # I
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 70
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 71
    .local v2, "dateformat1":Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .line 72
    .local v0, "date":Ljava/util/Date;
    if-gez p0, :cond_0

    const/4 v3, 0x5

    invoke-virtual {p1, v3, p0}, Ljava/util/Calendar;->add(II)V

    .line 73
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "dateString":Ljava/lang/String;
    return-object v1
.end method

.method public static getDateStringByDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 20
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 21
    .local v1, "dateformat1":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "dateString":Ljava/lang/String;
    return-object v0
.end method

.method public static getHistoryTitleDateString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 167
    const-string v2, "MM/dd/yyyy"

    .line 168
    .local v2, "formatString":Ljava/lang/String;
    invoke-static {}, Lcom/veclink/movnow_q2/util/LanguageUtil;->isChina()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    const-string v2, "yyyy/MM/dd"

    .line 171
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 172
    .local v1, "dateformat1":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "dateString":Ljava/lang/String;
    return-object v0
.end method

.method public static getMonDateString(ILandroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "pre"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v3, 0x0

    .line 49
    .local v3, "dateformat1":Ljava/text/SimpleDateFormat;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "zh"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 50
    new-instance v3, Ljava/text/SimpleDateFormat;

    .end local v3    # "dateformat1":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0c0082

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dd"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0c0083

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 54
    .restart local v3    # "dateformat1":Ljava/text/SimpleDateFormat;
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 55
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x0

    .line 56
    .local v1, "date":Ljava/util/Date;
    if-gez p0, :cond_0

    const/4 v4, 0x5

    invoke-virtual {v0, v4, p0}, Ljava/util/Calendar;->add(II)V

    .line 57
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "dateString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p1}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->getWeek(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 52
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "date":Ljava/util/Date;
    .end local v2    # "dateString":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/text/SimpleDateFormat;

    .end local v3    # "dateformat1":Ljava/text/SimpleDateFormat;
    const-string v4, "MMMM dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v3    # "dateformat1":Ljava/text/SimpleDateFormat;
    goto :goto_0
.end method

.method public static getNowTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 122
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, "timeformat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "time":Ljava/lang/String;
    return-object v0
.end method

.method public static getShareDateStringByDate(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 38
    .local v1, "dateformat1":Ljava/text/SimpleDateFormat;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1    # "dateformat1":Ljava/text/SimpleDateFormat;
    const-string v2, "yyyy\u5e74MM\u6708dd\u65e5"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 43
    .restart local v1    # "dateformat1":Ljava/text/SimpleDateFormat;
    :goto_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "dateString":Ljava/lang/String;
    return-object v0

    .line 41
    .end local v0    # "dateString":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1    # "dateformat1":Ljava/text/SimpleDateFormat;
    const-string v2, "dd MMMM yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v1    # "dateformat1":Ljava/text/SimpleDateFormat;
    goto :goto_0
.end method

.method public static getStartSyncTime(Landroid/content/Context;I)[I
    .locals 9
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "dataType"    # I

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 109
    const/4 v3, 0x3

    new-array v2, v3, [I

    .line 110
    .local v2, "yearMonthDay":[I
    invoke-static {p0, p1}, Lcom/veclink/healthy/database/op/HealthyDBSyncRecordOperate;->loadLastSyncRecordByDataType(Landroid/content/Context;I)Lcom/veclink/healthy/database/entity/SyncRecord;

    move-result-object v1

    .line 111
    .local v1, "lastSyncrecord":Lcom/veclink/healthy/database/entity/SyncRecord;
    invoke-virtual {v1}, Lcom/veclink/healthy/database/entity/SyncRecord;->getSyncTime()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "lastSyncTime":Ljava/lang/String;
    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v4

    .line 113
    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v5

    .line 114
    const/16 v3, 0x8

    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v6

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "year"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "month"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "day"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/veclink/movnow_q2/util/DebugUtil;->println(Ljava/lang/String;)V

    .line 117
    return-object v2
.end method

.method private static getWeek(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "c"    # Ljava/util/Calendar;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f050000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "weekArray":[Ljava/lang/String;
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method public static getWhichOfMonthDateByDate(Ljava/util/Date;)I
    .locals 3
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 78
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, "formatterDay":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "dateString":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static getYearMothString(II)Ljava/lang/String;
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I

    .prologue
    .line 84
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "yearMonth":Ljava/lang/String;
    const/16 v1, 0xa

    if-ge p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    .line 87
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getYearMothString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "year"    # Ljava/lang/String;
    .param p1, "month"    # Ljava/lang/String;

    .prologue
    .line 93
    move-object v0, p0

    .line 94
    .local v0, "yearMonth":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 96
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static secToTime(I)Ljava/lang/String;
    .locals 6
    .param p0, "time"    # I

    .prologue
    .line 130
    const/4 v3, 0x0

    .line 131
    .local v3, "timeStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 132
    .local v0, "hour":I
    const/4 v1, 0x0

    .line 133
    .local v1, "minute":I
    const/4 v2, 0x0

    .line 134
    .local v2, "second":I
    if-gtz p0, :cond_0

    .line 135
    const-string v4, "00:00:00"

    .line 152
    :goto_0
    return-object v4

    .line 137
    :cond_0
    div-int/lit8 v1, p0, 0x3c

    .line 138
    const/16 v4, 0x3c

    if-ge v1, v4, :cond_1

    .line 140
    rem-int/lit8 v2, p0, 0x3c

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "00:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->unitFormat(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->unitFormat(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v4, v3

    .line 152
    goto :goto_0

    .line 143
    :cond_1
    div-int/lit8 v0, v1, 0x3c

    .line 144
    const/16 v4, 0x63

    if-le v0, v4, :cond_2

    .line 145
    const-string v4, "99:59:59"

    goto :goto_0

    .line 146
    :cond_2
    rem-int/lit8 v1, v1, 0x3c

    .line 147
    mul-int/lit16 v4, v0, 0xe10

    sub-int v4, p0, v4

    mul-int/lit8 v5, v1, 0x3c

    sub-int v2, v4, v5

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->unitFormat(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->unitFormat(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->unitFormat(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static unitFormat(I)Ljava/lang/String;
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "retStr":Ljava/lang/String;
    if-ltz p0, :cond_0

    const/16 v1, 0xa

    if-ge p0, v1, :cond_0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    .line 161
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
