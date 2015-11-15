.class public abstract Lcom/veclink/bracelet/bean/BaseRemindParam;
.super Ljava/lang/Object;
.source "BaseRemindParam.java"


# static fields
.field public static final ALERTREMIND:B = 0x3t

.field public static final CLOSE_REMIND:I = 0x0

.field public static final DRINKREMIND:B = 0x1t

.field public static final OPEN_REMIND:I = 0x1

.field public static final QUERY_REMIND:I = 0x1

.field public static final SET_REMIND:I = 0x0

.field public static final SITTLINGREMIND:B = 0x2t


# instance fields
.field public openflag:I

.field protected paramArray:[B

.field public querysetflag:I

.field public remindType:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/veclink/bracelet/bean/BaseRemindParam;->openflag:I

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/veclink/bracelet/bean/BaseRemindParam;->querysetflag:I

    .line 39
    const/16 v0, 0xb

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/veclink/bracelet/bean/BaseRemindParam;->paramArray:[B

    return-void
.end method


# virtual methods
.method public abstract toByteArrayParam()[B
.end method
