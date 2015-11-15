.class final Lhirondelle/date4j/DateTimeFormatter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhirondelle/date4j/DateTimeFormatter$1;,
        Lhirondelle/date4j/DateTimeFormatter$EscapedRange;,
        Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;,
        Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;
    }
.end annotation


# static fields
.field private static final AM:I = 0x0

.field private static final D:Ljava/lang/String; = "D"

.field private static final DD:Ljava/lang/String; = "DD"

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final ESCAPED_RANGE:Ljava/util/regex/Pattern;

.field private static final ESCAPE_CHAR:Ljava/lang/String; = "|"

.field private static final FRACTIONALS:Ljava/util/regex/Pattern;

.field private static final M:Ljava/lang/String; = "M"

.field private static final MM:Ljava/lang/String; = "MM"

.field private static final MMM:Ljava/lang/String; = "MMM"

.field private static final MMMM:Ljava/lang/String; = "MMMM"

.field private static final PM:I = 0x1

.field private static final TOKENS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WWW:Ljava/lang/String; = "WWW"

.field private static final WWWW:Ljava/lang/String; = "WWWW"

.field private static final YY:Ljava/lang/String; = "YY"

.field private static final YYYY:Ljava/lang/String; = "YYYY"

.field private static final a:Ljava/lang/String; = "a"

.field private static final h:Ljava/lang/String; = "h"

.field private static final h12:Ljava/lang/String; = "h12"

.field private static final hh:Ljava/lang/String; = "hh"

.field private static final hh12:Ljava/lang/String; = "hh12"

.field private static final m:Ljava/lang/String; = "m"

.field private static final mm:Ljava/lang/String; = "mm"

.field private static final s:Ljava/lang/String; = "s"

.field private static final ss:Ljava/lang/String; = "ss"


# instance fields
.field private final fAmPm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fCustomLocalization:Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;

.field private fEscapedRanges:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lhirondelle/date4j/DateTimeFormatter$EscapedRange;",
            ">;"
        }
    .end annotation
.end field

.field private final fFormat:Ljava/lang/String;

.field private fInterpretedRanges:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;",
            ">;"
        }
    .end annotation
.end field

.field private final fLocale:Ljava/util/Locale;

