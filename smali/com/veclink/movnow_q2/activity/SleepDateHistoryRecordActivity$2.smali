.class Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$2;
.super Ljava/lang/Object;
.source "SleepDateHistoryRecordActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 471
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 467
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 459
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 460
    .local v0, "tempcalendar":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->mYear:I
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$1500(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->mMonth:I
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$1600(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)I

    move-result v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 461
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->access$1700(Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;)Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    move-result-object v1

    invoke-static {v0}, Lcom/veclink/movnow_q2/util/DateTimeUtil;->getHistoryTitleDateString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 462
    return-void
.end method
