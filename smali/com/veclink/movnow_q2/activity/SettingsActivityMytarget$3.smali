.class Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$3;
.super Ljava/lang/Object;
.source "SettingsActivityMytarget.java"

# interfaces
.implements Lcom/veclink/movnow_q2/view/wheel/OnWheelScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$3;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollingFinished(Lcom/veclink/movnow_q2/view/wheel/WheelView;)V
    .locals 2
    .param p1, "wheel"    # Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .prologue
    const/4 v1, 0x0

    .line 265
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$3;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    # setter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wheelScrolled:Z
    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$802(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;Z)Z

    .line 267
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$3;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv4:Lcom/veclink/movnow_q2/view/wheel/WheelView;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$300(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 268
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$3;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv5:Lcom/veclink/movnow_q2/view/wheel/WheelView;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$400(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 269
    return-void
.end method

.method public onScrollingStarted(Lcom/veclink/movnow_q2/view/wheel/WheelView;)V
    .locals 2
    .param p1, "wheel"    # Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$3;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    const/4 v1, 0x1

    # setter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wheelScrolled:Z
    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$802(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;Z)Z

    .line 262
    return-void
.end method