.field private final fMonths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fWeekdays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "\\|[^\\|]*\\|"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lhirondelle/date4j/DateTimeFormatter;->ESCAPED_RANGE:Ljava/util/regex/Pattern;

    const-string v0, "f{1,9}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lhirondelle/date4j/DateTimeFormatter;->FRACTIONALS:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "YYYY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "YY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "MMMM"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "MMM"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "MM"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "M"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "DD"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "D"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "WWWW"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "WWW"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "hh12"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "h12"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "hh"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "h"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "mm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "m"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "ss"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "s"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "a"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "fffffffff"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "ffffffff"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "fffffff"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "ffffff"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "fffff"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "ffff"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "fff"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "ff"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    const-string v1, "f"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fMonths:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fWeekdays:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fAmPm:Ljava/util/Map;

    iput-object p1, p0, Lhirondelle/date4j/DateTimeFormatter;->fFormat:Ljava/lang/String;

    iput-object v1, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    iput-object v1, p0, Lhirondelle/date4j/DateTimeFormatter;->fCustomLocalization:Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeFormatter;->validateState()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
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
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fMonths:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fWeekdays:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fAmPm:Ljava/util/Map;

    iput-object p1, p0, Lhirondelle/date4j/DateTimeFormatter;->fFormat:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    new-instance v0, Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;

    invoke-direct {v0, p0, p2, p3, p4}, Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;-><init>(Lhirondelle/date4j/DateTimeFormatter;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fCustomLocalization:Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeFormatter;->validateState()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fMonths:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fWeekdays:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fAmPm:Ljava/util/Map;

    iput-object p1, p0, Lhirondelle/date4j/DateTimeFormatter;->fFormat:Ljava/lang/String;

    iput-object p2, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    const/4 v0, 0x0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fCustomLocalization:Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeFormatter;->validateState()V

    return-void
.end method

.method private addLeadingZero(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lhirondelle/date4j/Util;->textHasContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private amPmIndicator(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p1, :cond_0

    iget-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fCustomLocalization:Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lhirondelle/date4j/DateTimeFormatter;->lookupCustomAmPmFor(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lhirondelle/date4j/DateTimeFormatter;->lookupAmPmFor(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Your date pattern requires either a Locale, or your own custom localizations for text:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lhirondelle/date4j/DateTimeFormatter;->fFormat:Ljava/lang/String;

    invoke-static {v2}, Lhirondelle/date4j/Util;->quote(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findEscapedRanges()V
    .locals 3

    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->ESCAPED_RANGE:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lhirondelle/date4j/DateTimeFormatter;->fFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lhirondelle/date4j/DateTimeFormatter$EscapedRange;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lhirondelle/date4j/DateTimeFormatter$EscapedRange;-><init>(Lhirondelle/date4j/DateTimeFormatter$1;)V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iput v2, v1, Lhirondelle/date4j/DateTimeFormatter$EscapedRange;->Start:I

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lhirondelle/date4j/DateTimeFormatter$EscapedRange;->End:I

    iget-object v2, p0, Lhirondelle/date4j/DateTimeFormatter;->fEscapedRanges:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private firstNChars(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lhirondelle/date4j/Util;->textHasContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private firstThreeChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x3

    invoke-static {p1}, Lhirondelle/date4j/Util;->textHasContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private fullMonth(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p1, :cond_0

    iget-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fCustomLocalization:Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lhirondelle/date4j/DateTimeFormatter;->lookupCustomMonthFor(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lhirondelle/date4j/DateTimeFormatter;->lookupMonthFor(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Your date pattern requires either a Locale, or your own custom localizations for text:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lhirondelle/date4j/DateTimeFormatter;->fFormat:Ljava/lang/String;

    invoke-static {v2}, Lhirondelle/date4j/Util;->quote(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fullWeekday(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p1, :cond_0

    iget-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fCustomLocalization:Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lhirondelle/date4j/DateTimeFormatter;->lookupCustomWeekdayFor(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lhirondelle/date4j/DateTimeFormatter;->lookupWeekdayFor(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Your date pattern requires either a Locale, or your own custom localizations for text:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lhirondelle/date4j/DateTimeFormatter;->fFormat:Ljava/lang/String;

    invoke-static {v2}, Lhirondelle/date4j/Util;->quote(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAmPmTextFor(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "a"

    iget-object v2, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v2, 0x1

    const/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x2

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xb

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getInterpretation(I)Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fInterpretedRanges:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;

    iget v3, v0, Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;->Start:I

    if-ne v3, p1, :cond_1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private interpretInput(Lhirondelle/date4j/DateTime;)V
    .locals 6

    iget-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fFormat:Ljava/lang/String;

    sget-object v1, Lhirondelle/date4j/DateTimeFormatter;->TOKENS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;-><init>(Lhirondelle/date4j/DateTimeFormatter$1;)V

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    iput v5, v4, Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;->Start:I

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;->End:I

    invoke-direct {p0, v4}, Lhirondelle/date4j/DateTimeFormatter;->isInEscapedRange(Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lhirondelle/date4j/DateTimeFormatter;->interpretThe(Ljava/lang/String;Lhirondelle/date4j/DateTime;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;->Text:Ljava/lang/String;

    iget-object v5, p0, Lhirondelle/date4j/DateTimeFormatter;->fInterpretedRanges:Ljava/util/Collection;

    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->withCharDenotingAlreadyInterpreted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private interpretThe(Ljava/lang/String;Lhirondelle/date4j/DateTime;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const-string v0, "YYYY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->valueStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "YY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->valueStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->noCentury(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "MMMM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->fullMonth(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "MMM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->fullMonth(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->firstThreeChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "MM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->valueStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->addLeadingZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, "M"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->valueStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v0, "DD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getDay()Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->valueStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->addLeadingZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    const-string v0, "D"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getDay()Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->valueStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const-string v0, "WWWW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getWeekDay()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->fullWeekday(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    const-string v0, "WWW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getWeekDay()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->fullWeekday(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->firstThreeChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    const-string v0, "hh"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->valueStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->addLeadingZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    const-string v0, "h"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->valueStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    const-string v0, "h12"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->twelveHourStyle(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->valueStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    const-string v0, "hh12"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->twelveHourStyle(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->valueStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->addLeadingZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    const-string v0, "a"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->amPmIndicator(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    const-string v0, "mm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->valueStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->addLeadingZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    const-string v0, "m"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->valueStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    const-string v0, "ss"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getSecond()Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->valueStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->addLeadingZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_11
    const-string v0, "s"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getSecond()Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->valueStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_12
    const-string v0, "f"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lhirondelle/date4j/DateTimeFormatter;->FRACTIONALS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p2}, Lhirondelle/date4j/DateTime;->getNanoseconds()Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->nanosWithLeadingZeroes(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lhirondelle/date4j/DateTimeFormatter;->firstNChars(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown token in date formatting pattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown token in date formatting pattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isInEscapedRange(Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fEscapedRanges:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhirondelle/date4j/DateTimeFormatter$EscapedRange;

    iget v3, v0, Lhirondelle/date4j/DateTimeFormatter$EscapedRange;->Start:I

    iget v4, p1, Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;->Start:I

    if-gt v3, v4, :cond_0

    iget v3, p1, Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;->Start:I

    iget v0, v0, Lhirondelle/date4j/DateTimeFormatter$EscapedRange;->End:I

    if-gt v3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private lookupAmPmFor(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    iget-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fAmPm:Ljava/util/Map;

    iget-object v1, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lhirondelle/date4j/DateTimeFormatter;->getAmPmTextFor(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lhirondelle/date4j/DateTimeFormatter;->getAmPmTextFor(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lhirondelle/date4j/DateTimeFormatter;->fAmPm:Ljava/util/Map;

    iget-object v2, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fAmPm:Ljava/util/Map;

    iget-object v1, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fAmPm:Ljava/util/Map;

    iget-object v1, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private lookupCustomAmPmFor(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fCustomLocalization:Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;

    iget-object v0, v0, Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;->AmPmIndicators:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fCustomLocalization:Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;

    iget-object v0, v0, Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;->AmPmIndicators:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private lookupCustomMonthFor(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fCustomLocalization:Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;

    iget-object v0, v0, Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;->Months:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private lookupCustomWeekdayFor(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fCustomLocalization:Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;

    iget-object v0, v0, Lhirondelle/date4j/DateTimeFormatter$CustomLocalization;->Weekdays:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private lookupMonthFor(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    iget-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fMonths:Ljava/util/Map;

    iget-object v1, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v0, "MMMM"

    iget-object v3, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    invoke-direct {v2, v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0xb

    if-gt v0, v3, :cond_0

    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v4, 0x1

    const/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x5

    const/16 v5, 0xf

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fMonths:Ljava/util/Map;

    iget-object v2, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fMonths:Ljava/util/Map;

    iget-object v1, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private lookupWeekdayFor(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const-string v0, ""

    iget-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fWeekdays:Ljava/util/Map;

    iget-object v1, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v0, "EEEE"

    iget-object v3, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    invoke-direct {v2, v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/16 v0, 0x8

    :goto_0
    const/16 v3, 0xe

    if-gt v0, v3, :cond_0

    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v4, 0x7d9

    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fWeekdays:Ljava/util/Map;

    iget-object v2, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fWeekdays:Ljava/util/Map;

    iget-object v1, p0, Lhirondelle/date4j/DateTimeFormatter;->fLocale:Ljava/util/Locale;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private nanosWithLeadingZeroes(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1}, Lhirondelle/date4j/DateTimeFormatter;->valueStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private nextLetter(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fFormat:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private noCentury(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    invoke-static {p1}, Lhirondelle/date4j/Util;->textHasContent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private produceFinalOutput()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lhirondelle/date4j/DateTimeFormatter;->fFormat:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->nextLetter(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeFormatter;->getInterpretation(I)Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v0, v3, Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;->Text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lhirondelle/date4j/DateTimeFormatter$InterpretedRange;->End:I

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "|"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private twelveHourStyle(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    const/16 v1, 0xc

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0
.end method

.method private validateState()V
    .locals 2

    iget-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fFormat:Ljava/lang/String;

    invoke-static {v0}, Lhirondelle/date4j/Util;->textHasContent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DateTime format has no content."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private valueStr(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private withCharDenotingAlreadyInterpreted(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v0, v2, :cond_0

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method format(Lhirondelle/date4j/DateTime;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fEscapedRanges:Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhirondelle/date4j/DateTimeFormatter;->fInterpretedRanges:Ljava/util/Collection;

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeFormatter;->findEscapedRanges()V

    invoke-direct {p0, p1}, Lhirondelle/date4j/DateTimeFormatter;->interpretInput(Lhirondelle/date4j/DateTime;)V

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeFormatter;->produceFinalOutput()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
