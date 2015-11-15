.class public Lcom/veclink/healthy/business/http/server/ServerUrl;
.super Ljava/lang/Object;
.source "ServerUrl.java"


# static fields
.field public static final APP_KEY:Ljava/lang/String; = "app_key"

.field public static final APP_KEY_VALUE:Ljava/lang/String; = "q2_android"

.field public static final APP_SECRET:Ljava/lang/String; = "appSecret"

.field public static final APP_SECRET＿VALUE:Ljava/lang/String; = "wkl201102333333"

.field public static final AVATAR:Ljava/lang/String; = "avatar"

.field public static BASEURL:Ljava/lang/String; = null

.field public static final BIRTHDAY:Ljava/lang/String; = "birthday"

.field public static final BRACELET_FIRMWAREUPGRADE_METHORD:Ljava/lang/String; = "bracelet.firmwareupgrade"

.field public static final CITYID:Ljava/lang/String; = "cityId"

.field public static final DELETE_BRACELET_DATA_METHORD:Ljava/lang/String; = "bracelet.deletesportsdata"

.field public static final DEVICEID:Ljava/lang/String; = "deviceId"

.field public static final DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field public static final DISTRICTID:Ljava/lang/String; = "districtId"

.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final ENDTIME:Ljava/lang/String; = "endDate"

.field public static final FILE_UPLOAD_METHORD:Ljava/lang/String; = "file.upload"

.field public static final GET_SLEEPDATA_METHORD:Ljava/lang/String; = "bracelet.getsleepdata"

.field public static final GET_SPORTSDATA_METHORD:Ljava/lang/String; = "bracelet.getsportsdata"

.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final LOCALE:Ljava/lang/String; = "locale"

.field public static final METHORD:Ljava/lang/String; = "method"

.field public static final NEWPASSWORD:Ljava/lang/String; = "newPassword"

.field public static final NICK_NAME:Ljava/lang/String; = "nickName"

.field public static final OLDPASSWORD:Ljava/lang/String; = "oldPassword"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final PROID:Ljava/lang/String; = "proId"

.field public static final PUBLICBASEURL:Ljava/lang/String; = "http://q.movnow.com/rest"

.field public static final PUBLIC_UPLOAD_BRACELET_DATA_URL:Ljava/lang/String; = "http://dataq.movnow.com/Bracelet"

.field public static final SERVER_VERSION:Ljava/lang/String; = "v"

.field public static final SERVER_VERSION_VALUE:Ljava/lang/String; = "2.0.0"

.field public static final SESSIONID:Ljava/lang/String; = "session"

.field public static final SEX:Ljava/lang/String; = "sex"

.field public static final SIGN:Ljava/lang/String; = "sign"

.field public static final SIGNATURE:Ljava/lang/String; = "signature"

.field public static final STARTTIME:Ljava/lang/String; = "startDate"

.field public static final TESTBASEURL:Ljava/lang/String; = "http://113.108.103.150:8985/rest"

.field public static final TESTBAUSEURL2:Ljava/lang/String; = "http://192.168.0.11/router/rest"

.field public static final TEST_UPLOAD_BRACELET_DATA_URL:Ljava/lang/String; = "http://113.108.103.150:8985/Bracelet"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final UID:Ljava/lang/String; = "uid"

.field public static final UPLOADFILE_URL:Ljava/lang/String; = "http://upload.movnow.com/upload/file.do"

.field public static final UPLOAD_BRACELET_DATA_METHORD:Ljava/lang/String; = "bracelet.receivebraceletdata"

.field public static final UPLOAD_BRACELET_DATA_TYPE:Ljava/lang/String; = "data_type"

.field public static UPLOAD_BRACELET_DATA_URL:Ljava/lang/String; = null

.field public static final USERID:Ljava/lang/String; = "userId"

.field public static final USERNAME:Ljava/lang/String; = "username"

.field public static final USER_CHANGEPWD_METHORD:Ljava/lang/String; = "user.changepassword"

.field public static final USER_GETUPLOADFILE_TOKEN_METHORD:Ljava/lang/String; = "user.getuploadfiletoken"

.field public static final USER_LOGIN_METHORD:Ljava/lang/String; = "user.login"

.field public static final USER_LOGOUT_METHORD:Ljava/lang/String; = "user.logout"

.field public static final USER_RESET_PWD_BY_EMAIL_METHORD:Ljava/lang/String; = "user.resetpasswordbyemail"

.field public static final USER_RGEISTER_METHORD:Ljava/lang/String; = "user.registerbyemail"

.field public static final USER_UPDATEUSERINFO_METHORD:Ljava/lang/String; = "user.updateinfo"

.field public static final WEIGHT:Ljava/lang/String; = "weight"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "http://q.movnow.com/rest"

    sput-object v0, Lcom/veclink/healthy/business/http/server/ServerUrl;->BASEURL:Ljava/lang/String;

    .line 47
    const-string v0, "http://dataq.movnow.com/Bracelet"

    sput-object v0, Lcom/veclink/healthy/business/http/server/ServerUrl;->UPLOAD_BRACELET_DATA_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "src"    # [B

    .prologue
    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    array-length v4, p0

    if-gtz v4, :cond_1

    .line 153
    :cond_0
    const/4 v4, 0x0

    .line 163
    :goto_0
    return-object v4

    .line 155
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_3

    .line 156
    aget-byte v4, p0, v1

    and-int/lit16 v3, v4, 0xff

    .line 157
    .local v3, "v":I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "hv":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 159
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 163
    .end local v0    # "hv":Ljava/lang/String;
    .end local v3    # "v":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static getPrimarySign(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "timestamp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "paramsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v4, "resultBuilder":Ljava/lang/StringBuilder;
    const-string v7, "wkl201102333333"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v5, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 195
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 196
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 197
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 198
    .local v6, "value":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_0
    const-string v7, "v2.0.0"

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timestamp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    const-string v7, "app_keyq2_android"

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 204
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 205
    .local v2, "item":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 207
    .end local v2    # "item":Ljava/lang/String;
    :cond_1
    const-string v7, "wkl201102333333"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static getSHASignValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "arg"    # Ljava/lang/String;

    .prologue
    .line 173
    const/4 v3, 0x0

    .line 175
    .local v3, "sign":Ljava/lang/String;
    :try_start_0
    const-string v4, "SHA-1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 176
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 177
    .local v0, "digest":[B
    invoke-static {v0}, Lcom/veclink/healthy/business/http/server/ServerUrl;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 181
    .end local v0    # "digest":[B
    .end local v2    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v3

    .line 178
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getUploadDataPrimarySign(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "timestamp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "paramsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .local v4, "resultBuilder":Ljava/lang/StringBuilder;
    const-string v7, "wkl201102333333"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v5, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 222
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 223
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 224
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 225
    .local v6, "value":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timestamp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    const-string v7, "app_keyq2_android"

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 230
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 231
    .local v2, "item":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 233
    .end local v2    # "item":Ljava/lang/String;
    :cond_1
    const-string v7, "wkl201102333333"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
