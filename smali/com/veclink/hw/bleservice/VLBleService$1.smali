.class Lcom/veclink/hw/bleservice/VLBleService$1;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "VLBleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/hw/bleservice/VLBleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/hw/bleservice/VLBleService;


# direct methods
.method constructor <init>(Lcom/veclink/hw/bleservice/VLBleService;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 9
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/16 v8, 0x5a

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x3

    .line 227
    :try_start_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    .line 228
    .local v1, "rx":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VLBleService data onCharacteristicChanged :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/veclink/hw/bleservice/util/Debug;->logBleByTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v2, p1, p2}, Lcom/veclink/hw/bleservice/VLBleService;->deviceOnCharacteristicChange(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 230
    if-eqz v1, :cond_2

    array-length v2, v1

    if-le v2, v5, :cond_2

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    if-ne v2, v8, :cond_2

    const/4 v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    if-nez v2, :cond_2

    const/4 v2, 0x3

    aget-byte v2, v1, v2

    if-ne v2, v6, :cond_2

    .line 232
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    const-string v3, "ACTION_SHORT_SPORT_DATA"

    # invokes: Lcom/veclink/hw/bleservice/VLBleService;->broadcastUpdate(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    invoke-static {v2, v3, p2}, Lcom/veclink/hw/bleservice/VLBleService;->access$1300(Lcom/veclink/hw/bleservice/VLBleService;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 258
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->controlPlayer:Lcom/veclink/hw/bleservice/ControlPlayer;
    invoke-static {v2}, Lcom/veclink/hw/bleservice/VLBleService;->access$1200(Lcom/veclink/hw/bleservice/VLBleService;)Lcom/veclink/hw/bleservice/ControlPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 259
    if-eqz v1, :cond_b

    array-length v2, v1

    if-le v2, v5, :cond_b

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    if-ne v2, v8, :cond_b

    const/4 v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_b

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    if-nez v2, :cond_b

    const/4 v2, 0x3

    aget-byte v2, v1, v2

    const/16 v3, 0x12

    if-ne v2, v3, :cond_b

    .line 261
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->controlPlayer:Lcom/veclink/hw/bleservice/ControlPlayer;
    invoke-static {v2}, Lcom/veclink/hw/bleservice/VLBleService;->access$1200(Lcom/veclink/hw/bleservice/VLBleService;)Lcom/veclink/hw/bleservice/ControlPlayer;

    move-result-object v2

    const/16 v3, 0x55

    invoke-virtual {v2, v3}, Lcom/veclink/hw/bleservice/ControlPlayer;->sendKeyCtroPlayAciton(I)V

    .line 284
    .end local v1    # "rx":[B
    :cond_1
    :goto_1
    return-void

    .line 233
    .restart local v1    # "rx":[B
    :cond_2
    array-length v2, v1

    if-le v2, v5, :cond_3

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    if-ne v2, v8, :cond_3

    const/4 v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    if-nez v2, :cond_3

    const/4 v2, 0x3

    aget-byte v2, v1, v2

    if-ne v2, v5, :cond_3

    .line 235
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    const-string v3, "ACTION_POWER_CHANGE_DATA"

    # invokes: Lcom/veclink/hw/bleservice/VLBleService;->broadcastUpdate(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    invoke-static {v2, v3, p2}, Lcom/veclink/hw/bleservice/VLBleService;->access$1300(Lcom/veclink/hw/bleservice/VLBleService;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    .end local v1    # "rx":[B
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBle(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 236
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "rx":[B
    :cond_3
    const/4 v2, 0x0

    :try_start_1
    aget-byte v2, v1, v2

    if-ne v2, v8, :cond_5

    const/4 v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_5

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    if-nez v2, :cond_5

    const/4 v2, 0x3

    aget-byte v2, v1, v2

    if-eq v2, v6, :cond_4

    const/4 v2, 0x3

    aget-byte v2, v1, v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_5

    .line 238
    :cond_4
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # invokes: Lcom/veclink/hw/bleservice/VLBleService;->sendCameraCtr()V
    invoke-static {v2}, Lcom/veclink/hw/bleservice/VLBleService;->access$1400(Lcom/veclink/hw/bleservice/VLBleService;)V

    goto :goto_0

    .line 239
    :cond_5
    if-eqz v1, :cond_6

    array-length v2, v1

    const/4 v3, 0x4

    if-le v2, v3, :cond_6

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    if-ne v2, v8, :cond_6

    const/4 v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_6

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    if-nez v2, :cond_6

    const/4 v2, 0x3

    aget-byte v2, v1, v2

    if-ne v2, v7, :cond_6

    const/4 v2, 0x4

    aget-byte v2, v1, v2

    if-nez v2, :cond_6

    .line 241
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    const-string v3, "ACTION_USER_HAD_CLICK_DEVICE"

    # invokes: Lcom/veclink/hw/bleservice/VLBleService;->broadcastUpdate(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/veclink/hw/bleservice/VLBleService;->access$1000(Lcom/veclink/hw/bleservice/VLBleService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 242
    :cond_6
    if-eqz v1, :cond_7

    array-length v2, v1

    if-le v2, v5, :cond_7

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    if-ne v2, v8, :cond_7

    const/4 v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_7

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    if-nez v2, :cond_7

    const/4 v2, 0x3

    aget-byte v2, v1, v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_7

    .line 244
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    const-string v3, "ACTION_DEVICE_FIND_PHONE"

    # invokes: Lcom/veclink/hw/bleservice/VLBleService;->broadcastUpdate(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/veclink/hw/bleservice/VLBleService;->access$1000(Lcom/veclink/hw/bleservice/VLBleService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 245
    :cond_7
    if-eqz v1, :cond_8

    array-length v2, v1

    if-le v2, v5, :cond_8

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    if-ne v2, v8, :cond_8

    const/4 v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_8

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    if-nez v2, :cond_8

    const/4 v2, 0x3

    aget-byte v2, v1, v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_8

    .line 247
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    const-string v3, "ACTION_DIAL_FAMILY_NUMBERS"

    # invokes: Lcom/veclink/hw/bleservice/VLBleService;->broadcastUpdate(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/veclink/hw/bleservice/VLBleService;->access$1000(Lcom/veclink/hw/bleservice/VLBleService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 248
    :cond_8
    if-eqz v1, :cond_9

    array-length v2, v1

    if-le v2, v5, :cond_9

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    if-ne v2, v8, :cond_9

    const/4 v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_9

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    if-nez v2, :cond_9

    const/4 v2, 0x3

    aget-byte v2, v1, v2

    const/16 v3, 0x19

    if-ne v2, v3, :cond_9

    .line 250
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    const-string v3, "ACTION_HANDOFF_COMINGCALL"

    # invokes: Lcom/veclink/hw/bleservice/VLBleService;->broadcastUpdate(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/veclink/hw/bleservice/VLBleService;->access$1000(Lcom/veclink/hw/bleservice/VLBleService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 251
    :cond_9
    if-eqz v1, :cond_a

    array-length v2, v1

    if-le v2, v5, :cond_a

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    if-ne v2, v8, :cond_a

    const/4 v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_a

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    if-nez v2, :cond_a

    const/4 v2, 0x3

    aget-byte v2, v1, v2

    const/16 v3, 0x81

    if-ne v2, v3, :cond_a

    .line 253
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    const-string v3, "ACTION_LONGSIITING_REMIND"

    # invokes: Lcom/veclink/hw/bleservice/VLBleService;->broadcastUpdate(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/veclink/hw/bleservice/VLBleService;->access$1000(Lcom/veclink/hw/bleservice/VLBleService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 255
    :cond_a
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    iget-object v3, v3, Lcom/veclink/hw/bleservice/VLBleService;->UUID_BLE_SHIELD_RX:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    const-string v3, "ACTION_DATA_AVAILABLE"

    # invokes: Lcom/veclink/hw/bleservice/VLBleService;->broadcastUpdate(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    invoke-static {v2, v3, p2}, Lcom/veclink/hw/bleservice/VLBleService;->access$1300(Lcom/veclink/hw/bleservice/VLBleService;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto/16 :goto_0

    .line 262
    :cond_b
    if-eqz v1, :cond_c

    array-length v2, v1

    if-le v2, v5, :cond_c

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    if-ne v2, v8, :cond_c

    const/4 v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_c

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    if-nez v2, :cond_c

    const/4 v2, 0x3

    aget-byte v2, v1, v2

    const/16 v3, 0x13

    if-ne v2, v3, :cond_c

    .line 264
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->controlPlayer:Lcom/veclink/hw/bleservice/ControlPlayer;
    invoke-static {v2}, Lcom/veclink/hw/bleservice/VLBleService;->access$1200(Lcom/veclink/hw/bleservice/VLBleService;)Lcom/veclink/hw/bleservice/ControlPlayer;

    move-result-object v2

    const/16 v3, 0x55

    invoke-virtual {v2, v3}, Lcom/veclink/hw/bleservice/ControlPlayer;->sendKeyCtroPlayAciton(I)V

    goto/16 :goto_1

    .line 265
    :cond_c
    if-eqz v1, :cond_d

    array-length v2, v1

    if-le v2, v5, :cond_d

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    if-ne v2, v8, :cond_d

    const/4 v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_d

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    if-nez v2, :cond_d

    const/4 v2, 0x3

    aget-byte v2, v1, v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_d

    .line 267
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->controlPlayer:Lcom/veclink/hw/bleservice/ControlPlayer;
    invoke-static {v2}, Lcom/veclink/hw/bleservice/VLBleService;->access$1200(Lcom/veclink/hw/bleservice/VLBleService;)Lcom/veclink/hw/bleservice/ControlPlayer;

    move-result-object v2

    const/16 v3, 0x58

    invoke-virtual {v2, v3}, Lcom/veclink/hw/bleservice/ControlPlayer;->sendKeyCtroPlayAciton(I)V

    goto/16 :goto_1

    .line 268
    :cond_d
    if-eqz v1, :cond_e

    array-length v2, v1

    if-le v2, v5, :cond_e

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    if-ne v2, v8, :cond_e

    const/4 v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_e

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    if-nez v2, :cond_e

    const/4 v2, 0x3

    aget-byte v2, v1, v2

    const/16 v3, 0x15

    if-ne v2, v3, :cond_e

    .line 270
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->controlPlayer:Lcom/veclink/hw/bleservice/ControlPlayer;
    invoke-static {v2}, Lcom/veclink/hw/bleservice/VLBleService;->access$1200(Lcom/veclink/hw/bleservice/VLBleService;)Lcom/veclink/hw/bleservice/ControlPlayer;

    move-result-object v2

    const/16 v3, 0x57

    invoke-virtual {v2, v3}, Lcom/veclink/hw/bleservice/ControlPlayer;->sendKeyCtroPlayAciton(I)V

    goto/16 :goto_1

    .line 271
    :cond_e
    if-eqz v1, :cond_f

    array-length v2, v1

    if-le v2, v5, :cond_f

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    if-ne v2, v8, :cond_f

    const/4 v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_f

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    if-nez v2, :cond_f

    const/4 v2, 0x3

    aget-byte v2, v1, v2

    const/16 v3, 0x17

    if-ne v2, v3, :cond_f

    .line 273
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->controlPlayer:Lcom/veclink/hw/bleservice/ControlPlayer;
    invoke-static {v2}, Lcom/veclink/hw/bleservice/VLBleService;->access$1200(Lcom/veclink/hw/bleservice/VLBleService;)Lcom/veclink/hw/bleservice/ControlPlayer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/veclink/hw/bleservice/ControlPlayer;->controVolume(I)V

    goto/16 :goto_1

    .line 274
    :cond_f
    if-eqz v1, :cond_1

    array-length v2, v1

    if-le v2, v5, :cond_1

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    if-ne v2, v8, :cond_1

    const/4 v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_1

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    aget-byte v2, v1, v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_1

    .line 276
    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->controlPlayer:Lcom/veclink/hw/bleservice/ControlPlayer;
    invoke-static {v2}, Lcom/veclink/hw/bleservice/VLBleService;->access$1200(Lcom/veclink/hw/bleservice/VLBleService;)Lcom/veclink/hw/bleservice/ControlPlayer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/veclink/hw/bleservice/ControlPlayer;->controVolume(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 214
    if-nez p3, :cond_0

    .line 215
    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    const-string v2, "ACTION_DATA_AVAILABLE"

    # invokes: Lcom/veclink/hw/bleservice/VLBleService;->broadcastUpdate(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    invoke-static {v1, v2, p2}, Lcom/veclink/hw/bleservice/VLBleService;->access$1300(Lcom/veclink/hw/bleservice/VLBleService;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 216
    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/veclink/hw/bleservice/VLBleService;->deviceOnCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 217
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 218
    .local v0, "rx":[B
    const-string v1, "VLBleService newdatareveive:"

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Helper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/veclink/hw/bleservice/util/Debug;->logBleByTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .end local v0    # "rx":[B
    :cond_0
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/veclink/hw/bleservice/VLBleService;->deviceOnCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 209
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    .line 125
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 126
    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connected to GATT server."

    invoke-static {v0, v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBleByTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    iget-object v0, v0, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v1}, Lcom/veclink/hw/bleservice/VLBleService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Keeper;->getBindDeviceMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/hw/bleservice/VLBleService;->connect(Ljava/lang/String;)Z

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to start service discovery:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    iget-object v2, v2, Lcom/veclink/hw/bleservice/VLBleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBleByTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    iget-object v0, v0, Lcom/veclink/hw/bleservice/VLBleService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/veclink/hw/bleservice/VLBleService$1$1;

    invoke-direct {v1, p0}, Lcom/veclink/hw/bleservice/VLBleService$1$1;-><init>(Lcom/veclink/hw/bleservice/VLBleService$1;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 147
    :cond_2
    if-nez p3, :cond_0

    .line 148
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    const/4 v1, 0x0

    # setter for: Lcom/veclink/hw/bleservice/VLBleService;->isConnected:Z
    invoke-static {v0, v1}, Lcom/veclink/hw/bleservice/VLBleService;->access$302(Lcom/veclink/hw/bleservice/VLBleService;Z)Z

    .line 149
    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoReConnect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->autoReConnect:Z
    invoke-static {v2}, Lcom/veclink/hw/bleservice/VLBleService;->access$400(Lcom/veclink/hw/bleservice/VLBleService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bluetoothEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->bluetoothEnable:Z
    invoke-static {v2}, Lcom/veclink/hw/bleservice/VLBleService;->access$500(Lcom/veclink/hw/bleservice/VLBleService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBleByTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->autoReConnect:Z
    invoke-static {v0}, Lcom/veclink/hw/bleservice/VLBleService;->access$400(Lcom/veclink/hw/bleservice/VLBleService;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->bluetoothEnable:Z
    invoke-static {v0}, Lcom/veclink/hw/bleservice/VLBleService;->access$500(Lcom/veclink/hw/bleservice/VLBleService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->autoConnectThread:Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;
    invoke-static {v0}, Lcom/veclink/hw/bleservice/VLBleService;->access$600(Lcom/veclink/hw/bleservice/VLBleService;)Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    new-instance v1, Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;

    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;-><init>(Lcom/veclink/hw/bleservice/VLBleService;Lcom/veclink/hw/bleservice/VLBleService$1;)V

    # setter for: Lcom/veclink/hw/bleservice/VLBleService;->autoConnectThread:Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;
    invoke-static {v0, v1}, Lcom/veclink/hw/bleservice/VLBleService;->access$602(Lcom/veclink/hw/bleservice/VLBleService;Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;)Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;

    .line 154
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->autoConnectThread:Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;
    invoke-static {v0}, Lcom/veclink/hw/bleservice/VLBleService;->access$600(Lcom/veclink/hw/bleservice/VLBleService;)Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/veclink/hw/bleservice/VLBleService$AutoConnectThread;->start()V

    goto/16 :goto_0

    .line 157
    :cond_3
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # invokes: Lcom/veclink/hw/bleservice/VLBleService;->sendDeviceDisConnectMsg()V
    invoke-static {v0}, Lcom/veclink/hw/bleservice/VLBleService;->access$200(Lcom/veclink/hw/bleservice/VLBleService;)V

    goto/16 :goto_0
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "rssi"    # I
    .param p3, "status"    # I

    .prologue
    .line 165
    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReadRemoteRssi received rssi is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    if-nez p3, :cond_0

    .line 167
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    const-string v1, "ACTION_GATT_RSSI"

    # invokes: Lcom/veclink/hw/bleservice/VLBleService;->broadcastUpdate(Ljava/lang/String;I)V
    invoke-static {v0, v1, p2}, Lcom/veclink/hw/bleservice/VLBleService;->access$800(Lcom/veclink/hw/bleservice/VLBleService;Ljava/lang/String;I)V

    .line 169
    :cond_0
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    const/4 v4, 0x1

    .line 173
    if-nez p2, :cond_2

    .line 174
    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServicesDiscovered success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBleByTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserHasBindBand  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v2}, Lcom/veclink/hw/bleservice/VLBleService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Keeper;->getUserHasBindBand(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/veclink/hw/bleservice/util/Debug;->logBleByTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v1}, Lcom/veclink/hw/bleservice/VLBleService;->getOneSupportedGattService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    # invokes: Lcom/veclink/hw/bleservice/VLBleService;->getGattService(Landroid/bluetooth/BluetoothGattService;)V
    invoke-static {v0, v1}, Lcom/veclink/hw/bleservice/VLBleService;->access$900(Lcom/veclink/hw/bleservice/VLBleService;Landroid/bluetooth/BluetoothGattService;)V

    .line 177
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # setter for: Lcom/veclink/hw/bleservice/VLBleService;->isConnected:Z
    invoke-static {v0, v4}, Lcom/veclink/hw/bleservice/VLBleService;->access$302(Lcom/veclink/hw/bleservice/VLBleService;Z)Z

    .line 178
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    const-string v1, "ACTION_GATT_CONNECTED"

    # invokes: Lcom/veclink/hw/bleservice/VLBleService;->broadcastUpdate(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/veclink/hw/bleservice/VLBleService;->access$1000(Lcom/veclink/hw/bleservice/VLBleService;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v0}, Lcom/veclink/hw/bleservice/VLBleService;->deviceConnected()V

    .line 180
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # setter for: Lcom/veclink/hw/bleservice/VLBleService;->onFindSupportService:Z
    invoke-static {v0, v4}, Lcom/veclink/hw/bleservice/VLBleService;->access$102(Lcom/veclink/hw/bleservice/VLBleService;Z)Z

    .line 181
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    iget-object v1, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v1}, Lcom/veclink/hw/bleservice/VLBleService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/veclink/hw/devicetype/DeviceProductFactory;->createDeviceProduct(Ljava/lang/String;)Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    move-result-object v1

    # setter for: Lcom/veclink/hw/bleservice/VLBleService;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
    invoke-static {v0, v1}, Lcom/veclink/hw/bleservice/VLBleService;->access$1102(Lcom/veclink/hw/bleservice/VLBleService;Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;)Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    .line 182
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
    invoke-static {v0}, Lcom/veclink/hw/bleservice/VLBleService;->access$1100(Lcom/veclink/hw/bleservice/VLBleService;)Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    move-result-object v0

    iget-boolean v0, v0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->controlPlayer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    new-instance v1, Lcom/veclink/hw/bleservice/ControlPlayer;

    iget-object v2, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v2}, Lcom/veclink/hw/bleservice/VLBleService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    iget-object v3, v3, Lcom/veclink/hw/bleservice/VLBleService;->handler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3}, Lcom/veclink/hw/bleservice/ControlPlayer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    # setter for: Lcom/veclink/hw/bleservice/VLBleService;->controlPlayer:Lcom/veclink/hw/bleservice/ControlPlayer;
    invoke-static {v0, v1}, Lcom/veclink/hw/bleservice/VLBleService;->access$1202(Lcom/veclink/hw/bleservice/VLBleService;Lcom/veclink/hw/bleservice/ControlPlayer;)Lcom/veclink/hw/bleservice/ControlPlayer;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->deviceProduct:Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;
    invoke-static {v0}, Lcom/veclink/hw/bleservice/VLBleService;->access$1100(Lcom/veclink/hw/bleservice/VLBleService;)Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;

    move-result-object v0

    iget v0, v0, Lcom/veclink/hw/devicetype/pojo/BaseDeviceProduct;->bindDeviceWay:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v0}, Lcom/veclink/hw/bleservice/VLBleService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/veclink/hw/bleservice/util/Keeper;->getUserHasBindBand(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    iget-object v0, v0, Lcom/veclink/hw/bleservice/VLBleService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/veclink/hw/bleservice/VLBleService$1$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/veclink/hw/bleservice/VLBleService$1$2;-><init>(Lcom/veclink/hw/bleservice/VLBleService$1;Landroid/bluetooth/BluetoothGatt;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    :goto_0
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    const-string v1, "ACTION_GATT_SERVICES_DISCOVERED"

    # invokes: Lcom/veclink/hw/bleservice/VLBleService;->broadcastUpdate(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/veclink/hw/bleservice/VLBleService;->access$1000(Lcom/veclink/hw/bleservice/VLBleService;Ljava/lang/String;)V

    .line 201
    :goto_1
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/veclink/hw/bleservice/VLBleService$1;->this$0:Lcom/veclink/hw/bleservice/VLBleService;

    invoke-virtual {v0, p1, p2}, Lcom/veclink/hw/bleservice/VLBleService;->deviceOnServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    goto :goto_0

    .line 199
    :cond_2
    # getter for: Lcom/veclink/hw/bleservice/VLBleService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/veclink/hw/bleservice/VLBleService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServicesDiscovered received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
