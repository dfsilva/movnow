.class Lcom/veclink/movnow_q2/adapter/DeviceListAdapter$1;
.super Ljava/lang/Object;
.source "DeviceListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;

.field final synthetic val$posititon:I


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;I)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/veclink/movnow_q2/adapter/DeviceListAdapter$1;->this$0:Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;

    iput p2, p0, Lcom/veclink/movnow_q2/adapter/DeviceListAdapter$1;->val$posititon:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v1, p0, Lcom/veclink/movnow_q2/adapter/DeviceListAdapter$1;->this$0:Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;

    # getter for: Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;->access$000(Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/veclink/healthy/account/HealthyAccountHolder;->unBindDevice(Landroid/content/Context;)V

    .line 68
    iget-object v1, p0, Lcom/veclink/movnow_q2/adapter/DeviceListAdapter$1;->this$0:Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;

    # getter for: Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;->deviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;->access$100(Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/veclink/movnow_q2/adapter/DeviceListAdapter$1;->val$posititon:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 69
    iget-object v1, p0, Lcom/veclink/movnow_q2/adapter/DeviceListAdapter$1;->this$0:Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;->notifyDataSetChanged()V

    .line 70
    iget-object v1, p0, Lcom/veclink/movnow_q2/adapter/DeviceListAdapter$1;->this$0:Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;

    # getter for: Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;->access$000(Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 71
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getInstance()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->unBindService(Landroid/app/Application;)V

    .line 73
    return-void
.end method
