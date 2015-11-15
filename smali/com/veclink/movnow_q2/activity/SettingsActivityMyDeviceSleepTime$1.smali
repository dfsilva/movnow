.class Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime$1;
.super Ljava/lang/Object;
.source "SettingsActivityMyDeviceSleepTime.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime$1;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMyDeviceSleepTime;

    const-string v1, "saveRemindSetting"

    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/util/ToastUtil;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    return-void
.end method
