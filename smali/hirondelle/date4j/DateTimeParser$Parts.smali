.class Lhirondelle/date4j/DateTimeParser$Parts;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhirondelle/date4j/DateTimeParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Parts"
.end annotation


# instance fields
.field datePart:Ljava/lang/String;

.field final synthetic this$0:Lhirondelle/date4j/DateTimeParser;

.field timePart:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lhirondelle/date4j/DateTimeParser;)V
    .locals 0

    iput-object p1, p0, Lhirondelle/date4j/DateTimeParser$Parts;->this$0:Lhirondelle/date4j/DateTimeParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lhirondelle/date4j/DateTimeParser;Lhirondelle/date4j/DateTimeParser$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lhirondelle/date4j/DateTimeParser$Parts;-><init>(Lhirondelle/date4j/DateTimeParser;)V

    return-void
.end method


# virtual methods
.method hasDateOnly()Z
    .locals 1

    iget-object v0, p0, Lhirondelle/date4j/DateTimeParser$Parts;->timePart:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasTimeOnly()Z
    .locals 1

    iget-object v0, p0, Lhirondelle/date4j/DateTimeParser$Parts;->datePart:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasTwoParts()Z
    .locals 1

    iget-object v0, p0, Lhirondelle/date4j/DateTimeParser$Parts;->datePart:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhirondelle/date4j/DateTimeParser$Parts;->timePart:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
