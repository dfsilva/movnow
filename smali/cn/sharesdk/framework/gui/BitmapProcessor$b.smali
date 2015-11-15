.class Lcn/sharesdk/framework/gui/BitmapProcessor$b;
.super Ljava/util/Timer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/framework/gui/BitmapProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Lcn/sharesdk/framework/gui/BitmapProcessor;


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/gui/BitmapProcessor;)V
    .locals 6

    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcn/sharesdk/framework/gui/BitmapProcessor$b;->a:Lcn/sharesdk/framework/gui/BitmapProcessor;

    new-instance v1, Lcn/sharesdk/framework/gui/a;

    invoke-direct {v1, p0}, Lcn/sharesdk/framework/gui/a;-><init>(Lcn/sharesdk/framework/gui/BitmapProcessor$b;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xc8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/framework/gui/BitmapProcessor$b;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/framework/gui/BitmapProcessor$b;)Lcn/sharesdk/framework/gui/BitmapProcessor;
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/framework/gui/BitmapProcessor$b;->a:Lcn/sharesdk/framework/gui/BitmapProcessor;

    return-object v0
.end method

.method private a()V
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/sharesdk/framework/gui/BitmapProcessor$b;->a:Lcn/sharesdk/framework/gui/BitmapProcessor;

    invoke-static {v0}, Lcn/sharesdk/framework/gui/BitmapProcessor;->a(Lcn/sharesdk/framework/gui/BitmapProcessor;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcn/sharesdk/framework/gui/BitmapProcessor$b;->a:Lcn/sharesdk/framework/gui/BitmapProcessor;

    invoke-static {v2}, Lcn/sharesdk/framework/gui/BitmapProcessor;->b(Lcn/sharesdk/framework/gui/BitmapProcessor;)[Lcn/sharesdk/framework/gui/BitmapProcessor$d;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcn/sharesdk/framework/gui/BitmapProcessor$b;->a:Lcn/sharesdk/framework/gui/BitmapProcessor;

    invoke-static {v2}, Lcn/sharesdk/framework/gui/BitmapProcessor;->b(Lcn/sharesdk/framework/gui/BitmapProcessor;)[Lcn/sharesdk/framework/gui/BitmapProcessor$d;

    move-result-object v2

    aget-object v2, v2, v0

    if-nez v2, :cond_4

    iget-object v2, p0, Lcn/sharesdk/framework/gui/BitmapProcessor$b;->a:Lcn/sharesdk/framework/gui/BitmapProcessor;

    invoke-static {v2}, Lcn/sharesdk/framework/gui/BitmapProcessor;->b(Lcn/sharesdk/framework/gui/BitmapProcessor;)[Lcn/sharesdk/framework/gui/BitmapProcessor$d;

    move-result-object v2

    new-instance v5, Lcn/sharesdk/framework/gui/BitmapProcessor$d;

    iget-object v6, p0, Lcn/sharesdk/framework/gui/BitmapProcessor$b;->a:Lcn/sharesdk/framework/gui/BitmapProcessor;

    invoke-direct {v5, v6}, Lcn/sharesdk/framework/gui/BitmapProcessor$d;-><init>(Lcn/sharesdk/framework/gui/BitmapProcessor;)V

    aput-object v5, v2, v0

    iget-object v2, p0, Lcn/sharesdk/framework/gui/BitmapProcessor$b;->a:Lcn/sharesdk/framework/gui/BitmapProcessor;

    invoke-static {v2}, Lcn/sharesdk/framework/gui/BitmapProcessor;->b(Lcn/sharesdk/framework/gui/BitmapProcessor;)[Lcn/sharesdk/framework/gui/BitmapProcessor$d;

    move-result-object v2

    aget-object v2, v2, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "worker "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcn/sharesdk/framework/gui/BitmapProcessor$d;->setName(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/sharesdk/framework/gui/BitmapProcessor$b;->a:Lcn/sharesdk/framework/gui/BitmapProcessor;

    invoke-static {v2}, Lcn/sharesdk/framework/gui/BitmapProcessor;->b(Lcn/sharesdk/framework/gui/BitmapProcessor;)[Lcn/sharesdk/framework/gui/BitmapProcessor$d;

    move-result-object v2

    aget-object v5, v2, v0

    if-nez v0, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-static {v5, v2}, Lcn/sharesdk/framework/gui/BitmapProcessor$d;->a(Lcn/sharesdk/framework/gui/BitmapProcessor$d;Z)Z

    iget-object v2, p0, Lcn/sharesdk/framework/gui/BitmapProcessor$b;->a:Lcn/sharesdk/framework/gui/BitmapProcessor;

    invoke-static {v2}, Lcn/sharesdk/framework/gui/BitmapProcessor;->b(Lcn/sharesdk/framework/gui/BitmapProcessor;)[Lcn/sharesdk/framework/gui/BitmapProcessor$d;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcn/sharesdk/framework/gui/BitmapProcessor$d;->start()V

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcn/sharesdk/framework/gui/BitmapProcessor$b;->a:Lcn/sharesdk/framework/gui/BitmapProcessor;

    invoke-static {v2}, Lcn/sharesdk/framework/gui/BitmapProcessor;->b(Lcn/sharesdk/framework/gui/BitmapProcessor;)[Lcn/sharesdk/framework/gui/BitmapProcessor$d;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-static {v2}, Lcn/sharesdk/framework/gui/BitmapProcessor$d;->a(Lcn/sharesdk/framework/gui/BitmapProcessor$d;)J

    move-result-wide v5

    sub-long v5, v3, v5

    const-wide/16 v7, 0x4e20

    cmp-long v2, v5, v7

    if-lez v2, :cond_2

    iget-object v2, p0, Lcn/sharesdk/framework/gui/BitmapProcessor$b;->a:Lcn/sharesdk/framework/gui/BitmapProcessor;

    invoke-static {v2}, Lcn/sharesdk/framework/gui/BitmapProcessor;->b(Lcn/sharesdk/framework/gui/BitmapProcessor;)[Lcn/sharesdk/framework/gui/BitmapProcessor$d;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcn/sharesdk/framework/gui/BitmapProcessor$d;->interrupt()V

    iget-object v2, p0, Lcn/sharesdk/framework/gui/BitmapProcessor$b;->a:Lcn/sharesdk/framework/gui/BitmapProcessor;

    invoke-static {v2}, Lcn/sharesdk/framework/gui/BitmapProcessor;->b(Lcn/sharesdk/framework/gui/BitmapProcessor;)[Lcn/sharesdk/framework/gui/BitmapProcessor$d;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-static {v2}, Lcn/sharesdk/framework/gui/BitmapProcessor$d;->b(Lcn/sharesdk/framework/gui/BitmapProcessor$d;)Z

    move-result v2

    iget-object v5, p0, Lcn/sharesdk/framework/gui/BitmapProcessor$b;->a:Lcn/sharesdk/framework/gui/BitmapProcessor;

    invoke-static {v5}, Lcn/sharesdk/framework/gui/BitmapProcessor;->b(Lcn/sharesdk/framework/gui/BitmapProcessor;)[Lcn/sharesdk/framework/gui/BitmapProcessor$d;

    move-result-object v5

    new-instance v6, Lcn/sharesdk/framework/gui/BitmapProcessor$d;

    iget-object v7, p0, Lcn/sharesdk/framework/gui/BitmapProcessor$b;->a:Lcn/sharesdk/framework/gui/BitmapProcessor;

    invoke-direct {v6, v7}, Lcn/sharesdk/framework/gui/BitmapProcessor$d;-><init>(Lcn/sharesdk/framework/gui/BitmapProcessor;)V

    aput-object v6, v5, v0

    iget-object v5, p0, Lcn/sharesdk/framework/gui/BitmapProcessor$b;->a:Lcn/sharesdk/framework/gui/BitmapProcessor;

    invoke-static {v5}, Lcn/sharesdk/framework/gui/BitmapProcessor;->b(Lcn/sharesdk/framework/gui/BitmapProcessor;)[Lcn/sharesdk/framework/gui/BitmapProcessor$d;

    move-result-object v5

    aget-object v5, v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "worker "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/sharesdk/framework/gui/BitmapProcessor$d;->setName(Ljava/lang/String;)V

    iget-object v5, p0, Lcn/sharesdk/framework/gui/BitmapProcessor$b;->a:Lcn/sharesdk/framework/gui/BitmapProcessor;

    invoke-static {v5}, Lcn/sharesdk/framework/gui/BitmapProcessor;->b(Lcn/sharesdk/framework/gui/BitmapProcessor;)[Lcn/sharesdk/framework/gui/BitmapProcessor$d;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-static {v5, v2}, Lcn/sharesdk/framework/gui/BitmapProcessor$d;->a(Lcn/sharesdk/framework/gui/BitmapProcessor$d;Z)Z

    iget-object v2, p0, Lcn/sharesdk/framework/gui/BitmapProcessor$b;->a:Lcn/sharesdk/framework/gui/BitmapProcessor;

    invoke-static {v2}, Lcn/sharesdk/framework/gui/BitmapProcessor;->b(Lcn/sharesdk/framework/gui/BitmapProcessor;)[Lcn/sharesdk/framework/gui/BitmapProcessor$d;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcn/sharesdk/framework/gui/BitmapProcessor$d;->start()V

    goto :goto_2
.end method

.method static synthetic b(Lcn/sharesdk/framework/gui/BitmapProcessor$b;)V
    .locals 0

    invoke-direct {p0}, Lcn/sharesdk/framework/gui/BitmapProcessor$b;->a()V

    return-void
.end method
