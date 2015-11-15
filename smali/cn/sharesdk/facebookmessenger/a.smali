.class Lcn/sharesdk/facebookmessenger/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/sharesdk/framework/authorize/AuthorizeListener;


# instance fields
.field final synthetic a:Lcn/sharesdk/facebookmessenger/b;

.field final synthetic b:Lcn/sharesdk/facebookmessenger/FacebookMessenger;


# direct methods
.method constructor <init>(Lcn/sharesdk/facebookmessenger/FacebookMessenger;Lcn/sharesdk/facebookmessenger/b;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/facebookmessenger/a;->b:Lcn/sharesdk/facebookmessenger/FacebookMessenger;

    iput-object p2, p0, Lcn/sharesdk/facebookmessenger/a;->a:Lcn/sharesdk/facebookmessenger/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/a;->b:Lcn/sharesdk/facebookmessenger/FacebookMessenger;

    invoke-static {v0}, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->e(Lcn/sharesdk/facebookmessenger/FacebookMessenger;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/a;->b:Lcn/sharesdk/facebookmessenger/FacebookMessenger;

    invoke-static {v0}, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->f(Lcn/sharesdk/facebookmessenger/FacebookMessenger;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/facebookmessenger/a;->b:Lcn/sharesdk/facebookmessenger/FacebookMessenger;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "oauth_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "oauth_token_expires"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "expires_in"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcn/sharesdk/framework/utils/R;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Lcn/sharesdk/facebookmessenger/a;->b:Lcn/sharesdk/facebookmessenger/FacebookMessenger;

    invoke-static {v2}, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->c(Lcn/sharesdk/facebookmessenger/FacebookMessenger;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/PlatformDb;->putToken(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/sharesdk/facebookmessenger/a;->b:Lcn/sharesdk/facebookmessenger/FacebookMessenger;

    invoke-static {v2}, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->d(Lcn/sharesdk/facebookmessenger/FacebookMessenger;)Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcn/sharesdk/framework/PlatformDb;->putExpiresIn(J)V

    iget-object v2, p0, Lcn/sharesdk/facebookmessenger/a;->a:Lcn/sharesdk/facebookmessenger/b;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcn/sharesdk/facebookmessenger/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/a;->b:Lcn/sharesdk/facebookmessenger/FacebookMessenger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->a(Lcn/sharesdk/facebookmessenger/FacebookMessenger;ILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcn/sharesdk/framework/utils/e;->c(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/a;->b:Lcn/sharesdk/facebookmessenger/FacebookMessenger;

    invoke-static {v0}, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->a(Lcn/sharesdk/facebookmessenger/FacebookMessenger;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/facebookmessenger/a;->b:Lcn/sharesdk/facebookmessenger/FacebookMessenger;

    invoke-static {v0}, Lcn/sharesdk/facebookmessenger/FacebookMessenger;->b(Lcn/sharesdk/facebookmessenger/FacebookMessenger;)Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/facebookmessenger/a;->b:Lcn/sharesdk/facebookmessenger/FacebookMessenger;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method
