.class Lcom/rhmsoft/fm/pro/TextEditor$2;
.super Ljava/lang/Object;
.source "TextEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rhmsoft/fm/pro/TextEditor;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rhmsoft/fm/pro/TextEditor;


# direct methods
.method constructor <init>(Lcom/rhmsoft/fm/pro/TextEditor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rhmsoft/fm/pro/TextEditor$2;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcom/rhmsoft/fm/pro/TextEditor$2;->this$0:Lcom/rhmsoft/fm/pro/TextEditor;

    invoke-virtual {v0}, Lcom/rhmsoft/fm/pro/TextEditor;->finish()V

    .line 204
    return-void
.end method
