.class public Lcom/rhmsoft/fm/core/ToolbarHelper;
.super Ljava/lang/Object;
.source "ToolbarHelper.java"


# static fields
.field public static final ACCEPTABLE_SHARE_INBOUND_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static pasteAnimation:Z


# instance fields
.field private fileManager:Lcom/rhmsoft/fm/pro/FileManager;

.field private toolbar:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "image/*"

    aput-object v2, v0, v1

    const-string v1, "video/*"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/rhmsoft/fm/core/ToolbarHelper;->ACCEPTABLE_SHARE_INBOUND_TYPES:Ljava/util/List;

    .line 39
    sput-boolean v3, Lcom/rhmsoft/fm/core/ToolbarHelper;->pasteAnimation:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/rhmsoft/fm/pro/FileManager;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "fileManager"    # Lcom/rhmsoft/fm/pro/FileManager;
    .param p2, "toolbar"    # Landroid/widget/LinearLayout;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/rhmsoft/fm/core/ToolbarHelper;->fileManager:Lcom/rhmsoft/fm/pro/FileManager;

    .line 43
    iput-object p2, p0, Lcom/rhmsoft/fm/core/ToolbarHelper;->toolbar:Landroid/widget/LinearLayout;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/rhmsoft/fm/core/ToolbarHelper;)Lcom/rhmsoft/fm/pro/FileManager;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/rhmsoft/fm/core/ToolbarHelper;->fileManager:Lcom/rhmsoft/fm/pro/FileManager;

    return-object v0
.end method

