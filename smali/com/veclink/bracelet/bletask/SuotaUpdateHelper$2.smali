.class Lcom/veclink/bracelet/bletask/SuotaUpdateHelper$2;
.super Ljava/lang/Object;
.source "SuotaUpdateHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->onCharacteristicRead(Landroid/bluetooth/BluetoothGattCharacteristic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;


# direct methods
.method constructor <init>(Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;)V
    .locals 0

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper$2;->this$0:Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper$2;->this$0:Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/SuotaUpdateHelper;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 1105
    invoke-static {}, Lcom/veclink/bracelet/bletask/BleSuotaUpdateTask;->unregisterObserver()V

    .line 1106
    return-void
.end method
