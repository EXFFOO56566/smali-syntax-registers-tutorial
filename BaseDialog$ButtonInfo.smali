.class Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;
.super Ljava/lang/Object;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rhmsoft/fm/dialog/BaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonInfo"
.end annotation


# instance fields
.field private dismiss:Z

.field private onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private text:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/rhmsoft/fm/dialog/BaseDialog;

.field private whichButton:I


# direct methods
.method public constructor <init>(Lcom/rhmsoft/fm/dialog/BaseDialog;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 1
    .param p2, "whichButton"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;
    .param p4, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "dismiss"    # Z

    .prologue
    .line 135
    iput-object p1, p0, Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;->this$0:Lcom/rhmsoft/fm/dialog/BaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;->dismiss:Z

    .line 136
    iput-object p3, p0, Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;->text:Ljava/lang/CharSequence;

    .line 137
    iput-object p4, p0, Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 138
    iput p2, p0, Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;->whichButton:I

    .line 139
    iput-boolean p5, p0, Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;->dismiss:Z

    .line 140
    return-void
.end method

.method static synthetic access$0(Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;)I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;->whichButton:I

    return v0
.end method

.method static synthetic access$1(Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;)Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;->dismiss:Z

    return v0
.end method

.method static synthetic access$2(Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public wrapButton(Landroid/widget/Button;)V
    .locals 1
    .param p1, "btn"    # Landroid/widget/Button;

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 143
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;->this$0:Lcom/rhmsoft/fm/dialog/BaseDialog;

    invoke-static {v0}, Lcom/rhmsoft/fm/dialog/BaseDialog;->access$0(Lcom/rhmsoft/fm/dialog/BaseDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-void
.end method
