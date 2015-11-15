.class Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$MyOnPageChangeListener;
.super Ljava/lang/Object;
.source "MonthWalkFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOnPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 528
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 533
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 504
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->mCurrentViewID:I
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->access$100(Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;)I

    move-result v1

    # setter for: Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->oldCurrentViewID:I
    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->access$002(Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;I)I

    .line 505
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    # setter for: Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->mCurrentViewID:I
    invoke-static {v0, p1}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->access$102(Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;I)I

    .line 506
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    iget-object v0, v0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->c:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->currentDate:J
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->access$200(Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 507
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    # setter for: Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->isAdd:I
    invoke-static {v0, v3}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->access$302(Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;I)I

    .line 508
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->mCurrentViewID:I
    invoke-static {v0}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->access$100(Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->oldCurrentViewID:I
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->access$000(Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 509
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    iget-object v0, v0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->c:Ljava/util/Calendar;

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->add(II)V

    .line 510
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    const/4 v1, 0x0

    # setter for: Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->isAdd:I
    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->access$302(Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;I)I

    .line 511
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    iget-object v1, v1, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->c:Ljava/util/Calendar;

    # invokes: Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->syncSportData(Ljava/util/Calendar;)V
    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->access$400(Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;Ljava/util/Calendar;)V

    .line 517
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    iget-object v1, v1, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->c:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    # setter for: Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->currentDate:J
    invoke-static {v0, v1, v2}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->access$202(Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;J)J

    .line 522
    return-void

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->mCurrentViewID:I
    invoke-static {v0}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->access$100(Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->oldCurrentViewID:I
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->access$000(Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 513
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    iget-object v0, v0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->c:Ljava/util/Calendar;

    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 514
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    # setter for: Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->isAdd:I
    invoke-static {v0, v4}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->access$302(Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;I)I

    .line 515
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;

    iget-object v1, v1, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->c:Ljava/util/Calendar;

    # invokes: Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->syncSportData(Ljava/util/Calendar;)V
    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;->access$400(Lcom/veclink/movnow_q2/fragment/MonthWalkFragment;Ljava/util/Calendar;)V

    goto :goto_0
.end method
