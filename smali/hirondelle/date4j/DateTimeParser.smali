.class final Lhirondelle/date4j/DateTimeParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhirondelle/date4j/DateTimeParser$1;,
        Lhirondelle/date4j/DateTimeParser$Parts;,
        Lhirondelle/date4j/DateTimeParser$UnknownDateTimeFormat;
    }
.end annotation


# static fields
.field private static final CL:Ljava/lang/String; = "\\:"

.field private static final COLON:Ljava/lang/String; = ":"

.field private static final DATE:Ljava/util/regex/Pattern;

.field private static final NUM_DIGITS:Ljava/lang/Integer;

.field private static final NUM_DIGITS_FOR_FRACTIONAL_SECONDS:Ljava/lang/String; = "9"

.field private static final THIRD_POSITION:I = 0x2

.field private static final TIME:Ljava/util/regex/Pattern;

.field private static final TT:Ljava/lang/String; = "(\\d\\d)"


# instance fields
.field private fDay:Ljava/lang/Integer;

.field private fHour:Ljava/lang/Integer;

.field private fMinute:Ljava/lang/Integer;

.field private fMonth:Ljava/lang/Integer;

.field private fNanosecond:Ljava/lang/Integer;

.field private fSecond:Ljava/lang/Integer;

.field private fYear:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d{1,4})-(\\d\\d)-(\\d\\d)|(\\d{1,4})-(\\d\\d)|(\\d{1,4})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lhirondelle/date4j/DateTimeParser;->DATE:Ljava/util/regex/Pattern;

    const-string v0, "9"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lhirondelle/date4j/DateTimeParser;->NUM_DIGITS:Ljava/lang/Integer;

    const-string v0, "(\\d\\d)\\:(\\d\\d)\\:(\\d\\d)\\.(\\d{1,9})|(\\d\\d)\\:(\\d\\d)\\:(\\d\\d)|(\\d\\d)\\:(\\d\\d)|(\\d\\d)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lhirondelle/date4j/DateTimeParser;->TIME:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private convertToNanoseconds(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sget-object v2, Lhirondelle/date4j/DateTimeParser;->NUM_DIGITS:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private varargs getGroup(Ljava/util/regex/Matcher;[I)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    array-length v2, p2

    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p2, v1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private hasColonInThirdPlace(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    const-string v0, ":"

    const/4 v1, 0x3

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method private parseDate(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x3

    sget-object v0, Lhirondelle/date4j/DateTimeParser;->DATE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, v0, v1}, Lhirondelle/date4j/DateTimeParser;->getGroup(Ljava/util/regex/Matcher;[I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lhirondelle/date4j/DateTimeParser;->fYear:Ljava/lang/Integer;

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-direct {p0, v0, v1}, Lhirondelle/date4j/DateTimeParser;->getGroup(Ljava/util/regex/Matcher;[I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lhirondelle/date4j/DateTimeParser;->fMonth:Ljava/lang/Integer;

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v3, v1, v2

    invoke-direct {p0, v0, v1}, Lhirondelle/date4j/DateTimeParser;->getGroup(Ljava/util/regex/Matcher;[I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeParser;->fDay:Ljava/lang/Integer;

    :cond_2
    return-void

    :cond_3
    new-instance v0, Lhirondelle/date4j/DateTimeParser$UnknownDateTimeFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected format for date:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lhirondelle/date4j/DateTimeParser$UnknownDateTimeFormat;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 4
        0x1
        0x4
        0x6
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x5
    .end array-data
.end method

.method private parseTime(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x4

    sget-object v0, Lhirondelle/date4j/DateTimeParser;->TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_4

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, v0, v1}, Lhirondelle/date4j/DateTimeParser;->getGroup(Ljava/util/regex/Matcher;[I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lhirondelle/date4j/DateTimeParser;->fHour:Ljava/lang/Integer;

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-direct {p0, v0, v1}, Lhirondelle/date4j/DateTimeParser;->getGroup(Ljava/util/regex/Matcher;[I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lhirondelle/date4j/DateTimeParser;->fMinute:Ljava/lang/Integer;

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    invoke-direct {p0, v0, v1}, Lhirondelle/date4j/DateTimeParser;->getGroup(Ljava/util/regex/Matcher;[I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lhirondelle/date4j/DateTimeParser;->fSecond:Ljava/lang/Integer;

    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v3, v1, v2

    invoke-direct {p0, v0, v1}, Lhirondelle/date4j/DateTimeParser;->getGroup(Ljava/util/regex/Matcher;[I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeParser;->convertToNanoseconds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeParser;->fNanosecond:Ljava/lang/Integer;

    :cond_3
    return-void

    :cond_4
    new-instance v0, Lhirondelle/date4j/DateTimeParser$UnknownDateTimeFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected format for time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lhirondelle/date4j/DateTimeParser$UnknownDateTimeFormat;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 4
        0x1
        0x5
        0x8
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x6
        0x9
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x7
    .end array-data
.end method

.method private splitIntoDateAndTime(Ljava/lang/String;)Lhirondelle/date4j/DateTimeParser$Parts;
    .locals 4

    const/4 v1, 0x0

    new-instance v2, Lhirondelle/date4j/DateTimeParser$Parts;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lhirondelle/date4j/DateTimeParser$Parts;-><init>(Lhirondelle/date4j/DateTimeParser;Lhirondelle/date4j/DateTimeParser$1;)V

    invoke-virtual {p0, p1}, Lhirondelle/date4j/DateTimeParser;->getDateTimeSeparator(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lhirondelle/date4j/DateTimeParser$Parts;->datePart:Ljava/lang/String;

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lhirondelle/date4j/DateTimeParser$Parts;->timePart:Ljava/lang/String;

    :goto_1
    return-object v2

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lhirondelle/date4j/DateTimeParser;->hasColonInThirdPlace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, v2, Lhirondelle/date4j/DateTimeParser$Parts;->timePart:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object p1, v2, Lhirondelle/date4j/DateTimeParser$Parts;->datePart:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method getDateTimeSeparator(Ljava/lang/String;)I
    .locals 2

    const-string v0, " "

    const/4 v1, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "T"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method parse(Ljava/lang/String;)Lhirondelle/date4j/DateTime;
    .locals 8

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "DateTime string is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeParser;->splitIntoDateAndTime(Ljava/lang/String;)Lhirondelle/date4j/DateTimeParser$Parts;

    move-result-object v0

    invoke-virtual {v0}, Lhirondelle/date4j/DateTimeParser$Parts;->hasTwoParts()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lhirondelle/date4j/DateTimeParser$Parts;->datePart:Ljava/lang/String;

    invoke-direct {p0, v1}, Lhirondelle/date4j/DateTimeParser;->parseDate(Ljava/lang/String;)V

    iget-object v0, v0, Lhirondelle/date4j/DateTimeParser$Parts;->timePart:Ljava/lang/String;

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeParser;->parseTime(Ljava/lang/String;)V

    :cond_1
    :goto_0
    new-instance v0, Lhirondelle/date4j/DateTime;

    iget-object v1, p0, Lhirondelle/date4j/DateTimeParser;->fYear:Ljava/lang/Integer;

    iget-object v2, p0, Lhirondelle/date4j/DateTimeParser;->fMonth:Ljava/lang/Integer;

    iget-object v3, p0, Lhirondelle/date4j/DateTimeParser;->fDay:Ljava/lang/Integer;

    iget-object v4, p0, Lhirondelle/date4j/DateTimeParser;->fHour:Ljava/lang/Integer;

    iget-object v5, p0, Lhirondelle/date4j/DateTimeParser;->fMinute:Ljava/lang/Integer;

    iget-object v6, p0, Lhirondelle/date4j/DateTimeParser;->fSecond:Ljava/lang/Integer;

    iget-object v7, p0, Lhirondelle/date4j/DateTimeParser;->fNanosecond:Ljava/lang/Integer;

    invoke-direct/range {v0 .. v7}, Lhirondelle/date4j/DateTime;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0

    :cond_2
    invoke-virtual {v0}, Lhirondelle/date4j/DateTimeParser$Parts;->hasDateOnly()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lhirondelle/date4j/DateTimeParser$Parts;->datePart:Ljava/lang/String;

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeParser;->parseDate(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lhirondelle/date4j/DateTimeParser$Parts;->hasTimeOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lhirondelle/date4j/DateTimeParser$Parts;->timePart:Ljava/lang/String;

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeParser;->parseTime(Ljava/lang/String;)V

    goto :goto_0
.end method
