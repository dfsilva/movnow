.class final Lcom/veclink/movnow_q2/util/StringUtil$2;
.super Ljava/lang/Object;
.source "StringUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/util/StringUtil;->showToastForeground(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$duration:I

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/veclink/movnow_q2/util/StringUtil$2;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/veclink/movnow_q2/util/StringUtil$2;->val$resId:I

    iput p3, p0, Lcom/veclink/movnow_q2/util/StringUtil$2;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 558
    iget-object v0, p0, Lcom/veclink/movnow_q2/util/StringUtil$2;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/veclink/movnow_q2/util/StringUtil$2;->val$resId:I

    iget v2, p0, Lcom/veclink/movnow_q2/util/StringUtil$2;->val$duration:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 559
    return-void
.end method
