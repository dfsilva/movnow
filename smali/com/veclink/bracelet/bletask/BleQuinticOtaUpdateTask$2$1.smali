.class Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$2$1;
.super Ljava/lang/Object;
.source "BleQuinticOtaUpdateTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$2;


# direct methods
.method constructor <init>(Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$2;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$2$1;->this$1:Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$2$1;->this$1:Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$2;

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$2;->this$0:Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;

    iget-object v0, v0, Lcom/veclink/bracelet/bletask/BleQuinticOtaUpdateTask;->bleCallBack:Lcom/veclink/bracelet/bletask/BleCallBack;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/bracelet/bletask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    .line 249
    return-void
.end method
