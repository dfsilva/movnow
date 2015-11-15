.class public Lcom/veclink/movnow_q2/view/BaseRemindDialog;
.super Landroid/app/Dialog;
.source "BaseRemindDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private cancelListener:Landroid/view/View$OnClickListener;

.field private cancel_btn:Landroid/widget/Button;

.field private content:Ljava/lang/String;

.field private contentView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private okBtnText:Ljava/lang/String;

.field private okListener:Landroid/view/View$OnClickListener;

.field private ok_btn:Landroid/widget/Button;

.field private title:Ljava/lang/String;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const v0, 0x7f0b0016

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 25
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public getCancelListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->cancelListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getOkBtnText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->okBtnText:Ljava/lang/String;

    return-object v0
.end method

.method public getOkListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->okListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->title:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->dismiss()V

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 62
    :pswitch_0
    return-void

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x7f060078
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->setContentView(I)V

    .line 33
    const v0, 0x7f060078

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->cancel_btn:Landroid/widget/Button;

    .line 34
    const v0, 0x7f060079

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->ok_btn:Landroid/widget/Button;

    .line 35
    const v0, 0x7f060076

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->titleView:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f060077

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->contentView:Landroid/widget/TextView;

    .line 37
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->content:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->contentView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->okBtnText:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->ok_btn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->okBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 40
    :cond_2
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->cancel_btn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->cancelListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_3

    move-object v0, p0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->ok_btn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->okListener:Landroid/view/View$OnClickListener;

    if-nez v1, :cond_4

    .end local p0    # "this":Lcom/veclink/movnow_q2/view/BaseRemindDialog;
    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void

    .line 40
    .restart local p0    # "this":Lcom/veclink/movnow_q2/view/BaseRemindDialog;
    :cond_3
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->cancelListener:Landroid/view/View$OnClickListener;

    goto :goto_0

    .line 41
    :cond_4
    iget-object p0, p0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->okListener:Landroid/view/View$OnClickListener;

    goto :goto_1
.end method

.method public setCancelListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "cancelListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->cancelListener:Landroid/view/View$OnClickListener;

    .line 86
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->content:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setOkBtnText(Ljava/lang/String;)V
    .locals 0
    .param p1, "okBtnText"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->okBtnText:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setOkListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "okListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->okListener:Landroid/view/View$OnClickListener;

    .line 94
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->title:Ljava/lang/String;

    .line 70
    return-void
.end method
