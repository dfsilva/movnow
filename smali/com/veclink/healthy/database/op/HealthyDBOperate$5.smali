.class final Lcom/veclink/healthy/database/op/HealthyDBOperate$5;
.super Ljava/lang/Object;
.source "HealthyDBOperate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/healthy/database/op/HealthyDBOperate;->addUptakeCalorieList(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dao:Lcom/veclink/healthy/database/dao/UptakeCalorieDao;

.field final synthetic val$uptakeCalorieList:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/veclink/healthy/database/dao/UptakeCalorieDao;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/veclink/healthy/database/op/HealthyDBOperate$5;->val$uptakeCalorieList:Ljava/util/List;

    iput-object p2, p0, Lcom/veclink/healthy/database/op/HealthyDBOperate$5;->val$dao:Lcom/veclink/healthy/database/dao/UptakeCalorieDao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 521
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/veclink/healthy/database/op/HealthyDBOperate$5;->val$uptakeCalorieList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 522
    iget-object v2, p0, Lcom/veclink/healthy/database/op/HealthyDBOperate$5;->val$uptakeCalorieList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/healthy/database/entity/UptakeCalorie;

    .line 523
    .local v1, "note":Lcom/veclink/healthy/database/entity/UptakeCalorie;
    iget-object v2, p0, Lcom/veclink/healthy/database/op/HealthyDBOperate$5;->val$dao:Lcom/veclink/healthy/database/dao/UptakeCalorieDao;

    invoke-virtual {v2, v1}, Lcom/veclink/healthy/database/dao/UptakeCalorieDao;->insertOrReplace(Ljava/lang/Object;)J

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 525
    .end local v1    # "note":Lcom/veclink/healthy/database/entity/UptakeCalorie;
    :cond_0
    return-void
.end method
