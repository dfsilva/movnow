.class Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1$1;
.super Ljava/lang/Object;
.source "FamilyPhoneNumberListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1;

.field final synthetic val$dialog:Lcom/veclink/movnow_q2/view/BaseRemindDialog;


# direct methods
.method constructor <init>(Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1;Lcom/veclink/movnow_q2/view/BaseRemindDialog;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1$1;->this$1:Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1;

    iput-object p2, p0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1$1;->val$dialog:Lcom/veclink/movnow_q2/view/BaseRemindDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1$1;->val$dialog:Lcom/veclink/movnow_q2/view/BaseRemindDialog;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/view/BaseRemindDialog;->dismiss()V

    .line 97
    iget-object v0, p0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1$1;->this$1:Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1;

    iget-object v0, v0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1;->this$0:Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;

    iget-object v0, v0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;->remindList:Ljava/util/List;

    iget-object v1, p0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1$1;->this$1:Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1;

    iget v1, v1, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1$1;->this$1:Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1;

    iget-object v0, v0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1;->this$0:Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;

    iget-object v0, v0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;->phoneNumberMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1$1;->this$1:Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1;

    iget-object v1, v1, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1;->val$remindObject:Lcom/veclink/movmow/allen/nurse/RemindObject;

    invoke-virtual {v1}, Lcom/veclink/movmow/allen/nurse/RemindObject;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1$1;->this$1:Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1;

    iget-object v0, v0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1;->this$0:Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;

    iget-object v0, v0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1$1;->this$1:Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1;

    iget-object v1, v1, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1;->this$0:Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;

    iget-object v1, v1, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;->remindList:Ljava/util/List;

    const-string v2, "family_phone_number_file.wao"

    invoke-static {v0, v1, v2}, Lcom/veclink/movnow_q2/util/StorageUtil;->writeRemindObject(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1$1;->this$1:Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1;

    iget-object v0, v0, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter$1;->this$0:Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;

    invoke-virtual {v0}, Lcom/veclink/movnow_q2/adapter/FamilyPhoneNumberListAdapter;->notifyDataSetChanged()V

    .line 103
    return-void
.end method
