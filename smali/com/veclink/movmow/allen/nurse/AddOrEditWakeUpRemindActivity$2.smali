.class Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$2;
.super Ljava/lang/Object;
.source "AddOrEditWakeUpRemindActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->initAlarmData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

.field final synthetic val$buttonIndex:I


# direct methods
.method constructor <init>(Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;I)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$2;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    iput p2, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$2;->val$buttonIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 188
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$2;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    # getter for: Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->dayButtons:[Landroid/widget/ToggleButton;
    invoke-static {v2}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->access$000(Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;)[Landroid/widget/ToggleButton;

    move-result-object v2

    iget v3, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$2;->val$buttonIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->toggle()V

    .line 189
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$2;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    # getter for: Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->dayButtons:[Landroid/widget/ToggleButton;
    invoke-static {v2}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->access$000(Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;)[Landroid/widget/ToggleButton;

    move-result-object v2

    iget v3, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$2;->val$buttonIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 190
    .local v0, "checked":Z
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$2;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    # getter for: Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->DAY_ORDER:[I
    invoke-static {v2}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->access$100(Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;)[I

    move-result-object v2

    iget v3, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$2;->val$buttonIndex:I

    aget v1, v2, v3

    .line 192
    .local v1, "day":I
    if-eqz v0, :cond_0

    .line 193
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$2;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    iget v3, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$2;->val$buttonIndex:I

    # invokes: Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->turnOnDayOfWeek(I)V
    invoke-static {v2, v3}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->access$200(Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;I)V

    .line 199
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$2;->this$0:Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    iget v3, p0, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity$2;->val$buttonIndex:I

    # invokes: Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->turnOffDayOfWeek(I)V
    invoke-static {v2, v3}, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;->access$300(Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;I)V

    goto :goto_0
.end method
