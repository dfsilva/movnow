.class Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$2;
.super Ljava/lang/Object;
.source "ReBmiWheelViewDialog.java"

# interfaces
.implements Lcom/veclink/movnow_q2/view/wheel/OnWheelChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->initHeightView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

.field final synthetic val$height_unit_adapter:Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$2;->this$0:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    iput-object p2, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$2;->val$height_unit_adapter:Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/veclink/movnow_q2/view/wheel/WheelView;II)V
    .locals 5
    .param p1, "wheel"    # Lcom/veclink/movnow_q2/view/wheel/WheelView;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    .prologue
    const v4, 0x7f030050

    const/4 v3, 0x0

    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "heightAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$2;->val$height_unit_adapter:Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;

    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;->getItemText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$2;->this$0:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    iget-object v2, v2, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->height_unit_array:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    new-instance v0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;

    .end local v0    # "heightAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$2;->this$0:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    # getter for: Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->access$000(Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;III)V

    .line 226
    .restart local v0    # "heightAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    :goto_0
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$2;->this$0:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    # getter for: Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->first_height_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;
    invoke-static {v1}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->access$100(Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;)Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setViewAdapter(Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;)V

    .line 228
    return-void

    .line 224
    :cond_0
    new-instance v0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;

    .end local v0    # "heightAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$2;->this$0:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    # getter for: Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->access$000(Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;III)V

    .restart local v0    # "heightAdapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    goto :goto_0
.end method
