.class public Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;
.super Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.source "ResetPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ResetPasswordActivity"


# instance fields
.field private email:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private pwd_view:Landroid/widget/EditText;

.field private titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

.field private username_view:Landroid/widget/AutoCompleteTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 52
    const v0, 0x7f060023

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 53
    const v0, 0x7f060054

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->username_view:Landroid/widget/AutoCompleteTextView;

    .line 54
    const v0, 0x7f060056

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->pwd_view:Landroid/widget/EditText;

    .line 55
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f0c008c

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setTitleText(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightVisisble(I)V

    .line 57
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f0c015e

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightText(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    const v1, 0x7f020168

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightBackground(I)V

    .line 59
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->titleBarRelativeLayout:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightButtonListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method private isPassWord(Ljava/lang/String;)Z
    .locals 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 121
    const-string v2, "^[0-9a-zA-Z]{6,16}"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 122
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 123
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->username_view:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->email:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->pwd_view:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->password:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->email:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->email:Ljava/lang/String;

    invoke-static {v1}, Lcom/veclink/movnow_q2/util/EmailTool;->isEmail(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    const v1, 0x7f0c0136

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->email:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/veclink/healthy/business/http/pojo/RegisterbyemailResponse;

    aput-object v3, v2, v4

    invoke-virtual {v1, p0, v2}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 80
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    const-class v2, Lcom/veclink/healthy/business/http/pojo/RegisterbyemailResponse;

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v1, p0, v2, v3}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 81
    new-instance v0, Lcom/veclink/healthy/business/http/session/HealthyResetPassWordSession;

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->email:Ljava/lang/String;

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->password:Ljava/lang/String;

    invoke-static {v2}, Lcom/veclink/movnow_q2/network/base/Encodes;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/veclink/healthy/business/http/session/HealthyResetPassWordSession;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .local v0, "healthyRegisterSession":Lcom/veclink/healthy/business/http/session/HealthyResetPassWordSession;
    invoke-static {p0, v0}, Lcom/veclink/movnow_q2/network/base/SimpleHttpSchedualer;->ansycSchedual(Landroid/content/Context;Lcom/veclink/movnow_q2/network/base/BaseSession;)Lcom/loopj/android/http/AsyncHttpClient;

    goto :goto_0

    .line 84
    .end local v0    # "healthyRegisterSession":Lcom/veclink/healthy/business/http/session/HealthyResetPassWordSession;
    :cond_1
    const v1, 0x7f0c0097

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x7f0601cb
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->setContentView(I)V

    .line 47
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->initView()V

    .line 49
    return-void
.end method

.method public onEvent(Lcom/veclink/healthy/business/http/pojo/RegisterbyemailResponse;)V
    .locals 9
    .param p1, "reponse"    # Lcom/veclink/healthy/business/http/pojo/RegisterbyemailResponse;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 96
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Class;

    const-class v6, Lcom/veclink/healthy/business/http/pojo/RegisterbyemailResponse;

    aput-object v6, v5, v8

    invoke-virtual {v4, p0, v5}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 97
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/RegisterbyemailResponse;->getError()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "error":Ljava/lang/String;
    const-string v4, "ResetPasswordActivity"

    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/RegisterbyemailResponse;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/RegisterbyemailResponse;->getError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/veclink/movnow_q2/activity/ResetPasswordSuccessTipActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->startActivity(Landroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->finish()V

    .line 118
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/RegisterbyemailResponse;->getSubErrors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/veclink/healthy/business/http/pojo/SubError;

    invoke-virtual {v4}, Lcom/veclink/healthy/business/http/pojo/SubError;->getCode()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "subErrorMessage":Ljava/lang/String;
    move-object v2, v3

    .line 107
    .local v2, "remind_text":Ljava/lang/String;
    const-string v4, "isv.user-resetpasswordbyemail-service-error:EMAIL_DOES_NOT_EXIST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 108
    const v4, 0x7f0c0160

    invoke-virtual {p0, v4}, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-static {p0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 112
    :cond_1
    const v4, 0x7f0c0128

    invoke-virtual {p0, v4}, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-static {p0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 64
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 65
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;->pwd_view:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 66
    return v2
.end method
