.class Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$4;
.super Ljava/lang/Object;
.source "SettingsActivityMyDevice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$4;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 186
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$4;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    const-class v2, Lcom/veclink/movnow_q2/activity/ManagerDeviceActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 187
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$4;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    invoke-virtual {v1, v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->startActivity(Landroid/content/Intent;)V

    .line 188
    return-void
.end method
