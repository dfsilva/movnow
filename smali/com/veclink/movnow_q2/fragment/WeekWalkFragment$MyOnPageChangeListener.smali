.class Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$MyOnPageChangeListener;
.super Ljava/lang/Object;
.source "WeekWalkFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOnPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 523
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 528
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x5

    .line 502
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mCurrentViewID:I
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->access$100(Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;)I

    move-result v1

    # setter for: Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->oldCurrentViewID:I
    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->access$002(Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;I)I

    .line 503
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;

    # setter for: Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mCurrentViewID:I
    invoke-static {v0, p1}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->access$102(Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;I)I

    .line 504
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;

    iget-object v0, v0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->c:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->currentDate:J
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->access$200(Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 505
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;

    const/4 v1, -0x1

    # setter for: Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->isAdd:I
    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->access$302(Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;I)I

    .line 506
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mCurrentViewID:I
    invoke-static {v0}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->access$100(Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->oldCurrentViewID:I
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->access$000(Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 507
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;

    iget-object v0, v0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->c:Ljava/util/Calendar;

    const/4 v1, -0x7

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 508
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;

    const/4 v1, 0x0

    # setter for: Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->isAdd:I
    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->access$302(Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;I)I

    .line 509
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;

    iget-object v1, v1, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->c:Ljava/util/Calendar;

    # invokes: Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->syncSportData(Ljava/util/Calendar;)V
    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->access$400(Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;Ljava/util/Calendar;)V

    .line 515
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;

    iget-object v1, v1, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->c:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    # setter for: Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->currentDate:J
    invoke-static {v0, v1, v2}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->access$202(Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;J)J

    .line 517
    return-void

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->mCurrentViewID:I
    invoke-static {v0}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->access$100(Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;

    # getter for: Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->oldCurrentViewID:I
    invoke-static {v1}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->access$000(Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 511
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;

    iget-object v0, v0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->c:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 512
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;

    const/4 v1, 0x1

    # setter for: Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->isAdd:I
    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->access$302(Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;I)I

    .line 513
    iget-object v0, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;

    iget-object v1, p0, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment$MyOnPageChangeListener;->this$0:Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;

    iget-object v1, v1, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->c:Ljava/util/Calendar;

    # invokes: Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->syncSportData(Ljava/util/Calendar;)V
    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;->access$400(Lcom/veclink/movnow_q2/fragment/WeekWalkFragment;Ljava/util/Calendar;)V

    goto :goto_0
.end method
