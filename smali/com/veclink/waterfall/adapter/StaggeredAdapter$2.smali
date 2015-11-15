.class Lcom/veclink/waterfall/adapter/StaggeredAdapter$2;
.super Ljava/lang/Object;
.source "StaggeredAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/waterfall/adapter/StaggeredAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/waterfall/adapter/StaggeredAdapter;

.field final synthetic val$calorie:Lcom/veclink/healthy/database/entity/UptakeCalorie;


# direct methods
.method constructor <init>(Lcom/veclink/waterfall/adapter/StaggeredAdapter;Lcom/veclink/healthy/database/entity/UptakeCalorie;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter$2;->this$0:Lcom/veclink/waterfall/adapter/StaggeredAdapter;

    iput-object p2, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter$2;->val$calorie:Lcom/veclink/healthy/database/entity/UptakeCalorie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter$2;->this$0:Lcom/veclink/waterfall/adapter/StaggeredAdapter;

    # getter for: Lcom/veclink/waterfall/adapter/StaggeredAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->access$000(Lcom/veclink/waterfall/adapter/StaggeredAdapter;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 127
    .local v1, "mBundle":Landroid/os/Bundle;
    const-string v2, "Calorie"

    iget-object v3, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter$2;->val$calorie:Lcom/veclink/healthy/database/entity/UptakeCalorie;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 129
    iget-object v2, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter$2;->this$0:Lcom/veclink/waterfall/adapter/StaggeredAdapter;

    # getter for: Lcom/veclink/waterfall/adapter/StaggeredAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->access$000(Lcom/veclink/waterfall/adapter/StaggeredAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 130
    iget-object v2, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter$2;->this$0:Lcom/veclink/waterfall/adapter/StaggeredAdapter;

    # getter for: Lcom/veclink/waterfall/adapter/StaggeredAdapter;->managerCaloriesActivity:Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;
    invoke-static {v2}, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->access$100(Lcom/veclink/waterfall/adapter/StaggeredAdapter;)Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;->finish()V

    .line 131
    return-void
.end method
