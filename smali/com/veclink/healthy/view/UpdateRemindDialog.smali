.class public Lcom/veclink/healthy/view/UpdateRemindDialog;
.super Landroid/app/Dialog;
.source "UpdateRemindDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private cancel_btn:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private ok_btn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const v0, 0x7f0b0016

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 19
    iput-object p1, p0, Lcom/veclink/healthy/view/UpdateRemindDialog;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/veclink/healthy/view/UpdateRemindDialog;->dismiss()V

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 54
    :goto_0
    :pswitch_0
    return-void

    .line 44
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/veclink/healthy/view/UpdateRemindDialog;->mContext:Landroid/content/Context;

    const-class v2, Lcom/veclink/movnow_q2/activity/FirmwareUpdateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "upgrade"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 46
    iget-object v1, p0, Lcom/veclink/healthy/view/UpdateRemindDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 47
    iget-object v1, p0, Lcom/veclink/healthy/view/UpdateRemindDialog;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x7f060078
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f030064

    invoke-virtual {p0, v0}, Lcom/veclink/healthy/view/UpdateRemindDialog;->setContentView(I)V

    .line 27
    const v0, 0x7f060078

    invoke-virtual {p0, v0}, Lcom/veclink/healthy/view/UpdateRemindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/veclink/healthy/view/UpdateRemindDialog;->cancel_btn:Landroid/widget/Button;

    .line 28
    const v0, 0x7f060079

    invoke-virtual {p0, v0}, Lcom/veclink/healthy/view/UpdateRemindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/veclink/healthy/view/UpdateRemindDialog;->ok_btn:Landroid/widget/Button;

    .line 29
    iget-object v0, p0, Lcom/veclink/healthy/view/UpdateRemindDialog;->cancel_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v0, p0, Lcom/veclink/healthy/view/UpdateRemindDialog;->ok_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method
