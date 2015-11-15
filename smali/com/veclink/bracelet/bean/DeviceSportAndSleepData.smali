.class public Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;
.super Ljava/lang/Object;
.source "DeviceSportAndSleepData.java"


# instance fields
.field public syncSleepDataResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/bracelet/bean/DeviceSleepData;",
            ">;"
        }
    .end annotation
.end field

.field public syncSportDataResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/bracelet/bean/DeviceSportData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;->syncSportDataResult:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/bracelet/bean/DeviceSportAndSleepData;->syncSleepDataResult:Ljava/util/List;

    return-void
.end method
