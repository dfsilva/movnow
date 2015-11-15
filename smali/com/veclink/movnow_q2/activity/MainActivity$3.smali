.class Lcom/veclink/movnow_q2/activity/MainActivity$3;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/MainActivity;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/MainActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 332
    sget-object v0, Lcom/veclink/movnow_q2/activity/MainActivity;->mainActivity:Lcom/veclink/movnow_q2/activity/MainActivity;

    invoke-static {}, Lcom/veclink/healthy/view/ShareDialog;->getImageFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/util/ScreenShot;->shoot(Landroid/app/Activity;Ljava/lang/String;)V

    .line 333
    return-void
.end method
