.class public final Lhirondelle/date4j/DateTime;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhirondelle/date4j/DateTime$MissingItem;,
        Lhirondelle/date4j/DateTime$ItemOutOfRange;,
        Lhirondelle/date4j/DateTime$DayOverflow;,
        Lhirondelle/date4j/DateTime$Unit;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lhirondelle/date4j/DateTime;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static EPOCH_MODIFIED_JD:I = 0x0

.field private static final EQUAL:I = 0x0

.field private static final MILLION:I = 0xf4240

.field private static final serialVersionUID:J = -0x120ac519cee0aa83L


# instance fields
.field private fDateTime:Ljava/lang/String;

.field private fDay:Ljava/lang/Integer;

.field private fHashCode:I

.field private fHour:Ljava/lang/Integer;

.field private fIsAlreadyParsed:Z

.field private fMinute:Ljava/lang/Integer;

.field private fMonth:Ljava/lang/Integer;

.field private fNanosecond:Ljava/lang/Integer;

.field private fSecond:Ljava/lang/Integer;

.field private fYear:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x249f00

    sput v0, Lhirondelle/date4j/DateTime;->EPOCH_MODIFIED_JD:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhirondelle/date4j/DateTime;->fIsAlreadyParsed:Z

    iput-object p1, p0, Lhirondelle/date4j/DateTime;->fYear:Ljava/lang/Integer;

    iput-object p2, p0, Lhirondelle/date4j/DateTime;->fMonth:Ljava/lang/Integer;

    iput-object p3, p0, Lhirondelle/date4j/DateTime;->fDay:Ljava/lang/Integer;

    iput-object p4, p0, Lhirondelle/date4j/DateTime;->fHour:Ljava/lang/Integer;

    iput-object p5, p0, Lhirondelle/date4j/DateTime;->fMinute:Ljava/lang/Integer;

    iput-object p6, p0, Lhirondelle/date4j/DateTime;->fSecond:Ljava/lang/Integer;

    iput-object p7, p0, Lhirondelle/date4j/DateTime;->fNanosecond:Ljava/lang/Integer;

    invoke-direct {p0}, Lhirondelle/date4j/DateTime;->validateState()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhirondelle/date4j/DateTime;->fIsAlreadyParsed:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String passed to DateTime constructor is null. You can use an empty string, but not a null reference."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lhirondelle/date4j/DateTime;->fDateTime:Ljava/lang/String;

    return-void
.end method

.method private addToString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private calcToStringFormat()Ljava/lang/String;
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    new-array v1, v5, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->YEAR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lhirondelle/date4j/DateTime;->unitsAllPresent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    new-array v1, v1, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->MONTH:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v4

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->DAY:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v5

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->HOUR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v6

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->MINUTE:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v7

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->SECOND:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lhirondelle/date4j/DateTime$Unit;->NANOSECONDS:Lhirondelle/date4j/DateTime$Unit;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lhirondelle/date4j/DateTime;->unitsAllAbsent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "YYYY"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-array v1, v6, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->YEAR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v4

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->MONTH:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v5

    invoke-virtual {p0, v1}, Lhirondelle/date4j/DateTime;->unitsAllPresent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    new-array v1, v1, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->DAY:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v4

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->HOUR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v5

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->MINUTE:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v6

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->SECOND:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v7

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->NANOSECONDS:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v8

    invoke-virtual {p0, v1}, Lhirondelle/date4j/DateTime;->unitsAllAbsent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "YYYY-MM"

    goto :goto_0

    :cond_2
    new-array v1, v7, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->YEAR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v4

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->MONTH:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v5

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->DAY:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v6

    invoke-virtual {p0, v1}, Lhirondelle/date4j/DateTime;->unitsAllPresent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-array v1, v8, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->HOUR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v4

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->MINUTE:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v5

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->SECOND:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v6

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->NANOSECONDS:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v7

    invoke-virtual {p0, v1}, Lhirondelle/date4j/DateTime;->unitsAllAbsent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "YYYY-MM-DD"

    goto :goto_0

    :cond_3
    new-array v1, v8, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->YEAR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v4

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->MONTH:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v5

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->DAY:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v6

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->HOUR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v7

    invoke-virtual {p0, v1}, Lhirondelle/date4j/DateTime;->unitsAllPresent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-array v1, v7, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->MINUTE:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v4

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->SECOND:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v5

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->NANOSECONDS:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v6

    invoke-virtual {p0, v1}, Lhirondelle/date4j/DateTime;->unitsAllAbsent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "YYYY-MM-DD hh"

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x5

    new-array v1, v1, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->YEAR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v4

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->MONTH:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v5

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->DAY:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v6

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->HOUR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v7

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->MINUTE:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v8

    invoke-virtual {p0, v1}, Lhirondelle/date4j/DateTime;->unitsAllPresent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-array v1, v6, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->SECOND:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v4

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->NANOSECONDS:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v5

    invoke-virtual {p0, v1}, Lhirondelle/date4j/DateTime;->unitsAllAbsent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "YYYY-MM-DD hh:mm"

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x6

    new-array v1, v1, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->YEAR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v4

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->MONTH:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v5

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->DAY:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v6

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->HOUR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v7

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->MINUTE:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lhirondelle/date4j/DateTime$Unit;->SECOND:Lhirondelle/date4j/DateTime$Unit;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lhirondelle/date4j/DateTime;->unitsAllPresent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-array v1, v5, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->NANOSECONDS:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lhirondelle/date4j/DateTime;->unitsAllAbsent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "YYYY-MM-DD hh:mm:ss"

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x7

    new-array v1, v1, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->YEAR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v4

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->MONTH:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v5

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->DAY:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v6

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->HOUR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v7

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->MINUTE:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lhirondelle/date4j/DateTime$Unit;->SECOND:Lhirondelle/date4j/DateTime$Unit;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lhirondelle/date4j/DateTime$Unit;->NANOSECONDS:Lhirondelle/date4j/DateTime$Unit;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lhirondelle/date4j/DateTime;->unitsAllPresent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "YYYY-MM-DD hh:mm:ss.fffffffff"

    goto/16 :goto_0

    :cond_7
    new-array v1, v7, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->YEAR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v4

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->MONTH:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v5

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->DAY:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v6

    invoke-virtual {p0, v1}, Lhirondelle/date4j/DateTime;->unitsAllAbsent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-array v1, v8, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->HOUR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v4

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->MINUTE:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v5

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->SECOND:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v6

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->NANOSECONDS:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v7

    invoke-virtual {p0, v1}, Lhirondelle/date4j/DateTime;->unitsAllPresent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "hh:mm:ss.fffffffff"

    goto/16 :goto_0

    :cond_8
    new-array v1, v8, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->YEAR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v4

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->MONTH:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v5

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->DAY:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v6

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->NANOSECONDS:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v7

    invoke-virtual {p0, v1}, Lhirondelle/date4j/DateTime;->unitsAllAbsent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-array v1, v7, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->HOUR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v4

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->MINUTE:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v5

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->SECOND:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v6

    invoke-virtual {p0, v1}, Lhirondelle/date4j/DateTime;->unitsAllPresent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "hh:mm:ss"

    goto/16 :goto_0

    :cond_9
    const/4 v1, 0x5

    new-array v1, v1, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->YEAR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v4

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->MONTH:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v5

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->DAY:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v6

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->SECOND:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v7

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->NANOSECONDS:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v8

    invoke-virtual {p0, v1}, Lhirondelle/date4j/DateTime;->unitsAllAbsent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v6, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->HOUR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v4

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->MINUTE:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v1, v5

    invoke-virtual {p0, v1}, Lhirondelle/date4j/DateTime;->unitsAllPresent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "hh:mm"

    goto/16 :goto_0
