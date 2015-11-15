.class public Lcom/veclink/hw/bleservice/ControlPlayer;
.super Ljava/lang/Object;
.source "ControlPlayer.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/veclink/hw/bleservice/ControlPlayer;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/veclink/hw/bleservice/ControlPlayer;->mHandler:Landroid/os/Handler;

    .line 25
    iget-object v0, p0, Lcom/veclink/hw/bleservice/ControlPlayer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/veclink/hw/bleservice/ControlPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/veclink/hw/bleservice/ControlPlayer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/hw/bleservice/ControlPlayer;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/veclink/hw/bleservice/ControlPlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public controVolume(I)V
    .locals 4
    .param p1, "addOrReduceFlag"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 60
    if-ne p1, v2, :cond_1

    .line 61
    iget-object v0, p0, Lcom/veclink/hw/bleservice/ControlPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, v2, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    if-ne p1, v1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/veclink/hw/bleservice/ControlPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, v1, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0
.end method

.method public sendKeyCtroPlayAciton(I)V
    .locals 6
    .param p1, "keycode"    # I

    .prologue
    .line 36
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 37
    .local v1, "event":Landroid/view/KeyEvent;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 38
    .local v0, "boradcastIntent":Landroid/content/Intent;
    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 40
    iget-object v2, p0, Lcom/veclink/hw/bleservice/ControlPlayer;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 41
    iget-object v2, p0, Lcom/veclink/hw/bleservice/ControlPlayer;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/veclink/hw/bleservice/ControlPlayer$1;

    invoke-direct {v3, p0, p1}, Lcom/veclink/hw/bleservice/ControlPlayer$1;-><init>(Lcom/veclink/hw/bleservice/ControlPlayer;I)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    return-void
.end method
