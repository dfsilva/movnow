.class Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$5;
.super Ljava/lang/Object;
.source "BleDeviceListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->deviceOnServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
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
    .line 190
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$5;->this$0:Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method
