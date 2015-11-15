.class Lcom/veclink/movnow_q2/activity/LoginActivity$4;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/activity/LoginActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/activity/LoginActivity;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/veclink/movnow_q2/activity/LoginActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/veclink/movnow_q2/activity/LoginActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/LoginActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/LoginActivity;->etPwd:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/veclink/movnow_q2/activity/LoginActivity;->access$400(Lcom/veclink/movnow_q2/activity/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/veclink/movnow_q2/activity/LoginActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/LoginActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/veclink/movnow_q2/activity/LoginActivity;->queryPasswordHistory(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/veclink/movnow_q2/activity/LoginActivity;->access$300(Lcom/veclink/movnow_q2/activity/LoginActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 195
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 189
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 178
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/LoginActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/LoginActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/veclink/movnow_q2/activity/LoginActivity;->getLoginUserHistory(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, v3}, Lcom/veclink/movnow_q2/activity/LoginActivity;->access$100(Lcom/veclink/movnow_q2/activity/LoginActivity;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 179
    .local v1, "matchUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/LoginActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/LoginActivity;

    const v3, 0x7f030045

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 182
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/veclink/movnow_q2/activity/LoginActivity$4;->this$0:Lcom/veclink/movnow_q2/activity/LoginActivity;

    # getter for: Lcom/veclink/movnow_q2/activity/LoginActivity;->actvAccount:Landroid/widget/AutoCompleteTextView;
    invoke-static {v2}, Lcom/veclink/movnow_q2/activity/LoginActivity;->access$200(Lcom/veclink/movnow_q2/activity/LoginActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    return-void
.end method
