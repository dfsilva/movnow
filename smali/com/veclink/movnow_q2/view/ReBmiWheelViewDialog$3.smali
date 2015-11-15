.class Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$3;
.super Ljava/lang/Object;
.source "ReBmiWheelViewDialog.java"

# interfaces
.implements Lcom/veclink/movnow_q2/view/wheel/OnWheelChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->initWeightView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

.field final synthetic val$weight_unit_adapter:Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$3;->this$0:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    iput-object p2, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$3;->val$weight_unit_adapter:Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/veclink/movnow_q2/view/wheel/WheelView;II)V
    .locals 8
    .param p1, "wheel"    # Lcom/veclink/movnow_q2/view/wheel/WheelView;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    .prologue
    const v7, 0x7f030050

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "new_weight_adapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$3;->this$0:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    # getter for: Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->first_weight_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;
    invoke-static {v2}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->access$200(Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;)Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v1

    .line 289
    .local v1, "weight":I
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$3;->val$weight_unit_adapter:Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;

    invoke-virtual {p1}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/veclink/movnow_q2/view/wheel/adapter/ArrayWheelAdapter;->getItemText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$3;->this$0:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    iget-object v3, v3, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->weight_unit_array:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    new-instance v0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;

    .end local v0    # "new_weight_adapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$3;->this$0:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    # getter for: Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->access$000(Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;)Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x44f

    invoke-direct {v0, v2, v6, v3, v7}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;III)V

    .line 292
    .restart local v0    # "new_weight_adapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$3;->this$0:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    iput v6, v2, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->minWeight:I

    .line 299
    :goto_0
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$3;->this$0:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    # getter for: Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->first_weight_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;
    invoke-static {v2}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->access$200(Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;)Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setViewAdapter(Lcom/veclink/movnow_q2/view/wheel/adapter/WheelViewAdapter;)V

    .line 300
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$3;->this$0:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    # getter for: Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->first_weight_wheelview:Lcom/veclink/movnow_q2/view/wheel/WheelView;
    invoke-static {v2}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->access$200(Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;)Lcom/veclink/movnow_q2/view/wheel/WheelView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/veclink/movnow_q2/view/wheel/WheelView;->setCurrentItem(I)V

    .line 301
    return-void

    .line 295
    :cond_0
    new-instance v0, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;

    .end local v0    # "new_weight_adapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$3;->this$0:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    # getter for: Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->access$000(Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;)Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x1f4

    invoke-direct {v0, v2, v5, v3, v7}, Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;III)V

    .line 296
    .restart local v0    # "new_weight_adapter":Lcom/veclink/movnow_q2/view/wheel/adapter/NumericWheelAdapter;
    iget-object v2, p0, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog$3;->this$0:Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;

    iput v5, v2, Lcom/veclink/movnow_q2/view/ReBmiWheelViewDialog;->minWeight:I

    goto :goto_0
.end method
