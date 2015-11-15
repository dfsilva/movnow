.class public Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;
.super Landroid/widget/BaseAdapter;
.source "LongSittingRemindListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field handler:Landroid/os/Handler;

.field inflater:Landroid/view/LayoutInflater;

.field mContext:Landroid/content/Context;

.field remindList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/veclink/movmow/allen/nurse/RemindObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/movmow/allen/nurse/RemindObject;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "remindList":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/movmow/allen/nurse/RemindObject;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;->remindList:Ljava/util/List;

    .line 33
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 34
    iput-object p3, p0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;->handler:Landroid/os/Handler;

    .line 35
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;->remindList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;->remindList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 55
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "contentView"    # Landroid/view/View;
    .param p3, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "holder":Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 68
    iget-object v3, p0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 69
    new-instance v0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$ViewHolder;
    invoke-direct {v0}, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$ViewHolder;-><init>()V

    .line 70
    .restart local v0    # "holder":Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$ViewHolder;
    const v3, 0x7f060074

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$ViewHolder;->remindLabel:Landroid/widget/TextView;

    .line 71
    const v3, 0x7f060075

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$ViewHolder;->dleteBtn:Landroid/widget/Button;

    .line 72
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    :goto_0
    iget-object v3, p0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;->remindList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/movmow/allen/nurse/RemindObject;

    .line 78
    .local v1, "remindObject":Lcom/veclink/movmow/allen/nurse/RemindObject;
    const/4 v2, 0x0

    .line 79
    .local v2, "remindTimeString":Ljava/lang/String;
    iget-object v3, p0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0108

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getHour()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getMinute()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {v1}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getHour()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getMinute()I

    move-result v3

    if-eqz v3, :cond_2

    .line 81
    iget-object v3, p0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0107

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getMinute()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 85
    :cond_0
    :goto_1
    iget-object v3, v0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$ViewHolder;->remindLabel:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v3, v0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$ViewHolder;->dleteBtn:Landroid/widget/Button;

    new-instance v4, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1;

    invoke-direct {v4, p0, p1, v1}, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1;-><init>(Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;ILcom/veclink/movmow/allen/nurse/RemindObject;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    new-instance v3, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$2;

    invoke-direct {v3, p0, p1}, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$2;-><init>(Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;I)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-object p2

    .line 75
    .end local v1    # "remindObject":Lcom/veclink/movmow/allen/nurse/RemindObject;
    .end local v2    # "remindTimeString":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$ViewHolder;
    check-cast v0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$ViewHolder;
    goto/16 :goto_0

    .line 82
    .restart local v1    # "remindObject":Lcom/veclink/movmow/allen/nurse/RemindObject;
    .restart local v2    # "remindTimeString":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getHour()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getMinute()I

    move-result v3

    if-nez v3, :cond_0

    .line 83
    iget-object v3, p0, Lcom/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0106

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getHour()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
