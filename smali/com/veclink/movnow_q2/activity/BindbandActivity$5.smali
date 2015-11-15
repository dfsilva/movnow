.class Lcom/veclink/movnow_q2/activity/BindbandActivity$5;
.super Ljava/lang/Object;
.source "BindbandActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/BindbandActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/BindbandActivity;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$5;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$5;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    iget-object v0, v0, Lcom/veclink/movnow_q2/activity/BindbandActivity;->connAnimView:Lcom/veclink/healthy/view/BluetoothConnAnimView;

    iget-boolean v0, v0, Lcom/veclink/healthy/view/BluetoothConnAnimView;->mDragging:Z

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BindbandActivity$5;->this$0:Lcom/veclink/movnow_q2/activity/BindbandActivity;

    # invokes: Lcom/veclink/movnow_q2/activity/BindbandActivity;->searchBand()V
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/BindbandActivity;->access$300(Lcom/veclink/movnow_q2/activity/BindbandActivity;)V

    .line 258
    :cond_0
    return-void
.end method
