.class public interface abstract Lcom/veclink/movnow_q2/network/base/BaseRequest;
.super Ljava/lang/Object;
.source "BaseRequest.java"


# virtual methods
.method public abstract getRequestParams()Lcom/loopj/android/http/RequestParams;
.end method

.method public abstract getResponseHandler()Lcom/loopj/android/http/AsyncHttpResponseHandler;
.end method

.method public abstract getSyncParam()Z
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract onSuccessAfter(Ljava/lang/Object;)V
.end method

.method public abstract onSuccessBefore(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract onSuccessDoMore(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end method
