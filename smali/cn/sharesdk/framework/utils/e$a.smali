.class Lcn/sharesdk/framework/utils/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/framework/utils/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    iput v0, p0, Lcn/sharesdk/framework/utils/e$a;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcn/sharesdk/framework/utils/e$a;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/sharesdk/framework/utils/e$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/utils/e$a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcn/sharesdk/framework/utils/e$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    iput-object v0, p0, Lcn/sharesdk/framework/utils/e$a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/sharesdk/framework/utils/e$a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/utils/e$a;->c:Ljava/lang/String;

    goto :goto_0
.end method
