.class Lcom/veclink/movnow_q2/activity/ActivityGuidePage$2;
.super Ljava/lang/Object;
.source "ActivityGuidePage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 88
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage$2;->this$0:Lcom/veclink/movnow_q2/activity/ActivityGuidePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage$2;->this$0:Lcom/veclink/movnow_q2/activity/ActivityGuidePage;

    # invokes: Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->setGuided()V
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->access$200(Lcom/veclink/movnow_q2/activity/ActivityGuidePage;)V

    .line 93
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ActivityGuidePage$2;->this$0:Lcom/veclink/movnow_q2/activity/ActivityGuidePage;

    # invokes: Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->openHome()V
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/ActivityGuidePage;->access$300(Lcom/veclink/movnow_q2/activity/ActivityGuidePage;)V

    .line 94
    return-void
.end method
