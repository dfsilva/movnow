.class Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout$1;
.super Ljava/lang/Object;
.source "TitleBarRelativeLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout$1;->this$0:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout$1;->this$0:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 55
    return-void
.end method
