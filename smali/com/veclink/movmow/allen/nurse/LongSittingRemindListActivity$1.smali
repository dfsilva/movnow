.class Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$1;
.super Landroid/os/Handler;
.source "LongSittingRemindListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;
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
    .line 60
    iput-object p1, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;

    # invokes: Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->setData()V
    invoke-static {v0}, Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;->access$000(Lcom/veclink/movmow/allen/nurse/LongSittingRemindListActivity;)V

    .line 64
    return-void
.end method
