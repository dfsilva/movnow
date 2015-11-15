.class Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$2;
.super Ljava/lang/Object;
.source "LongSittingRemindListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$2;->this$0:Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$2;->this$0:Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;

    # getter for: Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->access$100(Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/veclink/movnow_q2/activity/SettingSittingRemindTime;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$2;->this$0:Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;

    invoke-virtual {v1, v0}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    return-void
.end method
