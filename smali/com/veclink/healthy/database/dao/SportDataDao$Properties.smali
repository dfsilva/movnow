.class public Lcom/veclink/healthy/database/dao/SportDataDao$Properties;
.super Ljava/lang/Object;
.source "SportDataDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/healthy/database/dao/SportDataDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final DataFrequency:Lde/greenrobot/dao/Property;

.field public static final DeviceId:Lde/greenrobot/dao/Property;

.field public static final DeviceType:Lde/greenrobot/dao/Property;

.field public static final Hadupload:Lde/greenrobot/dao/Property;

.field public static final SportStep:Lde/greenrobot/dao/Property;

.field public static final SportTime:Lde/greenrobot/dao/Property;

.field public static final SportType:Lde/greenrobot/dao/Property;

.field public static final UserId:Lde/greenrobot/dao/Property;

.field public static final _id:Lde/greenrobot/dao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 26
    new-instance v0, Lde/greenrobot/dao/Property;

    const-class v2, Ljava/lang/String;

    const-string v3, "_id"

    const-string v5, "_ID"

    invoke-direct/range {v0 .. v5}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->_id:Lde/greenrobot/dao/Property;

    .line 27
    new-instance v3, Lde/greenrobot/dao/Property;

    const-class v5, Ljava/lang/String;

    const-string v6, "userId"

    const-string v8, "USER_ID"

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v3, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->UserId:Lde/greenrobot/dao/Property;

    .line 28
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    const-string v5, "deviceId"

    const-string v7, "DEVICE_ID"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->DeviceId:Lde/greenrobot/dao/Property;

    .line 29
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    const-string v5, "sportTime"

    const-string v7, "SPORT_TIME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->SportTime:Lde/greenrobot/dao/Property;

    .line 30
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    const-string v5, "sportType"

    const-string v7, "SPORT_TYPE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->SportType:Lde/greenrobot/dao/Property;

    .line 31
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x5

    const-class v4, Ljava/lang/String;

    const-string v5, "sportStep"

    const-string v7, "SPORT_STEP"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->SportStep:Lde/greenrobot/dao/Property;

    .line 32
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x6

    const-class v4, Ljava/lang/String;

    const-string v5, "dataFrequency"

    const-string v7, "DATA_FREQUENCY"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->DataFrequency:Lde/greenrobot/dao/Property;

    .line 33
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x7

    const-class v4, Ljava/lang/String;

    const-string v5, "deviceType"

    const-string v7, "DEVICE_TYPE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->DeviceType:Lde/greenrobot/dao/Property;

    .line 34
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x8

    const-class v4, Ljava/lang/String;

    const-string v5, "hadupload"

    const-string v7, "HADUPLOAD"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/veclink/healthy/database/dao/SportDataDao$Properties;->Hadupload:Lde/greenrobot/dao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
