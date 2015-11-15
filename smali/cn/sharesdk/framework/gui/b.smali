.class Lcn/sharesdk/framework/gui/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/sharesdk/framework/network/RawNetworkCallback;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Z

.field final synthetic c:Lcn/sharesdk/framework/gui/BitmapProcessor$a;

.field final synthetic d:Lcn/sharesdk/framework/gui/BitmapProcessor$d;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/gui/BitmapProcessor$d;Ljava/io/File;ZLcn/sharesdk/framework/gui/BitmapProcessor$a;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/framework/gui/b;->d:Lcn/sharesdk/framework/gui/BitmapProcessor$d;

    iput-object p2, p0, Lcn/sharesdk/framework/gui/b;->a:Ljava/io/File;

    iput-boolean p3, p0, Lcn/sharesdk/framework/gui/b;->b:Z

    iput-object p4, p0, Lcn/sharesdk/framework/gui/b;->c:Lcn/sharesdk/framework/gui/BitmapProcessor$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/io/InputStream;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcn/sharesdk/framework/gui/BitmapProcessor$c;

    invoke-direct {v0, p1}, Lcn/sharesdk/framework/gui/BitmapProcessor$c;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/sharesdk/framework/utils/BitmapHelper;->getBitmap(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/gui/b;->d:Lcn/sharesdk/framework/gui/BitmapProcessor$d;

    invoke-static {v0, v4}, Lcn/sharesdk/framework/gui/BitmapProcessor$d;->a(Lcn/sharesdk/framework/gui/BitmapProcessor$d;Lcn/sharesdk/framework/gui/BitmapProcessor$a;)Lcn/sharesdk/framework/gui/BitmapProcessor$a;

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcn/sharesdk/framework/gui/b;->d:Lcn/sharesdk/framework/gui/BitmapProcessor$d;

    iget-object v2, p0, Lcn/sharesdk/framework/gui/b;->a:Ljava/io/File;

    iget-boolean v3, p0, Lcn/sharesdk/framework/gui/b;->b:Z

    invoke-static {v1, v0, v2, v3}, Lcn/sharesdk/framework/gui/BitmapProcessor$d;->a(Lcn/sharesdk/framework/gui/BitmapProcessor$d;Landroid/graphics/Bitmap;Ljava/io/File;Z)V

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcn/sharesdk/framework/gui/b;->d:Lcn/sharesdk/framework/gui/BitmapProcessor$d;

    invoke-static {v1}, Lcn/sharesdk/framework/gui/BitmapProcessor$d;->c(Lcn/sharesdk/framework/gui/BitmapProcessor$d;)Lcn/sharesdk/framework/gui/BitmapProcessor;

    move-result-object v1

    invoke-static {v1}, Lcn/sharesdk/framework/gui/BitmapProcessor;->d(Lcn/sharesdk/framework/gui/BitmapProcessor;)Ljava/util/WeakHashMap;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/framework/gui/b;->c:Lcn/sharesdk/framework/gui/BitmapProcessor$a;

    invoke-static {v2}, Lcn/sharesdk/framework/gui/BitmapProcessor$a;->a(Lcn/sharesdk/framework/gui/BitmapProcessor$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/sharesdk/framework/gui/b;->c:Lcn/sharesdk/framework/gui/BitmapProcessor$a;

    invoke-static {v1, v0}, Lcn/sharesdk/framework/gui/BitmapProcessor$a;->a(Lcn/sharesdk/framework/gui/BitmapProcessor$a;Landroid/graphics/Bitmap;)V

    :cond_2
    iget-object v0, p0, Lcn/sharesdk/framework/gui/b;->d:Lcn/sharesdk/framework/gui/BitmapProcessor$d;

    invoke-static {v0, v4}, Lcn/sharesdk/framework/gui/BitmapProcessor$d;->a(Lcn/sharesdk/framework/gui/BitmapProcessor$d;Lcn/sharesdk/framework/gui/BitmapProcessor$a;)Lcn/sharesdk/framework/gui/BitmapProcessor$a;

    goto :goto_0
.end method
