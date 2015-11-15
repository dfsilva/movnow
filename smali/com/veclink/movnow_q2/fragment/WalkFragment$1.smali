.class Lcom/veclink/movnow_q2/fragment/WalkFragment$1;
.super Landroid/os/Handler;
.source "WalkFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/fragment/WalkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/fragment/WalkFragment;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x8

    const/4 v6, 0x0

    .line 117
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->isDestroy:Z
    invoke-static {v2}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$000(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 121
    :pswitch_0
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    iget-object v2, v2, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    iget-object v5, v5, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-static {v5}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-static {v5}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->getDateStringByDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "tempStepCount"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # setter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->shortStepCount:I
    invoke-static {v3, v2}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$102(Lcom/veclink/movnow_q2/fragment/WalkFragment;I)I

    .line 122
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 123
    .local v1, "progress":I
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->shortStepCount:I
    invoke-static {v2}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$100(Lcom/veclink/movnow_q2/fragment/WalkFragment;)I

    move-result v2

    if-le v2, v1, :cond_2

    .line 124
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->shortStepCount:I
    invoke-static {v2}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$100(Lcom/veclink/movnow_q2/fragment/WalkFragment;)I

    move-result v1

    .line 126
    :cond_2
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # invokes: Lcom/veclink/movnow_q2/fragment/WalkFragment;->setKmlStepAndKclaDta(I)V
    invoke-static {v2, v1}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$200(Lcom/veclink/movnow_q2/fragment/WalkFragment;I)V

    goto :goto_0

    .line 129
    .end local v1    # "progress":I
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 130
    .local v0, "barWalkDataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->sportGraphView:Lcom/veclink/movnow_q2/view/SportGraphView;
    invoke-static {v2}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$300(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Lcom/veclink/movnow_q2/view/SportGraphView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/veclink/movnow_q2/view/SportGraphView;->setDataInfo(Ljava/util/List;)V

    .line 131
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->sportGraphView:Lcom/veclink/movnow_q2/view/SportGraphView;
    invoke-static {v2}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$300(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Lcom/veclink/movnow_q2/view/SportGraphView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/SportGraphView;->invalidate()V

    .line 132
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->graphHideView:Lcom/veclink/movnow_q2/view/SportGraphHideView;
    invoke-static {v2}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$500(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Lcom/veclink/movnow_q2/view/SportGraphHideView;

    move-result-object v2

    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->times:Ljava/util/List;
    invoke-static {v3}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$400(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/veclink/movnow_q2/view/SportGraphHideView;->setDataInfo(Ljava/util/List;Ljava/util/List;)V

    .line 133
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->graphHideView:Lcom/veclink/movnow_q2/view/SportGraphHideView;
    invoke-static {v2}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$500(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Lcom/veclink/movnow_q2/view/SportGraphHideView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/SportGraphHideView;->invalidate()V

    goto/16 :goto_0

    .line 137
    .end local v0    # "barWalkDataList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SportData;>;"
    :pswitch_2
    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # setter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->shortStepCount:I
    invoke-static {v3, v2}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$102(Lcom/veclink/movnow_q2/fragment/WalkFragment;I)I

    .line 138
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    iget-object v2, v2, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    iget-object v4, v4, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-static {v4}, Lcom/veclink/hw/bleservice/util/Keeper;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v4}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->getDateStringByDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "tempStepCount"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->shortStepCount:I
    invoke-static {v4}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$100(Lcom/veclink/movnow_q2/fragment/WalkFragment;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    iget-object v3, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->shortStepCount:I
    invoke-static {v3}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$100(Lcom/veclink/movnow_q2/fragment/WalkFragment;)I

    move-result v3

    # invokes: Lcom/veclink/movnow_q2/fragment/WalkFragment;->setKmlStepAndKclaDta(I)V
    invoke-static {v2, v3}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$200(Lcom/veclink/movnow_q2/fragment/WalkFragment;I)V

    goto/16 :goto_0

    .line 143
    :pswitch_3
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->band_power_value:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$600(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 147
    :pswitch_4
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    iget-object v2, v2, Lcom/veclink/movnow_q2/fragment/WalkFragment;->application:Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    invoke-static {v2}, Lcom/veclink/hw/bleservice/util/Keeper;->getBindDeviceMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->bind_remind_view:Landroid/view/View;
    invoke-static {v2}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$700(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->bind_remind_tip:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$800(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0c0185

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 150
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->llTouchUPAndDown:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$900(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 155
    :pswitch_5
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->bind_remind_view:Landroid/view/View;
    invoke-static {v2}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$700(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v2, p0, Lcom/veclink/movnow_q2/fragment/WalkFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WalkFragment;->llTouchUPAndDown:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/veclink/movnow_q2/fragment/WalkFragment;->access$900(Lcom/veclink/movnow_q2/fragment/WalkFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
