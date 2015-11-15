.class public Lcom/veclink/waterfall/adapter/StaggeredAdapter;
.super Landroid/widget/BaseAdapter;
.source "StaggeredAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/veclink/waterfall/adapter/StaggeredAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private calories:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/veclink/healthy/database/entity/UptakeCalorie;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mImageFetcher:Lcom/veclink/waterfall/bitmapfun/util/ImageFetcher;

.field private mInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/veclink/waterfall/model/DuitangInfo;",
            ">;"
        }
    .end annotation
.end field

.field private managerCaloriesActivity:Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;

.field private width:I

.field private wm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/waterfall/bitmapfun/util/ImageFetcher;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "f"    # Lcom/veclink/waterfall/bitmapfun/util/ImageFetcher;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 51
    const/4 v1, 0x0

    iput v1, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->width:I

    .line 54
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->mInfos:Ljava/util/LinkedList;

    .line 55
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->calories:Ljava/util/LinkedList;

    .line 56
    iput-object p2, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->mImageFetcher:Lcom/veclink/waterfall/bitmapfun/util/ImageFetcher;

    .line 57
    iput-object p1, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->mContext:Landroid/content/Context;

    move-object v1, p1

    .line 58
    check-cast v1, Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;

    iput-object v1, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->managerCaloriesActivity:Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;

    .line 59
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->wm:Landroid/view/WindowManager;

    .line 60
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 61
    .local v0, "metric":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->wm:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/veclink/waterfall/adapter/StaggeredAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/waterfall/adapter/StaggeredAdapter;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/veclink/waterfall/adapter/StaggeredAdapter;)Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/waterfall/adapter/StaggeredAdapter;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->managerCaloriesActivity:Lcom/veclink/movnow_q2/activity/ManagerCaloriesActivity;

    return-object v0
.end method


# virtual methods
.method public addItemLast(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/UptakeCalorie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/UptakeCalorie;>;"
    iget-object v0, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->calories:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 160
    return-void
.end method

.method public addItemTop(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/veclink/healthy/database/entity/UptakeCalorie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/veclink/healthy/database/entity/UptakeCalorie;>;"
    if-eqz p1, :cond_1

    .line 164
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/healthy/database/entity/UptakeCalorie;

    .line 165
    .local v1, "info":Lcom/veclink/healthy/database/entity/UptakeCalorie;
    if-eqz v1, :cond_0

    .line 166
    iget-object v2, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->calories:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 170
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/veclink/healthy/database/entity/UptakeCalorie;
    :cond_1
    return-void
.end method

.method public deleteItem(Lcom/veclink/healthy/database/entity/UptakeCalorie;)V
    .locals 5
    .param p1, "info"    # Lcom/veclink/healthy/database/entity/UptakeCalorie;

    .prologue
    .line 177
    invoke-virtual {p1}, Lcom/veclink/healthy/database/entity/UptakeCalorie;->getImgUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-virtual {p1}, Lcom/veclink/healthy/database/entity/UptakeCalorie;->getImgUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 178
    invoke-virtual {p1}, Lcom/veclink/healthy/database/entity/UptakeCalorie;->getImgUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 179
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 180
    invoke-virtual {p1}, Lcom/veclink/healthy/database/entity/UptakeCalorie;->getImgUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "name":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/veclink/movnow_q2/util/StorageUtil;->getMovnowDataDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 187
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "index":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->calories:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 188
    iget-object v3, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->delUptakeCalorie(Landroid/content/Context;Lcom/veclink/healthy/database/entity/UptakeCalorie;)V

    .line 190
    invoke-virtual {p0}, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->refresh()V

    .line 191
    return-void
.end method

.method public getCalories()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/veclink/healthy/database/entity/UptakeCalorie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->calories:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->calories:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->calories:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 155
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTextByResID(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 69
    iget-object v5, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->calories:Ljava/util/LinkedList;

    invoke-virtual {v5, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/veclink/healthy/database/entity/UptakeCalorie;

    .line 70
    .local v2, "calorie":Lcom/veclink/healthy/database/entity/UptakeCalorie;
    if-nez p2, :cond_0

    .line 71
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 72
    .local v4, "layoutInflator":Landroid/view/LayoutInflater;
    const v5, 0x7f030034

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 73
    new-instance v3, Lcom/veclink/waterfall/adapter/StaggeredAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/veclink/waterfall/adapter/StaggeredAdapter$ViewHolder;-><init>(Lcom/veclink/waterfall/adapter/StaggeredAdapter;)V

    .line 74
    .local v3, "holder":Lcom/veclink/waterfall/adapter/StaggeredAdapter$ViewHolder;
    const v5, 0x7f0600a7

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v3, Lcom/veclink/waterfall/adapter/StaggeredAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 75
    const v5, 0x7f06001a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/veclink/waterfall/adapter/StaggeredAdapter$ViewHolder;->contentView:Landroid/widget/TextView;

    .line 76
    const v5, 0x7f06001b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/veclink/waterfall/adapter/StaggeredAdapter$ViewHolder;->foodCalValue:Landroid/widget/TextView;

    .line 77
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    .end local v3    # "holder":Lcom/veclink/waterfall/adapter/StaggeredAdapter$ViewHolder;
    .end local v4    # "layoutInflator":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/veclink/waterfall/adapter/StaggeredAdapter$ViewHolder;

    .line 81
    .restart local v3    # "holder":Lcom/veclink/waterfall/adapter/StaggeredAdapter$ViewHolder;
    const v5, 0x7f0600a8

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 82
    .local v1, "btn_del_food":Landroid/widget/Button;
    new-instance v5, Lcom/veclink/waterfall/adapter/StaggeredAdapter$1;

    invoke-direct {v5, p0, v2}, Lcom/veclink/waterfall/adapter/StaggeredAdapter$1;-><init>(Lcom/veclink/waterfall/adapter/StaggeredAdapter;Lcom/veclink/healthy/database/entity/UptakeCalorie;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v5, v3, Lcom/veclink/waterfall/adapter/StaggeredAdapter$ViewHolder;->contentView:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/entity/UptakeCalorie;->getFoodName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v5, v3, Lcom/veclink/waterfall/adapter/StaggeredAdapter$ViewHolder;->foodCalValue:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/veclink/healthy/database/entity/UptakeCalorie;->getCalorieContent()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Lcom/veclink/healthy/database/entity/UptakeCalorie;->getImgUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 111
    invoke-virtual {v2}, Lcom/veclink/healthy/database/entity/UptakeCalorie;->getImgUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_1

    .line 116
    iget-object v5, v3, Lcom/veclink/waterfall/adapter/StaggeredAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 120
    :cond_1
    iget-object v5, v3, Lcom/veclink/waterfall/adapter/StaggeredAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    new-instance v6, Lcom/veclink/waterfall/adapter/StaggeredAdapter$2;

    invoke-direct {v6, p0, v2}, Lcom/veclink/waterfall/adapter/StaggeredAdapter$2;-><init>(Lcom/veclink/waterfall/adapter/StaggeredAdapter;Lcom/veclink/healthy/database/entity/UptakeCalorie;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-object p2
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->notifyDataSetChanged()V

    .line 195
    return-void
.end method

.method public setCalories(Ljava/util/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/veclink/healthy/database/entity/UptakeCalorie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "calories":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/veclink/healthy/database/entity/UptakeCalorie;>;"
    iput-object p1, p0, Lcom/veclink/waterfall/adapter/StaggeredAdapter;->calories:Ljava/util/LinkedList;

    .line 203
    return-void
.end method
