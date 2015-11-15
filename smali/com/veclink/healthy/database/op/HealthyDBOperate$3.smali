.class final Lcom/veclink/healthy/database/op/HealthyDBOperate$3;
.super Ljava/lang/Object;
.source "HealthyDBOperate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/healthy/database/op/HealthyDBOperate;->addExerciseAmountList(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dao:Lcom/veclink/healthy/database/dao/ExerciseAmountDao;

.field final synthetic val$exerciseAmountList:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/veclink/healthy/database/dao/ExerciseAmountDao;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/veclink/healthy/database/op/HealthyDBOperate$3;->val$exerciseAmountList:Ljava/util/List;

    iput-object p2, p0, Lcom/veclink/healthy/database/op/HealthyDBOperate$3;->val$dao:Lcom/veclink/healthy/database/dao/ExerciseAmountDao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 359
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/veclink/healthy/database/op/HealthyDBOperate$3;->val$exerciseAmountList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 360
    iget-object v2, p0, Lcom/veclink/healthy/database/op/HealthyDBOperate$3;->val$exerciseAmountList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/healthy/database/entity/ExerciseAmount;

    .line 361
    .local v1, "note":Lcom/veclink/healthy/database/entity/ExerciseAmount;
    iget-object v2, p0, Lcom/veclink/healthy/database/op/HealthyDBOperate$3;->val$dao:Lcom/veclink/healthy/database/dao/ExerciseAmountDao;

    invoke-virtual {v2, v1}, Lcom/veclink/healthy/database/dao/ExerciseAmountDao;->insertOrReplace(Ljava/lang/Object;)J

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    .end local v1    # "note":Lcom/veclink/healthy/database/entity/ExerciseAmount;
    :cond_0
    return-void
.end method
