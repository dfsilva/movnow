.class public Lcom/veclink/waterfall/bitmapfun/util/RetainFragment;
.super Landroid/support/v4/app/Fragment;
.source "RetainFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RetainFragment"


# instance fields
.field private mObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static findOrCreateRetainFragment(Landroid/support/v4/app/FragmentManager;)Lcom/veclink/waterfall/bitmapfun/util/RetainFragment;
    .locals 3
    .param p0, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 46
    const-string v1, "RetainFragment"

    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/veclink/waterfall/bitmapfun/util/RetainFragment;

    .line 49
    .local v0, "mRetainFragment":Lcom/veclink/waterfall/bitmapfun/util/RetainFragment;
    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/veclink/waterfall/bitmapfun/util/RetainFragment;

    .end local v0    # "mRetainFragment":Lcom/veclink/waterfall/bitmapfun/util/RetainFragment;
    invoke-direct {v0}, Lcom/veclink/waterfall/bitmapfun/util/RetainFragment;-><init>()V

    .line 51
    .restart local v0    # "mRetainFragment":Lcom/veclink/waterfall/bitmapfun/util/RetainFragment;
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "RetainFragment"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 54
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/veclink/waterfall/bitmapfun/util/RetainFragment;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/veclink/waterfall/bitmapfun/util/RetainFragment;->setRetainInstance(Z)V

    .line 63
    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/veclink/waterfall/bitmapfun/util/RetainFragment;->mObject:Ljava/lang/Object;

    .line 72
    return-void
.end method
