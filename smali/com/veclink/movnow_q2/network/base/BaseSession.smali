.class public abstract Lcom/veclink/movnow_q2/network/base/BaseSession;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "BaseSession.java"

# interfaces
.implements Lcom/veclink/movnow_q2/network/base/BaseRequest;
.implements Ljava/io/Serializable;
.implements Lcom/veclink/movnow_q2/network/base/Taggable;


# static fields
.field public static NWT_ERROR:Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x3fe39448664b511cL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "-1000"

    sput-object v0, Lcom/veclink/movnow_q2/network/base/BaseSession;->NWT_ERROR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponseHandler()Lcom/loopj/android/http/AsyncHttpResponseHandler;
    .locals 0

    .prologue
    .line 16
    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
