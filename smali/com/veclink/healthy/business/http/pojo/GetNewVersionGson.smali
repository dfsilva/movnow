.class public Lcom/veclink/healthy/business/http/pojo/GetNewVersionGson;
.super Ljava/lang/Object;
.source "GetNewVersionGson.java"


# instance fields
.field public checkCode:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public error:Ljava/lang/String;

.field public installType:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public versionCode:Ljava/lang/String;

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/veclink/healthy/business/http/pojo/GetNewVersionGson;->error:Ljava/lang/String;

    return-object v0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/veclink/healthy/business/http/pojo/GetNewVersionGson;->error:Ljava/lang/String;

    .line 20
    return-void
.end method
