.class public Lcom/veclink/movnow_q2/adapter/HeartRateListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "HeartRateListAdapter.java"


# instance fields
.field private buddy:[[Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private group:[Ljava/lang/String;

.field inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # [Ljava/lang/String;
    .param p3, "buddy"    # [[Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/veclink/movnow_q2/adapter/HeartRateListAdapter;->context:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/adapter/HeartRateListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 31
    iput-object p2, p0, Lcom/veclink/movnow_q2/adapter/HeartRateListAdapter;->group:[Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/veclink/movnow_q2/adapter/HeartRateListAdapter;->buddy:[[Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/veclink/movnow_q2/adapter/HeartRateListAdapter;->buddy:[[Ljava/lang/String;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 39
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "arg2"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "arg4"    # Landroid/view/ViewGroup;

    .prologue
    .line 44
    iget-object v1, p0, Lcom/veclink/movnow_q2/adapter/HeartRateListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03003e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 45
    const v1, 0x7f0600fb

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 46
    .local v0, "nickTextView":Landroid/widget/TextView;
    invoke-virtual {p0, p1, p2}, Lcom/veclink/movnow_q2/adapter/HeartRateListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/veclink/movnow_q2/adapter/HeartRateListAdapter;->buddy:[[Ljava/lang/String;

    aget-object v0, v0, p1

    array-length v0, v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/veclink/movnow_q2/adapter/HeartRateListAdapter;->group:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/veclink/movnow_q2/adapter/HeartRateListAdapter;->group:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 63
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "arg3"    # Landroid/view/ViewGroup;

    .prologue
    .line 67
    iget-object v2, p0, Lcom/veclink/movnow_q2/adapter/HeartRateListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03003f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 68
    const v2, 0x7f0600fd

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    .local v0, "groupNameTextView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/veclink/movnow_q2/adapter/HeartRateListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const v2, 0x7f0600fe

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 72
    .local v1, "image":Landroid/widget/ImageView;
    if-nez p2, :cond_0

    .line 73
    const v2, 0x7f0200d4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 81
    :goto_0
    return-object p3

    .line 76
    :cond_0
    const v2, 0x7f0200d3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method
