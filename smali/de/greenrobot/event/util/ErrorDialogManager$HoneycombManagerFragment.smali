.class public Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;
.super Landroid/app/Fragment;
.source "ErrorDialogManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/greenrobot/event/util/ErrorDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HoneycombManagerFragment"
.end annotation


# instance fields
.field protected argumentsForErrorDialog:Landroid/os/Bundle;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field protected finishAfterDialog:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static attachTo(Landroid/app/Activity;ZLandroid/os/Bundle;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "finishAfterDialog"    # Z
    .param p2, "argumentsForErrorDialog"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 138
    .local v0, "fm":Landroid/app/FragmentManager;
    const-string v2, "de.greenrobot.eventbus.error_dialog_manager"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 137
    check-cast v1, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;

    .line 139
    .local v1, "fragment":Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;
    if-nez v1, :cond_0

    .line 140
    new-instance v1, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;

    .end local v1    # "fragment":Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;
    invoke-direct {v1}, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;-><init>()V

    .line 141
    .restart local v1    # "fragment":Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "de.greenrobot.eventbus.error_dialog_manager"

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 142
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 144
    :cond_0
    iput-boolean p1, v1, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->finishAfterDialog:Z

    .line 145
    iput-object p2, v1, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->argumentsForErrorDialog:Landroid/os/Bundle;

    .line 146
    return-void
.end method


# virtual methods
.method public onEventMainThread(Lde/greenrobot/event/util/ThrowableFailureEvent;)V
    .locals 6
    .param p1, "event"    # Lde/greenrobot/event/util/ThrowableFailureEvent;

    .prologue
    .line 115
    invoke-static {p1}, Lde/greenrobot/event/util/ErrorDialogManager;->checkLogException(Lde/greenrobot/event/util/ThrowableFailureEvent;)V

    .line 118
    invoke-virtual {p0}, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 119
    .local v2, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 122
    const-string v3, "de.greenrobot.eventbus.error_dialog"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 121
    check-cast v1, Landroid/app/DialogFragment;

    .line 123
    .local v1, "existingFragment":Landroid/app/DialogFragment;
    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    .line 128
    :cond_0
    sget-object v3, Lde/greenrobot/event/util/ErrorDialogManager;->factory:Lde/greenrobot/event/util/ErrorDialogFragmentFactory;

    .line 129
    iget-boolean v4, p0, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->finishAfterDialog:Z

    iget-object v5, p0, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->argumentsForErrorDialog:Landroid/os/Bundle;

    .line 128
    invoke-virtual {v3, p1, v4, v5}, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->prepareErrorFragment(Lde/greenrobot/event/util/ThrowableFailureEvent;ZLandroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 130
    .local v0, "errorFragment":Landroid/app/DialogFragment;
    if-eqz v0, :cond_1

    .line 131
    const-string v3, "de.greenrobot.eventbus.error_dialog"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 133
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 111
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 112
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 104
    sget-object v0, Lde/greenrobot/event/util/ErrorDialogManager;->factory:Lde/greenrobot/event/util/ErrorDialogFragmentFactory;

    iget-object v0, v0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;

    invoke-virtual {v0}, Lde/greenrobot/event/util/ErrorDialogConfig;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iput-object v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->eventBus:Lde/greenrobot/event/EventBus;

    .line 105
    iget-object v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 106
    return-void
.end method
