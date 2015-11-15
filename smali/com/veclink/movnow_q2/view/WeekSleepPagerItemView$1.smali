.class Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView$1;
.super Ljava/lang/Object;
.source "WeekSleepPagerItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView$1;->this$0:Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView$1;->this$0:Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;

    # getter for: Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->access$000(Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 91
    .local v0, "showAnim":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView$1;->this$0:Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;

    # getter for: Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistoryWeek:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->access$100(Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView$1;->this$0:Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;

    # getter for: Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistoryWeekDetail:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->access$200(Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 93
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView$1;->this$0:Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;

    # getter for: Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->llHistoryWeekDetail:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;->access$200(Lcom/veclink/movnow_q2/view/WeekSleepPagerItemView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 94
    return-void
.end method
