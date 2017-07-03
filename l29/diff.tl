---types---
// documentAttributeSticker#994c9882 alt:string = DocumentAttribute;
// messages.allStickers#dcef3102 hash:string packs:Vector<StickerPack> documents:Vector<Document> = messages.AllStickers;
documentAttributeSticker#3a556302 alt:string stickerset:InputStickerSet = DocumentAttribute;
messages.allStickers#5ce352ec hash:string packs:Vector<StickerPack> sets:Vector<StickerSet> documents:Vector<Document> = messages.AllStickers;
inputStickerSetEmpty#ffb62b95 = InputStickerSet;
inputStickerSetID#9de7a269 id:long access_hash:long = InputStickerSet;
inputStickerSetShortName#861cc8a0 short_name:string = InputStickerSet;
stickerSet#a7a43b17 id:long access_hash:long title:string short_name:string = StickerSet;
messages.stickerSet#b60a24a6 set:StickerSet packs:Vector<StickerPack> documents:Vector<Document> = messages.StickerSet;
---functions---
messages.getStickerSet#2619a90e stickerset:InputStickerSet = messages.StickerSet;
messages.installStickerSet#efbbfae9 stickerset:InputStickerSet = Bool;
messages.uninstallStickerSet#f96e55de stickerset:InputStickerSet = Bool;
