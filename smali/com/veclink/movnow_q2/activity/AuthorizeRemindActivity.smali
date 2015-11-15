.class public Lcom/veclink/movnow_q2/activity/AuthorizeRemindActivity;
.super Lcn/sharesdk/framework/authorize/AuthorizeAdapter;
.source "AuthorizeRemindActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 15
    invoke-super {p0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onCreate()V

    .line 16
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/AuthorizeRemindActivity;->getTitleLayout()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/TitleLayout;->getTvTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/AuthorizeRemindActivity;->getBodyView()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 18
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/AuthorizeRemindActivity;->getWebBody()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 19
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/AuthorizeRemindActivity;->showRmindText()V

    .line 20
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/AuthorizeRemindActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 21
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Lcn/sharesdk/framework/authorize/AuthorizeAdapter;->onDestroy()V

    .line 26
    return-void
.end method

.method public showRmindText()V
    .locals 3

    .prologue
    .line 29
    const-string v0, ""

    .line 30
    .local v0, "remind_text":Ljava/lang/String;
    sget v1, Lcom/veclink/healthy/view/ShareDialog;->SHARETYPE:I

    packed-switch v1, :pswitch_data_0

    .line 47
    :goto_0
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/AuthorizeRemindActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 48
    return-void

    .line 32
    :pswitch_0
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/AuthorizeRemindActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c01b6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 33
    goto :goto_0

    .line 36
    :pswitch_1
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/AuthorizeRemindActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c01b7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    goto :goto_0

    .line 40
    :pswitch_2
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/AuthorizeRemindActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c017a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    goto :goto_0

    .line 44
    :pswitch_3
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/AuthorizeRemindActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c017b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
