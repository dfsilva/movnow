.class public Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;
.super Lcom/veclink/healthy/business/http/session/HealthyCommentSession;
.source "HealthyUpdateUserInfoSession.java"


# static fields
.field private static final serialVersionUID:J = 0x2b4d79257b3fdd26L


# instance fields
.field private sessionId:Ljava/lang/String;

.field private userInfo:Lcom/veclink/healthy/database/entity/UserInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/veclink/healthy/database/entity/UserInfo;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "userInfo"    # Lcom/veclink/healthy/database/entity/UserInfo;

    .prologue
    .line 35
    const-class v0, Lcom/veclink/healthy/business/http/pojo/UpdateUserInfoResponse;

    invoke-direct {p0, v0, p1}, Lcom/veclink/healthy/business/http/session/HealthyCommentSession;-><init>(Ljava/lang/Class;Landroid/content/Context;)V

    .line 36
    iput-object p2, p0, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;->userInfo:Lcom/veclink/healthy/database/entity/UserInfo;

    .line 37
    invoke-static {p1}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getSessionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;->sessionId:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;->uid:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getRequestParams()Lcom/loopj/android/http/RequestParams;
    .locals 5

    .prologue
    .line 48
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 49
    .local v1, "requeparams":Lcom/loopj/android/http/RequestParams;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v0, "paramsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;->userInfo:Lcom/veclink/healthy/database/entity/UserInfo;

    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/UserInfo;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 51
    const-string v3, "nickName"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;->userInfo:Lcom/veclink/healthy/database/entity/UserInfo;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/UserInfo;->getNickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v3, "nickName"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;->userInfo:Lcom/veclink/healthy/database/entity/UserInfo;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/UserInfo;->getNickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    iget-object v3, p0, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;->userInfo:Lcom/veclink/healthy/database/entity/UserInfo;

    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/UserInfo;->getSex()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 55
    const-string v3, "sex"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;->userInfo:Lcom/veclink/healthy/database/entity/UserInfo;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/UserInfo;->getSex()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v3, "sex"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;->userInfo:Lcom/veclink/healthy/database/entity/UserInfo;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/UserInfo;->getSex()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_1
    iget-object v3, p0, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;->userInfo:Lcom/veclink/healthy/database/entity/UserInfo;

    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/UserInfo;->getBirthday()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 59
    const-string v3, "birthday"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;->userInfo:Lcom/veclink/healthy/database/entity/UserInfo;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/UserInfo;->getBirthday()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v3, "birthday"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;->userInfo:Lcom/veclink/healthy/database/entity/UserInfo;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/UserInfo;->getBirthday()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_2
    iget-object v3, p0, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;->userInfo:Lcom/veclink/healthy/database/entity/UserInfo;

    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/UserInfo;->getHeight()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 63
    const-string v3, "height"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;->userInfo:Lcom/veclink/healthy/database/entity/UserInfo;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/UserInfo;->getHeight()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v3, "height"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;->userInfo:Lcom/veclink/healthy/database/entity/UserInfo;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/UserInfo;->getHeight()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_3
    iget-object v3, p0, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;->userInfo:Lcom/veclink/healthy/database/entity/UserInfo;

    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/UserInfo;->getWeight()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 67
    const-string v3, "weight"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;->userInfo:Lcom/veclink/healthy/database/entity/UserInfo;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/UserInfo;->getWeight()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v3, "weight"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;->userInfo:Lcom/veclink/healthy/database/entity/UserInfo;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/UserInfo;->getWeight()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_4
    iget-object v3, p0, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;->userInfo:Lcom/veclink/healthy/database/entity/UserInfo;

    invoke-virtual {v3}, Lcom/veclink/healthy/database/entity/UserInfo;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 71
    const-string v3, "avatar"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;->userInfo:Lcom/veclink/healthy/database/entity/UserInfo;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/UserInfo;->getAvatar()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v3, "avatar"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;->userInfo:Lcom/veclink/healthy/database/entity/UserInfo;

    invoke-virtual {v4}, Lcom/veclink/healthy/database/entity/UserInfo;->getAvatar()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_5
    iget-object v3, p0, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;->uid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 75
    const-string v3, "uid"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;->uid:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v3, "uid"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;->uid:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_6
    const-string v3, "session"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v3, "method"

    const-string v4, "user.updateinfo"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {p0}, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;->createTimeStamp()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "time":Ljava/lang/String;
    const-string v3, "method"

    const-string v4, "user.updateinfo"

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v3, "sign"

    invoke-static {v0, v2}, Lcom/veclink/healthy/business/http/server/ServerUrl;->getPrimarySign(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/veclink/healthy/business/http/server/ServerUrl;->getSHASignValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v3, "timestamp"

    invoke-virtual {v1, v3, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v3, "app_key"

    const-string v4, "q2_android"

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v3, "v"

    const-string v4, "2.0.0"

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v3, "session"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/HealthyUpdateUserInfoSession;->sessionId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-object v1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/veclink/healthy/business/http/server/ServerUrl;->BASEURL:Ljava/lang/String;

    return-object v0
.end method
