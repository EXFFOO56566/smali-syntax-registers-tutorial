.class abstract Lcom/rhmsoft/fm/pro/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/rhmsoft/fm/pro/BaseActivity;->finish()V

    .line 23
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-static {}, Lcom/rhmsoft/fm/core/StrictModeAPI;->permitAll()V

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    const-string v0, "WORKAROUND_FOR_BUG_19917_KEY"

    const-string v1, "WORKAROUND_FOR_BUG_19917_VALUE"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 31
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 36
    invoke-static {p0}, Lcom/rhmsoft/fm/core/AnalyticsAPI;->activityStart(Landroid/app/Activity;)V

    .line 37
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 42
    invoke-static {p0}, Lcom/rhmsoft/fm/core/AnalyticsAPI;->activityStop(Landroid/app/Activity;)V

    .line 43
    return-void
.end method
