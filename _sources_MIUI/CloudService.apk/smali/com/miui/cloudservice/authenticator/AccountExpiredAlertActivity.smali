.class public Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;
.super Landroid/app/Activity;
.source "AccountExpiredAlertActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;->requestWindowFeature(I)Z

    .line 30
    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 31
    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 33
    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "account"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 34
    .local v0, account:Landroid/accounts/Account;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 36
    .local v1, accountManager:Landroid/accounts/AccountManager;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;

    invoke-direct {v4, p0, v1, v0}, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;-><init>(Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;Landroid/accounts/AccountManager;Landroid/accounts/Account;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$1;

    invoke-direct {v4, p0}, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$1;-><init>(Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070039

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07003a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 79
    return-void
.end method
