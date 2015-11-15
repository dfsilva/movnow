.class Lcn/sharesdk/framework/gui/a;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/gui/BitmapProcessor$b;

.field private b:I


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/gui/BitmapProcessor$b;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/framework/gui/a;->a:Lcn/sharesdk/framework/gui/BitmapProcessor$b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/framework/gui/a;->a:Lcn/sharesdk/framework/gui/BitmapProcessor$b;

    invoke-static {v0}, Lcn/sharesdk/framework/gui/BitmapProcessor$b;->a(Lcn/sharesdk/framework/gui/BitmapProcessor$b;)Lcn/sharesdk/framework/gui/BitmapProcessor;

    move-result-object v0

    invoke-static {v0}, Lcn/sharesdk/framework/gui/BitmapProcessor;->a(Lcn/sharesdk/framework/gui/BitmapProcessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/sharesdk/framework/gui/a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/sharesdk/framework/gui/a;->b:I

    iget v0, p0, Lcn/sharesdk/framework/gui/a;->b:I

    if-gtz v0, :cond_0

    const/16 v0, 0x64

    iput v0, p0, Lcn/sharesdk/framework/gui/a;->b:I

    iget-object v0, p0, Lcn/sharesdk/framework/gui/a;->a:Lcn/sharesdk/framework/gui/BitmapProcessor$b;

    invoke-static {v0}, Lcn/sharesdk/framework/gui/BitmapProcessor$b;->b(Lcn/sharesdk/framework/gui/BitmapProcessor$b;)V

    :cond_0
    return-void
.end method
