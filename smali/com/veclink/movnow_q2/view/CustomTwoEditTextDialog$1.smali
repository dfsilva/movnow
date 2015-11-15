.class Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog$1;
.super Ljava/lang/Object;
.source "CustomTwoEditTextDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->createDialog()Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog$1;->this$0:Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->isChinese(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    new-array v0, v2, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v3

    .line 116
    .local v0, "filters":[Landroid/text/InputFilter;
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog$1;->this$0:Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;

    # getter for: Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_etFirstText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->access$000(Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 129
    :goto_0
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog$1;->this$0:Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;

    # getter for: Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_etFirstText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->access$000(Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog$1;->this$0:Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;

    # getter for: Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_etFirstText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->access$000(Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 131
    return-void

    .line 118
    .end local v0    # "filters":[Landroid/text/InputFilter;
    :cond_0
    new-array v0, v2, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v3

    .line 119
    .restart local v0    # "filters":[Landroid/text/InputFilter;
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog$1;->this$0:Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;

    # getter for: Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_etFirstText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->access$000(Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 108
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 102
    return-void
.end method
