.class Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$2;
.super Ljava/lang/Object;
.source "WakeUpListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;

.field final synthetic val$position:I

.field final synthetic val$remindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;


# direct methods
.method constructor <init>(Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;Lcom/veclink/movmow/allen/nurse/RemindObject;I)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$2;->this$0:Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;

    iput-object p2, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$2;->val$remindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    iput p3, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 120
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$2;->this$0:Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;

    iget-object v2, v2, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 122
    .local v0, "extras":Landroid/os/Bundle;
    const-class v2, Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$2;->val$remindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 123
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 124
    const-string v2, "position"

    iget v3, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$2;->val$position:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$2;->this$0:Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;

    iget-object v2, v2, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 127
    return-void
.end method
