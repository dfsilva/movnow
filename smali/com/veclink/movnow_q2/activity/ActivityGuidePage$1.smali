.class Lcom/veclink/movnow_q2/activity/ActivityGuidePage$1;
.super Ljava/lang/Object;
.source "ActivityGuidePage.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/ActivityGuidePage;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/ActivityGuidePage;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage$1;->this$0:Lcom/veclink/movnow_q2/activity/ActivityGuidePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 84
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 79
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5
    .param p1, "arg0"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage$1;->this$0:Lcom/veclink/movnow_q2/activity/ActivityGuidePage;

    # getter for: Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->mDotsLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->access$000(Lcom/veclink/movnow_q2/activity/ActivityGuidePage;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 58
    if-ne v0, p1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage$1;->this$0:Lcom/veclink/movnow_q2/activity/ActivityGuidePage;

    # getter for: Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->mDotsLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->access$000(Lcom/veclink/movnow_q2/activity/ActivityGuidePage;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 57
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage$1;->this$0:Lcom/veclink/movnow_q2/activity/ActivityGuidePage;

    # getter for: Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->mDotsLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->access$000(Lcom/veclink/movnow_q2/activity/ActivityGuidePage;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage$1;->this$0:Lcom/veclink/movnow_q2/activity/ActivityGuidePage;

    # getter for: Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->mDotsLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->access$000(Lcom/veclink/movnow_q2/activity/ActivityGuidePage;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_3

    .line 65
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage$1;->this$0:Lcom/veclink/movnow_q2/activity/ActivityGuidePage;

    iget-boolean v1, v1, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->isFirstIn:Z

    if-eqz v1, :cond_2

    .line 66
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage$1;->this$0:Lcom/veclink/movnow_q2/activity/ActivityGuidePage;

    # getter for: Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->mBtn:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->access$100(Lcom/veclink/movnow_q2/activity/ActivityGuidePage;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    :goto_2
    return-void

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage$1;->this$0:Lcom/veclink/movnow_q2/activity/ActivityGuidePage;

    # getter for: Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->mBtn:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->access$100(Lcom/veclink/movnow_q2/activity/ActivityGuidePage;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 72
    :cond_3
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage$1;->this$0:Lcom/veclink/movnow_q2/activity/ActivityGuidePage;

    # getter for: Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->mBtn:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->access$100(Lcom/veclink/movnow_q2/activity/ActivityGuidePage;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
