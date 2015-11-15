.class Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity$3;
.super Ljava/lang/Object;
.source "HeartRateHistoryRecordActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 5
    .param p1, "arg0"    # Landroid/widget/ExpandableListView;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "arg4"    # J

    .prologue
    const/4 v4, 0x0

    .line 71
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->access$000(Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->group:[Ljava/lang/String;
    invoke-static {v3}, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->access$100(Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->buddy:[[Ljava/lang/String;
    invoke-static {v3}, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->access$200(Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;)[[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p3

    aget-object v3, v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 74
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->access$000(Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/veclink/movnow_q2/activity/ShowHeartReateResultActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "heart_reate"

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity$3;->this$0:Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;->access$000(Lcom/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 77
    return v4
.end method
