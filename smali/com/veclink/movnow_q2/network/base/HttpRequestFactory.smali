.class public Lcom/veclink/movnow_q2/network/base/HttpRequestFactory;
.super Ljava/lang/Object;
.source "HttpRequestFactory.java"


# static fields
.field private static clientVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/loopj/android/http/AsyncHttpClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/veclink/movnow_q2/network/base/HttpRequestFactory;->clientVector:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClient()Lcom/loopj/android/http/AsyncHttpClient;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 21
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    return-object v0
.end method

.method public static retrieveAll(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/veclink/movnow_q2/network/base/HttpRequestFactory;->clientVector:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 37
    sget-object v2, Lcom/veclink/movnow_q2/network/base/HttpRequestFactory;->clientVector:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    check-cast v0, Lcom/loopj/android/http/AsyncHttpClient;

    .line 38
    .restart local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lcom/loopj/android/http/AsyncHttpClient;->cancelRequests(Landroid/content/Context;Z)V

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    :cond_0
    sget-object v2, Lcom/veclink/movnow_q2/network/base/HttpRequestFactory;->clientVector:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 41
    return-void
.end method

.method public static retrieveClient(Landroid/content/Context;Lcom/loopj/android/http/AsyncHttpClient;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "client"    # Lcom/loopj/android/http/AsyncHttpClient;

    .prologue
    .line 25
    if-nez p1, :cond_1

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    sget-object v0, Lcom/veclink/movnow_q2/network/base/HttpRequestFactory;->clientVector:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/loopj/android/http/AsyncHttpClient;->cancelRequests(Landroid/content/Context;Z)V

    .line 30
    sget-object v0, Lcom/veclink/movnow_q2/network/base/HttpRequestFactory;->clientVector:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
