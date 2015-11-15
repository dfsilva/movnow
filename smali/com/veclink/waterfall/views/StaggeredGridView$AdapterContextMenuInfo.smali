.class public Lcom/veclink/waterfall/views/StaggeredGridView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/waterfall/views/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public position:I

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .locals 0
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 2817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2818
    iput-object p1, p0, Lcom/veclink/waterfall/views/StaggeredGridView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 2819
    iput p2, p0, Lcom/veclink/waterfall/views/StaggeredGridView$AdapterContextMenuInfo;->position:I

    .line 2820
    iput-wide p3, p0, Lcom/veclink/waterfall/views/StaggeredGridView$AdapterContextMenuInfo;->id:J

    .line 2821
    return-void
.end method
