.class Lcom/veclink/healthy/view/ShareDialog$1;
.super Ljava/lang/Thread;
.source "ShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/healthy/view/ShareDialog;-><init>(Landroid/content/Context;Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/healthy/view/ShareDialog;


# direct methods
.method constructor <init>(Lcom/veclink/healthy/view/ShareDialog;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/veclink/healthy/view/ShareDialog$1;->this$0:Lcom/veclink/healthy/view/ShareDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/veclink/healthy/view/ShareDialog$1;->this$0:Lcom/veclink/healthy/view/ShareDialog;

    # getter for: Lcom/veclink/healthy/view/ShareDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/veclink/healthy/view/ShareDialog;->access$000(Lcom/veclink/healthy/view/ShareDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {}, Lcom/veclink/healthy/view/ShareDialog;->getImageFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/util/ScreenShot;->shoot(Landroid/app/Activity;Ljava/lang/String;)V

    .line 65
    return-void
.end method
