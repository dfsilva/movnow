.class Lcom/veclink/hw/bleservice/ControlPlayer$1;
.super Ljava/lang/Object;
.source "ControlPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/hw/bleservice/ControlPlayer;->sendKeyCtroPlayAciton(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/hw/bleservice/ControlPlayer;

.field final synthetic val$keycode:I


# direct methods
.method constructor <init>(Lcom/veclink/hw/bleservice/ControlPlayer;I)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/veclink/hw/bleservice/ControlPlayer$1;->this$0:Lcom/veclink/hw/bleservice/ControlPlayer;

    iput p2, p0, Lcom/veclink/hw/bleservice/ControlPlayer$1;->val$keycode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 45
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    iget v3, p0, Lcom/veclink/hw/bleservice/ControlPlayer$1;->val$keycode:I

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 46
    .local v1, "event":Landroid/view/KeyEvent;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 47
    .local v0, "boradcastIntent":Landroid/content/Intent;
    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 49
    iget-object v2, p0, Lcom/veclink/hw/bleservice/ControlPlayer$1;->this$0:Lcom/veclink/hw/bleservice/ControlPlayer;

    # getter for: Lcom/veclink/hw/bleservice/ControlPlayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/veclink/hw/bleservice/ControlPlayer;->access$000(Lcom/veclink/hw/bleservice/ControlPlayer;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 50
    return-void
.end method
