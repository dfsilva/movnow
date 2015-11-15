.class Lcom/veclink/movnow_q2/activity/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/MainActivity;->initFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/MainActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 241
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 236
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/MainActivity;

    # setter for: Lcom/veclink/movnow_q2/activity/MainActivity;->page:I
    invoke-static {v0, p1}, Lcom/veclink/movnow_q2/activity/MainActivity;->access$102(Lcom/veclink/movnow_q2/activity/MainActivity;I)I

    .line 225
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/MainActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/MainActivity;->page:I
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/MainActivity;->access$100(Lcom/veclink/movnow_q2/activity/MainActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/MainActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/MainActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/MainActivity;->WATERPAGEINDEX:I
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/MainActivity;->access$200(Lcom/veclink/movnow_q2/activity/MainActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/MainActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/MainActivity;->tvHistory:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/MainActivity;->access$300(Lcom/veclink/movnow_q2/activity/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/MainActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/MainActivity;->tvHistory:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/MainActivity;->access$300(Lcom/veclink/movnow_q2/activity/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
