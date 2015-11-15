.class public Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;
.super Ljava/lang/Object;
.source "CalendarHelper.java"


# static fields
.field public static MMMFormat:Ljava/text/SimpleDateFormat;

.field public static yyyyMMddFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->yyyyMMddFormat:Ljava/text/SimpleDateFormat;

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->MMMFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDateTimeToDate(Lhirondelle/date4j/DateTime;)Ljava/util/Date;
    .locals 5
    .param p0, "dateTime"    # Lhirondelle/date4j/DateTime;

    .prologue
    .line 122
    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 123
    .local v3, "year":I
    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 124
    .local v1, "datetimeMonth":I
    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getDay()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 126
    .local v2, "day":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 127
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 129
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/Calendar;->set(III)V

    .line 131
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    return-object v4
.end method

.method public static convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;
    .locals 12
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    const/4 v7, 0x0

    .line 109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 110
    .local v8, "calendar":Ljava/util/Calendar;
    invoke-virtual {v8}, Ljava/util/Calendar;->clear()V

    .line 111
    invoke-virtual {v8, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 113
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 114
    .local v11, "year":I
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 115
    .local v10, "javaMonth":I
    const/4 v0, 0x5

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 118
    .local v9, "day":I
    new-instance v0, Lhirondelle/date4j/DateTime;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    add-int/lit8 v2, v10, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lhirondelle/date4j/DateTime;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static convertToStringList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "dateTimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhirondelle/date4j/DateTime;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhirondelle/date4j/DateTime;

    .line 179
    .local v0, "dateTime":Lhirondelle/date4j/DateTime;
    const-string v3, "YYYY-MM-DD"

    invoke-virtual {v0, v3}, Lhirondelle/date4j/DateTime;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    .end local v0    # "dateTime":Lhirondelle/date4j/DateTime;
    :cond_0
    return-object v2
.end method

.method public static getDateFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "dateString"    # Ljava/lang/String;
    .param p1, "dateFormat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 145
    if-nez p1, :cond_0

    .line 146
    sget-object v0, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->yyyyMMddFormat:Ljava/text/SimpleDateFormat;

    .line 151
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    :goto_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    return-object v1

    .line 148
    .end local v0    # "formatter":Ljava/text/SimpleDateFormat;
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .restart local v0    # "formatter":Ljava/text/SimpleDateFormat;
    goto :goto_0
.end method

.method public static getDateTimeFromString(Ljava/lang/String;Ljava/lang/String;)Lhirondelle/date4j/DateTime;
    .locals 3
    .param p0, "dateString"    # Ljava/lang/String;
    .param p1, "dateFormat"    # Ljava/lang/String;

    .prologue
    .line 166
    :try_start_0
    invoke-static {p0, p1}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->getDateFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 167
    .local v0, "date":Ljava/util/Date;
    invoke-static {v0}, Lcom/veclink/movnow_q2/view/calendar/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 172
    .end local v0    # "date":Ljava/util/Date;
    :goto_0
    return-object v2

    .line 168
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 172
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getFullWeeks(IIIZ)Ljava/util/ArrayList;
    .locals 22
    .param p0, "month"    # I
    .param p1, "year"    # I
    .param p2, "startDayOfWeek"    # I
    .param p3, "sixWeeksInCalendar"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v11, "datetimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhirondelle/date4j/DateTime;>;"
    new-instance v2, Lhirondelle/date4j/DateTime;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Lhirondelle/date4j/DateTime;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 38
    .local v2, "firstDateOfMonth":Lhirondelle/date4j/DateTime;
    invoke-virtual {v2}, Lhirondelle/date4j/DateTime;->getNumDaysInMonth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhirondelle/date4j/DateTime;->plusDays(Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v14

    .line 42
    .local v14, "lastDateOfMonth":Lhirondelle/date4j/DateTime;
    invoke-virtual {v2}, Lhirondelle/date4j/DateTime;->getWeekDay()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 47
    .local v21, "weekdayOfFirstDate":I
    move/from16 v0, v21

    move/from16 v1, p2

    if-ge v0, v1, :cond_0

    .line 48
    add-int/lit8 v21, v21, 0x7

    .line 51
    :cond_0
    :goto_0
    if-lez v21, :cond_1

    .line 52
    sub-int v3, v21, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhirondelle/date4j/DateTime;->minusDays(Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v10

    .line 54
    .local v10, "dateTime":Lhirondelle/date4j/DateTime;
    invoke-virtual {v10, v2}, Lhirondelle/date4j/DateTime;->lt(Lhirondelle/date4j/DateTime;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 63
    .end local v10    # "dateTime":Lhirondelle/date4j/DateTime;
    :cond_1
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    invoke-virtual {v14}, Lhirondelle/date4j/DateTime;->getDay()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v13, v3, :cond_3

    .line 64
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhirondelle/date4j/DateTime;->plusDays(Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 58
    .end local v13    # "i":I
    .restart local v10    # "dateTime":Lhirondelle/date4j/DateTime;
    :cond_2
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v21, v21, -0x1

    .line 60
    goto :goto_0

    .line 68
    .end local v10    # "dateTime":Lhirondelle/date4j/DateTime;
    .restart local v13    # "i":I
    :cond_3
    add-int/lit8 v12, p2, -0x1

    .line 70
    .local v12, "endDayOfWeek":I
    if-nez v12, :cond_4

    .line 71
    const/4 v12, 0x7

    .line 74
    :cond_4
    invoke-virtual {v14}, Lhirondelle/date4j/DateTime;->getWeekDay()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v12, :cond_6

    .line 75
    const/4 v13, 0x1

    .line 77
    :cond_5
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3}, Lhirondelle/date4j/DateTime;->plusDays(Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v17

    .line 78
    .local v17, "nextDay":Lhirondelle/date4j/DateTime;
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v13, v13, 0x1

    .line 80
    invoke-virtual/range {v17 .. v17}, Lhirondelle/date4j/DateTime;->getWeekDay()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v12, :cond_5

    .line 87
    .end local v17    # "nextDay":Lhirondelle/date4j/DateTime;
    :cond_6
    if-eqz p3, :cond_7

    .line 88
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 89
    .local v20, "size":I
    div-int/lit8 v19, v20, 0x7

    .line 90
    .local v19, "row":I
    rsub-int/lit8 v3, v19, 0x6

    mul-int/lit8 v18, v3, 0x7

    .line 91
    .local v18, "numOfDays":I
    add-int/lit8 v3, v20, -0x1

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lhirondelle/date4j/DateTime;

    .line 92
    .local v15, "lastDateTime":Lhirondelle/date4j/DateTime;
    const/4 v13, 0x1

    :goto_2
    move/from16 v0, v18

    if-gt v13, v0, :cond_7

    .line 93
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Lhirondelle/date4j/DateTime;->plusDays(Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v16

    .line 94
    .local v16, "nextDateTime":Lhirondelle/date4j/DateTime;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 98
    .end local v15    # "lastDateTime":Lhirondelle/date4j/DateTime;
    .end local v16    # "nextDateTime":Lhirondelle/date4j/DateTime;
    .end local v18    # "numOfDays":I
    .end local v19    # "row":I
    .end local v20    # "size":I
    :cond_7
    return-object v11
.end method
