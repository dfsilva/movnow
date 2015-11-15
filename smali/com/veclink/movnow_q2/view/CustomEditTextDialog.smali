.class public Lcom/veclink/movnow_q2/view/CustomEditTextDialog;
.super Landroid/app/Dialog;
.source "CustomEditTextDialog.java"


# instance fields
.field private m_Context:Landroid/content/Context;

.field private m_btnEditCancel:Landroid/widget/Button;

.field private m_btnEditSure:Landroid/widget/Button;

.field private m_etText:Landroid/widget/EditText;

.field private m_tvTip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const v0, 0x7f0b000e

    invoke-direct {p0, p1, v0}, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;-><init>(Landroid/content/Context;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 47
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->m_Context:Landroid/content/Context;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/view/CustomEditTextDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/view/CustomEditTextDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->m_etText:Landroid/widget/EditText;

    return-object v0
.end method

.method public static filter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "character"    # Ljava/lang/String;

    .prologue
    .line 89
    const-string v0, "[^(a-zA-Z0-9\\u4e00-\\u9fa5)]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 90
    return-object p0
.end method

.method private static isChinese(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 63
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 64
    .local v0, "ub":Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    .line 71
    :cond_0
    const/4 v1, 0x1

    .line 73
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isChinese(Ljava/lang/String;)Z
    .locals 4
    .param p0, "strName"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 78
    .local v1, "ch":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 79
    aget-char v0, v1, v2

    .line 80
    .local v0, "c":C
    invoke-static {v0}, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->isChinese(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    const/4 v3, 0x1

    .line 84
    .end local v0    # "c":C
    :goto_1
    return v3

    .line 78
    .restart local v0    # "c":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "c":C
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public createDialog()Lcom/veclink/movnow_q2/view/CustomEditTextDialog;
    .locals 3

    .prologue
    .line 97
    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->setContentView(I)V

    .line 98
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 99
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 100
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->setCanceledOnTouchOutside(Z)V

    .line 103
    const v0, 0x7f06008a

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->m_tvTip:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->m_tvTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->m_Context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    const v0, 0x7f060090

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->m_etText:Landroid/widget/EditText;

    .line 106
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->m_etText:Landroid/widget/EditText;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 109
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->m_etText:Landroid/widget/EditText;

    new-instance v1, Lcom/veclink/movnow_q2/view/CustomEditTextDialog$1;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/view/CustomEditTextDialog$1;-><init>(Lcom/veclink/movnow_q2/view/CustomEditTextDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 146
    const v0, 0x7f06008d

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->m_btnEditCancel:Landroid/widget/Button;

    .line 147
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->m_btnEditCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->m_Context:Landroid/content/Context;

    const v2, 0x7f0c0047

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const v0, 0x7f06008e

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->m_btnEditSure:Landroid/widget/Button;

    .line 149
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->m_btnEditSure:Landroid/widget/Button;

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->m_Context:Landroid/content/Context;

    const v2, 0x7f0c0046

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 163
    return-object p0
.end method

.method public getEditText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->m_etText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "etStr":Ljava/lang/String;
    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 59
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 54
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 167
    return-void
.end method

.method public setEditText(Ljava/lang/String;)Lcom/veclink/movnow_q2/view/CustomEditTextDialog;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->m_Context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    :goto_0
    return-object p0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->m_etText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setHint(Ljava/lang/String;)Lcom/veclink/movnow_q2/view/CustomEditTextDialog;
    .locals 1
    .param p1, "strHint"    # Ljava/lang/String;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->m_etText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 188
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/veclink/movnow_q2/view/CustomEditTextDialog;
    .locals 2
    .param p1, "negStr"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->m_btnEditCancel:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->m_btnEditCancel:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->m_btnEditCancel:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 214
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/veclink/movnow_q2/view/CustomEditTextDialog;
    .locals 2
    .param p1, "posStr"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->m_btnEditSure:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->m_btnEditSure:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->m_btnEditSure:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 201
    return-object p0
.end method

.method public setTip(Ljava/lang/String;)Lcom/veclink/movnow_q2/view/CustomEditTextDialog;
    .locals 1
    .param p1, "strTip"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->m_tvTip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    return-object p0
.end method

.method public showDialog()V
    .locals 0

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/CustomEditTextDialog;->show()V

    .line 171
    return-void
.end method
