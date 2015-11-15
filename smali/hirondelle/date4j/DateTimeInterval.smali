.class final Lhirondelle/date4j/DateTimeInterval;
.super Ljava/lang/Object;


# static fields
.field private static final MAX:I = 0x270f

.field private static final MAX_NANOS:I = 0x3b9ac9ff

.field private static final MIN:I = 0x0

.field private static final MINUS:Z = false

.field private static final MIN_NANOS:I = 0x0

.field private static final PLUS:Z = true


# instance fields
.field private fDay:Ljava/lang/Integer;

.field private fDayIncr:I

.field private fDayOverflow:Lhirondelle/date4j/DateTime$DayOverflow;

.field private final fFrom:Lhirondelle/date4j/DateTime;

.field private fHour:Ljava/lang/Integer;

.field private fHourIncr:I

.field private fIsPlus:Z

.field private fMinute:Ljava/lang/Integer;

.field private fMinuteIncr:I

.field private fMonth:Ljava/lang/Integer;

.field private fMonthIncr:I

.field private fNanosecond:Ljava/lang/Integer;

.field private fNanosecondIncr:I

.field private fSecond:Ljava/lang/Integer;

.field private fSecondIncr:I

.field private fYear:Ljava/lang/Integer;

.field private fYearIncr:I


