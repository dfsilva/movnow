.class public Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BleDeviceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public listItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/bracelet/bean/BluetoothDeviceBean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;->listItems:Ljava/util/List;

    .line 34
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public addDeviceItem(Lcom/veclink/bracelet/bean/BluetoothDeviceBean;)V
    .locals 1
    .param p1, "device"    # Lcom/veclink/bracelet/bean/BluetoothDeviceBean;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;->listItems:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 97
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;->notifyDataSetChanged()V

    .line 98
    return-void
.end method

.method public clearAllDeviceItem()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 102
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;->notifyDataSetChanged()V

    .line 103
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 61
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "contentView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    .line 76
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;

    .line 77
    .local v0, "device":Lcom/veclink/bracelet/bean/BluetoothDeviceBean;
    if-nez p2, :cond_0

    .line 78
    new-instance v1, Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter$ViewHolder;-><init>(Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;)V

    .line 79
    .local v1, "holder":Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter$ViewHolder;
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030043

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 80
    const v2, 0x7f060103

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter$ViewHolder;->name_view:Landroid/widget/TextView;

    .line 81
    const v2, 0x7f060104

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter$ViewHolder;->address_view:Landroid/widget/TextView;

    .line 82
    const v2, 0x7f060105

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter$ViewHolder;->rssi_view:Landroid/widget/TextView;

    .line 83
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    :goto_0
    iget-object v2, v1, Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter$ViewHolder;->name_view:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;->getDevice_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v2, v1, Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter$ViewHolder;->address_view:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;->getDevice_address()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v2, v1, Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter$ViewHolder;->rssi_view:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/veclink/bracelet/bean/BluetoothDeviceBean;->getDevice_rssi()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-object p2

    .line 85
    .end local v1    # "holder":Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/veclink/movnow_q2/activity/BleDeviceListAdapter$ViewHolder;
    goto :goto_0
.end method
