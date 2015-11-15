.class Lcom/veclink/waterfall/views/StaggeredGridView$WindowRunnnable;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/waterfall/views/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lcom/veclink/waterfall/views/StaggeredGridView;


# direct methods
.method private constructor <init>(Lcom/veclink/waterfall/views/StaggeredGridView;)V
    .locals 0

    .prologue
    .line 2547
    iput-object p1, p0, Lcom/veclink/waterfall/views/StaggeredGridView$WindowRunnnable;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/veclink/waterfall/views/StaggeredGridView;Lcom/veclink/waterfall/views/StaggeredGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/veclink/waterfall/views/StaggeredGridView;
    .param p2, "x1"    # Lcom/veclink/waterfall/views/StaggeredGridView$1;

    .prologue
    .line 2547
    invoke-direct {p0, p1}, Lcom/veclink/waterfall/views/StaggeredGridView$WindowRunnnable;-><init>(Lcom/veclink/waterfall/views/StaggeredGridView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 2551
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$WindowRunnnable;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # invokes: Lcom/veclink/waterfall/views/StaggeredGridView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$2100(Lcom/veclink/waterfall/views/StaggeredGridView;)I

    move-result v0

    iput v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$WindowRunnnable;->mOriginalAttachCount:I

    .line 2552
    return-void
.end method

.method public sameWindow()Z
    .locals 2

    .prologue
    .line 2555
    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$WindowRunnnable;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    invoke-virtual {v0}, Lcom/veclink/waterfall/views/StaggeredGridView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/veclink/waterfall/views/StaggeredGridView$WindowRunnnable;->this$0:Lcom/veclink/waterfall/views/StaggeredGridView;

    # invokes: Lcom/veclink/waterfall/views/StaggeredGridView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/veclink/waterfall/views/StaggeredGridView;->access$2200(Lcom/veclink/waterfall/views/StaggeredGridView;)I

    move-result v0

    iget v1, p0, Lcom/veclink/waterfall/views/StaggeredGridView$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
