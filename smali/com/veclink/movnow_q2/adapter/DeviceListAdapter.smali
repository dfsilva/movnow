.class public Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeviceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/movnow_q2/adapter/DeviceListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private deviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "deviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;->deviceList:Ljava/util/List;

    .line 25
    iput-object p2, p0, Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;->deviceList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;->deviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "posititon"    # I
    .param p2, "contentView"    # Landroid/view/View;
    .param p3, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "holder":Lcom/veclink/movnow_q2/adapter/DeviceListAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 54
    iget-object v1, p0, Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030031

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 55
    new-instance v0, Lcom/veclink/movnow_q2/adapter/DeviceListAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/veclink/movnow_q2/adapter/DeviceListAdapter$ViewHolder;
    invoke-direct {v0}, Lcom/veclink/movnow_q2/adapter/DeviceListAdapter$ViewHolder;-><init>()V

    .line 56
    .restart local v0    # "holder":Lcom/veclink/movnow_q2/adapter/DeviceListAdapter$ViewHolder;
    const v1, 0x7f06009e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/veclink/movnow_q2/adapter/DeviceListAdapter$ViewHolder;->device_id_view:Landroid/widget/TextView;

    .line 57
    const v1, 0x7f0600a0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/veclink/movnow_q2/adapter/DeviceListAdapter$ViewHolder;->unbind_btn:Landroid/widget/Button;

    .line 58
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 62
    :goto_0
    iget-object v2, v0, Lcom/veclink/movnow_q2/adapter/DeviceListAdapter$ViewHolder;->device_id_view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;->deviceList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v1, v0, Lcom/veclink/movnow_q2/adapter/DeviceListAdapter$ViewHolder;->unbind_btn:Landroid/widget/Button;

    new-instance v2, Lcom/veclink/movnow_q2/adapter/DeviceListAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/veclink/movnow_q2/adapter/DeviceListAdapter$1;-><init>(Lcom/veclink/movnow_q2/adapter/DeviceListAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-object p2

    .line 60
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/veclink/movnow_q2/adapter/DeviceListAdapter$ViewHolder;
    check-cast v0, Lcom/veclink/movnow_q2/adapter/DeviceListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/veclink/movnow_q2/adapter/DeviceListAdapter$ViewHolder;
    goto :goto_0
.end method
