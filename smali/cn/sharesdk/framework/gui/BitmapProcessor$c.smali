.class Lcn/sharesdk/framework/gui/BitmapProcessor$c;
.super Ljava/io/FilterInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/framework/gui/BitmapProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field a:Ljava/io/InputStream;


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcn/sharesdk/framework/gui/BitmapProcessor$c;->a:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public skip(J)J
    .locals 7

    const-wide/16 v2, 0x0

    move-wide v0, v2

    :goto_0
    cmp-long v4, v0, p1

    if-gez v4, :cond_0

    iget-object v4, p0, Lcn/sharesdk/framework/gui/BitmapProcessor$c;->a:Ljava/io/InputStream;

    sub-long v5, p1, v0

    invoke-virtual {v4, v5, v6}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_1

    :cond_0
    return-wide v0

    :cond_1
    add-long/2addr v0, v4

    goto :goto_0
.end method
