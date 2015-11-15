.class Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$2;
.super Ljava/lang/Object;
.source "SettingsActivityMytarget.java"

# interfaces
.implements Lcom/veclink/movnow_q2/view/wheel/OnWheelChangedListener;


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
    .line 225
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/veclink/movnow_q2/view/wheel/WheelView;II)V
    .locals 4
    .param p1, "wheel"    # Lcom/veclink/movnow_q2/view/wheel/WheelView;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    .prologue
    .line 228
    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    .line 229
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wheelScrolled:Z
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$800(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv1:Lcom/veclink/movnow_q2/view/wheel/WheelView;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$000(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv2:Lcom/veclink/movnow_q2/view/wheel/WheelView;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$100(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv3:Lcom/veclink/movnow_q2/view/wheel/WheelView;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$200(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_3

    .line 240
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv1:Lcom/veclink/movnow_q2/view/wheel/WheelView;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$000(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_4

    .line 241
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv2:Lcom/veclink/movnow_q2/view/wheel/WheelView;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$100(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv3:Lcom/veclink/movnow_q2/view/wheel/WheelView;
    invoke-static {v3}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$200(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv4:Lcom/veclink/movnow_q2/view/wheel/WheelView;
    invoke-static {v3}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$300(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv5:Lcom/veclink/movnow_q2/view/wheel/WheelView;
    invoke-static {v3}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$400(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->currentStep:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$502(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    :goto_1
    const-string v0, "currentStep"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentStep--onclcik----:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->currentStep:Ljava/lang/String;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$500(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv4:Lcom/veclink/movnow_q2/view/wheel/WheelView;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$300(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-result-object v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv5:Lcom/veclink/movnow_q2/view/wheel/WheelView;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$400(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 252
    :cond_2
    :goto_2
    return-void

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv3:Lcom/veclink/movnow_q2/view/wheel/WheelView;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$200(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 243
    :cond_4
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv1:Lcom/veclink/movnow_q2/view/wheel/WheelView;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$000(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv2:Lcom/veclink/movnow_q2/view/wheel/WheelView;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$100(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv3:Lcom/veclink/movnow_q2/view/wheel/WheelView;
    invoke-static {v3}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$200(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv4:Lcom/veclink/movnow_q2/view/wheel/WheelView;
    invoke-static {v3}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$300(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->wv5:Lcom/veclink/movnow_q2/view/wheel/WheelView;
    invoke-static {v3}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$400(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->currentStep:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$502(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 249
    :cond_5
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget$2;->this$0:Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;

    # getter for: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->currentStep:Ljava/lang/String;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$500(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->setSetpText(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;->access$900(Lcom/veclink/movnow_q2/activity/SettingsActivityMytarget;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
