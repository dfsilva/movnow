.class public Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;
.super Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.source "BleDeviceListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/veclink/hw/bleservice/DeviceReponseObserver;


# static fields
.field public static final EXTRA_DEVICE_ADDRESS:Ljava/lang/String; = "EXTRA_DEVICE_ADDRESS"

.field public static final EXTRA_DEVICE_NAME:Ljava/lang/String; = "EXTRA_DEVICE_NAME"

.field public static final FILTERNAME:Ljava/lang/String;

.field public static final RESULT_CODE:I = 0x1f


# instance fields
.field private adapter:Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;

.field private back_btn:Landroid/widget/TextView;

.field private connectingMsgView:Landroid/widget/TextView;

.field private devices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/veclink/bracelet/bean/BluetoothDeviceBean;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field scanBleDeviceHandler:Landroid/os/Handler;

.field scanDeviceCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

.field scanTask:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

.field private search_img:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->FILTERNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;-><init>()V

    .line 42
    new-instance v0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$1;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$1;-><init>(Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->scanBleDeviceHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Lcom/veclink/bracelet/bletask/BleCallBack;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->scanBleDeviceHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->scanDeviceCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;)Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->adapter:Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->connectingMsgView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public deviceConnected()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public deviceDisConnect()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->connectingMsgView:Landroid/widget/TextView;

    const v1, 0x7f0c0174

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 151
    return-void
.end method

.method public deviceOnCharacteristicChange(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 180
    return-void
.end method

.method public deviceOnCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 169
    return-void
.end method

.method public deviceOnCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 174
    return-void
.end method

.method public deviceOnServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 189
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getInstance()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    invoke-static {p0}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->unRegisterObserver(Lcom/veclink/hw/bleservice/DeviceReponseObserver;)V

    .line 190
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->scanBleDeviceHandler:Landroid/os/Handler;

    new-instance v1, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$5;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$5;-><init>(Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 202
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v1, 0x7f030030

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->setContentView(I)V

    .line 72
    const v1, 0x7f06009d

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->listView:Landroid/widget/ListView;

    .line 73
    const v1, 0x7f06009b

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->back_btn:Landroid/widget/TextView;

    .line 74
    const v1, 0x7f06009c

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->search_img:Landroid/widget/ImageView;

    .line 75
    new-instance v1, Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->adapter:Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;

    .line 76
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->adapter:Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 78
    new-instance v0, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;

    invoke-direct {v0}, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;-><init>()V

    .line 79
    .local v0, "gattAttributes":Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->back_btn:Landroid/widget/TextView;

    new-instance v2, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$2;

    invoke-direct {v2, p0}, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$2;-><init>(Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->search_img:Landroid/widget/ImageView;

    new-instance v2, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$3;

    invoke-direct {v2, p0}, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$3;-><init>(Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    new-instance v1, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->scanDeviceCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    invoke-direct {v1, p0, v2}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;-><init>(Landroid/app/Activity;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->scanTask:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    .line 104
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->scanTask:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 105
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->startAnimation()V

    .line 107
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onDestroy()V

    .line 114
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v3, 0x7f060105

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->connectingMsgView:Landroid/widget/TextView;

    .line 121
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->scanTask:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    if-eqz v3, :cond_0

    .line 122
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->scanTask:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    invoke-virtual {v3}, Lcom/veclink/bracelet/bletask/BleScanDeviceTask;->stopScanTask()V

    .line 123
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->scanTask:Lcom/veclink/bracelet/bletask/BleScanDeviceTask;

    .line 124
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->stopAnimation()V

    .line 126
    :cond_0
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->adapter:Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;->notifyDataSetChanged()V

    .line 127
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->adapter:Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;

    iget-object v3, v3, Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;

    .line 129
    .local v1, "device":Lcom/veclink/bracelet/bean/BluetoothDeviceBean;
    invoke-virtual {v1}, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;->getDevice_address()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "addr":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;->getDevice_name()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "name":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/veclink/hw/bleservice/util/Keeper;->setBindDeviceMacAddress(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    invoke-static {p0, v2}, Lcom/veclink/hw/bleservice/util/Keeper;->setBindDeviceName(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getInstance()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->unBindService(Landroid/app/Application;)V

    .line 134
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getInstance()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    invoke-static {p0}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->registerObserver(Lcom/veclink/hw/bleservice/DeviceReponseObserver;)V

    .line 135
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->getInstance()Lcom/veclink/hw/bleservice/VLBleServiceManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    new-instance v5, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;

    invoke-direct {v5}, Lcom/veclink/hw/bleservice/profile/BraceletGattAttributes;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->bindService(Landroid/app/Application;Lcom/veclink/hw/bleservice/profile/BaseGattAttributes;)V

    .line 136
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/veclink/hw/bleservice/VLBleServiceManager;->setAutoReConnect(Z)V

    .line 137
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->scanBleDeviceHandler:Landroid/os/Handler;

    new-instance v4, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$4;

    invoke-direct {v4, p0}, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity$4;-><init>(Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;)V

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    return-void
.end method

.method public startAnimation()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 205
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 206
    .local v7, "lin":Landroid/view/animation/LinearInterpolator;
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 211
    .local v0, "am":Landroid/view/animation/RotateAnimation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 215
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 216
    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 218
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->search_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 219
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->search_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 221
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListActivity;->search_img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 225
    return-void
.end method