# direct methods
.method constructor <init>(Lhirondelle/date4j/DateTime;Lhirondelle/date4j/DateTime$DayOverflow;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->checkUnits()V

    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fYear:Ljava/lang/Integer;

    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMonth:Ljava/lang/Integer;

    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getDay()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getHour()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fHour:Ljava/lang/Integer;

    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getMinute()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v2

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMinute:Ljava/lang/Integer;

    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getSecond()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v2

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fSecond:Ljava/lang/Integer;

    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getNanoseconds()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_6

    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecond:Ljava/lang/Integer;

    iput-object p2, p0, Lhirondelle/date4j/DateTimeInterval;->fDayOverflow:Lhirondelle/date4j/DateTime$DayOverflow;

    return-void

    :cond_0
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getDay()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getSecond()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getNanoseconds()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_6
.end method

.method private changeDay()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lhirondelle/date4j/DateTimeInterval;->fDayIncr:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepDay()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private changeHour()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lhirondelle/date4j/DateTimeInterval;->fHourIncr:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepHour()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private changeMinute()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lhirondelle/date4j/DateTimeInterval;->fMinuteIncr:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepMinute()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private changeMonth()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lhirondelle/date4j/DateTimeInterval;->fMonthIncr:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepMonth()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private changeNanosecond()V
    .locals 3

    const v2, 0x3b9ac9ff

    iget-boolean v0, p0, Lhirondelle/date4j/DateTimeInterval;->fIsPlus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecond:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecondIncr:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecond:Ljava/lang/Integer;

    :goto_0
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecond:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v2, :cond_2

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepSecond()V

    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecond:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecond:Ljava/lang/Integer;

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecond:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecondIncr:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecond:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecond:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepSecond()V

    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecond:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecond:Ljava/lang/Integer;

    goto :goto_1
.end method

.method private changeSecond()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lhirondelle/date4j/DateTimeInterval;->fSecondIncr:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepSecond()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private changeYear()V
    .locals 2

    iget-boolean v0, p0, Lhirondelle/date4j/DateTimeInterval;->fIsPlus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fYear:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lhirondelle/date4j/DateTimeInterval;->fYearIncr:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fYear:Ljava/lang/Integer;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lhirondelle/date4j/DateTimeInterval;->fYearIncr:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fYear:Ljava/lang/Integer;

    goto :goto_0
.end method

.method private checkRange(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x270f

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in the range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private checkRangeNanos(Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x3b9ac9ff

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Nanosecond interval is not in the range 0..999999999"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private checkUnits()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    const/4 v3, 0x6

    new-array v3, v3, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v4, Lhirondelle/date4j/DateTime$Unit;->YEAR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v4, v3, v1

    sget-object v4, Lhirondelle/date4j/DateTime$Unit;->MONTH:Lhirondelle/date4j/DateTime$Unit;

    aput-object v4, v3, v0

    sget-object v4, Lhirondelle/date4j/DateTime$Unit;->DAY:Lhirondelle/date4j/DateTime$Unit;

    aput-object v4, v3, v6

    sget-object v4, Lhirondelle/date4j/DateTime$Unit;->HOUR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v4, v3, v7

    const/4 v4, 0x4

    sget-object v5, Lhirondelle/date4j/DateTime$Unit;->MINUTE:Lhirondelle/date4j/DateTime$Unit;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Lhirondelle/date4j/DateTime$Unit;->SECOND:Lhirondelle/date4j/DateTime$Unit;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lhirondelle/date4j/DateTime;->unitsAllPresent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "For interval calculations, DateTime must have year-month-day, or hour-minute-second, or both."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    new-array v3, v7, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v4, Lhirondelle/date4j/DateTime$Unit;->YEAR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v4, v3, v1

    sget-object v4, Lhirondelle/date4j/DateTime$Unit;->MONTH:Lhirondelle/date4j/DateTime$Unit;

    aput-object v4, v3, v0

    sget-object v4, Lhirondelle/date4j/DateTime$Unit;->DAY:Lhirondelle/date4j/DateTime$Unit;

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lhirondelle/date4j/DateTime;->unitsAllPresent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    new-array v3, v7, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v4, Lhirondelle/date4j/DateTime$Unit;->HOUR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v4, v3, v1

    sget-object v4, Lhirondelle/date4j/DateTime$Unit;->MINUTE:Lhirondelle/date4j/DateTime$Unit;

    aput-object v4, v3, v0

    sget-object v4, Lhirondelle/date4j/DateTime$Unit;->SECOND:Lhirondelle/date4j/DateTime$Unit;

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lhirondelle/date4j/DateTime;->unitsAllAbsent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    new-array v3, v7, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v4, Lhirondelle/date4j/DateTime$Unit;->YEAR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v4, v3, v1

    sget-object v4, Lhirondelle/date4j/DateTime$Unit;->MONTH:Lhirondelle/date4j/DateTime$Unit;

    aput-object v4, v3, v0

    sget-object v4, Lhirondelle/date4j/DateTime$Unit;->DAY:Lhirondelle/date4j/DateTime$Unit;

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lhirondelle/date4j/DateTime;->unitsAllAbsent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    new-array v3, v7, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v4, Lhirondelle/date4j/DateTime$Unit;->HOUR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v4, v3, v1

    sget-object v4, Lhirondelle/date4j/DateTime$Unit;->MINUTE:Lhirondelle/date4j/DateTime$Unit;

    aput-object v4, v3, v0

    sget-object v4, Lhirondelle/date4j/DateTime$Unit;->SECOND:Lhirondelle/date4j/DateTime$Unit;

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lhirondelle/date4j/DateTime;->unitsAllPresent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private handleMonthOverflow()V
    .locals 4

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->numDaysInMonth()I

    move-result v0

    iget-object v1, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v0, :cond_1

    sget-object v1, Lhirondelle/date4j/DateTime$DayOverflow;->Abort:Lhirondelle/date4j/DateTime$DayOverflow;

    iget-object v2, p0, Lhirondelle/date4j/DateTimeInterval;->fDayOverflow:Lhirondelle/date4j/DateTime$DayOverflow;

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Day Overflow: Year:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lhirondelle/date4j/DateTimeInterval;->fYear:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Month:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lhirondelle/date4j/DateTimeInterval;->fMonth:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " days, but day has value:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " To avoid these exceptions, please specify a different DayOverflow policy."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Lhirondelle/date4j/DateTime$DayOverflow;->FirstDay:Lhirondelle/date4j/DateTime$DayOverflow;

    iget-object v2, p0, Lhirondelle/date4j/DateTimeInterval;->fDayOverflow:Lhirondelle/date4j/DateTime$DayOverflow;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepMonth()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v1, Lhirondelle/date4j/DateTime$DayOverflow;->LastDay:Lhirondelle/date4j/DateTime$DayOverflow;

    iget-object v2, p0, Lhirondelle/date4j/DateTimeInterval;->fDayOverflow:Lhirondelle/date4j/DateTime$DayOverflow;

    if-ne v1, v2, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    goto :goto_0

    :cond_3
    sget-object v1, Lhirondelle/date4j/DateTime$DayOverflow;->Spillover:Lhirondelle/date4j/DateTime$DayOverflow;

    iget-object v2, p0, Lhirondelle/date4j/DateTimeInterval;->fDayOverflow:Lhirondelle/date4j/DateTime$DayOverflow;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepMonth()V

    goto :goto_0
.end method

.method private numDaysInMonth()I
    .locals 2

    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fYear:Ljava/lang/Integer;

    iget-object v1, p0, Lhirondelle/date4j/DateTimeInterval;->fMonth:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lhirondelle/date4j/DateTime;->getNumDaysInMonth(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private numDaysInPreviousMonth()I
    .locals 2

    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMonth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fYear:Ljava/lang/Integer;

    iget-object v1, p0, Lhirondelle/date4j/DateTimeInterval;->fMonth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lhirondelle/date4j/DateTime;->getNumDaysInMonth(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fYear:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lhirondelle/date4j/DateTime;->getNumDaysInMonth(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private plusOrMinus(ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;
    .locals 8

    iput-boolean p1, p0, Lhirondelle/date4j/DateTimeInterval;->fIsPlus:Z

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lhirondelle/date4j/DateTimeInterval;->fYearIncr:I

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMonthIncr:I

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lhirondelle/date4j/DateTimeInterval;->fDayIncr:I

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lhirondelle/date4j/DateTimeInterval;->fHourIncr:I

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMinuteIncr:I

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lhirondelle/date4j/DateTimeInterval;->fSecondIncr:I

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecondIncr:I

    iget v0, p0, Lhirondelle/date4j/DateTimeInterval;->fYearIncr:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Year"

    invoke-direct {p0, v0, v1}, Lhirondelle/date4j/DateTimeInterval;->checkRange(Ljava/lang/Integer;Ljava/lang/String;)V

    iget v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMonthIncr:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Month"

    invoke-direct {p0, v0, v1}, Lhirondelle/date4j/DateTimeInterval;->checkRange(Ljava/lang/Integer;Ljava/lang/String;)V

    iget v0, p0, Lhirondelle/date4j/DateTimeInterval;->fDayIncr:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Day"

    invoke-direct {p0, v0, v1}, Lhirondelle/date4j/DateTimeInterval;->checkRange(Ljava/lang/Integer;Ljava/lang/String;)V

    iget v0, p0, Lhirondelle/date4j/DateTimeInterval;->fHourIncr:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Hour"

    invoke-direct {p0, v0, v1}, Lhirondelle/date4j/DateTimeInterval;->checkRange(Ljava/lang/Integer;Ljava/lang/String;)V

    iget v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMinuteIncr:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Minute"

    invoke-direct {p0, v0, v1}, Lhirondelle/date4j/DateTimeInterval;->checkRange(Ljava/lang/Integer;Ljava/lang/String;)V

    iget v0, p0, Lhirondelle/date4j/DateTimeInterval;->fSecondIncr:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Second"

    invoke-direct {p0, v0, v1}, Lhirondelle/date4j/DateTimeInterval;->checkRange(Ljava/lang/Integer;Ljava/lang/String;)V

    iget v0, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecondIncr:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeInterval;->checkRangeNanos(Ljava/lang/Integer;)V

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->changeYear()V

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->changeMonth()V

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->handleMonthOverflow()V

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->changeDay()V

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->changeHour()V

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->changeMinute()V

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->changeSecond()V

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->changeNanosecond()V

    new-instance v0, Lhirondelle/date4j/DateTime;

    iget-object v1, p0, Lhirondelle/date4j/DateTimeInterval;->fYear:Ljava/lang/Integer;

    iget-object v2, p0, Lhirondelle/date4j/DateTimeInterval;->fMonth:Ljava/lang/Integer;

    iget-object v3, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    iget-object v4, p0, Lhirondelle/date4j/DateTimeInterval;->fHour:Ljava/lang/Integer;

    iget-object v5, p0, Lhirondelle/date4j/DateTimeInterval;->fMinute:Ljava/lang/Integer;

    iget-object v6, p0, Lhirondelle/date4j/DateTimeInterval;->fSecond:Ljava/lang/Integer;

    iget-object v7, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecond:Ljava/lang/Integer;

    invoke-direct/range {v0 .. v7}, Lhirondelle/date4j/DateTime;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private stepDay()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lhirondelle/date4j/DateTimeInterval;->fIsPlus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    :goto_0
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->numDaysInMonth()I

    move-result v1

    if-le v0, v1, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepMonth()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v2, :cond_0

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->numDaysInPreviousMonth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepMonth()V

    goto :goto_1
.end method

.method private stepHour()V
    .locals 2

    const/16 v1, 0x17

    iget-boolean v0, p0, Lhirondelle/date4j/DateTimeInterval;->fIsPlus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fHour:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fHour:Ljava/lang/Integer;

    :goto_0
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fHour:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fHour:Ljava/lang/Integer;

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepDay()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fHour:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fHour:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fHour:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fHour:Ljava/lang/Integer;

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepDay()V

    goto :goto_1
.end method

.method private stepMinute()V
    .locals 2

    const/16 v1, 0x3b

    iget-boolean v0, p0, Lhirondelle/date4j/DateTimeInterval;->fIsPlus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMinute:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMinute:Ljava/lang/Integer;

    :goto_0
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMinute:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMinute:Ljava/lang/Integer;

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepHour()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMinute:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMinute:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMinute:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMinute:Ljava/lang/Integer;

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepHour()V

    goto :goto_1
.end method

.method private stepMonth()V
    .locals 3

    const/16 v2, 0xc

    const/4 v1, 0x1

    iget-boolean v0, p0, Lhirondelle/date4j/DateTimeInterval;->fIsPlus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMonth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMonth:Ljava/lang/Integer;

    :goto_0
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMonth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v2, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMonth:Ljava/lang/Integer;

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepYear()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMonth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMonth:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMonth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v1, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMonth:Ljava/lang/Integer;

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepYear()V

    goto :goto_1
.end method

.method private stepSecond()V
    .locals 2

    const/16 v1, 0x3b

    iget-boolean v0, p0, Lhirondelle/date4j/DateTimeInterval;->fIsPlus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fSecond:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fSecond:Ljava/lang/Integer;

    :goto_0
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fSecond:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fSecond:Ljava/lang/Integer;

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepMinute()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fSecond:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fSecond:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fSecond:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fSecond:Ljava/lang/Integer;

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepMinute()V

    goto :goto_1
.end method

.method private stepYear()V
    .locals 1

    iget-boolean v0, p0, Lhirondelle/date4j/DateTimeInterval;->fIsPlus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fYear:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fYear:Ljava/lang/Integer;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fYear:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fYear:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method minus(IIIIIII)Lhirondelle/date4j/DateTime;
    .locals 9

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lhirondelle/date4j/DateTimeInterval;->plusOrMinus(ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    return-object v0
.end method

.method plus(IIIIIII)Lhirondelle/date4j/DateTime;
    .locals 9

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lhirondelle/date4j/DateTimeInterval;->plusOrMinus(ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    return-object v0
.end method
