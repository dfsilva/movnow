.class Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$2;
.super Ljava/lang/Object;
.source "LongSittingRemindListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;I)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$2;->this$0:Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;

    iput p2, p0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 114
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$2;->this$0:Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;

    iget-object v2, v2, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    .local v0, "extras":Landroid/os/Bundle;
    const-class v2, Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$2;->this$0:Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;

    iget-object v2, v2, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;->remindList:Ljava/util/List;

    iget v4, p0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$2;->val$position:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 117
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 118
    const-string v2, "position"

    iget v3, p0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$2;->val$position:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$2;->this$0:Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;

    iget-object v2, v2, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 121
    return-void
.end method
