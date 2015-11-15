.class Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$4;
.super Ljava/lang/Object;
.source "BleDeviceListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->connectingMsgView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->access$100(Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c0173

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 142
    return-void
.end method
