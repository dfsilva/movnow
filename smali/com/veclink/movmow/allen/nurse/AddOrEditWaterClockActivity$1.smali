.class Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$1;
.super Ljava/lang/Object;
.source "AddOrEditWaterClockActivity.java"

# interfaces
.implements Lcom/veclink/movnow_q2/view/wheel/OnWheelScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollingFinished(Lcom/veclink/movnow_q2/view/wheel/WheelView;)V
    .locals 5
    .param p1, "wheel"    # Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .prologue
    .line 42
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    invoke-virtual {v2}, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->getHourWheelIntValue()I

    move-result v0

    .line 43
    .local v0, "hour":I
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    invoke-virtual {v2}, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->getMinuteWheelIntValue()I

    move-result v1

    .line 44
    .local v1, "minute":I
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    iget-object v2, v2, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->remind_label:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    iget-object v4, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;

    iget-object v4, v4, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->mContext:Landroid/content/Context;

    # invokes: Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->getRemindWaterTip(Landroid/content/Context;II)Ljava/lang/String;
    invoke-static {v3, v4, v0, v1}, Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;->access$000(Lcom/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity;Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    return-void
.end method

.method public onScrollingStarted(Lcom/veclink/movnow_q2/view/wheel/WheelView;)V
    .locals 0
    .param p1, "wheel"    # Lcom/veclink/movnow_q2/view/wheel/WheelView;

    .prologue
    .line 48
    return-void
.end method
