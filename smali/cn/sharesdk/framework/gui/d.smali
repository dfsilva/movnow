.class Lcn/sharesdk/framework/gui/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/gui/PullToRefreshView;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/gui/PullToRefreshView;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/framework/gui/d;->a:Lcn/sharesdk/framework/gui/PullToRefreshView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/framework/gui/d;->a:Lcn/sharesdk/framework/gui/PullToRefreshView;

    invoke-static {v0}, Lcn/sharesdk/framework/gui/PullToRefreshView;->a(Lcn/sharesdk/framework/gui/PullToRefreshView;)V

    iget-object v0, p0, Lcn/sharesdk/framework/gui/d;->a:Lcn/sharesdk/framework/gui/PullToRefreshView;

    invoke-static {v0}, Lcn/sharesdk/framework/gui/PullToRefreshView;->b(Lcn/sharesdk/framework/gui/PullToRefreshView;)V

    return-void
.end method
