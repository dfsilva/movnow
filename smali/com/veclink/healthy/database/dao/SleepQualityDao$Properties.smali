.class public Lcom/veclink/healthy/database/dao/SleepQualityDao$Properties;
.super Ljava/lang/Object;
.source "SleepQualityDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/healthy/database/dao/SleepQualityDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final DateTime:Lde/greenrobot/dao/Property;

.field public static final DeepSleep:Lde/greenrobot/dao/Property;

.field public static final Id:Lde/greenrobot/dao/Property;

.field public static final ShallowSleep:Lde/greenrobot/dao/Property;

.field public static final SleepAmount:Lde/greenrobot/dao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 26
    new-instance v0, Lde/greenrobot/dao/Property;

    const-class v2, Ljava/lang/Long;

    const-string v3, "id"

    const-string v5, "_id"

    invoke-direct/range {v0 .. v5}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/veclink/healthy/database/dao/SleepQualityDao$Properties;->Id:Lde/greenrobot/dao/Property;

    .line 27
    new-instance v3, Lde/greenrobot/dao/Property;

    const-class v5, Ljava/lang/String;

    const-string v6, "SleepAmount"

    const-string v8, "SLEEP_AMOUNT"

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v3, Lcom/veclink/healthy/database/dao/SleepQualityDao$Properties;->SleepAmount:Lde/greenrobot/dao/Property;

    .line 28
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    const-string v5, "DeepSleep"

    const-string v7, "DEEP_SLEEP"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/veclink/healthy/database/dao/SleepQualityDao$Properties;->DeepSleep:Lde/greenrobot/dao/Property;

    .line 29
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    const-string v5, "shallowSleep"

    const-string v7, "SHALLOW_SLEEP"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/veclink/healthy/database/dao/SleepQualityDao$Properties;->ShallowSleep:Lde/greenrobot/dao/Property;

    .line 30
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    const-string v5, "DateTime"

    const-string v7, "DATE_TIME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/veclink/healthy/database/dao/SleepQualityDao$Properties;->DateTime:Lde/greenrobot/dao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
