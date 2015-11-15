.class Lcom/veclink/waterfall/adapter/StaggeredAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "StaggeredAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/waterfall/adapter/StaggeredAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field contentView:Landroid/widget/TextView;

.field foodCalValue:Landroid/widget/TextView;

.field imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/veclink/waterfall/adapter/StaggeredAdapter;


# direct methods
.method constructor <init>(Lcom/veclink/waterfall/adapter/StaggeredAdapter;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter$ViewHolder;->this$0:Lcom/veclink/waterfall/adapter/StaggeredAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
