.class final enum Lhirondelle/date4j/ModelUtil$NullsGo;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhirondelle/date4j/ModelUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NullsGo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhirondelle/date4j/ModelUtil$NullsGo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lhirondelle/date4j/ModelUtil$NullsGo;

.field public static final enum FIRST:Lhirondelle/date4j/ModelUtil$NullsGo;

.field public static final enum LAST:Lhirondelle/date4j/ModelUtil$NullsGo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lhirondelle/date4j/ModelUtil$NullsGo;

    const-string v1, "FIRST"

    invoke-direct {v0, v1, v2}, Lhirondelle/date4j/ModelUtil$NullsGo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhirondelle/date4j/ModelUtil$NullsGo;->FIRST:Lhirondelle/date4j/ModelUtil$NullsGo;

    new-instance v0, Lhirondelle/date4j/ModelUtil$NullsGo;

    const-string v1, "LAST"

    invoke-direct {v0, v1, v3}, Lhirondelle/date4j/ModelUtil$NullsGo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhirondelle/date4j/ModelUtil$NullsGo;->LAST:Lhirondelle/date4j/ModelUtil$NullsGo;

    const/4 v0, 0x2

    new-array v0, v0, [Lhirondelle/date4j/ModelUtil$NullsGo;

    sget-object v1, Lhirondelle/date4j/ModelUtil$NullsGo;->FIRST:Lhirondelle/date4j/ModelUtil$NullsGo;

    aput-object v1, v0, v2

    sget-object v1, Lhirondelle/date4j/ModelUtil$NullsGo;->LAST:Lhirondelle/date4j/ModelUtil$NullsGo;

    aput-object v1, v0, v3

    sput-object v0, Lhirondelle/date4j/ModelUtil$NullsGo;->$VALUES:[Lhirondelle/date4j/ModelUtil$NullsGo;

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

.method public static valueOf(Ljava/lang/String;)Lhirondelle/date4j/ModelUtil$NullsGo;
    .locals 1

    const-class v0, Lhirondelle/date4j/ModelUtil$NullsGo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhirondelle/date4j/ModelUtil$NullsGo;

    return-object v0
.end method

.method public static final values()[Lhirondelle/date4j/ModelUtil$NullsGo;
    .locals 1

    sget-object v0, Lhirondelle/date4j/ModelUtil$NullsGo;->$VALUES:[Lhirondelle/date4j/ModelUtil$NullsGo;

    invoke-virtual {v0}, [Lhirondelle/date4j/ModelUtil$NullsGo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhirondelle/date4j/ModelUtil$NullsGo;

    return-object v0
.end method