.end method

.method private calculateJulianDayNumberAtNoon()I
    .locals 6

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fYear:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lhirondelle/date4j/DateTime;->fMonth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lhirondelle/date4j/DateTime;->fDay:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit16 v3, v0, 0x12c0

    add-int/lit8 v4, v1, -0xe

    div-int/lit8 v4, v4, 0xc

    add-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0x5b5

    div-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v1, -0x2

    add-int/lit8 v5, v1, -0xe

    div-int/lit8 v5, v5, 0xc

    mul-int/lit8 v5, v5, 0xc

    sub-int/2addr v4, v5

    mul-int/lit16 v4, v4, 0x16f

    div-int/lit8 v4, v4, 0xc

    add-int/2addr v3, v4

    add-int/lit16 v0, v0, 0x1324

    add-int/lit8 v1, v1, -0xe

    div-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    sub-int v0, v3, v0

    add-int/2addr v0, v2

    add-int/lit16 v0, v0, -0x7d4b

    return v0
.end method

.method private checkNumDaysInMonth(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lhirondelle/date4j/DateTime;->hasYearMonthDay(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, p2}, Lhirondelle/date4j/DateTime;->getNumDaysInMonth(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_0

    new-instance v0, Lhirondelle/date4j/DateTime$ItemOutOfRange;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The day-of-the-month value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' exceeds the number of days in the month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lhirondelle/date4j/DateTime;->getNumDaysInMonth(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lhirondelle/date4j/DateTime$ItemOutOfRange;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private checkRange(Ljava/lang/Integer;IILjava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, p3, :cond_1

    :cond_0
    new-instance v0, Lhirondelle/date4j/DateTime$ItemOutOfRange;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in the range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Value is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lhirondelle/date4j/DateTime$ItemOutOfRange;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private ensureHasYearMonthDay()V
    .locals 2

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->ensureParsed()V

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->hasYearMonthDay()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lhirondelle/date4j/DateTime$MissingItem;

    const-string v1, "DateTime does not include year/month/day."

    invoke-direct {v0, v1}, Lhirondelle/date4j/DateTime$MissingItem;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static forDateOnly(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;
    .locals 8

    const/4 v4, 0x0

    new-instance v0, Lhirondelle/date4j/DateTime;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lhirondelle/date4j/DateTime;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static forInstant(JLjava/util/TimeZone;)Lhirondelle/date4j/DateTime;
    .locals 8

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xe

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit16 v7, v0, 0x3e8

    new-instance v0, Lhirondelle/date4j/DateTime;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lhirondelle/date4j/DateTime;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static forInstantNanos(JLjava/util/TimeZone;)Lhirondelle/date4j/DateTime;
    .locals 12

    const-wide/32 v6, 0xf4240

    const/4 v11, 0x0

    div-long v2, p0, v6

    rem-long v0, p0, v6

    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-gez v4, :cond_0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    add-long/2addr v0, v6

    move-wide v8, v0

    move-wide v0, v2

    :goto_0
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    new-instance v0, Lhirondelle/date4j/DateTime;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v7, 0xf4240

    mul-int/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lhirondelle/date4j/DateTime;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    long-to-int v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lhirondelle/date4j/DateTime$DayOverflow;->Spillover:Lhirondelle/date4j/DateTime$DayOverflow;

    invoke-virtual/range {v0 .. v8}, Lhirondelle/date4j/DateTime;->plus(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lhirondelle/date4j/DateTime$DayOverflow;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    return-object v0

    :cond_0
    move-wide v8, v0

    move-wide v0, v2

    goto :goto_0
.end method

.method public static forTimeOnly(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;
    .locals 8

    const/4 v1, 0x0

    new-instance v0, Lhirondelle/date4j/DateTime;

    move-object v2, v1

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lhirondelle/date4j/DateTime;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method static fromJulianDayNumberAtNoon(I)Lhirondelle/date4j/DateTime;
    .locals 6

    const v2, 0x23ab1

    const v0, 0x10bd9

    add-int/2addr v0, p0

    mul-int/lit8 v1, v0, 0x4

    div-int/2addr v1, v2

    mul-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    mul-int/lit16 v2, v2, 0xfa0

    const v3, 0x164b09

    div-int/2addr v2, v3

    mul-int/lit16 v3, v2, 0x5b5

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v3, v0, 0x50

    div-int/lit16 v3, v3, 0x98f

    mul-int/lit16 v4, v3, 0x98f

    div-int/lit8 v4, v4, 0x50

    sub-int/2addr v0, v4

    div-int/lit8 v4, v3, 0xb

    add-int/lit8 v3, v3, 0x2

    mul-int/lit8 v5, v4, 0xc

    sub-int/2addr v3, v5

    add-int/lit8 v1, v1, -0x31

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v1, v2

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lhirondelle/date4j/DateTime;->forDateOnly(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    return-object v0
.end method

.method static getNumDaysInMonth(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 4

    const/16 v3, 0x1e

    const/16 v2, 0x1f

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-static {p0}, Lhirondelle/date4j/DateTime;->isLeapYear(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1d

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x1c

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Month is out of range 1..12:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private getSignificantFields()[Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lhirondelle/date4j/DateTime;->fYear:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lhirondelle/date4j/DateTime;->fMonth:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lhirondelle/date4j/DateTime;->fDay:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lhirondelle/date4j/DateTime;->fHour:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lhirondelle/date4j/DateTime;->fMinute:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lhirondelle/date4j/DateTime;->fSecond:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lhirondelle/date4j/DateTime;->fNanosecond:Ljava/lang/Integer;

    aput-object v2, v0, v1

    return-object v0
.end method

.method private getStartEndDateTime(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;
    .locals 8

    invoke-direct {p0}, Lhirondelle/date4j/DateTime;->ensureHasYearMonthDay()V

    new-instance v0, Lhirondelle/date4j/DateTime;

    iget-object v1, p0, Lhirondelle/date4j/DateTime;->fYear:Ljava/lang/Integer;

    iget-object v2, p0, Lhirondelle/date4j/DateTime;->fMonth:Ljava/lang/Integer;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lhirondelle/date4j/DateTime;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private hasYearMonthDay(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTime;->isPresent([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isLeapYear(Ljava/lang/Integer;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rem-int/lit8 v2, v2, 0x64

    if-nez v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rem-int/lit16 v2, v2, 0x190

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isParseable(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Lhirondelle/date4j/DateTime;

    invoke-direct {v1, p0}, Lhirondelle/date4j/DateTime;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lhirondelle/date4j/DateTime;->ensureParsed()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs isPresent([Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    array-length v3, p1

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, p1, v2

    if-nez v4, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static now(Ljava/util/TimeZone;)Lhirondelle/date4j/DateTime;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lhirondelle/date4j/DateTime;->forInstant(JLjava/util/TimeZone;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    return-object v0
.end method

.method private numSecondsInTimePortion()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lhirondelle/date4j/DateTime;->fSecond:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lhirondelle/date4j/DateTime;->fSecond:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lhirondelle/date4j/DateTime;->fMinute:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lhirondelle/date4j/DateTime;->fMinute:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lhirondelle/date4j/DateTime;->fHour:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lhirondelle/date4j/DateTime;->fHour:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0xe10

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method private parseDateTimeText()V
    .locals 2

    new-instance v0, Lhirondelle/date4j/DateTimeParser;

    invoke-direct {v0}, Lhirondelle/date4j/DateTimeParser;-><init>()V

    iget-object v1, p0, Lhirondelle/date4j/DateTime;->fDateTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhirondelle/date4j/DateTimeParser;->parse(Ljava/lang/String;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    iget-object v1, v0, Lhirondelle/date4j/DateTime;->fYear:Ljava/lang/Integer;

    iput-object v1, p0, Lhirondelle/date4j/DateTime;->fYear:Ljava/lang/Integer;

    iget-object v1, v0, Lhirondelle/date4j/DateTime;->fMonth:Ljava/lang/Integer;

    iput-object v1, p0, Lhirondelle/date4j/DateTime;->fMonth:Ljava/lang/Integer;

    iget-object v1, v0, Lhirondelle/date4j/DateTime;->fDay:Ljava/lang/Integer;

    iput-object v1, p0, Lhirondelle/date4j/DateTime;->fDay:Ljava/lang/Integer;

    iget-object v1, v0, Lhirondelle/date4j/DateTime;->fHour:Ljava/lang/Integer;

    iput-object v1, p0, Lhirondelle/date4j/DateTime;->fHour:Ljava/lang/Integer;

    iget-object v1, v0, Lhirondelle/date4j/DateTime;->fMinute:Ljava/lang/Integer;

    iput-object v1, p0, Lhirondelle/date4j/DateTime;->fMinute:Ljava/lang/Integer;

    iget-object v1, v0, Lhirondelle/date4j/DateTime;->fSecond:Ljava/lang/Integer;

    iput-object v1, p0, Lhirondelle/date4j/DateTime;->fSecond:Ljava/lang/Integer;

    iget-object v0, v0, Lhirondelle/date4j/DateTime;->fNanosecond:Ljava/lang/Integer;

    iput-object v0, p0, Lhirondelle/date4j/DateTime;->fNanosecond:Ljava/lang/Integer;

    invoke-direct {p0}, Lhirondelle/date4j/DateTime;->validateState()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-direct {p0}, Lhirondelle/date4j/DateTime;->validateState()V

    return-void
.end method

.method public static today(Ljava/util/TimeZone;)Lhirondelle/date4j/DateTime;
    .locals 2

    invoke-static {p0}, Lhirondelle/date4j/DateTime;->now(Ljava/util/TimeZone;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    sget-object v1, Lhirondelle/date4j/DateTime$Unit;->DAY:Lhirondelle/date4j/DateTime$Unit;

    invoke-virtual {v0, v1}, Lhirondelle/date4j/DateTime;->truncate(Lhirondelle/date4j/DateTime$Unit;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    return-object v0
.end method

.method private validateState()V
    .locals 6

    const/16 v5, 0x3b

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fYear:Ljava/lang/Integer;

    const/16 v1, 0x270f

    const-string v2, "Year"

    invoke-direct {p0, v0, v4, v1, v2}, Lhirondelle/date4j/DateTime;->checkRange(Ljava/lang/Integer;IILjava/lang/String;)V

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fMonth:Ljava/lang/Integer;

    const/16 v1, 0xc

    const-string v2, "Month"

    invoke-direct {p0, v0, v4, v1, v2}, Lhirondelle/date4j/DateTime;->checkRange(Ljava/lang/Integer;IILjava/lang/String;)V

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fDay:Ljava/lang/Integer;

    const/16 v1, 0x1f

    const-string v2, "Day"

    invoke-direct {p0, v0, v4, v1, v2}, Lhirondelle/date4j/DateTime;->checkRange(Ljava/lang/Integer;IILjava/lang/String;)V

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fHour:Ljava/lang/Integer;

    const/16 v1, 0x17

    const-string v2, "Hour"

    invoke-direct {p0, v0, v3, v1, v2}, Lhirondelle/date4j/DateTime;->checkRange(Ljava/lang/Integer;IILjava/lang/String;)V

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fMinute:Ljava/lang/Integer;

    const-string v1, "Minute"

    invoke-direct {p0, v0, v3, v5, v1}, Lhirondelle/date4j/DateTime;->checkRange(Ljava/lang/Integer;IILjava/lang/String;)V

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fSecond:Ljava/lang/Integer;

    const-string v1, "Second"

    invoke-direct {p0, v0, v3, v5, v1}, Lhirondelle/date4j/DateTime;->checkRange(Ljava/lang/Integer;IILjava/lang/String;)V

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fNanosecond:Ljava/lang/Integer;

    const v1, 0x3b9ac9ff

    const-string v2, "Nanosecond"

    invoke-direct {p0, v0, v3, v1, v2}, Lhirondelle/date4j/DateTime;->checkRange(Ljava/lang/Integer;IILjava/lang/String;)V

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fYear:Ljava/lang/Integer;

    iget-object v1, p0, Lhirondelle/date4j/DateTime;->fMonth:Ljava/lang/Integer;

    iget-object v2, p0, Lhirondelle/date4j/DateTime;->fDay:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1, v2}, Lhirondelle/date4j/DateTime;->checkNumDaysInMonth(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public changeTimeZone(Ljava/util/TimeZone;Ljava/util/TimeZone;)Lhirondelle/date4j/DateTime;
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x2

    const/16 v5, 0xc

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lhirondelle/date4j/DateTime;->ensureHasYearMonthDay()V

    new-array v0, v6, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v1, Lhirondelle/date4j/DateTime$Unit;->HOUR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lhirondelle/date4j/DateTime;->unitsAllAbsent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DateTime does not include the hour. Cannot change the time zone if no hour is present."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v7, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getDay()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v8, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getMinute()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    :goto_0
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getMinute()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_1
    new-instance v0, Lhirondelle/date4j/DateTime;

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v6, 0xb

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getSecond()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getNanoseconds()Ljava/lang/Integer;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lhirondelle/date4j/DateTime;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0

    :cond_1
    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public compareTo(Lhirondelle/date4j/DateTime;)I
    .locals 4

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->ensureParsed()V

    invoke-virtual {p1}, Lhirondelle/date4j/DateTime;->ensureParsed()V

    sget-object v2, Lhirondelle/date4j/ModelUtil$NullsGo;->FIRST:Lhirondelle/date4j/ModelUtil$NullsGo;

    iget-object v1, p0, Lhirondelle/date4j/DateTime;->fYear:Ljava/lang/Integer;

    iget-object v3, p1, Lhirondelle/date4j/DateTime;->fYear:Ljava/lang/Integer;

    invoke-static {v1, v3, v2}, Lhirondelle/date4j/ModelUtil;->comparePossiblyNull(Ljava/lang/Comparable;Ljava/lang/Comparable;Lhirondelle/date4j/ModelUtil$NullsGo;)I

    move-result v1

    if-eqz v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lhirondelle/date4j/DateTime;->fMonth:Ljava/lang/Integer;

    iget-object v3, p1, Lhirondelle/date4j/DateTime;->fMonth:Ljava/lang/Integer;

    invoke-static {v1, v3, v2}, Lhirondelle/date4j/ModelUtil;->comparePossiblyNull(Ljava/lang/Comparable;Ljava/lang/Comparable;Lhirondelle/date4j/ModelUtil$NullsGo;)I

    move-result v1

    if-eqz v1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lhirondelle/date4j/DateTime;->fDay:Ljava/lang/Integer;

    iget-object v3, p1, Lhirondelle/date4j/DateTime;->fDay:Ljava/lang/Integer;

    invoke-static {v1, v3, v2}, Lhirondelle/date4j/ModelUtil;->comparePossiblyNull(Ljava/lang/Comparable;Ljava/lang/Comparable;Lhirondelle/date4j/ModelUtil$NullsGo;)I

    move-result v1

    if-eqz v1, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lhirondelle/date4j/DateTime;->fHour:Ljava/lang/Integer;

    iget-object v3, p1, Lhirondelle/date4j/DateTime;->fHour:Ljava/lang/Integer;

    invoke-static {v1, v3, v2}, Lhirondelle/date4j/ModelUtil;->comparePossiblyNull(Ljava/lang/Comparable;Ljava/lang/Comparable;Lhirondelle/date4j/ModelUtil$NullsGo;)I

    move-result v1

    if-eqz v1, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lhirondelle/date4j/DateTime;->fMinute:Ljava/lang/Integer;

    iget-object v3, p1, Lhirondelle/date4j/DateTime;->fMinute:Ljava/lang/Integer;

    invoke-static {v1, v3, v2}, Lhirondelle/date4j/ModelUtil;->comparePossiblyNull(Ljava/lang/Comparable;Ljava/lang/Comparable;Lhirondelle/date4j/ModelUtil$NullsGo;)I

    move-result v1

    if-eqz v1, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lhirondelle/date4j/DateTime;->fSecond:Ljava/lang/Integer;

    iget-object v3, p1, Lhirondelle/date4j/DateTime;->fSecond:Ljava/lang/Integer;

    invoke-static {v1, v3, v2}, Lhirondelle/date4j/ModelUtil;->comparePossiblyNull(Ljava/lang/Comparable;Ljava/lang/Comparable;Lhirondelle/date4j/ModelUtil$NullsGo;)I

    move-result v1

    if-eqz v1, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lhirondelle/date4j/DateTime;->fNanosecond:Ljava/lang/Integer;

    iget-object v3, p1, Lhirondelle/date4j/DateTime;->fNanosecond:Ljava/lang/Integer;

    invoke-static {v1, v3, v2}, Lhirondelle/date4j/ModelUtil;->comparePossiblyNull(Ljava/lang/Comparable;Ljava/lang/Comparable;Lhirondelle/date4j/ModelUtil$NullsGo;)I

    move-result v1

    if-eqz v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lhirondelle/date4j/DateTime;

    invoke-virtual {p0, p1}, Lhirondelle/date4j/DateTime;->compareTo(Lhirondelle/date4j/DateTime;)I

    move-result v0

    return v0
.end method

.method ensureParsed()V
    .locals 1

    iget-boolean v0, p0, Lhirondelle/date4j/DateTime;->fIsAlreadyParsed:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lhirondelle/date4j/DateTime;->parseDateTimeText()V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->ensureParsed()V

    invoke-static {p0, p1}, Lhirondelle/date4j/ModelUtil;->quickEquals(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    check-cast p1, Lhirondelle/date4j/DateTime;

    invoke-virtual {p1}, Lhirondelle/date4j/DateTime;->ensureParsed()V

    invoke-direct {p0}, Lhirondelle/date4j/DateTime;->getSignificantFields()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1}, Lhirondelle/date4j/DateTime;->getSignificantFields()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lhirondelle/date4j/ModelUtil;->equalsFor([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public format(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lhirondelle/date4j/DateTimeFormatter;

    invoke-direct {v0, p1}, Lhirondelle/date4j/DateTimeFormatter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lhirondelle/date4j/DateTimeFormatter;->format(Lhirondelle/date4j/DateTime;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lhirondelle/date4j/DateTimeFormatter;

    invoke-direct {v0, p1, p2, p3, p4}, Lhirondelle/date4j/DateTimeFormatter;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, p0}, Lhirondelle/date4j/DateTimeFormatter;->format(Lhirondelle/date4j/DateTime;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lhirondelle/date4j/DateTimeFormatter;

    invoke-direct {v0, p1, p2}, Lhirondelle/date4j/DateTimeFormatter;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Lhirondelle/date4j/DateTimeFormatter;->format(Lhirondelle/date4j/DateTime;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDay()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->ensureParsed()V

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fDay:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDayOfYear()Ljava/lang/Integer;
    .locals 3

    invoke-direct {p0}, Lhirondelle/date4j/DateTime;->ensureHasYearMonthDay()V

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->isLeapYear()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lhirondelle/date4j/DateTime;->fMonth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x113

    div-int/lit8 v1, v1, 0x9

    iget-object v2, p0, Lhirondelle/date4j/DateTime;->fMonth:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x9

    div-int/lit8 v2, v2, 0xc

    mul-int/2addr v0, v2

    sub-int v0, v1, v0

    iget-object v1, p0, Lhirondelle/date4j/DateTime;->fDay:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getEndOfDay()Lhirondelle/date4j/DateTime;
    .locals 6

    const/16 v4, 0x3b

    invoke-direct {p0}, Lhirondelle/date4j/DateTime;->ensureHasYearMonthDay()V

    iget-object v1, p0, Lhirondelle/date4j/DateTime;->fDay:Ljava/lang/Integer;

    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v0, 0x3b9ac9ff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lhirondelle/date4j/DateTime;->getStartEndDateTime(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public getEndOfMonth()Lhirondelle/date4j/DateTime;
    .locals 6

    const/16 v4, 0x3b

    invoke-direct {p0}, Lhirondelle/date4j/DateTime;->ensureHasYearMonthDay()V

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getNumDaysInMonth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v0, 0x3b9ac9ff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lhirondelle/date4j/DateTime;->getStartEndDateTime(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public getHour()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->ensureParsed()V

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fHour:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMilliseconds(Ljava/util/TimeZone;)J
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getDay()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getHour()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getMinute()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getSecond()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getNanoseconds()Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_3

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-direct {v7, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/4 v8, 0x1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v7, v8, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xb

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v7, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0xf4240

    div-int/2addr v1, v2

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getSecond()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getNanoseconds()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3
.end method

.method public getMinute()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->ensureParsed()V

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fMinute:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModifiedJulianDayNumber()Ljava/lang/Integer;
    .locals 2

    invoke-direct {p0}, Lhirondelle/date4j/DateTime;->ensureHasYearMonthDay()V

    invoke-direct {p0}, Lhirondelle/date4j/DateTime;->calculateJulianDayNumberAtNoon()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sget v1, Lhirondelle/date4j/DateTime;->EPOCH_MODIFIED_JD:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getMonth()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->ensureParsed()V

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fMonth:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNanoseconds()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->ensureParsed()V

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fNanosecond:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNanosecondsInstant(Ljava/util/TimeZone;)J
    .locals 10

    const v8, 0xf4240

    const/4 v1, 0x0

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getDay()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getHour()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getMinute()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getSecond()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getNanoseconds()Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_3

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    div-int/2addr v7, v8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rem-int/2addr v1, v8

    new-instance v8, Ljava/util/GregorianCalendar;

    invoke-direct {v8, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/4 v9, 0x1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v8, v9, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v8, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v8, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xb

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v8, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v8, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {v8, v0, v7}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    int-to-long v0, v1

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getSecond()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getNanoseconds()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3
.end method

.method public getNumDaysInMonth()I
    .locals 2

    invoke-direct {p0}, Lhirondelle/date4j/DateTime;->ensureHasYearMonthDay()V

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fYear:Ljava/lang/Integer;

    iget-object v1, p0, Lhirondelle/date4j/DateTime;->fMonth:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lhirondelle/date4j/DateTime;->getNumDaysInMonth(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPrecision()Lhirondelle/date4j/DateTime$Unit;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->ensureParsed()V

    const/4 v0, 0x0

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lhirondelle/date4j/DateTime;->fNanosecond:Ljava/lang/Integer;

    aput-object v2, v1, v3

    invoke-direct {p0, v1}, Lhirondelle/date4j/DateTime;->isPresent([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lhirondelle/date4j/DateTime$Unit;->NANOSECONDS:Lhirondelle/date4j/DateTime$Unit;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lhirondelle/date4j/DateTime;->fSecond:Ljava/lang/Integer;

    aput-object v2, v1, v3

    invoke-direct {p0, v1}, Lhirondelle/date4j/DateTime;->isPresent([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lhirondelle/date4j/DateTime$Unit;->SECOND:Lhirondelle/date4j/DateTime$Unit;

    goto :goto_0

    :cond_2
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lhirondelle/date4j/DateTime;->fMinute:Ljava/lang/Integer;

    aput-object v2, v1, v3

    invoke-direct {p0, v1}, Lhirondelle/date4j/DateTime;->isPresent([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lhirondelle/date4j/DateTime$Unit;->MINUTE:Lhirondelle/date4j/DateTime$Unit;

    goto :goto_0

    :cond_3
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lhirondelle/date4j/DateTime;->fHour:Ljava/lang/Integer;

    aput-object v2, v1, v3

    invoke-direct {p0, v1}, Lhirondelle/date4j/DateTime;->isPresent([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lhirondelle/date4j/DateTime$Unit;->HOUR:Lhirondelle/date4j/DateTime$Unit;

    goto :goto_0

    :cond_4
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lhirondelle/date4j/DateTime;->fDay:Ljava/lang/Integer;

    aput-object v2, v1, v3

    invoke-direct {p0, v1}, Lhirondelle/date4j/DateTime;->isPresent([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lhirondelle/date4j/DateTime$Unit;->DAY:Lhirondelle/date4j/DateTime$Unit;

    goto :goto_0

    :cond_5
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lhirondelle/date4j/DateTime;->fMonth:Ljava/lang/Integer;

    aput-object v2, v1, v3

    invoke-direct {p0, v1}, Lhirondelle/date4j/DateTime;->isPresent([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Lhirondelle/date4j/DateTime$Unit;->MONTH:Lhirondelle/date4j/DateTime$Unit;

    goto :goto_0

    :cond_6
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lhirondelle/date4j/DateTime;->fYear:Ljava/lang/Integer;

    aput-object v2, v1, v3

    invoke-direct {p0, v1}, Lhirondelle/date4j/DateTime;->isPresent([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lhirondelle/date4j/DateTime$Unit;->YEAR:Lhirondelle/date4j/DateTime$Unit;

    goto :goto_0
.end method

.method public getRawDateString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSecond()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->ensureParsed()V

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fSecond:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStartOfDay()Lhirondelle/date4j/DateTime;
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0}, Lhirondelle/date4j/DateTime;->ensureHasYearMonthDay()V

    iget-object v1, p0, Lhirondelle/date4j/DateTime;->fDay:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lhirondelle/date4j/DateTime;->getStartEndDateTime(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public getStartOfMonth()Lhirondelle/date4j/DateTime;
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lhirondelle/date4j/DateTime;->ensureHasYearMonthDay()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lhirondelle/date4j/DateTime;->getStartEndDateTime(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public getWeekDay()Ljava/lang/Integer;
    .locals 1

    invoke-direct {p0}, Lhirondelle/date4j/DateTime;->ensureHasYearMonthDay()V

    invoke-direct {p0}, Lhirondelle/date4j/DateTime;->calculateJulianDayNumberAtNoon()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getWeekIndex()Ljava/lang/Integer;
    .locals 3

    const/16 v0, 0x7d0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lhirondelle/date4j/DateTime;->forDateOnly(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhirondelle/date4j/DateTime;->getWeekIndex(Lhirondelle/date4j/DateTime;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getWeekIndex(Lhirondelle/date4j/DateTime;)Ljava/lang/Integer;
    .locals 2

    invoke-direct {p0}, Lhirondelle/date4j/DateTime;->ensureHasYearMonthDay()V

    invoke-direct {p1}, Lhirondelle/date4j/DateTime;->ensureHasYearMonthDay()V

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getModifiedJulianDayNumber()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lhirondelle/date4j/DateTime;->getModifiedJulianDayNumber()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getYear()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->ensureParsed()V

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fYear:Ljava/lang/Integer;

    return-object v0
.end method

.method public gt(Lhirondelle/date4j/DateTime;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lhirondelle/date4j/DateTime;->compareTo(Lhirondelle/date4j/DateTime;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public gteq(Lhirondelle/date4j/DateTime;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lhirondelle/date4j/DateTime;->compareTo(Lhirondelle/date4j/DateTime;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0, p1}, Lhirondelle/date4j/DateTime;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHourMinuteSecond()Z
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lhirondelle/date4j/DateTime$Unit;

    const/4 v1, 0x0

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->HOUR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->MINUTE:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->SECOND:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lhirondelle/date4j/DateTime;->unitsAllPresent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v0

    return v0
.end method

.method public hasYearMonthDay()Z
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lhirondelle/date4j/DateTime$Unit;

    const/4 v1, 0x0

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->YEAR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->MONTH:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->DAY:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lhirondelle/date4j/DateTime;->unitsAllPresent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lhirondelle/date4j/DateTime;->fHashCode:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->ensureParsed()V

    invoke-direct {p0}, Lhirondelle/date4j/DateTime;->getSignificantFields()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lhirondelle/date4j/ModelUtil;->hashCodeFor([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lhirondelle/date4j/DateTime;->fHashCode:I

    :cond_0
    iget v0, p0, Lhirondelle/date4j/DateTime;->fHashCode:I

    return v0
.end method

.method public isInTheFuture(Ljava/util/TimeZone;)Z
    .locals 1

    invoke-static {p1}, Lhirondelle/date4j/DateTime;->now(Ljava/util/TimeZone;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhirondelle/date4j/DateTime;->lt(Lhirondelle/date4j/DateTime;)Z

    move-result v0

    return v0
.end method

.method public isInThePast(Ljava/util/TimeZone;)Z
    .locals 1

    invoke-static {p1}, Lhirondelle/date4j/DateTime;->now(Ljava/util/TimeZone;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhirondelle/date4j/DateTime;->gt(Lhirondelle/date4j/DateTime;)Z

    move-result v0

    return v0
.end method

.method public isLeapYear()Ljava/lang/Boolean;
    .locals 3

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->ensureParsed()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lhirondelle/date4j/DateTime;->fYear:Ljava/lang/Integer;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTime;->isPresent([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fYear:Ljava/lang/Integer;

    invoke-static {v0}, Lhirondelle/date4j/DateTime;->isLeapYear(Ljava/lang/Integer;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lhirondelle/date4j/DateTime$MissingItem;

    const-string v1, "Year is absent. Cannot determine if leap year."

    invoke-direct {v0, v1}, Lhirondelle/date4j/DateTime$MissingItem;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSameDayAs(Lhirondelle/date4j/DateTime;)Z
    .locals 2

    invoke-direct {p0}, Lhirondelle/date4j/DateTime;->ensureHasYearMonthDay()V

    invoke-direct {p1}, Lhirondelle/date4j/DateTime;->ensureHasYearMonthDay()V

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fYear:Ljava/lang/Integer;

    iget-object v1, p1, Lhirondelle/date4j/DateTime;->fYear:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fMonth:Ljava/lang/Integer;

    iget-object v1, p1, Lhirondelle/date4j/DateTime;->fMonth:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fDay:Ljava/lang/Integer;

    iget-object v1, p1, Lhirondelle/date4j/DateTime;->fDay:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lt(Lhirondelle/date4j/DateTime;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lhirondelle/date4j/DateTime;->compareTo(Lhirondelle/date4j/DateTime;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lteq(Lhirondelle/date4j/DateTime;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lhirondelle/date4j/DateTime;->compareTo(Lhirondelle/date4j/DateTime;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, p1}, Lhirondelle/date4j/DateTime;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public minus(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lhirondelle/date4j/DateTime$DayOverflow;)Lhirondelle/date4j/DateTime;
    .locals 9

    new-instance v1, Lhirondelle/date4j/DateTimeInterval;

    move-object/from16 v0, p8

    invoke-direct {v1, p0, v0}, Lhirondelle/date4j/DateTimeInterval;-><init>(Lhirondelle/date4j/DateTime;Lhirondelle/date4j/DateTime$DayOverflow;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual/range {v1 .. v8}, Lhirondelle/date4j/DateTimeInterval;->minus(IIIIIII)Lhirondelle/date4j/DateTime;

    move-result-object v1

    return-object v1
.end method

.method public minusDays(Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhirondelle/date4j/DateTime;->plusDays(Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public numDaysFrom(Lhirondelle/date4j/DateTime;)I
    .locals 2

    invoke-virtual {p1}, Lhirondelle/date4j/DateTime;->getModifiedJulianDayNumber()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getModifiedJulianDayNumber()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public numSecondsFrom(Lhirondelle/date4j/DateTime;)J
    .locals 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->hasYearMonthDay()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lhirondelle/date4j/DateTime;->hasYearMonthDay()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lhirondelle/date4j/DateTime;->numDaysFrom(Lhirondelle/date4j/DateTime;)I

    move-result v0

    const v1, 0x15180

    mul-int/2addr v0, v1

    int-to-long v0, v0

    :cond_0
    invoke-direct {p0}, Lhirondelle/date4j/DateTime;->numSecondsInTimePortion()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-direct {p1}, Lhirondelle/date4j/DateTime;->numSecondsInTimePortion()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public plus(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lhirondelle/date4j/DateTime$DayOverflow;)Lhirondelle/date4j/DateTime;
    .locals 9

    new-instance v1, Lhirondelle/date4j/DateTimeInterval;

    move-object/from16 v0, p8

    invoke-direct {v1, p0, v0}, Lhirondelle/date4j/DateTimeInterval;-><init>(Lhirondelle/date4j/DateTime;Lhirondelle/date4j/DateTime$DayOverflow;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual/range {v1 .. v8}, Lhirondelle/date4j/DateTimeInterval;->plus(IIIIIII)Lhirondelle/date4j/DateTime;

    move-result-object v1

    return-object v1
.end method

.method public plusDays(Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;
    .locals 8

    invoke-direct {p0}, Lhirondelle/date4j/DateTime;->ensureHasYearMonthDay()V

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->getModifiedJulianDayNumber()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sget v1, Lhirondelle/date4j/DateTime;->EPOCH_MODIFIED_JD:I

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Lhirondelle/date4j/DateTime;->fromJulianDayNumberAtNoon(I)Lhirondelle/date4j/DateTime;

    move-result-object v3

    new-instance v0, Lhirondelle/date4j/DateTime;

    invoke-virtual {v3}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3}, Lhirondelle/date4j/DateTime;->getDay()Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lhirondelle/date4j/DateTime;->fHour:Ljava/lang/Integer;

    iget-object v5, p0, Lhirondelle/date4j/DateTime;->fMinute:Ljava/lang/Integer;

    iget-object v6, p0, Lhirondelle/date4j/DateTime;->fSecond:Ljava/lang/Integer;

    iget-object v7, p0, Lhirondelle/date4j/DateTime;->fNanosecond:Ljava/lang/Integer;

    invoke-direct/range {v0 .. v7}, Lhirondelle/date4j/DateTime;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fDateTime:Ljava/lang/String;

    invoke-static {v0}, Lhirondelle/date4j/Util;->textHasContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fDateTime:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lhirondelle/date4j/DateTime;->calcToStringFormat()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lhirondelle/date4j/DateTime;->calcToStringFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhirondelle/date4j/DateTime;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Y"

    iget-object v2, p0, Lhirondelle/date4j/DateTime;->fYear:Ljava/lang/Integer;

    invoke-direct {p0, v1, v2, v0}, Lhirondelle/date4j/DateTime;->addToString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "M"

    iget-object v2, p0, Lhirondelle/date4j/DateTime;->fMonth:Ljava/lang/Integer;

    invoke-direct {p0, v1, v2, v0}, Lhirondelle/date4j/DateTime;->addToString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "D"

    iget-object v2, p0, Lhirondelle/date4j/DateTime;->fDay:Ljava/lang/Integer;

    invoke-direct {p0, v1, v2, v0}, Lhirondelle/date4j/DateTime;->addToString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "h"

    iget-object v2, p0, Lhirondelle/date4j/DateTime;->fHour:Ljava/lang/Integer;

    invoke-direct {p0, v1, v2, v0}, Lhirondelle/date4j/DateTime;->addToString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "m"

    iget-object v2, p0, Lhirondelle/date4j/DateTime;->fMinute:Ljava/lang/Integer;

    invoke-direct {p0, v1, v2, v0}, Lhirondelle/date4j/DateTime;->addToString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "s"

    iget-object v2, p0, Lhirondelle/date4j/DateTime;->fSecond:Ljava/lang/Integer;

    invoke-direct {p0, v1, v2, v0}, Lhirondelle/date4j/DateTime;->addToString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "f"

    iget-object v2, p0, Lhirondelle/date4j/DateTime;->fNanosecond:Ljava/lang/Integer;

    invoke-direct {p0, v1, v2, v0}, Lhirondelle/date4j/DateTime;->addToString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public truncate(Lhirondelle/date4j/DateTime$Unit;)Lhirondelle/date4j/DateTime;
    .locals 13

    const/4 v7, 0x0

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->ensureParsed()V

    sget-object v0, Lhirondelle/date4j/DateTime$Unit;->NANOSECONDS:Lhirondelle/date4j/DateTime$Unit;

    if-ne v0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "It makes no sense to truncate to nanosecond precision, since that\'s the highest precision available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lhirondelle/date4j/DateTime$Unit;->SECOND:Lhirondelle/date4j/DateTime$Unit;

    if-ne v0, p1, :cond_1

    new-instance v0, Lhirondelle/date4j/DateTime;

    iget-object v1, p0, Lhirondelle/date4j/DateTime;->fYear:Ljava/lang/Integer;

    iget-object v2, p0, Lhirondelle/date4j/DateTime;->fMonth:Ljava/lang/Integer;

    iget-object v3, p0, Lhirondelle/date4j/DateTime;->fDay:Ljava/lang/Integer;

    iget-object v4, p0, Lhirondelle/date4j/DateTime;->fHour:Ljava/lang/Integer;

    iget-object v5, p0, Lhirondelle/date4j/DateTime;->fMinute:Ljava/lang/Integer;

    iget-object v6, p0, Lhirondelle/date4j/DateTime;->fSecond:Ljava/lang/Integer;

    invoke-direct/range {v0 .. v7}, Lhirondelle/date4j/DateTime;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lhirondelle/date4j/DateTime$Unit;->MINUTE:Lhirondelle/date4j/DateTime$Unit;

    if-ne v0, p1, :cond_2

    new-instance v1, Lhirondelle/date4j/DateTime;

    iget-object v2, p0, Lhirondelle/date4j/DateTime;->fYear:Ljava/lang/Integer;

    iget-object v3, p0, Lhirondelle/date4j/DateTime;->fMonth:Ljava/lang/Integer;

    iget-object v4, p0, Lhirondelle/date4j/DateTime;->fDay:Ljava/lang/Integer;

    iget-object v5, p0, Lhirondelle/date4j/DateTime;->fHour:Ljava/lang/Integer;

    iget-object v6, p0, Lhirondelle/date4j/DateTime;->fMinute:Ljava/lang/Integer;

    move-object v8, v7

    invoke-direct/range {v1 .. v8}, Lhirondelle/date4j/DateTime;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    sget-object v0, Lhirondelle/date4j/DateTime$Unit;->HOUR:Lhirondelle/date4j/DateTime$Unit;

    if-ne v0, p1, :cond_3

    new-instance v2, Lhirondelle/date4j/DateTime;

    iget-object v3, p0, Lhirondelle/date4j/DateTime;->fYear:Ljava/lang/Integer;

    iget-object v4, p0, Lhirondelle/date4j/DateTime;->fMonth:Ljava/lang/Integer;

    iget-object v5, p0, Lhirondelle/date4j/DateTime;->fDay:Ljava/lang/Integer;

    iget-object v6, p0, Lhirondelle/date4j/DateTime;->fHour:Ljava/lang/Integer;

    move-object v8, v7

    move-object v9, v7

    invoke-direct/range {v2 .. v9}, Lhirondelle/date4j/DateTime;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object v0, v2

    goto :goto_0

    :cond_3
    sget-object v0, Lhirondelle/date4j/DateTime$Unit;->DAY:Lhirondelle/date4j/DateTime$Unit;

    if-ne v0, p1, :cond_4

    new-instance v3, Lhirondelle/date4j/DateTime;

    iget-object v4, p0, Lhirondelle/date4j/DateTime;->fYear:Ljava/lang/Integer;

    iget-object v5, p0, Lhirondelle/date4j/DateTime;->fMonth:Ljava/lang/Integer;

    iget-object v6, p0, Lhirondelle/date4j/DateTime;->fDay:Ljava/lang/Integer;

    move-object v8, v7

    move-object v9, v7

    move-object v10, v7

    invoke-direct/range {v3 .. v10}, Lhirondelle/date4j/DateTime;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object v0, v3

    goto :goto_0

    :cond_4
    sget-object v0, Lhirondelle/date4j/DateTime$Unit;->MONTH:Lhirondelle/date4j/DateTime$Unit;

    if-ne v0, p1, :cond_5

    new-instance v4, Lhirondelle/date4j/DateTime;

    iget-object v5, p0, Lhirondelle/date4j/DateTime;->fYear:Ljava/lang/Integer;

    iget-object v6, p0, Lhirondelle/date4j/DateTime;->fMonth:Ljava/lang/Integer;

    move-object v8, v7

    move-object v9, v7

    move-object v10, v7

    move-object v11, v7

    invoke-direct/range {v4 .. v11}, Lhirondelle/date4j/DateTime;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object v0, v4

    goto :goto_0

    :cond_5
    sget-object v0, Lhirondelle/date4j/DateTime$Unit;->YEAR:Lhirondelle/date4j/DateTime$Unit;

    if-ne v0, p1, :cond_6

    new-instance v5, Lhirondelle/date4j/DateTime;

    iget-object v6, p0, Lhirondelle/date4j/DateTime;->fYear:Ljava/lang/Integer;

    move-object v8, v7

    move-object v9, v7

    move-object v10, v7

    move-object v11, v7

    move-object v12, v7

    invoke-direct/range {v5 .. v12}, Lhirondelle/date4j/DateTime;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object v0, v5

    goto :goto_0

    :cond_6
    move-object v0, v7

    goto :goto_0
.end method

.method public varargs unitsAllAbsent([Lhirondelle/date4j/DateTime$Unit;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->ensureParsed()V

    array-length v4, p1

    move v3, v2

    move v0, v1

    :goto_0
    if-ge v3, v4, :cond_e

    aget-object v5, p1, v3

    sget-object v6, Lhirondelle/date4j/DateTime$Unit;->NANOSECONDS:Lhirondelle/date4j/DateTime$Unit;

    if-ne v6, v5, :cond_2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fNanosecond:Ljava/lang/Integer;

    if-nez v0, :cond_1

    move v0, v1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    sget-object v6, Lhirondelle/date4j/DateTime$Unit;->SECOND:Lhirondelle/date4j/DateTime$Unit;

    if-ne v6, v5, :cond_4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fSecond:Ljava/lang/Integer;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    sget-object v6, Lhirondelle/date4j/DateTime$Unit;->MINUTE:Lhirondelle/date4j/DateTime$Unit;

    if-ne v6, v5, :cond_6

    if-eqz v0, :cond_5

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fMinute:Ljava/lang/Integer;

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    sget-object v6, Lhirondelle/date4j/DateTime$Unit;->HOUR:Lhirondelle/date4j/DateTime$Unit;

    if-ne v6, v5, :cond_8

    if-eqz v0, :cond_7

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fHour:Ljava/lang/Integer;

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    sget-object v6, Lhirondelle/date4j/DateTime$Unit;->DAY:Lhirondelle/date4j/DateTime$Unit;

    if-ne v6, v5, :cond_a

    if-eqz v0, :cond_9

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fDay:Ljava/lang/Integer;

    if-nez v0, :cond_9

    move v0, v1

    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_1

    :cond_a
    sget-object v6, Lhirondelle/date4j/DateTime$Unit;->MONTH:Lhirondelle/date4j/DateTime$Unit;

    if-ne v6, v5, :cond_c

    if-eqz v0, :cond_b

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fMonth:Ljava/lang/Integer;

    if-nez v0, :cond_b

    move v0, v1

    goto :goto_1

    :cond_b
    move v0, v2

    goto :goto_1

    :cond_c
    sget-object v6, Lhirondelle/date4j/DateTime$Unit;->YEAR:Lhirondelle/date4j/DateTime$Unit;

    if-ne v6, v5, :cond_0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fYear:Ljava/lang/Integer;

    if-nez v0, :cond_d

    move v0, v1

    goto :goto_1

    :cond_d
    move v0, v2

    goto :goto_1

    :cond_e
    return v0
.end method

.method public varargs unitsAllPresent([Lhirondelle/date4j/DateTime$Unit;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lhirondelle/date4j/DateTime;->ensureParsed()V

    array-length v4, p1

    move v3, v2

    move v0, v1

    :goto_0
    if-ge v3, v4, :cond_e

    aget-object v5, p1, v3

    sget-object v6, Lhirondelle/date4j/DateTime$Unit;->NANOSECONDS:Lhirondelle/date4j/DateTime$Unit;

    if-ne v6, v5, :cond_2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fNanosecond:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    move v0, v1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    sget-object v6, Lhirondelle/date4j/DateTime$Unit;->SECOND:Lhirondelle/date4j/DateTime$Unit;

    if-ne v6, v5, :cond_4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fSecond:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    sget-object v6, Lhirondelle/date4j/DateTime$Unit;->MINUTE:Lhirondelle/date4j/DateTime$Unit;

    if-ne v6, v5, :cond_6

    if-eqz v0, :cond_5

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fMinute:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    sget-object v6, Lhirondelle/date4j/DateTime$Unit;->HOUR:Lhirondelle/date4j/DateTime$Unit;

    if-ne v6, v5, :cond_8

    if-eqz v0, :cond_7

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fHour:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    sget-object v6, Lhirondelle/date4j/DateTime$Unit;->DAY:Lhirondelle/date4j/DateTime$Unit;

    if-ne v6, v5, :cond_a

    if-eqz v0, :cond_9

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fDay:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_1

    :cond_a
    sget-object v6, Lhirondelle/date4j/DateTime$Unit;->MONTH:Lhirondelle/date4j/DateTime$Unit;

    if-ne v6, v5, :cond_c

    if-eqz v0, :cond_b

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fMonth:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_1

    :cond_b
    move v0, v2

    goto :goto_1

    :cond_c
    sget-object v6, Lhirondelle/date4j/DateTime$Unit;->YEAR:Lhirondelle/date4j/DateTime$Unit;

    if-ne v6, v5, :cond_0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lhirondelle/date4j/DateTime;->fYear:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_1

    :cond_d
    move v0, v2

    goto :goto_1

    :cond_e
    return v0
.end method
