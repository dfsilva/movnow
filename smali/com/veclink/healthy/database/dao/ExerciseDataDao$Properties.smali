.class public Lcom/veclink/healthy/database/dao/ExerciseDataDao$Properties;
.super Ljava/lang/Object;
.source "ExerciseDataDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/healthy/database/dao/ExerciseDataDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final CalorieConsume:Lde/greenrobot/dao/Property;

.field public static final DateTime:Lde/greenrobot/dao/Property;

.field public static final Mileage:Lde/greenrobot/dao/Property;

.field public static final StepNumber:Lde/greenrobot/dao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 26
    new-instance v0, Lde/greenrobot/dao/Property;

    const-class v2, Ljava/lang/String;

    const-string v3, "DateTime"

    const-string v5, "DATE_TIME"

    invoke-direct/range {v0 .. v5}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/veclink/healthy/database/dao/ExerciseDataDao$Properties;->DateTime:Lde/greenrobot/dao/Property;

    .line 27
    new-instance v3, Lde/greenrobot/dao/Property;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "StepNumber"

    const-string v8, "STEP_NUMBER"

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v3, Lcom/veclink/healthy/database/dao/ExerciseDataDao$Properties;->StepNumber:Lde/greenrobot/dao/Property;

    .line 28
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "Mileage"

    const-string v7, "MILEAGE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/veclink/healthy/database/dao/ExerciseDataDao$Properties;->Mileage:Lde/greenrobot/dao/Property;

    .line 29
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "CalorieConsume"

    const-string v7, "CALORIE_CONSUME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/veclink/healthy/database/dao/ExerciseDataDao$Properties;->CalorieConsume:Lde/greenrobot/dao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
