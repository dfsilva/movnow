.class public Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FamilyPhoneNumberListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field inflater:Landroid/view/LayoutInflater;

.field mContext:Landroid/content/Context;

.field public phoneNumberMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;->phoneNumberMap:Ljava/util/HashMap;

    .line 33
    iput-object p1, p0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;->mContext:Landroid/content/Context;

    .line 34
    iget-object v2, p0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;->mContext:Landroid/content/Context;

    const-string v3, "family_phone_number_file.wao"

    invoke-static {v2, v3}, Lcom/veclink/movnow_q2/util/StorageUtil;->readRemindObject(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;->remindList:Ljava/util/List;

    .line 35
    iget-object v2, p0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 36
    iget-object v2, p0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;->remindList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 37
    iget-object v2, p0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;->remindList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/movmow/allen/nurse/RemindObject;

    .line 38
    .local v1, "remindObject":Lcom/veclink/movmow/allen/nurse/RemindObject;
    iget-object v2, p0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;->phoneNumberMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 41
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "remindObject":Lcom/veclink/movmow/allen/nurse/RemindObject;
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;->remindList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;->remindList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 48
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
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "contentView"    # Landroid/view/View;
    .param p3, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "holder":Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030020

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 75
    new-instance v0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$ViewHolder;
    invoke-direct {v0}, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$ViewHolder;-><init>()V

    .line 76
    .restart local v0    # "holder":Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$ViewHolder;
    const v2, 0x7f060074

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$ViewHolder;->remindLabel:Landroid/widget/TextView;

    .line 77
    const v2, 0x7f060075

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$ViewHolder;->dleteBtn:Landroid/widget/Button;

    .line 78
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 83
    :goto_0
    iget-object v2, p0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;->remindList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/movmow/allen/nurse/RemindObject;

    .line 84
    .local v1, "remindObject":Lcom/veclink/movmow/allen/nurse/RemindObject;
    iget-object v2, v0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$ViewHolder;->remindLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v2, v0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$ViewHolder;->dleteBtn:Landroid/widget/Button;

    new-instance v3, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1;

    invoke-direct {v3, p0, p1, v1}, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1;-><init>(Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;ILcom/veclink/movmow/allen/nurse/RemindObject;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-object p2

    .line 81
    .end local v1    # "remindObject":Lcom/veclink/movmow/allen/nurse/RemindObject;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$ViewHolder;
    check-cast v0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$ViewHolder;
    goto :goto_0
.end method
