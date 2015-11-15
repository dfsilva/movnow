.class Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$3;
.super Ljava/lang/Object;
.source "LongSittingRemindListActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 110
    iput-object p1, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$3;->this$0:Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 114
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$3;->this$0:Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;

    # setter for: Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->isOpenWakeUp:Z
    invoke-static {v0, p2}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->access$202(Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;Z)Z

    .line 115
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$3;->this$0:Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;

    const-string v1, "open_wakeup"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$3;->this$0:Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;

    # getter for: Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->isOnCreate:Z
    invoke-static {v0}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->access$300(Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$3;->this$0:Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;

    invoke-virtual {v0}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->startSyn()V

    .line 120
    :cond_0
    return-void
.end method
