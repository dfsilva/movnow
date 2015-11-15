.class Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity$1;
.super Ljava/lang/Object;
.source "GuideIntroduceActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 75
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 70
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;->mBtn:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;->access$000(Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity$1;->this$0:Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;->mBtn:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;->access$000(Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
