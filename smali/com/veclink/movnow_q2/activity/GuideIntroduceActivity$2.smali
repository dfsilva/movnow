.class Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity$2;
.super Ljava/lang/Object;
.source "GuideIntroduceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 79
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity$2;->this$0:Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/GuideIntroduceActivity;->finish()V

    .line 84
    return-void
.end method
