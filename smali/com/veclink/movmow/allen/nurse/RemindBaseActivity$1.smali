.class Lcom/veclink/movmow/allen/nurse/RemindBaseActivity$1;
.super Ljava/lang/Object;
.source "RemindBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity$1;->this$0:Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;

    iget-object v0, v0, Lcom/veclink/movmow/allen/nurse/RemindBaseActivity;->mContext:Landroid/content/Context;

    const-string v1, "saveRemindSetting"

    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/util/ToastUtil;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    return-void
.end method
