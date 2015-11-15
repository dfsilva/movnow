.class public Lcom/veclink/movnow_q2/activity/UserAgreementActivity;
.super Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.source "UserAgreementActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# instance fields
.field private mWebView:Landroid/webkit/WebView;

.field private titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 51
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v1, 0x7f030017

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/UserAgreementActivity;->setContentView(I)V

    .line 26
    const v1, 0x7f06006b

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/UserAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/UserAgreementActivity;->mWebView:Landroid/webkit/WebView;

    .line 27
    const v1, 0x7f060023

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/UserAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/UserAgreementActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 28
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/UserAgreementActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v2, 0x7f0c00e5

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/UserAgreementActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/UserAgreementActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightVisisble(I)V

    .line 30
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/UserAgreementActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 31
    .local v0, "wSet":Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 32
    invoke-static {}, Lcom/veclink/movnow_q2/util/LanguageUtil;->isChina()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/UserAgreementActivity;->mWebView:Landroid/webkit/WebView;

    const-string v2, "file:///android_asset/agreement.html "

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 40
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-static {}, Lcom/veclink/movnow_q2/util/LanguageUtil;->isSpanish()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/UserAgreementActivity;->mWebView:Landroid/webkit/WebView;

    const-string v2, "file:///android_asset/agreement_spanish.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/UserAgreementActivity;->mWebView:Landroid/webkit/WebView;

    const-string v2, "file:///android_asset/agreement_en.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
