.class public Lcom/veclink/healthy/account/HealthyAccountHolder;
.super Ljava/lang/Object;
.source "HealthyAccountHolder.java"


# static fields
.field public static final ACCOUNT_FILE_NAME:Ljava/lang/String; = "account_file"

.field public static final KEY_AVATAR:Ljava/lang/String; = "avatar"

.field public static final KEY_BIRTHDAY:Ljava/lang/String; = "birthday"

.field public static final KEY_CALL_REMIND_TIME:Ljava/lang/String; = "call_remind_time"

.field public static final KEY_CITYID:Ljava/lang/String; = "cityId"

.field public static final KEY_DISTRICTID:Ljava/lang/String; = "districtId"

.field public static final KEY_EMAIL:Ljava/lang/String; = "email"

.field public static final KEY_HEIGHT:Ljava/lang/String; = "height"

.field public static final KEY_LAST_LOGIN_TIME:Ljava/lang/String; = "last_login_time"

.field public static final KEY_LAST_SYNC_TIME:Ljava/lang/String; = "last_sync_time"

.field public static final KEY_NICK_NAME:Ljava/lang/String; = "nickName"

.field public static final KEY_PASSWORD:Ljava/lang/String; = "password"

.field public static final KEY_PROVID:Ljava/lang/String; = "proVId"

.field public static final KEY_REMIND_UPDATE_FIREWARETIME:Ljava/lang/String; = "remind_update_fireware_time"

.field public static final KEY_SEESIONDID:Ljava/lang/String; = "sessionId"

.field public static final KEY_SEX:Ljava/lang/String; = "sex"

.field public static final KEY_USERID:Ljava/lang/String; = "userId"

.field public static final KEY_USERNAME:Ljava/lang/String; = "username"

.field public static final KEY_USERR_PIC:Ljava/lang/String; = "userPic"

