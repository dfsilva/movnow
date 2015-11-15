.class Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;
.super Ljava/lang/Object;
.source "BleScanDeviceTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$rssi:I


# direct methods
.method constructor <init>(Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->this$1:Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;

    iput-object p2, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->val$rssi:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 61
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->this$1:Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;

    iget-object v3, v3, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    # getter for: Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mDeviceAddressMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->access$000(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 62
    const-string v1, "unknow Device"

    .line 63
    .local v1, "deviceName":Ljava/lang/String;
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 64
    :cond_0
    new-instance v0, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;

    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->val$rssi:I

    invoke-direct {v0, v3, v1, v4}, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    .local v0, "blueDevice":Lcom/veclink/bracelet/bean/BluetoothDeviceBean;
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->this$1:Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;

    iget-object v3, v3, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    # getter for: Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->filterName:Ljava/lang/String;
    invoke-static {v3}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->access$100(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->this$1:Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;

    iget-object v3, v3, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    # getter for: Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->filterNameArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->access$200(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 66
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->this$1:Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;

    iget-object v3, v3, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    # getter for: Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mDeviceList:Ljava/util/List;
    invoke-static {v3}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->access$300(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->this$1:Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;

    iget-object v3, v3, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    # getter for: Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mDeviceAddressMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->access$000(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->this$1:Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;

    iget-object v3, v3, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    # getter for: Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;
    invoke-static {v3}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->access$400(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)Lcom/veclink/bracelet/bletask/BleCallBack;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnProgressMessage(Ljava/lang/Object;)V

    .line 85
    .end local v0    # "blueDevice":Lcom/veclink/bracelet/bean/BluetoothDeviceBean;
    .end local v1    # "deviceName":Ljava/lang/String;
    :cond_1
    return-void

    .line 70
    .restart local v0    # "blueDevice":Lcom/veclink/bracelet/bean/BluetoothDeviceBean;
    .restart local v1    # "deviceName":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->this$1:Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;

    iget-object v3, v3, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    # getter for: Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->filterName:Ljava/lang/String;
    invoke-static {v3}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->access$100(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->this$1:Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;

    iget-object v4, v4, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    # getter for: Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->filterName:Ljava/lang/String;
    invoke-static {v4}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->access$100(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 71
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->this$1:Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;

    iget-object v3, v3, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    # getter for: Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mDeviceList:Ljava/util/List;
    invoke-static {v3}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->access$300(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->this$1:Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;

    iget-object v3, v3, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    # getter for: Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mDeviceAddressMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->access$000(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->this$1:Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;

    iget-object v3, v3, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    # getter for: Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;
    invoke-static {v3}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->access$400(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)Lcom/veclink/bracelet/bletask/BleCallBack;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnProgressMessage(Ljava/lang/Object;)V

    .line 75
    :cond_3
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->this$1:Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;

    iget-object v3, v3, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    # getter for: Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->filterNameArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->access$200(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->this$1:Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;

    iget-object v3, v3, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    # getter for: Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->filterNameArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->access$200(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_1

    .line 76
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->this$1:Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;

    iget-object v3, v3, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    # getter for: Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->filterNameArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->access$200(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 77
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->this$1:Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;

    iget-object v4, v4, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    # getter for: Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->filterNameArray:[Ljava/lang/String;
    invoke-static {v4}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->access$200(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 78
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->this$1:Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;

    iget-object v3, v3, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    # getter for: Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mDeviceList:Ljava/util/List;
    invoke-static {v3}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->access$300(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->this$1:Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;

    iget-object v3, v3, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    # getter for: Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mDeviceAddressMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->access$000(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v3, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1$1;->this$1:Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;

    iget-object v3, v3, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;->this$0:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    # getter for: Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;
    invoke-static {v3}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->access$400(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)Lcom/veclink/bracelet/bletask/BleCallBack;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnProgressMessage(Ljava/lang/Object;)V

    .line 76
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
