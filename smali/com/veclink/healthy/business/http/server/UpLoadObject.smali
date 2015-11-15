.class public Lcom/veclink/healthy/business/http/server/UpLoadObject;
.super Ljava/lang/Object;
.source "UpLoadObject.java"


# instance fields
.field log:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/LogObject;",
            ">;"
        }
    .end annotation
.end field

.field sleep:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SleepData;",
            ">;"
        }
    .end annotation
.end field

.field sport:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SportData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SportData;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/LogObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/SleepData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "spList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    .local p2, "logList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/LogObject;>;"
    .local p3, "sleepList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/veclink/healthy/business/http/server/UpLoadObject;->sport:Ljava/util/List;

    .line 17
    iput-object p2, p0, Lcom/veclink/healthy/business/http/server/UpLoadObject;->log:Ljava/util/List;

    .line 18
    iput-object p3, p0, Lcom/veclink/healthy/business/http/server/UpLoadObject;->sleep:Ljava/util/List;

    .line 19
    return-void
.end method
