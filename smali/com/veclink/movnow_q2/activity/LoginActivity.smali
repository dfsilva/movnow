.class public Lcom/veclink/movnow_q2/activity/LoginActivity;
.super Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static HISTORY_PREF:Ljava/lang/String;


# instance fields
.field private actvAccount:Landroid/widget/AutoCompleteTextView;

.field private btnLogin:Landroid/widget/Button;

.field private btnRegister:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private etPwd:Landroid/widget/EditText;

.field private handlerLogin:Landroid/os/Handler;

.field private mProgressDialog:Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;

.field public m_AsyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

.field private strSaveAccount:Ljava/lang/String;

.field private strSavePwd:Ljava/lang/String;

.field private titleBarRelativeLayoutSettings:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

.field private toast:Landroid/widget/Toast;

.field private transport_layout:Landroid/view/View;

.field private tvForgetPwd:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "Q2_login_history"

    sput-object v0, Lcom/veclink/movnow_q2/activity/LoginActivity;->HISTORY_PREF:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->strSaveAccount:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->strSavePwd:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/activity/LoginActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/LoginActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->transport_layout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/veclink/movnow_q2/activity/LoginActivity;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/LoginActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/activity/LoginActivity;->getLoginUserHistory(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/veclink/movnow_q2/activity/LoginActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/LoginActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->actvAccount:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/veclink/movnow_q2/activity/LoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/LoginActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/veclink/movnow_q2/activity/LoginActivity;->queryPasswordHistory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/veclink/movnow_q2/activity/LoginActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/activity/LoginActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->etPwd:Landroid/widget/EditText;

    return-object v0
.end method

.method private finishProgressDialog()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->getProgressDialogIsShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->getProgressDialog()Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;->dismiss()V

    .line 84
    :cond_0
    return-void
.end method

.method private getLoginUserHistory(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    sget-object v9, Lcom/veclink/movnow_q2/activity/LoginActivity;->HISTORY_PREF:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/veclink/movnow_q2/activity/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 343
    .local v5, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 344
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v4, "matchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 359
    :cond_0
    return-object v4

    .line 350
    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 352
    .local v6, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v6, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 354
    .local v8, "userArray":[Ljava/lang/String;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v7, v0, v1

    .line 355
    .local v7, "user":Ljava/lang/String;
    invoke-virtual {v7, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 356
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getProgressDialog()Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->mProgressDialog:Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;

    invoke-direct {v0, p0}, Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;->createDialog()Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->mProgressDialog:Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->mProgressDialog:Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;

    return-object v0
.end method

.method private getProgressDialogIsShowing()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->mProgressDialog:Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->mProgressDialog:Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method private haveNotSumitUserInfoDataBack()V
    .locals 4

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "firstLogin"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 114
    .local v0, "firstLogin":Z
    if-eqz v0, :cond_0

    .line 115
    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->logOut(Landroid/content/Context;)V

    .line 117
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 120
    const v0, 0x7f060032

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->titleBarRelativeLayoutSettings:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    .line 121
    const v0, 0x7f060038

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->actvAccount:Landroid/widget/AutoCompleteTextView;

    .line 122
    const v0, 0x7f06003c

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->etPwd:Landroid/widget/EditText;

    .line 123
    const v0, 0x7f060040

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->tvForgetPwd:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->tvForgetPwd:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFlags(I)V

    .line 125
    const v0, 0x7f060041

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->btnRegister:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->btnRegister:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFlags(I)V

    .line 127
    const v0, 0x7f06003e

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->btnLogin:Landroid/widget/Button;

    .line 128
    const v0, 0x7f060035

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->transport_layout:Landroid/view/View;

    .line 129
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->actvAccount:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 130
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->tvForgetPwd:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->btnRegister:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->btnLogin:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->titleBarRelativeLayoutSettings:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    new-instance v1, Lcom/veclink/movnow_q2/activity/LoginActivity$1;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/LoginActivity$1;-><init>(Lcom/veclink/movnow_q2/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setLefttButtonListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->etPwd:Landroid/widget/EditText;

    new-instance v1, Lcom/veclink/movnow_q2/activity/LoginActivity$2;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/LoginActivity$2;-><init>(Lcom/veclink/movnow_q2/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 159
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->actvAccount:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/veclink/movnow_q2/activity/LoginActivity$3;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/LoginActivity$3;-><init>(Lcom/veclink/movnow_q2/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 172
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->actvAccount:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/veclink/movnow_q2/activity/LoginActivity$4;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/activity/LoginActivity$4;-><init>(Lcom/veclink/movnow_q2/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 199
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->titleBarRelativeLayoutSettings:Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/veclink/movnow_q2/view/TitleBarRelativeLayout;->setRightVisisble(I)V

    .line 200
    return-void
.end method

.method private isPassWord(Ljava/lang/String;)Z
    .locals 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 391
    const-string v2, "^[0-9a-zA-Z]{6,16}"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 392
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 393
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method private onLoginFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 288
    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    const v0, 0x7f0c009b

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->showToast(Ljava/lang/String;)V

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    const-string v0, "isv.user-login-service-error:INVLIAD_USERNAME_OR_PASSWORD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    const v0, 0x7f0c009c

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_2
    const-string v0, "isv.user-login-service-error:INACTIVE_ACCOUNT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    const-string v0, "isv.user-login-service-error:ACCOUNT_LOCKED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 300
    const v0, 0x7f0c009e

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :cond_3
    const v0, 0x7f0c009a

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private queryPasswordHistory(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 369
    sget-object v3, Lcom/veclink/movnow_q2/activity/LoginActivity;->HISTORY_PREF:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/veclink/movnow_q2/activity/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 371
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 372
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v0, :cond_0

    .line 373
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 374
    .local v2, "pwd":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 378
    .end local v2    # "pwd":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method private saveLoginHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 325
    sget-object v2, Lcom/veclink/movnow_q2/activity/LoginActivity;->HISTORY_PREF:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/veclink/movnow_q2/activity/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 327
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 328
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 329
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 332
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "toastString"    # Ljava/lang/String;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->handlerLogin:Landroid/os/Handler;

    new-instance v1, Lcom/veclink/movnow_q2/activity/LoginActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/veclink/movnow_q2/activity/LoginActivity$5;-><init>(Lcom/veclink/movnow_q2/activity/LoginActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 314
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 245
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 207
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/veclink/movnow_q2/activity/RegisterActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .local v1, "regisiterIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 213
    .end local v1    # "regisiterIntent":Landroid/content/Intent;
    :pswitch_2
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->actvAccount:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->strSaveAccount:Ljava/lang/String;

    .line 214
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->strSavePwd:Ljava/lang/String;

    .line 215
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->strSaveAccount:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    const v3, 0x7f0c0097

    invoke-virtual {p0, v3}, Lcom/veclink/movnow_q2/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/veclink/movnow_q2/activity/LoginActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_1
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->strSavePwd:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 218
    const v3, 0x7f0c0098

    invoke-virtual {p0, v3}, Lcom/veclink/movnow_q2/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/veclink/movnow_q2/activity/LoginActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_2
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->strSaveAccount:Ljava/lang/String;

    invoke-static {v3}, Lcom/veclink/movnow_q2/util/EmailTool;->isEmail(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 220
    const v3, 0x7f0c0099

    invoke-virtual {p0, v3}, Lcom/veclink/movnow_q2/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/veclink/movnow_q2/activity/LoginActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_3
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Lcom/veclink/healthy/business/http/pojo/LoginResponse;

    aput-object v5, v4, v6

    invoke-virtual {v3, p0, v4}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 223
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    const-class v4, Lcom/veclink/healthy/business/http/pojo/LoginResponse;

    new-array v5, v6, [Ljava/lang/Class;

    invoke-virtual {v3, p0, v4, v5}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 224
    new-instance v2, Lcom/veclink/healthy/business/http/session/HealthyLoginSession;

    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->strSaveAccount:Ljava/lang/String;

    iget-object v5, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->strSavePwd:Ljava/lang/String;

    invoke-static {v5}, Lcom/veclink/movnow_q2/network/base/Encodes;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/veclink/healthy/business/http/session/HealthyLoginSession;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .local v2, "session":Lcom/veclink/healthy/business/http/session/HealthyLoginSession;
    invoke-static {p0, v2}, Lcom/veclink/movnow_q2/network/base/SimpleHttpSchedualer;->ansycSchedual(Landroid/content/Context;Lcom/veclink/movnow_q2/network/base/BaseSession;)Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v3

    iput-object v3, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->m_AsyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    .line 228
    iget-object v3, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->m_AsyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    if-eqz v3, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->getProgressDialog()Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/veclink/movnow_q2/view/CustomWaitProgressDialog;->show()V

    goto/16 :goto_0

    .line 236
    .end local v2    # "session":Lcom/veclink/healthy/business/http/session/HealthyLoginSession;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 237
    .local v0, "intentForgetPwd":Landroid/content/Intent;
    const-class v3, Lcom/veclink/movnow_q2/activity/ResetPasswordActivity;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x7f06003e
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->setContentView(I)V

    .line 97
    iput-object p0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->context:Landroid/content/Context;

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->handlerLogin:Landroid/os/Handler;

    .line 99
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->initView()V

    .line 102
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 383
    invoke-super {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onDestroy()V

    .line 384
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->m_AsyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->m_AsyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->cancelRequests(Landroid/content/Context;Z)V

    .line 387
    :cond_0
    return-void
.end method

.method public onEvent(Lcom/veclink/healthy/business/http/pojo/LoginResponse;)V
    .locals 5
    .param p1, "response"    # Lcom/veclink/healthy/business/http/pojo/LoginResponse;

    .prologue
    const/4 v4, 0x0

    .line 256
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/veclink/healthy/business/http/pojo/LoginResponse;

    aput-object v3, v2, v4

    invoke-virtual {v1, p0, v2}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 257
    invoke-direct {p0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->finishProgressDialog()V

    .line 258
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->m_AsyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    .line 259
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->getError()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->strSaveAccount:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->strSavePwd:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->strSaveAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->strSavePwd:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/veclink/movnow_q2/activity/LoginActivity;->saveLoginHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_0
    invoke-static {p0, p1}, Lcom/veclink/healthy/account/HealthyAccountHolder;->saveLoginResponse(Landroid/content/Context;Lcom/veclink/healthy/business/http/pojo/LoginResponse;)V

    .line 264
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/veclink/healthy/database/op/HealthyDBOperate;->updateDataUserIdIfUserIdIsEmty(Landroid/content/Context;)V

    .line 265
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 266
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 267
    const-class v1, Lcom/veclink/movnow_q2/activity/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 268
    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 269
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->finish()V

    .line 280
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 272
    :cond_1
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->getSubErrors()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    .line 273
    const v1, 0x7f0c009a

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/veclink/movnow_q2/activity/LoginActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :cond_2
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->getSubErrors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/veclink/healthy/business/http/pojo/SubError;

    invoke-virtual {v1}, Lcom/veclink/healthy/business/http/pojo/SubError;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/veclink/movnow_q2/activity/LoginActivity;->onLoginFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "syncInternetDataResponse"    # Ljava/lang/String;

    .prologue
    .line 418
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 398
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 400
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;

    .line 402
    .local v0, "application":Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;
    invoke-virtual {v0, v2}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->setHasSyncSleepData(Z)V

    .line 403
    invoke-virtual {v0, v2}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->setHasSyncStepData(Z)V

    .line 404
    invoke-virtual {v0}, Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;->getActivityManager()Lcom/veclink/movnow_q2/util/MyActivityManager;

    move-result-object v1

    const-class v2, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/util/MyActivityManager;->popAllActivityExceptOne(Ljava/lang/Class;)V

    .line 408
    .end local v0    # "application":Lcom/veclink/movnow_q2/activity/MovnowTwoApplication;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/veclink/movnow_q2/activity/HealthyBaseActivity;->onResume()V

    .line 107
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->isNeedLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->finish()V

    .line 110
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 249
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/veclink/movnow_q2/activity/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 250
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->actvAccount:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 251
    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/LoginActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 252
    return v2
.end method
