.class Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity$ContentDateBaseTask;
.super Landroid/os/AsyncTask;
.source "ManagerCaloriesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentDateBaseTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/veclink/healthy/database/entity/UptakeCalorie;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;


# direct methods
.method public constructor <init>(Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity$ContentDateBaseTask;->this$0:Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;

    .line 242
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 243
    iput-object p2, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity$ContentDateBaseTask;->mContext:Landroid/content/Context;

    .line 244
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 238
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity$ContentDateBaseTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/UptakeCalorie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity$ContentDateBaseTask;->this$0:Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->listCalories:Ljava/util/List;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->access$100(Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 253
    :goto_0
    return-object v1

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 253
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 238
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity$ContentDateBaseTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/UptakeCalorie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/UptakeCalorie;>;"
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity$ContentDateBaseTask;->this$0:Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->mAdapter:Lcom/veclink/waterfall/adapter/StaggeredAdapter;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->access$200(Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;)Lcom/veclink/waterfall/adapter/StaggeredAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->addItemTop(Ljava/util/List;)V

    .line 259
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity$ContentDateBaseTask;->this$0:Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->mAdapter:Lcom/veclink/waterfall/adapter/StaggeredAdapter;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->access$200(Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;)Lcom/veclink/waterfall/adapter/StaggeredAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->notifyDataSetChanged()V

    .line 261
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method
