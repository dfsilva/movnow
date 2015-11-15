.class public Lcom/veclink/movnow_q2/view/calendar/InfinitePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "InfinitePagerAdapter.java"


# instance fields
.field private adapter:Landroid/support/v4/view/PagerAdapter;


# direct methods
.method public constructor <init>(Landroid/support/v4/view/PagerAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/calendar/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    .line 18
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/calendar/InfinitePagerAdapter;->getRealCount()I

    move-result v1

    rem-int v0, p2, v1

    .line 45
    .local v0, "virtualPosition":I
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p1, v0, p3}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 46
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 55
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 24
    const v0, 0x7fffffff

    return v0
.end method

.method public getRealCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/calendar/InfinitePagerAdapter;->getRealCount()I

    move-result v1

    rem-int v0, p2, v1

    .line 38
    .local v0, "virtualPosition":I
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Parcelable;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 65
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/InfinitePagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 75
    return-void
.end method
