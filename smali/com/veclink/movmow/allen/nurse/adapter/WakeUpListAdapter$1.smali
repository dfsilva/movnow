.class Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1;
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


# direct methods
.method constructor <init>(Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;I)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1;->this$0:Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;

    iput p2, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 91
    new-instance v0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;

    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1;->this$0:Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;

    iget-object v1, v1, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;-><init>(Landroid/content/Context;)V

    .line 92
    .local v0, "dialog":Lcom/veclink/movnow_q2/view/BaseRemindDialog;
    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1;->this$0:Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;

    iget-object v1, v1, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c00e6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->setTitle(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1;->this$0:Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;

    iget-object v1, v1, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0151

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->setContent(Ljava/lang/String;)V

    .line 94
    new-instance v1, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1$1;

    invoke-direct {v1, p0, v0}, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1$1;-><init>(Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1;Lcom/veclink/movnow_q2/view/BaseRemindDialog;)V

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->setOkListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->show()V

    .line 114
    return-void
.end method
