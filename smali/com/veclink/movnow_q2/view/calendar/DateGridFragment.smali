.class public Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;
.super Landroid/support/v4/app/Fragment;
.source "DateGridFragment.java"


# instance fields
.field private gridAdapter:Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;

.field private gridView:Landroid/widget/GridView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getGridAdapter()Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;->gridAdapter:Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;

    return-object v0
.end method

.method public getGridView()Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;->gridView:Landroid/widget/GridView;

    return-object v0
.end method

.method public getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    const v0, 0x7f03002e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;->gridView:Landroid/widget/GridView;

    .line 65
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;->gridAdapter:Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;->gridAdapter:Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;->gridView:Landroid/widget/GridView;

    return-object v0
.end method

.method public setGridAdapter(Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;)V
    .locals 0
    .param p1, "gridAdapter"    # Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;->gridAdapter:Lcom/veclink/movnow_q2/view/calendar/CaldroidGridAdapter;

    .line 53
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 37
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0
    .param p1, "onItemLongClickListener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/calendar/DateGridFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 45
    return-void
.end method