.field public static final KEY_WEIGHT:Ljava/lang/String; = "weight"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBirthday(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 168
    const-string v2, "account_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 169
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "birthday"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "birthday":Ljava/lang/String;
    return-object v0
.end method

.method public static getCallRemindTime(Landroid/content/Context;)I
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 245
    const-string v2, "account_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 246
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "call_remind_time"

    const/16 v3, 0xf

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 247
    .local v1, "times":I
    return v1
.end method

.method public static getEmail(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 131
    const-string v2, "account_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 132
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "email"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "email":Ljava/lang/String;
    return-object v0
.end method

.method public static getNickName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 155
    const-string v2, "account_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 156
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "nickName"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "nickName":Ljava/lang/String;
    return-object v0
.end method

.method public static getPortrait(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 234
    const-string v2, "account_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 235
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v2, ""

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "strUrl":Ljava/lang/String;
    return-object v1
.end method

.method public static getSessionId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 111
    const-string v2, "account_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 112
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "sessionId"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "sessionId":Ljava/lang/String;
    return-object v1
.end method

.method public static getSex(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 136
    const-string v2, "account_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 137
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "sex"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "sex":Ljava/lang/String;
    return-object v1
.end method

.method public static getUserIconUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 174
    const-string v1, "account_file"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 175
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "avatar"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 125
    const-string v2, "account_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 126
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "userId"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "userid":Ljava/lang/String;
    return-object v1
.end method

.method public static getUserName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 216
    const-string v2, "account_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 217
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "username"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "version":Ljava/lang/String;
    return-object v1
.end method

.method public static getUserPic(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 143
    const-string v2, "account_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 144
    .local v0, "preferences":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userPic_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "userPic":Ljava/lang/String;
    return-object v1
.end method

.method public static isNeedLogin(Landroid/content/Context;)Z
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 101
    const/4 v1, 0x1

    .line 102
    .local v1, "result":Z
    const-string v3, "account_file"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 103
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "sessionId"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "sessionId":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 105
    const/4 v1, 0x0

    .line 107
    :cond_0
    return v1
.end method

.method public static isNeedShowUpdateFirewareDialog(Landroid/content/Context;)Z
    .locals 10
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 274
    const-string v6, "account_file"

    invoke-virtual {p0, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 275
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v6, "remind_update_fireware_time"

    const-wide/16 v7, 0x0

    invoke-interface {v2, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 276
    .local v3, "times":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 277
    .local v0, "nowTime":J
    sub-long v6, v0, v3

    const-wide/32 v8, 0x5265c00

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    const/4 v5, 0x1

    .line 278
    :cond_0
    return v5
.end method

.method public static logOut(Landroid/content/Context;)V
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 186
    const-string v3, "account_file"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 187
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 188
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, ""

    .line 189
    .local v1, "empty":Ljava/lang/String;
    const-string v3, "userId"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 190
    const-string v3, "username"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    const-string v3, "email"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 192
    const-string v3, "sessionId"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 193
    const-string v3, "password"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 194
    const-string v3, "last_sync_time"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 195
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 197
    invoke-static {p0, v1}, Lcom/veclink/hw/bleservice/util/Keeper;->setBindDeviceName(Landroid/content/Context;Ljava/lang/String;)V

    .line 199
    invoke-static {p0, v1}, Lcom/veclink/hw/bleservice/util/Keeper;->setDeviceRomVersion(Landroid/content/Context;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public static saveLoginResponse(Landroid/content/Context;Lcom/veclink/healthy/business/http/pojo/LoginResponse;)V
    .locals 14
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "response"    # Lcom/veclink/healthy/business/http/pojo/LoginResponse;

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x6

    const/4 v11, 0x4

    const/4 v10, 0x0

    .line 57
    const-string v6, "account_file"

    invoke-virtual {p0, v6, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 58
    .local v4, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 59
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "userId"

    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 60
    const-string v6, "username"

    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->getUsername()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    const-string v6, "email"

    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->getEmail()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 62
    const-string v6, "sessionId"

    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->getSessionId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    const-string v6, "sex"

    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->getSex()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    const-string v7, "nickName"

    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->getNickName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->getEmail()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->getEmail()Ljava/lang/String;

    move-result-object v8

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    const-string v6, "birthday"

    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->getBirthday()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 66
    const-string v6, "proVId"

    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->getProvId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    const-string v6, "cityId"

    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->getCityId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    const-string v6, "districtId"

    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->getDistrict_id()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 69
    const-string v6, "avatar"

    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->getAvatar()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    const-string v6, "last_login_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-interface {v2, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 71
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    const-string v6, "personal_weight"

    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->getWeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    const-string v6, "personal_height"

    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    const-string v6, "pre_Sex"

    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->getSex()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->getBirthday()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "birthday":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v13, :cond_0

    .line 77
    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 78
    .local v5, "year":I
    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 79
    .local v3, "month":I
    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 80
    .local v1, "day":I
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save birthday:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    const-string v6, "personal_year"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    const-string v6, "personal_month"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    const-string v6, "personal_day"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/veclink/movnow_q2/util/SharedPreferencesUtils;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    .end local v1    # "day":I
    .end local v3    # "month":I
    .end local v5    # "year":I
    :cond_0
    return-void

    .line 64
    .end local v0    # "birthday":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/veclink/healthy/business/http/pojo/LoginResponse;->getNickName()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public static saveUserNameAndPassWord(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string v2, "account_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 92
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "username"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    const-string v2, "password"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    const-string v2, "email"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 98
    return-void
.end method

.method public static setCallRemindTime(Landroid/content/Context;I)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "times"    # I

    .prologue
    .line 255
    const-string v2, "account_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 256
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 257
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "call_remind_time"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 258
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 259
    return-void
.end method

.method public static setNickName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 161
    const-string v2, "account_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 162
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 163
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "nickName"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 164
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 165
    return-void
.end method

.method public static setPortrait(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "pictureURL"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 208
    const-string v2, "account_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 209
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 210
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 211
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 212
    return-void
.end method

.method public static setSessionId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 118
    const-string v2, "account_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 119
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 120
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "sessionId"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 121
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 122
    return-void
.end method

.method public static setUpdateFirewareRemidTime(Landroid/content/Context;J)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "times"    # J

    .prologue
    .line 267
    const-string v2, "account_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 268
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 269
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "remind_update_fireware_time"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 270
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 271
    return-void
.end method

.method public static setUserIconUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 179
    const-string v2, "account_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 180
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 181
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "avatar"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 182
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 184
    return-void
.end method

.method public static setUserName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 221
    const-string v2, "account_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 222
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 223
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "username"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 224
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 225
    return-void
.end method

.method public static setUserPic(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "userPic"    # Ljava/lang/String;

    .prologue
    .line 149
    const-string v2, "account_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 150
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 151
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userPic_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/veclink/healthy/account/HealthyAccountHolder;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 153
    return-void
.end method

.method public static unBindDevice(Landroid/content/Context;)V
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 282
    const-string v0, ""

    .line 283
    .local v0, "empty":Ljava/lang/String;
    invoke-static {p0}, Lcom/veclink/healthy/database/op/HealthyDBSyncRecordOperate;->deleteSyncRecordByDeviceId(Landroid/content/Context;)V

    .line 284
    invoke-static {p0, v0}, Lcom/veclink/hw/bleservice/util/Keeper;->setBindDeviceMacAddress(Landroid/content/Context;Ljava/lang/String;)V

    .line 285
    invoke-static {p0, v0}, Lcom/veclink/hw/bleservice/util/Keeper;->setBindDeviceName(Landroid/content/Context;Ljava/lang/String;)V

    .line 286
    invoke-static {p0, v0}, Lcom/veclink/hw/bleservice/util/Keeper;->setDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    .line 287
    invoke-static {p0, v0}, Lcom/veclink/hw/bleservice/util/Keeper;->setDeviceRomVersion(Landroid/content/Context;Ljava/lang/String;)V

    .line 288
    invoke-static {p0, v0}, Lcom/veclink/hw/bleservice/util/Keeper;->setDeviceType(Landroid/content/Context;Ljava/lang/String;)V

    .line 289
    invoke-static {p0, v1}, Lcom/veclink/hw/bleservice/util/Keeper;->setUserHasBindBand(Landroid/content/Context;Z)V

    .line 290
    invoke-static {p0, v1}, Lcom/veclink/hw/bleservice/util/Keeper;->setChangeToOldProtocol(Landroid/content/Context;Z)V

    .line 294
    return-void
.end method
