.class Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$2;
.super Ljava/lang/Object;
.source "BleDeviceListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 79
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->onBackPressed()V

    .line 85
    return-void
.end method
