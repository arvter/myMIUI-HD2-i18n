.class final Lcom/android/browser/common/ExceptionHandler$1;
.super Ljava/lang/Object;
.source "ExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/common/ExceptionHandler;->sendMessageAsync(Ljava/lang/Thread;Ljava/lang/Throwable;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ex:Ljava/lang/Throwable;

.field final synthetic val$extraMessage:Ljava/lang/String;

.field final synthetic val$thread:Ljava/lang/Thread;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Ljava/lang/Thread;Ljava/lang/Throwable;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/browser/common/ExceptionHandler$1;->val$thread:Ljava/lang/Thread;

    iput-object p2, p0, Lcom/android/browser/common/ExceptionHandler$1;->val$ex:Ljava/lang/Throwable;

    iput p3, p0, Lcom/android/browser/common/ExceptionHandler$1;->val$type:I

    iput-object p4, p0, Lcom/android/browser/common/ExceptionHandler$1;->val$extraMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/browser/common/ExceptionHandler$1;->val$thread:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/browser/common/ExceptionHandler$1;->val$ex:Ljava/lang/Throwable;

    iget v2, p0, Lcom/android/browser/common/ExceptionHandler$1;->val$type:I

    iget-object v3, p0, Lcom/android/browser/common/ExceptionHandler$1;->val$extraMessage:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/browser/common/ExceptionHandler;->handlerException(Ljava/lang/Thread;Ljava/lang/Throwable;ILjava/lang/String;)V

    .line 116
    return-void
.end method
