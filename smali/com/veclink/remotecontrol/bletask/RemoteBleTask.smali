.class public Lcom/veclink/remotecontrol/bletask/RemoteBleTask;
.super Lcom/veclink/bracelet/bletask/BleTask;
.source "RemoteBleTask.java"


# instance fields
.field public final headone:B

.field public final headtwo:B


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/veclink/bracelet/bletask/BleCallBack;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/veclink/bracelet/bletask/BleTask;-><init>(Landroid/content/Context;Lcom/veclink/bracelet/bletask/BleCallBack;)V

    .line 18
    const/16 v0, 0x30

    iput-byte v0, p0, Lcom/veclink/remotecontrol/bletask/RemoteBleTask;->headone:B

    .line 20
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/veclink/remotecontrol/bletask/RemoteBleTask;->headtwo:B

    .line 29
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
