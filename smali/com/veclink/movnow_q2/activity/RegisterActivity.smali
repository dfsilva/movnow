.class public Lcom/veclink/movnow_q2/activity/RegisterActivity;
.super Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final NOT_REGISTRE:I = 0x5

.field private static final REGISTRE:I = 0x2

.field public static final SCENSE:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String; = "register"


# instance fields
.field private password:Ljava/lang/String;

.field private pwd_view:Landroid/widget/EditText;

.field private titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

.field private toast:Landroid/widget/Toast;

.field private tvAgreenmentHtml:Landroid/widget/TextView;

.field private username:Ljava/lang/String;

.field private username_view:Landroid/widget/AutoCompleteTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 70
    const v0, 0x7f060023

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 71
    const v0, 0x7f060057

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->tvAgreenmentHtml:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f060054

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->username_view:Landroid/widget/AutoCompleteTextView;

    .line 73
    const v0, 0x7f060056

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->pwd_view:Landroid/widget/EditText;

    .line 74
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->tvAgreenmentHtml:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->tvAgreenmentHtml:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFlags(I)V

    .line 76
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f0c008b

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightVisisble(I)V

    .line 78
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f020168

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightBackground(I)V

    .line 79
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f0c015e

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightText(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightButtonListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "iwalk plus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->tvAgreenmentHtml:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method public isPassWord(Ljava/lang/String;)Z
    .locals 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 198
    const-string v2, "^[0-9a-zA-Z]{6,16}"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 199
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 201
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v4, 0x7f0c0135

    const/4 v5, 0x0

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 139
    :goto_0
    return-void

    .line 98
    :sswitch_0
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->username_view:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->username:Ljava/lang/String;

    .line 99
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->pwd_view:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->password:Ljava/lang/String;

    .line 102
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->password:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->toast:Landroid/widget/Toast;

    const v3, 0x7f0c0098

    invoke-virtual {p0, v3}, Lcom/veclink/movnow_q2/activity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/veclink/movnow_q2/util/StringUtil;->toast(Landroid/content/Context;Landroid/widget/Toast;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->toast:Landroid/widget/Toast;

    goto :goto_0

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_1

    .line 106
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {p0, v4}, Lcom/veclink/movnow_q2/activity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/veclink/movnow_q2/util/StringUtil;->toast(Landroid/content/Context;Landroid/widget/Toast;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->toast:Landroid/widget/Toast;

    goto :goto_0

    .line 109
    :cond_1
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->username:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->username:Ljava/lang/String;

    invoke-static {v2}, Lcom/veclink/movnow_q2/util/EmailTool;->isEmail(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 110
    const v2, 0x7f0c0136

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->username:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v2, ""

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 114
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->password:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/veclink/movnow_q2/activity/RegisterActivity;->isPassWord(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lcom/veclink/healthy/business/http/pojo/RegisterbyemailResponse;

    aput-object v4, v3, v5

    invoke-virtual {v2, p0, v3}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 116
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    const-class v3, Lcom/veclink/healthy/business/http/pojo/RegisterbyemailResponse;

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v2, p0, v3, v4}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 117
    new-instance v0, Lcom/veclink/healthy/business/http/session/HealthyRegisterSession;

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->username:Ljava/lang/String;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->password:Ljava/lang/String;

    invoke-static {v3}, Lcom/veclink/movnow_q2/network/base/Encodes;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/veclink/healthy/business/http/session/HealthyRegisterSession;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .local v0, "healthyRegisterSession":Lcom/veclink/healthy/business/http/session/HealthyRegisterSession;
    invoke-static {p0, v0}, Lcom/veclink/movnow_q2/network/base/SimpleHttpSchedualer;->ansycSchedual(Landroid/content/Context;Lcom/veclink/movnow_q2/network/base/BaseSession;)Lcom/loopj/android/http/AsyncHttpClient;

    .line 119
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->username:Ljava/lang/String;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->password:Ljava/lang/String;

    invoke-static {v3}, Lcom/veclink/movnow_q2/network/base/Encodes;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/veclink/healthy/account/HealthyAccountHolder;->saveUserNameAndPassWord(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    .end local v0    # "healthyRegisterSession":Lcom/veclink/healthy/business/http/session/HealthyRegisterSession;
    :cond_3
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {p0, v4}, Lcom/veclink/movnow_q2/activity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/veclink/movnow_q2/util/StringUtil;->toast(Landroid/content/Context;Landroid/widget/Toast;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->toast:Landroid/widget/Toast;

    goto/16 :goto_0

    .line 125
    :cond_4
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->toast:Landroid/widget/Toast;

    const v3, 0x7f0c0097

    invoke-virtual {p0, v3}, Lcom/veclink/movnow_q2/activity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/veclink/movnow_q2/util/StringUtil;->toast(Landroid/content/Context;Landroid/widget/Toast;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->toast:Landroid/widget/Toast;

    goto/16 :goto_0

    .line 132
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 133
    .local v1, "intent1":Landroid/content/Intent;
    const-class v2, Lcom/veclink/movnow_q2/activity/UserAgreementActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 96
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f060057 -> :sswitch_1
        0x7f0601cb -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/RegisterActivity;->setContentView(I)V

    .line 66
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/RegisterActivity;->initView()V

    .line 67
    return-void
.end method

.method public onEvent(Lcom/veclink/healthy/business/http/pojo/LoginResponse;)V
    .locals 5
    .param p1, "response"    # Lcom/veclink/healthy/business/http/pojo/LoginResponse;

    .prologue
    const/4 v4, 0x0

    .line 142
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/veclink/healthy/business/http/pojo/LoginResponse;

    aput-object v3, v2, v4

    invoke-virtual {v1, p0, v2}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 143
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->getError()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/veclink/movnow_q2/activity/RegisiterBmiActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 146
    invoke-static {p0, p1}, Lcom/veclink/healthy/account/HealthyAccountHolder;->saveLoginResponse(Landroid/content/Context;Lcom/veclink/healthy/business/http/pojo/LoginResponse;)V

    .line 147
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/RegisterActivity;->finish()V

    .line 157
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->getSubErrors()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 150
    const v1, 0x7f0c009a

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/veclink/movnow_q2/util/ToastUtil;->showTextToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->getSubErrors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/healthy/business/http/pojo/SubError;

    invoke-virtual {v1}, Lcom/veclink/healthy/business/http/pojo/SubError;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/veclink/movnow_q2/util/ToastUtil;->showTextToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEvent(Lcom/veclink/healthy/business/http/pojo/RegisterbyemailResponse;)V
    .locals 9
    .param p1, "reponse"    # Lcom/veclink/healthy/business/http/pojo/RegisterbyemailResponse;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 160
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Lcom/veclink/healthy/business/http/pojo/RegisterbyemailResponse;

    aput-object v6, v5, v7

    invoke-virtual {v4, p0, v5}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 161
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/RegisterbyemailResponse;->getError()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "error":Ljava/lang/String;
    const-string v4, "RegisterbyemailResponse"

    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/RegisterbyemailResponse;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/RegisterbyemailResponse;->getError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Lcom/veclink/healthy/business/http/pojo/LoginResponse;

    aput-object v6, v5, v7

    invoke-virtual {v4, p0, v5}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 171
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v4

    const-class v5, Lcom/veclink/healthy/business/http/pojo/LoginResponse;

    new-array v6, v7, [Ljava/lang/Class;

    invoke-virtual {v4, p0, v5, v6}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 172
    new-instance v2, Lcom/veclink/healthy/business/http/session/HealthyLoginSession;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->username:Ljava/lang/String;

    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->password:Ljava/lang/String;

    invoke-static {v5}, Lcom/veclink/movnow_q2/network/base/Encodes;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, p0, v4, v5}, Lcom/veclink/healthy/business/http/session/HealthyLoginSession;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .local v2, "session":Lcom/veclink/healthy/business/http/session/HealthyLoginSession;
    invoke-static {p0, v2}, Lcom/veclink/movnow_q2/network/base/SimpleHttpSchedualer;->ansycSchedual(Landroid/content/Context;Lcom/veclink/movnow_q2/network/base/BaseSession;)Lcom/loopj/android/http/AsyncHttpClient;

    .line 189
    .end local v2    # "session":Lcom/veclink/healthy/business/http/session/HealthyLoginSession;
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/RegisterbyemailResponse;->getError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-1000"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 176
    const v4, 0x7f0c009a

    invoke-virtual {p0, v4}, Lcom/veclink/movnow_q2/activity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/RegisterbyemailResponse;->getSubErrors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/veclink/healthy/business/http/pojo/SubError;

    invoke-virtual {v4}, Lcom/veclink/healthy/business/http/pojo/SubError;->getCode()Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "subErrorMessage":Ljava/lang/String;
    const/4 v1, 0x0

    .line 180
    .local v1, "remind_text":Ljava/lang/String;
    const-string v4, "isv.user-registerbyemail-service-error:EMAIL_IS_USED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 181
    const v4, 0x7f0c0137

    invoke-virtual {p0, v4}, Lcom/veclink/movnow_q2/activity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-static {p0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 88
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/RegisterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 89
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->username_view:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 90
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/RegisterActivity;->pwd_view:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 91
    return v2
.end method
