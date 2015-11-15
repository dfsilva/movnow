.class public Lcn/sharesdk/framework/gui/BitmapProcessor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/framework/gui/BitmapProcessor$a;,
        Lcn/sharesdk/framework/gui/BitmapProcessor$BitmapCallback;,
        Lcn/sharesdk/framework/gui/BitmapProcessor$c;,
        Lcn/sharesdk/framework/gui/BitmapProcessor$d;,
        Lcn/sharesdk/framework/gui/BitmapProcessor$b;
    }
.end annotation


# static fields
.field private static a:Lcn/sharesdk/framework/gui/BitmapProcessor;


# instance fields
.field private b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcn/sharesdk/framework/gui/BitmapProcessor$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/io/File;

.field private f:[Lcn/sharesdk/framework/gui/BitmapProcessor$d;

.field private g:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcn/sharesdk/framework/gui/BitmapProcessor$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcn/sharesdk/framework/gui/BitmapProcessor$b;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/gui/BitmapProcessor;->d:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/gui/BitmapProcessor;->g:Ljava/util/Vector;

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/sharesdk/framework/gui/BitmapProcessor$d;

    iput-object v0, p0, Lcn/sharesdk/framework/gui/BitmapProcessor;->f:[Lcn/sharesdk/framework/gui/BitmapProcessor$d;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/gui/BitmapProcessor;->b:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcn/sharesdk/framework/utils/R;->getImageCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/sharesdk/framework/gui/BitmapProcessor;->e:Ljava/io/File;

    new-instance v0, Lcn/sharesdk/framework/gui/BitmapProcessor$b;

    invoke-direct {v0, p0}, Lcn/sharesdk/framework/gui/BitmapProcessor$b;-><init>(Lcn/sharesdk/framework/gui/BitmapProcessor;)V

    iput-object v0, p0, Lcn/sharesdk/framework/gui/BitmapProcessor;->h:Lcn/sharesdk/framework/gui/BitmapProcessor$b;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    const-class v1, Lcn/sharesdk/framework/gui/BitmapProcessor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/sharesdk/framework/gui/BitmapProcessor;->a:Lcn/sharesdk/framework/gui/BitmapProcessor;

    if-nez v0, :cond_0

    new-instance v0, Lcn/sharesdk/framework/gui/BitmapProcessor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/sharesdk/framework/gui/BitmapProcessor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/sharesdk/framework/gui/BitmapProcessor;->a:Lcn/sharesdk/framework/gui/BitmapProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcn/sharesdk/framework/gui/BitmapProcessor;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/sharesdk/framework/gui/BitmapProcessor;->c:Z

    return v0
.end method

.method static synthetic b(Lcn/sharesdk/framework/gui/BitmapProcessor;)[Lcn/sharesdk/framework/gui/BitmapProcessor$d;
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/framework/gui/BitmapProcessor;->f:[Lcn/sharesdk/framework/gui/BitmapProcessor$d;

    return-object v0
.end method

.method static synthetic c(Lcn/sharesdk/framework/gui/BitmapProcessor;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/framework/gui/BitmapProcessor;->d:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic d(Lcn/sharesdk/framework/gui/BitmapProcessor;)Ljava/util/WeakHashMap;
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/framework/gui/BitmapProcessor;->b:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic e(Lcn/sharesdk/framework/gui/BitmapProcessor;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/framework/gui/BitmapProcessor;->e:Ljava/io/File;

    return-object v0
.end method

.method static synthetic f(Lcn/sharesdk/framework/gui/BitmapProcessor;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/framework/gui/BitmapProcessor;->g:Ljava/util/Vector;

    return-object v0
.end method
