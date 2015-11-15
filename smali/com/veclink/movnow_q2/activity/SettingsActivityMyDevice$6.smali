.class Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$6;
.super Ljava/lang/Object;
.source "SettingsActivityMyDevice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

.field final synthetic val$resetdialog:Lcom/veclink/movnow_q2/view/BaseRemindDialog;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;Lcom/veclink/movnow_q2/view/BaseRemindDialog;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$6;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    iput-object p2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$6;->val$resetdialog:Lcom/veclink/movnow_q2/view/BaseRemindDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 360
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$6;->val$resetdialog:Lcom/veclink/movnow_q2/view/BaseRemindDialog;

    invoke-virtual {v1}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->dismiss()V

    .line 361
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$6;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lcom/veclink/healthy/business/http/pojo/DeleteBraceleteDataReponse;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 362
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$6;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    const-class v3, Lcom/veclink/healthy/business/http/pojo/DeleteBraceleteDataReponse;

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3, v4}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 363
    new-instance v0, Lcom/veclink/healthy/business/http/session/HealthyDeleteDataSession;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$6;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    invoke-direct {v0, v1}, Lcom/veclink/healthy/business/http/session/HealthyDeleteDataSession;-><init>(Landroid/content/Context;)V

    .line 364
    .local v0, "deleteDataSession":Lcom/veclink/healthy/business/http/session/HealthyDeleteDataSession;
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice$6;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDevice;

    invoke-static {v1, v0}, Lcom/veclink/movnow_q2/network/base/SimpleHttpSchedualer;->ansycSchedual(Landroid/content/Context;Lcom/veclink/movnow_q2/network/base/BaseSession;)Lcom/loopj/android/http/AsyncHttpClient;

    .line 365
    return-void
.end method
