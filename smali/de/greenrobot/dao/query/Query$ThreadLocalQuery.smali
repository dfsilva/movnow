.class final Lde/greenrobot/dao/query/Query$ThreadLocalQuery;
.super Ljava/lang/ThreadLocal;
.source "Query.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/greenrobot/dao/query/Query;
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
        "Lde/greenrobot/dao/query/Query",
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

.field private final limitPosition:I

.field private final offsetPosition:I

.field private final sql:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V
    .locals 0
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "initialValues"    # [Ljava/lang/String;
    .param p4, "limitPosition"    # I
    .param p5, "offsetPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/AbstractDao",
            "<TT2;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lde/greenrobot/dao/query/Query$ThreadLocalQuery;, "Lde/greenrobot/dao/query/Query$ThreadLocalQuery<TT2;>;"
    .local p1, "dao":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT2;*>;"
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 45
    iput-object p1, p0, Lde/greenrobot/dao/query/Query$ThreadLocalQuery;->dao:Lde/greenrobot/dao/AbstractDao;

    .line 46
    iput-object p2, p0, Lde/greenrobot/dao/query/Query$ThreadLocalQuery;->sql:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lde/greenrobot/dao/query/Query$ThreadLocalQuery;->initialValues:[Ljava/lang/String;

    .line 48
    iput p4, p0, Lde/greenrobot/dao/query/Query$ThreadLocalQuery;->limitPosition:I

    .line 49
    iput p5, p0, Lde/greenrobot/dao/query/Query$ThreadLocalQuery;->offsetPosition:I

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;IILde/greenrobot/dao/query/Query$1;)V
    .locals 0
    .param p1, "x0"    # Lde/greenrobot/dao/AbstractDao;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # [Ljava/lang/String;
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Lde/greenrobot/dao/query/Query$1;

    .prologue
    .line 36
    .local p0, "this":Lde/greenrobot/dao/query/Query$ThreadLocalQuery;, "Lde/greenrobot/dao/query/Query$ThreadLocalQuery<TT2;>;"
    invoke-direct/range {p0 .. p5}, Lde/greenrobot/dao/query/Query$ThreadLocalQuery;-><init>(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$200(Lde/greenrobot/dao/query/Query$ThreadLocalQuery;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lde/greenrobot/dao/query/Query$ThreadLocalQuery;

    .prologue
    .line 36
    iget-object v0, p0, Lde/greenrobot/dao/query/Query$ThreadLocalQuery;->initialValues:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected initialValue()Lde/greenrobot/dao/query/Query;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/query/Query",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lde/greenrobot/dao/query/Query$ThreadLocalQuery;, "Lde/greenrobot/dao/query/Query$ThreadLocalQuery<TT2;>;"
    new-instance v0, Lde/greenrobot/dao/query/Query;

    iget-object v2, p0, Lde/greenrobot/dao/query/Query$ThreadLocalQuery;->dao:Lde/greenrobot/dao/AbstractDao;

    iget-object v3, p0, Lde/greenrobot/dao/query/Query$ThreadLocalQuery;->sql:Ljava/lang/String;

    iget-object v1, p0, Lde/greenrobot/dao/query/Query$ThreadLocalQuery;->initialValues:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iget v5, p0, Lde/greenrobot/dao/query/Query$ThreadLocalQuery;->limitPosition:I

    iget v6, p0, Lde/greenrobot/dao/query/Query$ThreadLocalQuery;->offsetPosition:I

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lde/greenrobot/dao/query/Query;-><init>(Lde/greenrobot/dao/query/Query$ThreadLocalQuery;Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;IILde/greenrobot/dao/query/Query$1;)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    .local p0, "this":Lde/greenrobot/dao/query/Query$ThreadLocalQuery;, "Lde/greenrobot/dao/query/Query$ThreadLocalQuery<TT2;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/Query$ThreadLocalQuery;->initialValue()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    return-object v0
.end method
