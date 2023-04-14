.class public abstract Lcom/rhmsoft/fm/dialog/BaseDialog;
.super Landroid/app/Dialog;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;
    }
.end annotation


# instance fields
.field private buttonHandler:Landroid/view/View$OnClickListener;

.field private buttonInfos:[Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;

.field protected iconView:Landroid/widget/ImageView;

.field protected nameView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/rhmsoft/fm/dialog/BaseDialog;->setCanceledOnTouchOutside(Z)V

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/rhmsoft/fm/dialog/BaseDialog;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/rhmsoft/fm/dialog/BaseDialog;->getButtonHandler()Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method private getButtonHandler()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/rhmsoft/fm/dialog/BaseDialog;->buttonHandler:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lcom/rhmsoft/fm/dialog/BaseDialog$1;

    invoke-direct {v0, p0}, Lcom/rhmsoft/fm/dialog/BaseDialog$1;-><init>(Lcom/rhmsoft/fm/dialog/BaseDialog;)V

    iput-object v0, p0, Lcom/rhmsoft/fm/dialog/BaseDialog;->buttonHandler:Landroid/view/View$OnClickListener;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/rhmsoft/fm/dialog/BaseDialog;->buttonHandler:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method protected abstract createContents()Landroid/view/View;
.end method

.method protected getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 72
    packed-switch p1, :pswitch_data_0

    .line 79
    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lcom/rhmsoft/fm/dialog/BaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    :goto_0
    return-object v0

    .line 74
    :pswitch_0
    const v0, 0x7f0b0016

    invoke-virtual {p0, v0}, Lcom/rhmsoft/fm/dialog/BaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    goto :goto_0

    .line 76
    :pswitch_1
    const v0, 0x7f0b0015

    invoke-virtual {p0, v0}, Lcom/rhmsoft/fm/dialog/BaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 37
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/rhmsoft/fm/dialog/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/view/Window;->requestFeature(I)Z

    .line 40
    const v5, 0x7f030008

    invoke-virtual {p0, v5}, Lcom/rhmsoft/fm/dialog/BaseDialog;->setContentView(I)V

    .line 42
    const v5, 0x7f0b0005

    invoke-virtual {p0, v5}, Lcom/rhmsoft/fm/dialog/BaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/rhmsoft/fm/dialog/BaseDialog;->nameView:Landroid/widget/TextView;

    .line 43
    const v5, 0x7f0b0004

    invoke-virtual {p0, v5}, Lcom/rhmsoft/fm/dialog/BaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/rhmsoft/fm/dialog/BaseDialog;->iconView:Landroid/widget/ImageView;

    .line 44
    const v5, 0x7f0b0012

    invoke-virtual {p0, v5}, Lcom/rhmsoft/fm/dialog/BaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 46
    .local v2, "contentView":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/rhmsoft/fm/dialog/BaseDialog;->createContents()Landroid/view/View;

    move-result-object v1

    .line 47
    .local v1, "content":Landroid/view/View;
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v5, v7, v8}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 50
    const v5, 0x7f0b0013

    invoke-virtual {p0, v5}, Lcom/rhmsoft/fm/dialog/BaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "buttonPanel":Landroid/view/View;
    iget-object v5, p0, Lcom/rhmsoft/fm/dialog/BaseDialog;->buttonInfos:[Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;

    if-eqz v5, :cond_0

    .line 52
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 53
    iget-object v7, p0, Lcom/rhmsoft/fm/dialog/BaseDialog;->buttonInfos:[Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;

    array-length v8, v7

    move v5, v6

    :goto_0
    if-lt v5, v8, :cond_1

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/rhmsoft/fm/dialog/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 60
    .local v4, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/rhmsoft/fm/dialog/BaseDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/rhmsoft/fm/core/LayoutAPI;->getDialogWidth(Landroid/content/res/Resources;)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 61
    invoke-virtual {p0}, Lcom/rhmsoft/fm/dialog/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 62
    return-void

    .line 53
    .end local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    aget-object v3, v7, v5

    .line 54
    .local v3, "info":Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;
    if-eqz v3, :cond_2

    .line 55
    invoke-static {v3}, Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;->access$0(Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/rhmsoft/fm/dialog/BaseDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;->wrapButton(Landroid/widget/Button;)V

    .line 53
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 67
    iget-object v0, p0, Lcom/rhmsoft/fm/dialog/BaseDialog;->nameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rhmsoft/fm/dialog/BaseDialog;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/rhmsoft/fm/dialog/BaseDialog;->prepareTitle(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 68
    invoke-virtual {p0}, Lcom/rhmsoft/fm/dialog/BaseDialog;->prepareContents()V

    .line 69
    return-void
.end method

.method protected abstract prepareContents()V
.end method

.method protected abstract prepareTitle(Landroid/widget/TextView;Landroid/widget/ImageView;)V
.end method

.method public setButton(IILandroid/content/DialogInterface$OnClickListener;)Lcom/rhmsoft/fm/dialog/BaseDialog;
    .locals 1
    .param p1, "whichButton"    # I
    .param p2, "textRes"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/rhmsoft/fm/dialog/BaseDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/rhmsoft/fm/dialog/BaseDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/rhmsoft/fm/dialog/BaseDialog;

    move-result-object v0

    return-object v0
.end method

.method public setButton(IILandroid/content/DialogInterface$OnClickListener;Z)Lcom/rhmsoft/fm/dialog/BaseDialog;
    .locals 1
    .param p1, "whichButton"    # I
    .param p2, "textRes"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "dismiss"    # Z

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/rhmsoft/fm/dialog/BaseDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/rhmsoft/fm/dialog/BaseDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/rhmsoft/fm/dialog/BaseDialog;

    move-result-object v0

    return-object v0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/rhmsoft/fm/dialog/BaseDialog;
    .locals 1
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/rhmsoft/fm/dialog/BaseDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/rhmsoft/fm/dialog/BaseDialog;

    move-result-object v0

    return-object v0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/rhmsoft/fm/dialog/BaseDialog;
    .locals 6
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "dismiss"    # Z

    .prologue
    .line 99
    iget-object v1, p0, Lcom/rhmsoft/fm/dialog/BaseDialog;->buttonInfos:[Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;

    if-nez v1, :cond_0

    .line 100
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;

    iput-object v1, p0, Lcom/rhmsoft/fm/dialog/BaseDialog;->buttonInfos:[Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;

    .line 101
    :cond_0
    new-instance v0, Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;-><init>(Lcom/rhmsoft/fm/dialog/BaseDialog;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 102
    .local v0, "info":Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;
    packed-switch p1, :pswitch_data_0

    .line 113
    :goto_0
    return-object p0

    .line 104
    :pswitch_0
    iget-object v1, p0, Lcom/rhmsoft/fm/dialog/BaseDialog;->buttonInfos:[Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    goto :goto_0

    .line 107
    :pswitch_1
    iget-object v1, p0, Lcom/rhmsoft/fm/dialog/BaseDialog;->buttonInfos:[Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    goto :goto_0

    .line 110
    :pswitch_2
    iget-object v1, p0, Lcom/rhmsoft/fm/dialog/BaseDialog;->buttonInfos:[Lcom/rhmsoft/fm/dialog/BaseDialog$ButtonInfo;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