.method private initToolbar(Ljava/util/List;Z)V
    .locals 10
    .param p2, "normalToolbar"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/rhmsoft/fm/action/Action;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/rhmsoft/fm/action/Action;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 52
    iget-object v5, p0, Lcom/rhmsoft/fm/core/ToolbarHelper;->toolbar:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 53
    iget-object v5, p0, Lcom/rhmsoft/fm/core/ToolbarHelper;->fileManager:Lcom/rhmsoft/fm/pro/FileManager;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 54
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    .line 55
    .local v4, "pasteBtn":Landroid/widget/Button;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/rhmsoft/fm/core/ToolbarHelper;->refreshStatus()V

    .line 75
    if-nez v4, :cond_3

    if-eqz p2, :cond_3

    .line 76
    sput-boolean v9, Lcom/rhmsoft/fm/core/ToolbarHelper;->pasteAnimation:Z

    .line 84
    :cond_1
    :goto_1
    return-void

    .line 55
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rhmsoft/fm/action/Action;

    .line 56
    .local v0, "action":Lcom/rhmsoft/fm/action/Action;
    invoke-virtual {v0}, Lcom/rhmsoft/fm/action/Action;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 58
    const v6, 0x7f030005

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 59
    .local v2, "button":Landroid/widget/Button;
    iget v6, v0, Lcom/rhmsoft/fm/action/Action;->iconRes:I

    invoke-direct {p0, v2, v6}, Lcom/rhmsoft/fm/core/ToolbarHelper;->setButtonDrawable(Landroid/widget/Button;I)V

    .line 60
    new-instance v6, Lcom/rhmsoft/fm/core/ToolbarHelper$1;

    invoke-direct {v6, p0, v0}, Lcom/rhmsoft/fm/core/ToolbarHelper$1;-><init>(Lcom/rhmsoft/fm/core/ToolbarHelper;Lcom/rhmsoft/fm/action/Action;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget v6, v0, Lcom/rhmsoft/fm/action/Action;->labelRes:I

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(I)V

    .line 68
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 69
    iget-object v6, p0, Lcom/rhmsoft/fm/core/ToolbarHelper;->toolbar:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 70
    instance-of v6, v0, Lcom/rhmsoft/fm/action/PasteAction;

    if-eqz v6, :cond_0

    .line 71
    move-object v4, v2

    goto :goto_0

    .line 77
    .end local v0    # "action":Lcom/rhmsoft/fm/action/Action;
    .end local v2    # "button":Landroid/widget/Button;
    :cond_3
    sget-boolean v5, Lcom/rhmsoft/fm/core/ToolbarHelper;->pasteAnimation:Z

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    .line 78
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 79
    .local v1, "animation":Landroid/view/animation/Animation;
    const-wide/16 v5, 0x3e8

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 80
    invoke-virtual {v1, v9}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 81
    invoke-virtual {v4, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 82
    sput-boolean v8, Lcom/rhmsoft/fm/core/ToolbarHelper;->pasteAnimation:Z

    goto :goto_1
.end method

.method private setButtonDrawable(Landroid/widget/Button;I)V
    .locals 5
    .param p1, "btn"    # Landroid/widget/Button;
    .param p2, "iconRes"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 168
    iget-object v1, p0, Lcom/rhmsoft/fm/core/ToolbarHelper;->fileManager:Lcom/rhmsoft/fm/pro/FileManager;

    invoke-virtual {v1}, Lcom/rhmsoft/fm/pro/FileManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 169
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 170
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v4, v4, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 171
    :cond_0
    invoke-virtual {p1, v3, v0, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 172
    return-void
.end method


# virtual methods
.method public changeSelectionMode()V
    .locals 5

    .prologue
    .line 175
    invoke-static {}, Lcom/rhmsoft/fm/core/MultiSelectionHelper;->getInstance()Lcom/rhmsoft/fm/core/MultiSelectionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rhmsoft/fm/core/MultiSelectionHelper;->changeSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/rhmsoft/fm/core/ToolbarHelper;->fileManager:Lcom/rhmsoft/fm/pro/FileManager;

    invoke-virtual {v1}, Lcom/rhmsoft/fm/pro/FileManager;->refreshVisuals()V

    .line 177
    :cond_0
    invoke-static {}, Lcom/rhmsoft/fm/core/MultiSelectionHelper;->getInstance()Lcom/rhmsoft/fm/core/MultiSelectionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rhmsoft/fm/core/MultiSelectionHelper;->isMultiSelection()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/rhmsoft/fm/core/ToolbarHelper;->fileManager:Lcom/rhmsoft/fm/pro/FileManager;

    const v2, 0x7f0600e4

    invoke-virtual {v1, v2}, Lcom/rhmsoft/fm/pro/FileManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "multiText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/rhmsoft/fm/core/ToolbarHelper;->fileManager:Lcom/rhmsoft/fm/pro/FileManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/rhmsoft/fm/core/ToolbarHelper;->fileManager:Lcom/rhmsoft/fm/pro/FileManager;

    const v4, 0x7f060014

    invoke-virtual {v3, v4}, Lcom/rhmsoft/fm/pro/FileManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 179
    invoke-static {}, Lcom/rhmsoft/fm/core/MultiSelectionHelper;->getInstance()Lcom/rhmsoft/fm/core/MultiSelectionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rhmsoft/fm/core/MultiSelectionHelper;->isMultiSelection()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    invoke-virtual {p0}, Lcom/rhmsoft/fm/core/ToolbarHelper;->initMultiToolbar()V

    .line 183
    :goto_1
    return-void

    .line 177
    .end local v0    # "multiText":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/rhmsoft/fm/core/ToolbarHelper;->fileManager:Lcom/rhmsoft/fm/pro/FileManager;

    const v2, 0x7f0600e5

    invoke-virtual {v1, v2}, Lcom/rhmsoft/fm/pro/FileManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 182
    .restart local v0    # "multiText":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/rhmsoft/fm/core/ToolbarHelper;->initNormalToolbar()V

    goto :goto_1
.end method

.method public initMultiToolbar()V
    .locals 7

    .prologue
    .line 87
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v6, "items":Ljava/util/List;, "Ljava/util/List<Lcom/rhmsoft/fm/action/Action;>;"
    new-instance v0, Lcom/rhmsoft/fm/core/ToolbarHelper$2;

    const v1, 0x7f020075

    const v2, 0x7f060017

    iget-object v3, p0, Lcom/rhmsoft/fm/core/ToolbarHelper;->fileManager:Lcom/rhmsoft/fm/pro/FileManager;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/rhmsoft/fm/core/ToolbarHelper$2;-><init>(Lcom/rhmsoft/fm/core/ToolbarHelper;IILandroid/content/Context;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v0, Lcom/rhmsoft/fm/action/CopyAction;

    iget-object v1, p0, Lcom/rhmsoft/fm/core/ToolbarHelper;->fileManager:Lcom/rhmsoft/fm/pro/FileManager;

    sget-object v2, Lcom/rhmsoft/fm/action/SelectionAwareAction$ActionType;->MULTI:Lcom/rhmsoft/fm/action/SelectionAwareAction$ActionType;

    invoke-direct {v0, v1, v2}, Lcom/rhmsoft/fm/action/CopyAction;-><init>(Lcom/rhmsoft/fm/pro/FileManager;Lcom/rhmsoft/fm/action/SelectionAwareAction$ActionType;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v0, Lcom/rhmsoft/fm/action/CutAction;

    iget-object v1, p0, Lcom/rhmsoft/fm/core/ToolbarHelper;->fileManager:Lcom/rhmsoft/fm/pro/FileManager;

    sget-object v2, Lcom/rhmsoft/fm/action/SelectionAwareAction$ActionType;->MULTI:Lcom/rhmsoft/fm/action/SelectionAwareAction$ActionType;

    invoke-direct {v0, v1, v2}, Lcom/rhmsoft/fm/action/CutAction;-><init>(Lcom/rhmsoft/fm/pro/FileManager;Lcom/rhmsoft/fm/action/SelectionAwareAction$ActionType;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v0, Lcom/rhmsoft/fm/action/DeleteAction;

    iget-object v1, p0, Lcom/rhmsoft/fm/core/ToolbarHelper;->fileManager:Lcom/rhmsoft/fm/pro/FileManager;

    sget-object v2, Lcom/rhmsoft/fm/action/SelectionAwareAction$ActionType;->MULTI:Lcom/rhmsoft/fm/action/SelectionAwareAction$ActionType;

    invoke-direct {v0, v1, v2}, Lcom/rhmsoft/fm/action/DeleteAction;-><init>(Lcom/rhmsoft/fm/pro/FileManager;Lcom/rhmsoft/fm/action/SelectionAwareAction$ActionType;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v0, Lcom/rhmsoft/fm/action/ShareAction;

    iget-object v1, p0, Lcom/rhmsoft/fm/core/ToolbarHelper;->fileManager:Lcom/rhmsoft/fm/pro/FileManager;

    sget-object v2, Lcom/rhmsoft/fm/action/SelectionAwareAction$ActionType;->MULTI:Lcom/rhmsoft/fm/action/SelectionAwareAction$ActionType;

    invoke-direct {v0, v1, v2}, Lcom/rhmsoft/fm/action/ShareAction;-><init>(Landroid/content/Context;Lcom/rhmsoft/fm/action/SelectionAwareAction$ActionType;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v0, Lcom/rhmsoft/fm/action/ZipAction;

    iget-object v1, p0, Lcom/rhmsoft/fm/core/ToolbarHelper;->fileManager:Lcom/rhmsoft/fm/pro/FileManager;

    sget-object v2, Lcom/rhmsoft/fm/action/SelectionAwareAction$ActionType;->MULTI:Lcom/rhmsoft/fm/action/SelectionAwareAction$ActionType;

    invoke-direct {v0, v1, v2}, Lcom/rhmsoft/fm/action/ZipAction;-><init>(Lcom/rhmsoft/fm/pro/FileManager;Lcom/rhmsoft/fm/action/SelectionAwareAction$ActionType;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v0, Lcom/rhmsoft/fm/core/ToolbarHelper$3;

    const v2, 0x7f020095

    const v3, 0x7f060083

    const v4, 0x7f02000d

    iget-object v5, p0, Lcom/rhmsoft/fm/core/ToolbarHelper;->fileManager:Lcom/rhmsoft/fm/pro/FileManager;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/rhmsoft/fm/core/ToolbarHelper$3;-><init>(Lcom/rhmsoft/fm/core/ToolbarHelper;IIILandroid/content/Context;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v0, Lcom/rhmsoft/fm/core/ToolbarHelper$4;

    const v2, 0x7f02007c

    const v3, 0x7f060084

    const v4, 0x7f02000a

    iget-object v5, p0, Lcom/rhmsoft/fm/core/ToolbarHelper;->fileManager:Lcom/rhmsoft/fm/pro/FileManager;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/rhmsoft/fm/core/ToolbarHelper$4;-><init>(Lcom/rhmsoft/fm/core/ToolbarHelper;IIILandroid/content/Context;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, v6, v0}, Lcom/rhmsoft/fm/core/ToolbarHelper;->initToolbar(Ljava/util/List;Z)V

    .line 140
    return-void
.end method

.method public initNormalToolbar()V
    .locals 2

    .prologue
    .line 47
    iget-object v1, p0, Lcom/rhmsoft/fm/core/ToolbarHelper;->fileManager:Lcom/rhmsoft/fm/pro/FileManager;

    invoke-static {v1}, Lcom/rhmsoft/fm/core/ToolbarActionRegistry;->initializeToolbarActions(Lcom/rhmsoft/fm/pro/FileManager;)Ljava/util/List;

    move-result-object v0

    .line 48
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/rhmsoft/fm/action/Action;>;"
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/rhmsoft/fm/core/ToolbarHelper;->initToolbar(Ljava/util/List;Z)V

    .line 49
    return-void
.end method

.method public refreshStatus()V
    .locals 7

    .prologue
    .line 144
    iget-object v5, p0, Lcom/rhmsoft/fm/core/ToolbarHelper;->toolbar:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/rhmsoft/fm/core/ToolbarHelper;->fileManager:Lcom/rhmsoft/fm/pro/FileManager;

    invoke-virtual {v5}, Lcom/rhmsoft/fm/pro/FileManager;->getCurrentFolder()Lcom/rhmsoft/fm/model/IFileWrapper;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 145
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/rhmsoft/fm/core/ToolbarHelper;->toolbar:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-lt v2, v5, :cond_1

    .line 165
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 146
    .restart local v2    # "i":I
    :cond_1
    iget-object v5, p0, Lcom/rhmsoft/fm/core/ToolbarHelper;->toolbar:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 147
    .local v4, "view":Landroid/view/View;
    instance-of v5, v4, Landroid/widget/Button;

    if-eqz v5, :cond_3

    move-object v1, v4

    .line 148
    check-cast v1, Landroid/widget/Button;

    .line 149
    .local v1, "btn":Landroid/widget/Button;
    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/rhmsoft/fm/action/Action;

    if-eqz v5, :cond_3

    .line 150
    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rhmsoft/fm/action/Action;

    .line 151
    .local v0, "action":Lcom/rhmsoft/fm/action/Action;
    invoke-virtual {v0}, Lcom/rhmsoft/fm/action/Action;->isEnabled()Z

    move-result v3

    .line 152
    .local v3, "isEnabled":Z
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 153
    iget v5, v0, Lcom/rhmsoft/fm/action/Action;->darkIconRes:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 154
    if-eqz v3, :cond_4

    .line 155
    iget v5, v0, Lcom/rhmsoft/fm/action/Action;->iconRes:I

    invoke-direct {p0, v1, v5}, Lcom/rhmsoft/fm/core/ToolbarHelper;->setButtonDrawable(Landroid/widget/Button;I)V

    .line 159
    :cond_2
    :goto_1
    instance-of v5, v0, Lcom/rhmsoft/fm/action/ActionTextWatcher;

    if-eqz v5, :cond_3

    .line 160
    check-cast v0, Lcom/rhmsoft/fm/action/ActionTextWatcher;

    .end local v0    # "action":Lcom/rhmsoft/fm/action/Action;
    invoke-interface {v0, v1}, Lcom/rhmsoft/fm/action/ActionTextWatcher;->refreshText(Landroid/widget/Button;)V

    .line 145
    .end local v1    # "btn":Landroid/widget/Button;
    .end local v3    # "isEnabled":Z
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    .restart local v0    # "action":Lcom/rhmsoft/fm/action/Action;
    .restart local v1    # "btn":Landroid/widget/Button;
    .restart local v3    # "isEnabled":Z
    :cond_4
    iget v5, v0, Lcom/rhmsoft/fm/action/Action;->darkIconRes:I

    invoke-direct {p0, v1, v5}, Lcom/rhmsoft/fm/core/ToolbarHelper;->setButtonDrawable(Landroid/widget/Button;I)V

    goto :goto_1
.end method
