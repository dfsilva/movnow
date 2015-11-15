.class public Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;
.super Landroid/app/Dialog;
.source "CustomTwoEditTextDialog.java"


# instance fields
.field private m_Context:Landroid/content/Context;

.field private m_btnEditCancel:Landroid/widget/Button;

.field private m_btnEditSure:Landroid/widget/Button;

.field private m_etFirstText:Landroid/widget/EditText;

.field private m_etSecondText:Landroid/widget/EditText;

.field private m_tvTip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const v0, 0x7f0b000e

    invoke-direct {p0, p1, v0}, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;-><init>(Landroid/content/Context;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 37
    iput-object p1, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_Context:Landroid/content/Context;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_etFirstText:Landroid/widget/EditText;

    return-object v0
.end method

.method public static filter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "character"    # Ljava/lang/String;

    .prologue
    .line 78
    const-string v0, "[^(a-zA-Z0-9\\u4e00-\\u9fa5)]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 79
    return-object p0
.end method

.method private static isChinese(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 52
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 53
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

    .line 60
    :cond_0
    const/4 v1, 0x1

    .line 62
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
    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 67
    .local v1, "ch":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 68
    aget-char v0, v1, v2

    .line 69
    .local v0, "c":C
    invoke-static {v0}, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->isChinese(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    const/4 v3, 0x1

    .line 73
    .end local v0    # "c":C
    :goto_1
    return v3

    .line 67
    .restart local v0    # "c":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "c":C
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public createDialog()Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;
    .locals 4

    .prologue
    const/4 v2, -0x2

    const v3, -0x777778

    .line 87
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->setContentView(I)V

    .line 88
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 89
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 90
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->setCanceledOnTouchOutside(Z)V

    .line 93
    const v0, 0x7f06008a

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_tvTip:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_tvTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_Context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const v0, 0x7f060095

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_etFirstText:Landroid/widget/EditText;

    .line 96
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_etFirstText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 97
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_etFirstText:Landroid/widget/EditText;

    new-instance v1, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog$1;

    invoke-direct {v1, p0}, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog$1;-><init>(Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    const v0, 0x7f060096

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_etSecondText:Landroid/widget/EditText;

    .line 135
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_etSecondText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 136
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_etSecondText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 137
    const v0, 0x7f06008d

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_btnEditCancel:Landroid/widget/Button;

    .line 138
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_btnEditCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_Context:Landroid/content/Context;

    const v2, 0x7f0c0047

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const v0, 0x7f06008e

    invoke-virtual {p0, v0}, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_btnEditSure:Landroid/widget/Button;

    .line 140
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_btnEditSure:Landroid/widget/Button;

    iget-object v1, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_Context:Landroid/content/Context;

    const v2, 0x7f0c0046

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 154
    return-object p0
.end method

.method public getFirstEditText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 218
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_etFirstText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "etStr":Ljava/lang/String;
    return-object v0
.end method

.method public getSecondEditText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    iget-object v1, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_etSecondText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "etStr":Ljava/lang/String;
    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 48
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 43
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 158
    return-void
.end method

.method public setFirstEditText(Ljava/lang/String;)Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_Context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    :goto_0
    return-object p0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_etFirstText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setFirstHint(Ljava/lang/String;)Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;
    .locals 1
    .param p1, "strHint"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_etFirstText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 179
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;
    .locals 2
    .param p1, "negStr"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_btnEditCancel:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_btnEditCancel:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_btnEditCancel:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 210
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;
    .locals 2
    .param p1, "posStr"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_btnEditSure:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_btnEditSure:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_btnEditSure:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 197
    return-object p0
.end method

.method public setSecondEditText(Ljava/lang/String;)Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_Context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    :goto_0
    return-object p0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_etSecondText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSecondHint(Ljava/lang/String;)Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;
    .locals 1
    .param p1, "strHint"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_etSecondText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 184
    return-object p0
.end method

.method public setTip(Ljava/lang/String;)Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;
    .locals 1
    .param p1, "strTip"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->m_tvTip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    return-object p0
.end method

.method public showDialog()V
    .locals 0

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/veclink/movnow_q2/view/CustomTwoEditTextDialog;->show()V

    .line 162
    return-void
.end method
