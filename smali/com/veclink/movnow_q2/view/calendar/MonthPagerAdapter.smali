.class public Lcom/veclink/movnow_q2/view/calendar/MonthPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "MonthPagerAdapter.java"


# instance fields
.field private fragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x4

    return v0
.end method

.method public getFragments()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/MonthPagerAdapter;->fragments:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/MonthPagerAdapter;->fragments:Ljava/util/ArrayList;

    .line 25
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/calendar/MonthPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/MonthPagerAdapter;->fragments:Ljava/util/ArrayList;

    new-instance v2, Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;

    invoke-direct {v2}, Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/MonthPagerAdapter;->fragments:Ljava/util/ArrayList;

    return-object v1
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/calendar/MonthPagerAdapter;->getFragments()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;

    .line 43
    .local v0, "fragment":Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;
    return-object v0
.end method

.method public setFragments(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;>;"
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/calendar/MonthPagerAdapter;->fragments:Ljava/util/ArrayList;

    .line 34
    return-void
.end method
