.class Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$MyOnPageChangeListener;
.super Ljava/lang/Object;
.source "WeekSleepFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOnPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 586
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 591
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x5

    .line 562
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mCurrentViewID:I
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->access$000(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;)I

    move-result v1

    # setter for: Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->oldCurrentViewID:I
    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->access$302(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;I)I

    .line 563
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    # setter for: Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mCurrentViewID:I
    invoke-static {v0, p1}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->access$002(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;I)I

    .line 564
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    iget-object v0, v0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->c:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->currentDate:J
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->access$400(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 565
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    const/4 v1, -0x1

    # setter for: Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->isAdd:I
    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->access$502(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;I)I

    .line 566
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mCurrentViewID:I
    invoke-static {v0}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->access$000(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->oldCurrentViewID:I
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->access$300(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 567
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    iget-object v0, v0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->c:Ljava/util/Calendar;

    const/4 v1, -0x7

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 568
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    const/4 v1, 0x0

    # setter for: Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->isAdd:I
    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->access$502(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;I)I

    .line 569
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    iget-object v1, v1, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->c:Ljava/util/Calendar;

    # invokes: Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->syncSleepData(Ljava/util/Calendar;)V
    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->access$600(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;Ljava/util/Calendar;)V

    .line 575
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    iget-object v1, v1, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->c:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    # setter for: Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->currentDate:J
    invoke-static {v0, v1, v2}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->access$402(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;J)J

    .line 576
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->checkViewPagePagingEnabled()V

    .line 580
    return-void

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->mCurrentViewID:I
    invoke-static {v0}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->access$000(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->oldCurrentViewID:I
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->access$300(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 571
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    iget-object v0, v0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->c:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 572
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    const/4 v1, 0x1

    # setter for: Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->isAdd:I
    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->access$502(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;I)I

    .line 573
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;

    iget-object v1, v1, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->c:Ljava/util/Calendar;

    # invokes: Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->syncSleepData(Ljava/util/Calendar;)V
    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;->access$600(Lcom/veclink/movnow_q2/fragment/WeekSleepFragment;Ljava/util/Calendar;)V

    goto :goto_0
.end method
