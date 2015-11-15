.class public Lcom/veclink/healthy/business/http/session/UploadBraceletDataSession;
.super Lcom/veclink/healthy/business/http/session/HealthyCommentSession;
.source "UploadBraceletDataSession.java"


# static fields
.field private static final serialVersionUID:J = 0x48c03b9903bc4f42L


# instance fields
.field private dataType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 19
    const-class v0, Lcom/veclink/healthy/business/http/pojo/UploadBraceletResponse;

    invoke-direct {p0, v0, p1}, Lcom/veclink/healthy/business/http/session/HealthyCommentSession;-><init>(Ljava/lang/Class;Landroid/content/Context;)V

    .line 17
    const-string v0, "1"

    iput-object v0, p0, Lcom/veclink/healthy/business/http/session/UploadBraceletDataSession;->dataType:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getRequestParams()Lcom/loopj/android/http/RequestParams;
    .locals 5

    .prologue
    .line 30
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 31
    .local v1, "requeparams":Lcom/loopj/android/http/RequestParams;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    .local v0, "paramsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "data_type"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/UploadBraceletDataSession;->dataType:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v3, "method"

    const-string v4, "bracelet.receivebraceletdata"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p0}, Lcom/veclink/healthy/business/http/session/UploadBraceletDataSession;->createTimeStamp()Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "time":Ljava/lang/String;
    const-string v3, "method"

    const-string v4, "bracelet.receivebraceletdata"

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v3, "sign"

    invoke-static {v0, v2}, Lcom/veclink/healthy/business/http/server/ServerUrl;->getPrimarySign(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/veclink/healthy/business/http/server/ServerUrl;->getSHASignValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v3, "timestamp"

    invoke-virtual {v1, v3, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v3, "app_key"

    const-string v4, "q2_android"

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v3, "v"

    const-string v4, "2.0.0"

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v3, "data_type"

    iget-object v4, p0, Lcom/veclink/healthy/business/http/session/UploadBraceletDataSession;->dataType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-object v1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/veclink/healthy/business/http/server/ServerUrl;->UPLOAD_BRACELET_DATA_URL:Ljava/lang/String;

    return-object v0
.end method
