.class Lcn/sharesdk/framework/gui/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/sharesdk/framework/gui/Scrollable$OnScrollListener;


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/gui/ScrollableListView;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/gui/ScrollableListView;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/framework/gui/e;->a:Lcn/sharesdk/framework/gui/ScrollableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(Lcn/sharesdk/framework/gui/Scrollable;IIII)V
    .locals 2

    iget-object v1, p0, Lcn/sharesdk/framework/gui/e;->a:Lcn/sharesdk/framework/gui/ScrollableListView;

    if-gtz p3, :cond_0

    if-gtz p5, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcn/sharesdk/framework/gui/ScrollableListView;->a(Lcn/sharesdk/framework/gui/ScrollableListView;Z)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
