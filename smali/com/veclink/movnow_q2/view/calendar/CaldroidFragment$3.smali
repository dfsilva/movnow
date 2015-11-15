.class Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$3;
.super Ljava/lang/Object;
.source "CaldroidFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;)V
    .locals 0

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$3;->this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment$3;->this$0:Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/calendar/CaldroidFragment;->prevMonth()V

    .line 1144
    return-void
.end method
