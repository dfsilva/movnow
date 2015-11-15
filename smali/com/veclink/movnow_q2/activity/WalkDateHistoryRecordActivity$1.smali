.class Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity$1;
.super Ljava/lang/Object;
.source "WalkDateHistoryRecordActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;

    iput p1, v0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->currentPage:I

    .line 343
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 337
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x5

    .line 322
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 323
    .local v0, "tempcalendar":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->mYear:I
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->access$000(Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->mMonth:I
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->access$100(Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;)I

    move-result v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 324
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->access$200(Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;)Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    move-result-object v1

    invoke-static {v0}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->getHistoryTitleDateString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 326
    const-string v1, "WalkDateHistoryRecordActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPageSelected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->calendar:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->access$400(Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->totalMonthDay:I
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->access$300(Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 329
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->calendar:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->access$400(Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->totalMonthDay:I
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->access$300(Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int v2, p1, v2

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->add(II)V

    .line 330
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->calendar:Ljava/util/Calendar;
    invoke-static {v3}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->access$400(Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    # setter for: Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->currentDate:Ljava/util/Date;
    invoke-static {v1, v2}, Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;->access$502(Lcom/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity;Ljava/util/Date;)Ljava/util/Date;

    .line 332
    return-void
.end method
