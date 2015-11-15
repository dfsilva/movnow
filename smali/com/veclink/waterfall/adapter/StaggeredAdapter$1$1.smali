.class Lcom/veclink/waterfall/adapter/StaggeredAdapter$1$1;
.super Ljava/lang/Object;
.source "StaggeredAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/waterfall/adapter/StaggeredAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/veclink/waterfall/adapter/StaggeredAdapter$1;

.field final synthetic val$dialog:Lcom/veclink/movnow_q2/view/BaseRemindDialog;


# direct methods
.method constructor <init>(Lcom/veclink/waterfall/adapter/StaggeredAdapter$1;Lcom/veclink/movnow_q2/view/BaseRemindDialog;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter$1$1;->this$1:Lcom/veclink/waterfall/adapter/StaggeredAdapter$1;

    iput-object p2, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter$1$1;->val$dialog:Lcom/veclink/movnow_q2/view/BaseRemindDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter$1$1;->this$1:Lcom/veclink/waterfall/adapter/StaggeredAdapter$1;

    iget-object v0, v0, Lcom/veclink/waterfall/adapter/StaggeredAdapter$1;->this$0:Lcom/veclink/waterfall/adapter/StaggeredAdapter;

    iget-object v1, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter$1$1;->this$1:Lcom/veclink/waterfall/adapter/StaggeredAdapter$1;

    iget-object v1, v1, Lcom/veclink/waterfall/adapter/StaggeredAdapter$1;->val$calorie:Lcom/veclink/healthy/database/entity/UptakeCalorie;

    invoke-virtual {v0, v1}, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->deleteItem(Lcom/veclink/healthy/database/entity/UptakeCalorie;)V

    .line 93
    iget-object v0, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter$1$1;->val$dialog:Lcom/veclink/movnow_q2/view/BaseRemindDialog;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->dismiss()V

    .line 94
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/veclink/healthy/business/http/pojo/DeleteCalories;

    invoke-direct {v1}, Lcom/veclink/healthy/business/http/pojo/DeleteCalories;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 95
    return-void
.end method
