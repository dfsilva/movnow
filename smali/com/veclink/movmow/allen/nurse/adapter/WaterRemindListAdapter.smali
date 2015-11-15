.class public Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter;
.super Landroid/widget/BaseAdapter;
.source "WaterRemindListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field inflater:Landroid/view/LayoutInflater;

.field mContext:Landroid/content/Context;

.field public remindList:Ljava/util/List;
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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter;->mContext:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "water_remind_objects_file.wao"

    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/util/StorageUtil;->readRemindObject(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter;->remindList:Ljava/util/List;

    .line 33
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 34
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter;->remindList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter;->remindList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 41
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
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 54
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "contentView"    # Landroid/view/View;
    .param p3, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "holder":Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030020

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 68
    new-instance v0, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$ViewHolder;
    invoke-direct {v0}, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$ViewHolder;-><init>()V

    .line 69
    .restart local v0    # "holder":Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$ViewHolder;
    const v2, 0x7f060074

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$ViewHolder;->remindLabel:Landroid/widget/TextView;

    .line 70
    const v2, 0x7f060075

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$ViewHolder;->dleteBtn:Landroid/widget/Button;

    .line 71
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    :goto_0
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter;->remindList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/movmow/allen/nurse/RemindObject;

    .line 77
    .local v1, "remindObject":Lcom/veclink/movmow/allen/nurse/RemindObject;
    iget-object v2, v0, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$ViewHolder;->remindLabel:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0103

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v2, v0, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$ViewHolder;->dleteBtn:Landroid/widget/Button;

    new-instance v3, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1;-><init>(Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter;Lcom/veclink/movmow/allen/nurse/RemindObject;I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    new-instance v2, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$2;

    invoke-direct {v2, p0, p1}, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$2;-><init>(Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter;I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-object p2

    .line 74
    .end local v1    # "remindObject":Lcom/veclink/movmow/allen/nurse/RemindObject;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$ViewHolder;
    check-cast v0, Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$ViewHolder;
    goto :goto_0
.end method
