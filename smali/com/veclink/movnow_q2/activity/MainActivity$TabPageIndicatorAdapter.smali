.class Lcom/veclink/movnow_q2/activity/MainActivity$TabPageIndicatorAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "MainActivity.java"

# interfaces
.implements Lcom/viewpagerindicator/IconPagerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/veclink/movnow_q2/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabPageIndicatorAdapter"
.end annotation


# instance fields
.field public fragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/MainActivity;


# direct methods
.method public constructor <init>(Lcom/veclink/movnow_q2/activity/MainActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V
    .locals 0
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p3, "fragmentList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/MainActivity$TabPageIndicatorAdapter;->this$0:Lcom/veclink/movnow_q2/activity/MainActivity;

    .line 280
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 281
    iput-object p3, p0, Lcom/veclink/movnow_q2/activity/MainActivity$TabPageIndicatorAdapter;->fragmentList:Ljava/util/List;

    .line 282
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 293
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity$TabPageIndicatorAdapter;->fragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIconResId(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity$TabPageIndicatorAdapter;->this$0:Lcom/veclink/movnow_q2/activity/MainActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/MainActivity;->iconResList:Ljava/util/List;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/MainActivity;->access$400(Lcom/veclink/movnow_q2/activity/MainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 287
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/MainActivity$TabPageIndicatorAdapter;->fragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 307
    const/4 v0, -0x2

    return v0
.end method
