.class public final enum Lcom/miui/camera/Constants$CAMERA_STATE;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/camera/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CAMERA_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/camera/Constants$CAMERA_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/camera/Constants$CAMERA_STATE;

.field public static final enum IDLE:Lcom/miui/camera/Constants$CAMERA_STATE;

.field public static final enum SNAPSHOT_IN_PROGRESS:Lcom/miui/camera/Constants$CAMERA_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    new-instance v0, Lcom/miui/camera/Constants$CAMERA_STATE;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/miui/camera/Constants$CAMERA_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/camera/Constants$CAMERA_STATE;->IDLE:Lcom/miui/camera/Constants$CAMERA_STATE;

    .line 89
    new-instance v0, Lcom/miui/camera/Constants$CAMERA_STATE;

    const-string v1, "SNAPSHOT_IN_PROGRESS"

    invoke-direct {v0, v1, v3}, Lcom/miui/camera/Constants$CAMERA_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/camera/Constants$CAMERA_STATE;->SNAPSHOT_IN_PROGRESS:Lcom/miui/camera/Constants$CAMERA_STATE;

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/camera/Constants$CAMERA_STATE;

    sget-object v1, Lcom/miui/camera/Constants$CAMERA_STATE;->IDLE:Lcom/miui/camera/Constants$CAMERA_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/camera/Constants$CAMERA_STATE;->SNAPSHOT_IN_PROGRESS:Lcom/miui/camera/Constants$CAMERA_STATE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/camera/Constants$CAMERA_STATE;->$VALUES:[Lcom/miui/camera/Constants$CAMERA_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/camera/Constants$CAMERA_STATE;
    .locals 1
    .parameter

    .prologue
    .line 87
    const-class v0, Lcom/miui/camera/Constants$CAMERA_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/camera/Constants$CAMERA_STATE;

    return-object p0
.end method

.method public static values()[Lcom/miui/camera/Constants$CAMERA_STATE;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/miui/camera/Constants$CAMERA_STATE;->$VALUES:[Lcom/miui/camera/Constants$CAMERA_STATE;

    invoke-virtual {v0}, [Lcom/miui/camera/Constants$CAMERA_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/camera/Constants$CAMERA_STATE;

    return-object v0
.end method
