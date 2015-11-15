.class public Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;
.super Landroid/support/v4/app/Fragment;
.source "ErrorDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/greenrobot/event/util/ErrorDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SupportManagerFragment"
.end annotation


# instance fields
.field protected argumentsForErrorDialog:Landroid/os/Bundle;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field protected finishAfterDialog:Z

.field private skipRegisterOnNextResume:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static attachTo(Landroid/app/Activity;ZLandroid/os/Bundle;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "finishAfterDialog"    # Z
    .param p2, "argumentsForErrorDialog"    # Landroid/os/Bundle;

    .prologue
    .line 83
    check-cast p0, Landroid/support/v4/app/FragmentActivity;

    .end local p0    # "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 84
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    const-string v2, "de.greenrobot.eventbus.error_dialog_manager"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;

    .line 85
    .local v1, "fragment":Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;
    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;

    .end local v1    # "fragment":Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;
    invoke-direct {v1}, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;-><init>()V

    .line 87
    .restart local v1    # "fragment":Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "de.greenrobot.eventbus.error_dialog_manager"

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 88
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 90
    :cond_0
    iput-boolean p1, v1, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;->finishAfterDialog:Z

    .line 91
    iput-object p2, v1, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;->argumentsForErrorDialog:Landroid/os/Bundle;

    .line 92
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget-object v0, Lde/greenrobot/event/util/ErrorDialogManager;->factory:Lde/greenrobot/event/util/ErrorDialogFragmentFactory;

    iget-object v0, v0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;

    invoke-virtual {v0}, Lde/greenrobot/event/util/ErrorDialogConfig;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iput-object v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;->eventBus:Lde/greenrobot/event/EventBus;

    .line 41
    iget-object v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;->skipRegisterOnNextResume:Z

    .line 43
    return-void
.end method

.method public onEventMainThread(Lde/greenrobot/event/util/ThrowableFailureEvent;)V
    .locals 6
    .param p1, "event"    # Lde/greenrobot/event/util/ThrowableFailureEvent;

    .prologue
    .line 64
    invoke-static {p1}, Lde/greenrobot/event/util/ErrorDialogManager;->checkLogException(Lde/greenrobot/event/util/ThrowableFailureEvent;)V

    .line 66
    invoke-virtual {p0}, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 67
    .local v2, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 69
    const-string v3, "de.greenrobot.eventbus.error_dialog"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/DialogFragment;

    .line 70
    .local v1, "existingFragment":Landroid/support/v4/app/DialogFragment;
    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v1}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 75
    :cond_0
    sget-object v3, Lde/greenrobot/event/util/ErrorDialogManager;->factory:Lde/greenrobot/event/util/ErrorDialogFragmentFactory;

    .line 76
    iget-boolean v4, p0, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;->finishAfterDialog:Z

    iget-object v5, p0, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;->argumentsForErrorDialog:Landroid/os/Bundle;

    invoke-virtual {v3, p1, v4, v5}, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->prepareErrorFragment(Lde/greenrobot/event/util/ThrowableFailureEvent;ZLandroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 77
    .local v0, "errorFragment":Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_1

    .line 78
    const-string v3, "de.greenrobot.eventbus.error_dialog"

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 80
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 60
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 61
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 48
    iget-boolean v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;->skipRegisterOnNextResume:Z

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;->skipRegisterOnNextResume:Z

    .line 55
    :goto_0
    return-void

    .line 52
    :cond_0
    sget-object v0, Lde/greenrobot/event/util/ErrorDialogManager;->factory:Lde/greenrobot/event/util/ErrorDialogFragmentFactory;

    iget-object v0, v0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;

    invoke-virtual {v0}, Lde/greenrobot/event/util/ErrorDialogConfig;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iput-object v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;->eventBus:Lde/greenrobot/event/EventBus;

    .line 53
    iget-object v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    goto :goto_0
.end method
