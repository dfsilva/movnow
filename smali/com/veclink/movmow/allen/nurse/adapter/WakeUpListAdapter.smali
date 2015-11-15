.class public Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;
.super Landroid/widget/BaseAdapter;
.source "WakeUpListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$ViewHolder;
    }
.end annotation


# instance fields
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

.field weekStringArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->mContext:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "wakeup_remind_objects_file.wao"

    invoke-static {v0, v1}, Lcom/veclink/movnow_q2/util/StorageUtil;->readRemindObject(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->remindList:Ljava/util/List;

    .line 38
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->weekStringArray:[Ljava/lang/String;

    .line 40
    return-void
.end method

.method private getRepeartDayString([Z)Ljava/lang/String;
    .locals 12
    .param p1, "repeatdayarray"    # [Z

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 135
    .local v3, "result":Ljava/lang/String;
    iget-object v5, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0144

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    aget-boolean v5, p1, v7

    if-eqz v5, :cond_0

    aget-boolean v5, p1, v8

    if-eqz v5, :cond_0

    aget-boolean v5, p1, v9

    if-eqz v5, :cond_0

    aget-boolean v5, p1, v10

    if-eqz v5, :cond_0

    aget-boolean v5, p1, v11

    if-eqz v5, :cond_0

    const/4 v5, 0x5

    aget-boolean v5, p1, v5

    if-eqz v5, :cond_0

    const/4 v5, 0x6

    aget-boolean v5, p1, v5

    if-eqz v5, :cond_0

    .line 138
    iget-object v5, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0147

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 163
    :goto_0
    return-object v3

    .line 140
    :cond_0
    aget-boolean v5, p1, v8

    if-eqz v5, :cond_1

    aget-boolean v5, p1, v9

    if-eqz v5, :cond_1

    aget-boolean v5, p1, v10

    if-eqz v5, :cond_1

    aget-boolean v5, p1, v11

    if-eqz v5, :cond_1

    const/4 v5, 0x5

    aget-boolean v5, p1, v5

    if-eqz v5, :cond_1

    .line 142
    iget-object v5, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0146

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 145
    :cond_1
    const/4 v2, 0x0

    .line 146
    .local v2, "isRepeat":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, p1

    if-ge v1, v5, :cond_3

    .line 147
    aget-boolean v5, p1, v1

    if-eqz v5, :cond_2

    .line 148
    iget-object v5, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->weekStringArray:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const/4 v2, 0x1

    .line 146
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 152
    :cond_3
    if-nez v2, :cond_4

    .line 153
    iget-object v5, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0145

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 156
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, "tempString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->remindList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->remindList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 47
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
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 60
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRemindList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/movmow/allen/nurse/RemindObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->remindList:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "contentView"    # Landroid/view/View;
    .param p3, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "holder":Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030066

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 75
    new-instance v0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$ViewHolder;
    invoke-direct {v0}, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$ViewHolder;-><init>()V

    .line 76
    .restart local v0    # "holder":Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$ViewHolder;
    const v2, 0x7f060074

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$ViewHolder;->remindLabel:Landroid/widget/TextView;

    .line 77
    const v2, 0x7f060075

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$ViewHolder;->dleteBtn:Landroid/widget/Button;

    .line 78
    const v2, 0x7f0601cc

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$ViewHolder;->repeatDayTextView:Landroid/widget/TextView;

    .line 79
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    :goto_0
    iget-object v2, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->remindList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/movmow/allen/nurse/RemindObject;

    .line 85
    .local v1, "remindObject":Lcom/veclink/movmow/allen/nurse/RemindObject;
    iget-object v2, v0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$ViewHolder;->remindLabel:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0109

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v2, v0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$ViewHolder;->repeatDayTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getRepeateArray()[Z

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;->getRepeartDayString([Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v2, v0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$ViewHolder;->dleteBtn:Landroid/widget/Button;

    new-instance v3, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$1;-><init>(Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    new-instance v2, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$2;

    invoke-direct {v2, p0, v1, p1}, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$2;-><init>(Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter;Lcom/veclink/movmow/allen/nurse/RemindObject;I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-object p2

    .line 82
    .end local v1    # "remindObject":Lcom/veclink/movmow/allen/nurse/RemindObject;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$ViewHolder;
    check-cast v0, Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/veclink/movmow/allen/nurse/adapter/WakeUpListAdapter$ViewHolder;
    goto :goto_0
.end method
