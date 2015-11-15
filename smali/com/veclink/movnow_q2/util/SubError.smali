.class public Lcom/veclink/movnow_q2/util/SubError;
.super Ljava/lang/Object;
.source "SubError.java"


# static fields
.field public static final ACCOUNT_LOCKED:Ljava/lang/String; = "isv.user-login-service-error:ACCOUNT_LOCKED"

.field public static final EMAIL_HAS_NOT_REGIGTERED:Ljava/lang/String; = "isv.user-resetpasswordbyemail-service-error:EMAIL_DOES_NOT_EXIST"

.field public static final EMAIL_IS_USED:Ljava/lang/String; = "isv.user-registerbyemail-service-error:EMAIL_IS_USED"

.field public static final INACTIVE_ACCOUNT:Ljava/lang/String; = "isv.user-login-service-error:INACTIVE_ACCOUNT"

.field public static final INVILAD_USERNAME_OR_PASSWORD:Ljava/lang/String; = "isv.user-login-service-error:INVLIAD_USERNAME_OR_PASSWORD"

.field public static final MAIL_SEND_FAILED:Ljava/lang/String; = "isv.user-registerbyemail-service-error:MAIL_SEND_FAILED"

.field public static final REGISTRATION_FAILED:Ljava/lang/String; = "isv.user-registerbyemail-service-error:REGISTRATION_FAILED"


# instance fields
.field private code:Ljava/lang/String;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/veclink/movnow_q2/util/SubError;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/veclink/movnow_q2/util/SubError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/veclink/movnow_q2/util/SubError;->code:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/veclink/movnow_q2/util/SubError;->message:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubErrors [code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/movnow_q2/util/SubError;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/movnow_q2/util/SubError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
