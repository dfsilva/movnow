.class public Lcom/veclink/bracelet/bletask/BleScanDeviceTask;
.super Landroid/os/AsyncTask;
.source "BleScanDeviceTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

.field private filterName:Ljava/lang/String;

.field private filterNameArray:[Ljava/lang/String;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mDeviceAddressMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/bracelet/bean/BluetoothDeviceBean;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private mScanning:Z

.field private scan_timeout:J

.field private serviceUuids:[Ljava/util/UUID;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/veclink/bracelet/bletask/BleCallBack;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bleCallBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 41
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->scan_timeout:J

    .line 42
    iput-object v2, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->filterName:Ljava/lang/String;

    .line 43
    iput-object v2, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->filterNameArray:[Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mDeviceList:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mDeviceAddressMap:Ljava/util/HashMap;

    .line 53
    new-instance v0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;

    invoke-direct {v0, p0}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;-><init>(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)V

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->initNeedData(Landroid/app/Activity;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/veclink/bracelet/bletask/BleCallBack;[Ljava/util/UUID;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bleCallBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;
    .param p3, "serviceUuids"    # [Ljava/util/UUID;

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 41
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->scan_timeout:J

    .line 42
    iput-object v2, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->filterName:Ljava/lang/String;

    .line 43
    iput-object v2, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->filterNameArray:[Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mDeviceList:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mDeviceAddressMap:Ljava/util/HashMap;

    .line 53
    new-instance v0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;

    invoke-direct {v0, p0}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$1;-><init>(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)V

    iput-object v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 97
    iput-object p3, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->serviceUuids:[Ljava/util/UUID;

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->initNeedData(Landroid/app/Activity;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mDeviceAddressMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->filterName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->filterNameArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mDeviceList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)Lcom/veclink/bracelet/bletask/BleCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    return-object v0
.end method

.method static synthetic access$500(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$602(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/veclink/bracelet/bletask/BleScanDeviceTask;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mScanning:Z

    return p1
.end method

.method static synthetic access$700(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method private initNeedData(Landroid/app/Activity;Lcom/veclink/bracelet/bletask/BleCallBack;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bleCallBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->activity:Landroid/app/Activity;

    .line 103
    iput-object p2, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    .line 104
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mHandler:Landroid/os/Handler;

    .line 105
    const-string v1, "bluetooth"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 106
    .local v0, "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 107
    return-void
.end method

.method private scanLeDevice(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 147
    if-eqz p1, :cond_1

    .line 148
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$2;

    invoke-direct {v1, p0}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask$2;-><init>(Lcom/veclink/bracelet/bletask/BleScanDeviceTask;)V

    iget-wide v2, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->scan_timeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mScanning:Z

    .line 157
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->serviceUuids:[Ljava/util/UUID;

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 167
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->serviceUuids:[Ljava/util/UUID;

    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    goto :goto_0

    .line 163
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mScanning:Z

    .line 164
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    .line 111
    const-string v2, "\u5f00\u59cb\u626b\u63cf\u8bbe\u5907"

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 112
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->scanLeDevice(Z)V

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 114
    .local v0, "startTime":J
    :cond_0
    iget-boolean v2, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mScanning:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 115
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-wide v4, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->scan_timeout:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 119
    :cond_2
    iget-object v2, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mDeviceList:Ljava/util/List;

    return-object v2
.end method

.method public getFilterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->filterName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterNameArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->filterNameArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getScan_timeout()J
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->scan_timeout:J

    return-wide v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-virtual {v0, p1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 138
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFialedMessage(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 126
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnStartMessage(Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method public setFilterName(Ljava/lang/String;)V
    .locals 0
    .param p1, "filterName"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->filterName:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setFilterNameArray([Ljava/lang/String;)V
    .locals 0
    .param p1, "filterNameArray"    # [Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->filterNameArray:[Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setScan_timeout(J)V
    .locals 0
    .param p1, "scan_timeout"    # J

    .prologue
    .line 176
    iput-wide p1, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->scan_timeout:J

    .line 177
    return-void
.end method

.method public stopScanTask()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    iget-object v1, p0, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->mDeviceList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->scanLeDevice(Z)V

    .line 143
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->cancel(Z)Z

    .line 144
    return-void
.end method
