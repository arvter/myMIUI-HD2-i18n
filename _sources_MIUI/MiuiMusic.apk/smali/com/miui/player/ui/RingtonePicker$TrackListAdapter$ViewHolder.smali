.class Lcom/miui/player/ui/RingtonePicker$TrackListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "RingtonePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field buffer1:Landroid/database/CharArrayBuffer;

.field buffer2:[C

.field line1:Landroid/widget/TextView;

.field line2:Landroid/widget/TextView;

.field play_indicator:Landroid/widget/ImageView;

.field radio:Landroid/widget/RadioButton;

.field final synthetic this$1:Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter$ViewHolder;->this$1:Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
