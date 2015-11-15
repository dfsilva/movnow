.class Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity$1;
.super Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;
.source "SleepHistoryRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;->showCurrentFragment(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;

    invoke-direct {p0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaldroidViewCreated()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public onChangeMonth(II)V
    .locals 0
    .param p1, "month"    # I
    .param p2, "year"    # I

    .prologue
    .line 130
    return-void
.end method

.method public onLongClickDate(Ljava/util/Date;Landroid/view/View;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 133
    return-void
.end method

.method public onSelectDate(Ljava/util/Date;Landroid/view/View;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 124
    invoke-virtual {p1}, Ljava/util/Date;->getMonth()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 125
    .local v0, "selectMonth":I
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/SleepHistoryRecordActivity;

    invoke-static {v1, p1}, Lcom/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity;->launchActivity(Landroid/app/Activity;Ljava/util/Date;)V

    .line 126
    return-void
.end method
