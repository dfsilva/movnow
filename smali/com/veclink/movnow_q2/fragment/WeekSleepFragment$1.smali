.class Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$1;
.super Landroid/os/Handler;
.source "WeekSleepFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 182
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 184
    :pswitch_0
    const/4 v12, 0x0

    .line 185
    .local v12, "timeTotal":I
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    .line 186
    .local v10, "listSleepData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_0

    .line 187
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->vpAdapter:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;
    invoke-static {v13}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->access$100(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;)Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mCurrentViewID:I
    invoke-static {v14}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->access$000(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;

    .line 188
    .local v4, "itemView":Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getHistotySleepTotal()Lcom/veclink/movnow_q2/view/HistotySleepDataView;

    move-result-object v13

    invoke-virtual {v13, v10}, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->setDataInfo(Ljava/util/List;)V

    .line 189
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getHistotySleepTotal()Lcom/veclink/movnow_q2/view/HistotySleepDataView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->invalidate()V

    .line 190
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_1

    .line 191
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual {v13}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v13

    add-int/2addr v12, v13

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 193
    :cond_1
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getTvSleepTotal()Landroid/widget/TextView;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getTvSleepTotal()Landroid/widget/TextView;

    move-result-object v13

    mul-int/lit8 v14, v12, 0x3c

    invoke-static {v14}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 198
    .end local v2    # "i":I
    .end local v4    # "itemView":Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;
    .end local v10    # "listSleepData":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    .end local v12    # "timeTotal":I
    :pswitch_1
    const/4 v1, 0x0

    .line 199
    .local v1, "deepSleepTime":I
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    .line 200
    .local v8, "listDeep":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_0

    .line 201
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->vpAdapter:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;
    invoke-static {v13}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->access$100(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;)Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mCurrentViewID:I
    invoke-static {v14}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->access$000(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;

    .line 202
    .restart local v4    # "itemView":Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getHistotyDeepSleep()Lcom/veclink/movnow_q2/view/HistotySleepDataView;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->setDataInfo(Ljava/util/List;)V

    .line 203
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getHistotyDeepSleep()Lcom/veclink/movnow_q2/view/HistotySleepDataView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->invalidate()V

    .line 204
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_2

    .line 205
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual {v13}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v13

    add-int/2addr v1, v13

    .line 204
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 207
    :cond_2
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getTvSleepDeep()Landroid/widget/TextView;

    move-result-object v13

    mul-int/lit8 v14, v1, 0x3c

    invoke-static {v14}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 213
    .end local v1    # "deepSleepTime":I
    .end local v2    # "i":I
    .end local v4    # "itemView":Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;
    .end local v8    # "listDeep":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    :pswitch_2
    const/4 v5, 0x0

    .line 214
    .local v5, "lightSleepTime":I
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    .line 215
    .local v9, "listLight":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_0

    .line 217
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->vpAdapter:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;
    invoke-static {v13}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->access$100(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;)Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mCurrentViewID:I
    invoke-static {v14}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->access$000(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;

    .line 218
    .restart local v4    # "itemView":Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getHistotyLightSleep()Lcom/veclink/movnow_q2/view/HistotySleepDataView;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->setDataInfo(Ljava/util/List;)V

    .line 219
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getHistotyLightSleep()Lcom/veclink/movnow_q2/view/HistotySleepDataView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/veclink/movnow_q2/view/HistotySleepDataView;->invalidate()V

    .line 221
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_3

    .line 222
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/veclink/healthy/database/entity/SleepData;

    invoke-virtual {v13}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v13

    add-int/2addr v5, v13

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 224
    :cond_3
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getTvSleepLight()Landroid/widget/TextView;

    move-result-object v13

    mul-int/lit8 v14, v5, 0x3c

    invoke-static {v14}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 230
    .end local v2    # "i":I
    .end local v4    # "itemView":Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;
    .end local v5    # "lightSleepTime":I
    .end local v9    # "listLight":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;"
    :pswitch_3
    const/4 v6, 0x0

    .line 232
    .local v6, "lightSleepTimeMon":I
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    .line 233
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/veclink/healthy/database/entity/SleepData;>;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_0

    .line 234
    const-string v13, "WeekSleepFragment"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u6bcf\u4e2a\u661f\u671f\u7684size:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->vpAdapter:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;
    invoke-static {v13}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->access$100(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;)Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mCurrentViewID:I
    invoke-static {v14}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->access$000(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$ViewPaperAdapter;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;

    .line 237
    .restart local v4    # "itemView":Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getSleepGraphHideView()Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    move-result-object v14

    const/4 v13, 0x0

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$1;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->atnight:Ljava/util/List;
    invoke-static {v15}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->access$200(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v13, v15, v0}, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->init(Ljava/util/List;Ljava/util/List;Z)V

    .line 238
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getSleepGraphHideView()Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/veclink/movnow_q2/view/SleepHideBarGraphView;->invalidate()V

    .line 240
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportMon()Landroid/widget/LinearLayout;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 241
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportTues()Landroid/widget/LinearLayout;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 242
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportWen()Landroid/widget/LinearLayout;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 243
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportThus()Landroid/widget/LinearLayout;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 244
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportFri()Landroid/widget/LinearLayout;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 245
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportSat()Landroid/widget/LinearLayout;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 246
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getLlHistorySportSun()Landroid/widget/LinearLayout;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 249
    const/4 v13, 0x0

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 250
    const/4 v13, 0x0

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/veclink/healthy/database/entity/SleepData;

    .line 251
    .local v11, "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    invoke-virtual {v11}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v13

    add-int/2addr v6, v13

    .line 252
    goto :goto_4

    .line 254
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v11    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    :cond_4
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getTvMon()Landroid/widget/TextView;

    move-result-object v13

    mul-int/lit8 v14, v6, 0x3c

    invoke-static {v14}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    const/4 v6, 0x0

    .line 257
    const/4 v13, 0x1

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 258
    const/4 v13, 0x1

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/veclink/healthy/database/entity/SleepData;

    .line 259
    .restart local v11    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    invoke-virtual {v11}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v13

    add-int/2addr v6, v13

    .line 260
    goto :goto_5

    .line 262
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v11    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    :cond_5
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getTvTues()Landroid/widget/TextView;

    move-result-object v13

    mul-int/lit8 v14, v6, 0x3c

    invoke-static {v14}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    const/4 v6, 0x0

    .line 266
    const/4 v13, 0x2

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 267
    const/4 v13, 0x2

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/veclink/healthy/database/entity/SleepData;

    .line 268
    .restart local v11    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    invoke-virtual {v11}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v13

    add-int/2addr v6, v13

    .line 269
    goto :goto_6

    .line 271
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v11    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    :cond_6
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getTvWen()Landroid/widget/TextView;

    move-result-object v13

    mul-int/lit8 v14, v6, 0x3c

    invoke-static {v14}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    const/4 v6, 0x0

    .line 275
    const/4 v13, 0x3

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 276
    const/4 v13, 0x3

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/veclink/healthy/database/entity/SleepData;

    .line 277
    .restart local v11    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    invoke-virtual {v11}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v13

    add-int/2addr v6, v13

    .line 278
    goto :goto_7

    .line 280
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v11    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    :cond_7
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getTvThus()Landroid/widget/TextView;

    move-result-object v13

    mul-int/lit8 v14, v6, 0x3c

    invoke-static {v14}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    const/4 v6, 0x0

    .line 284
    const/4 v13, 0x4

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_8

    .line 285
    const/4 v13, 0x4

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/veclink/healthy/database/entity/SleepData;

    .line 286
    .restart local v11    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    invoke-virtual {v11}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v13

    add-int/2addr v6, v13

    .line 287
    goto :goto_8

    .line 289
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v11    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    :cond_8
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getTvFri()Landroid/widget/TextView;

    move-result-object v13

    mul-int/lit8 v14, v6, 0x3c

    invoke-static {v14}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    const/4 v6, 0x0

    .line 293
    const/4 v13, 0x5

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 294
    const/4 v13, 0x5

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/veclink/healthy/database/entity/SleepData;

    .line 295
    .restart local v11    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    invoke-virtual {v11}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v13

    add-int/2addr v6, v13

    .line 296
    goto :goto_9

    .line 298
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v11    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    :cond_9
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getTvSat()Landroid/widget/TextView;

    move-result-object v13

    mul-int/lit8 v14, v6, 0x3c

    invoke-static {v14}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    const/4 v6, 0x0

    .line 302
    const/4 v13, 0x6

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_a

    .line 303
    const/4 v13, 0x6

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/veclink/healthy/database/entity/SleepData;

    .line 304
    .restart local v11    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    invoke-virtual {v11}, Lcom/veclink/healthy/database/entity/SleepData;->getSleepDuration()I

    move-result v13

    add-int/2addr v6, v13

    .line 305
    goto :goto_a

    .line 307
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v11    # "sleepData":Lcom/veclink/healthy/database/entity/SleepData;
    :cond_a
    invoke-virtual {v4}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->getTvSun()Landroid/widget/TextView;

    move-result-object v13

    mul-int/lit8 v14, v6, 0x3c

    invoke-static {v14}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->secToTime(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
