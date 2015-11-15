.class final Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;
.super Ljava/lang/ThreadLocal;
.source "DeleteQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/greenrobot/dao/query/DeleteQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThreadLocalQuery"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ThreadLocal",
        "<",
        "Lde/greenrobot/dao/query/DeleteQuery",
        "<TT2;>;>;"
    }
.end annotation


# instance fields
.field private final dao:Lde/greenrobot/dao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/greenrobot/dao/AbstractDao",
            "<TT2;*>;"
        }
    .end annotation
.end field

.field private final initialValues:[Ljava/lang/String;

.field private final sql:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "initialValues"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/AbstractDao",
            "<TT2;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;, "Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery<TT2;>;"
    .local p1, "dao":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT2;*>;"
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 38
    iput-object p1, p0, Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;->dao:Lde/greenrobot/dao/AbstractDao;

    .line 39
    iput-object p2, p0, Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;->sql:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;->initialValues:[Ljava/lang/String;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lde/greenrobot/dao/query/DeleteQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lde/greenrobot/dao/AbstractDao;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # [Ljava/lang/String;
    .param p4, "x3"    # Lde/greenrobot/dao/query/DeleteQuery$1;

    .prologue
    .line 32
    .local p0, "this":Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;, "Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery<TT2;>;"
    invoke-direct {p0, p1, p2, p3}, Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;-><init>(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;

    .prologue
    .line 32
    iget-object v0, p0, Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;->initialValues:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected initialValue()Lde/greenrobot/dao/query/DeleteQuery;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/query/DeleteQuery",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;, "Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery<TT2;>;"
    new-instance v0, Lde/greenrobot/dao/query/DeleteQuery;

    iget-object v2, p0, Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;->dao:Lde/greenrobot/dao/AbstractDao;

    iget-object v3, p0, Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;->sql:Ljava/lang/String;

    iget-object v1, p0, Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;->initialValues:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lde/greenrobot/dao/query/DeleteQuery;-><init>(Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lde/greenrobot/dao/query/DeleteQuery$1;)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;, "Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery<TT2;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/DeleteQuery$ThreadLocalQuery;->initialValue()Lde/greenrobot/dao/query/DeleteQuery;

    move-result-object v0

    return-object v0
.end method
