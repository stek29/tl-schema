---types---
// documentAttributeAudio#51448e5 duration:int = DocumentAttribute;
documentAttributeAudio#ded218e0 duration:int title:string performer:string = DocumentAttribute;
// messages.allStickers#5ce352ec hash:string packs:Vector<StickerPack> sets:Vector<StickerSet> documents:Vector<Document> = messages.AllStickers;
messages.allStickers#d51dafdb hash:string sets:Vector<StickerSet> = messages.AllStickers;
// stickerSet#a7a43b17 id:long access_hash:long title:string short_name:string = StickerSet;
stickerSet#cd303b41 flags:# id:long access_hash:long title:string short_name:string count:int hash:int = StickerSet;
---functions---
// messages.installStickerSet#efbbfae9 stickerset:InputStickerSet = Bool;
messages.installStickerSet#7b30c3a6 stickerset:InputStickerSet disabled:Bool = Bool;
