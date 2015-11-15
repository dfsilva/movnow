.class public final enum Lhirondelle/date4j/DateTime$Unit;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhirondelle/date4j/DateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Unit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhirondelle/date4j/DateTime$Unit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lhirondelle/date4j/DateTime$Unit;

.field public static final enum DAY:Lhirondelle/date4j/DateTime$Unit;

.field public static final enum HOUR:Lhirondelle/date4j/DateTime$Unit;

.field public static final enum MINUTE:Lhirondelle/date4j/DateTime$Unit;

.field public static final enum MONTH:Lhirondelle/date4j/DateTime$Unit;

.field public static final enum NANOSECONDS:Lhirondelle/date4j/DateTime$Unit;

.field public static final enum SECOND:Lhirondelle/date4j/DateTime$Unit;

.field public static final enum YEAR:Lhirondelle/date4j/DateTime$Unit;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lhirondelle/date4j/DateTime$Unit;

    const-string v1, "YEAR"

    invoke-direct {v0, v1, v3}, Lhirondelle/date4j/DateTime$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhirondelle/date4j/DateTime$Unit;->YEAR:Lhirondelle/date4j/DateTime$Unit;

    new-instance v0, Lhirondelle/date4j/DateTime$Unit;

    const-string v1, "MONTH"

    invoke-direct {v0, v1, v4}, Lhirondelle/date4j/DateTime$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhirondelle/date4j/DateTime$Unit;->MONTH:Lhirondelle/date4j/DateTime$Unit;

    new-instance v0, Lhirondelle/date4j/DateTime$Unit;

    const-string v1, "DAY"

    invoke-direct {v0, v1, v5}, Lhirondelle/date4j/DateTime$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhirondelle/date4j/DateTime$Unit;->DAY:Lhirondelle/date4j/DateTime$Unit;

    new-instance v0, Lhirondelle/date4j/DateTime$Unit;

    const-string v1, "HOUR"

    invoke-direct {v0, v1, v6}, Lhirondelle/date4j/DateTime$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhirondelle/date4j/DateTime$Unit;->HOUR:Lhirondelle/date4j/DateTime$Unit;

    new-instance v0, Lhirondelle/date4j/DateTime$Unit;

    const-string v1, "MINUTE"

    invoke-direct {v0, v1, v7}, Lhirondelle/date4j/DateTime$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhirondelle/date4j/DateTime$Unit;->MINUTE:Lhirondelle/date4j/DateTime$Unit;

    new-instance v0, Lhirondelle/date4j/DateTime$Unit;

    const-string v1, "SECOND"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lhirondelle/date4j/DateTime$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhirondelle/date4j/DateTime$Unit;->SECOND:Lhirondelle/date4j/DateTime$Unit;

    new-instance v0, Lhirondelle/date4j/DateTime$Unit;

    const-string v1, "NANOSECONDS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lhirondelle/date4j/DateTime$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhirondelle/date4j/DateTime$Unit;->NANOSECONDS:Lhirondelle/date4j/DateTime$Unit;

    const/4 v0, 0x7

    new-array v0, v0, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v1, Lhirondelle/date4j/DateTime$Unit;->YEAR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v1, v0, v3

    sget-object v1, Lhirondelle/date4j/DateTime$Unit;->MONTH:Lhirondelle/date4j/DateTime$Unit;

    aput-object v1, v0, v4

    sget-object v1, Lhirondelle/date4j/DateTime$Unit;->DAY:Lhirondelle/date4j/DateTime$Unit;

    aput-object v1, v0, v5

    sget-object v1, Lhirondelle/date4j/DateTime$Unit;->HOUR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v1, v0, v6

    sget-object v1, Lhirondelle/date4j/DateTime$Unit;->MINUTE:Lhirondelle/date4j/DateTime$Unit;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->SECOND:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lhirondelle/date4j/DateTime$Unit;->NANOSECONDS:Lhirondelle/date4j/DateTime$Unit;

    aput-object v2, v0, v1

    sput-object v0, Lhirondelle/date4j/DateTime$Unit;->$VALUES:[Lhirondelle/date4j/DateTime$Unit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhirondelle/date4j/DateTime$Unit;
    .locals 1

    const-class v0, Lhirondelle/date4j/DateTime$Unit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhirondelle/date4j/DateTime$Unit;

    return-object v0
.end method

.method public static final values()[Lhirondelle/date4j/DateTime$Unit;
    .locals 1

    sget-object v0, Lhirondelle/date4j/DateTime$Unit;->$VALUES:[Lhirondelle/date4j/DateTime$Unit;

    invoke-virtual {v0}, [Lhirondelle/date4j/DateTime$Unit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhirondelle/date4j/DateTime$Unit;

    return-object v0
.end method
