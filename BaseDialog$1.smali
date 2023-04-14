.class Lcom/rhmsoft/fm/dialog/BaseDialog$1;
.super Ljava/lang/Object;
.source "BaseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rhmsoft/fm/dialog/BaseDialog;->getButtonHandler()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rhmsoft/fm/dialog/BaseDialog;


# direct methods
.method constructor <init>(Lcom/rhmsoft/fm/dialog/BaseDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rhmsoft/fm/dialog/BaseDialog$1;->this$0:Lcom/rhmsoft/fm/dialog/BaseDialog;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 156
    .local v2, "obj":Ljava/lang/Object;
    const/4 v0, 0x1

    .line 157
    .local v0, "dismiss":Z
    instance-of v3, v2, Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 158
    check-cast v1, Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;

    .line 159
    .local v1, "info":Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;
    invoke-static {v1}, Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;->access$1(Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;)Z

    move-result v0

    .line 160
    invoke-static {v1}, Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;->access$2(Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 161
    invoke-static {v1}, Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;->access$2(Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    iget-object v4, p0, Lcom/rhmsoft/fm/dialog/BaseDialog$1;->this$0:Lcom/rhmsoft/fm/dialog/BaseDialog;

    invoke-static {v1}, Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;->access$0(Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 163
    .end local v1    # "info":Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;
    :cond_0
    if-eqz v0, :cond_1

    .line 164
    iget-object v3, p0, Lcom/rhmsoft/fm/dialog/BaseDialog$1;->this$0:Lcom/rhmsoft/fm/dialog/BaseDialog;

    invoke-virtual {v3}, Lcom/rhmsoft/fm/dialog/BaseDialog;->dismiss()V

    .line 165
    :cond_1
    return-void
.end method
