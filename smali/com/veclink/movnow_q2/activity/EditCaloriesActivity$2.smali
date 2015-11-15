.class Lcom/veclink/movnow_q2/activity/EditCaloriesActivity$2;
.super Ljava/lang/Object;
.source "EditCaloriesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->backDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;

    const-class v2, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;

    invoke-virtual {v1, v0}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->startActivity(Landroid/content/Intent;)V

    .line 183
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/activity/EditCaloriesActivity;->finish()V

    .line 184
    return-void
.end method
