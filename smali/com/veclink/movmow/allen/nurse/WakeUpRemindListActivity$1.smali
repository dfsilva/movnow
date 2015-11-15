.class Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity$1;
.super Ljava/lang/Object;
.source "WakeUpRemindListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 48
    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;

    # getter for: Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;->adapter:Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;
    invoke-static {v1}, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;->access$000(Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;)Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;

    # getter for: Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;->adapter:Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;
    invoke-static {v1}, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;->access$000(Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;)Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->getRemindList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 49
    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;

    # getter for: Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;->access$100(Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;

    const v3, 0x7f0c0190

    invoke-virtual {v2, v3}, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/veclink/movnow_q2/util/ToastUtil;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;

    # getter for: Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;->access$100(Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;

    invoke-virtual {v1, v0}, Lcom/veclink/movmow/allen/nurse/WakeUpRemindListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
