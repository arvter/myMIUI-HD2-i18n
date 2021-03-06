.class public Lcom/android/settings/XiaomiAccountPreference;
.super Lcom/android/settings/AccountPreference;
.source "XiaomiAccountPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "context"
    .parameter "account"
    .parameter "icon"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p4, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;)V

    .line 20
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.XIAOMI_ACCOUNT_SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {p0}, Lcom/android/settings/XiaomiAccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/settings/XiaomiAccountPreference;->setIntent(Landroid/content/Intent;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/android/settings/AccountPreference;->onBindView(Landroid/view/View;)V

    .line 33
    const v0, 0x7f070001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "summary"

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/settings/XiaomiAccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06002c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/android/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 28
    return-void
.end method
