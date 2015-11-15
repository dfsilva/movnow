.class Lcom/veclink/waterfall/adapter/StaggeredAdapter$1;
.super Ljava/lang/Object;
.source "StaggeredAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/waterfall/adapter/StaggeredAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/waterfall/adapter/StaggeredAdapter;

.field final synthetic val$calorie:Lcom/veclink/healthy/database/entity/UptakeCalorie;


# direct methods
.method constructor <init>(Lcom/veclink/waterfall/adapter/StaggeredAdapter;Lcom/veclink/healthy/database/entity/UptakeCalorie;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter$1;->this$0:Lcom/veclink/waterfall/adapter/StaggeredAdapter;

    iput-object p2, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter$1;->val$calorie:Lcom/veclink/healthy/database/entity/UptakeCalorie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 86
    new-instance v0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;

    iget-object v1, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter$1;->this$0:Lcom/veclink/waterfall/adapter/StaggeredAdapter;

    # getter for: Lcom/veclink/waterfall/adapter/StaggeredAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->access$000(Lcom/veclink/waterfall/adapter/StaggeredAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, "dialog":Lcom/veclink/movnow_q2/view/BaseRemindDialog;
    iget-object v1, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter$1;->this$0:Lcom/veclink/waterfall/adapter/StaggeredAdapter;

    # getter for: Lcom/veclink/waterfall/adapter/StaggeredAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->access$000(Lcom/veclink/waterfall/adapter/StaggeredAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c014e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->setTitle(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter$1;->this$0:Lcom/veclink/waterfall/adapter/StaggeredAdapter;

    # getter for: Lcom/veclink/waterfall/adapter/StaggeredAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->access$000(Lcom/veclink/waterfall/adapter/StaggeredAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0085

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->setContent(Ljava/lang/String;)V

    .line 89
    new-instance v1, Lcom/veclink/waterfall/adapter/StaggeredAdapter$1$1;

    invoke-direct {v1, p0, v0}, Lcom/veclink/waterfall/adapter/StaggeredAdapter$1$1;-><init>(Lcom/veclink/waterfall/adapter/StaggeredAdapter$1;Lcom/veclink/movnow_q2/view/BaseRemindDialog;)V

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->setOkListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->show()V

    .line 98
    return-void
.end method
