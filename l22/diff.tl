---types---
// inputMediaUploadedDocument#34e794bd file:InputFile file_name:string mime_type:string = InputMedia;
// inputMediaUploadedThumbDocument#3e46de5d file:InputFile thumb:InputFile file_name:string mime_type:string = InputMedia;
// document#9efc6326 id:long access_hash:long user_id:int date:int file_name:string mime_type:string size:int thumb:PhotoSize dc_id:int = Document;
inputMediaUploadedDocument#ffe76b78 file:InputFile mime_type:string attributes:Vector<DocumentAttribute> = InputMedia;
inputMediaUploadedThumbDocument#41481486 file:InputFile thumb:InputFile mime_type:string attributes:Vector<DocumentAttribute> = InputMedia;
document#f9a39f4f id:long access_hash:long date:int mime_type:string size:int thumb:PhotoSize dc_id:int attributes:Vector<DocumentAttribute> = Document;
documentAttributeImageSize#6c37c15c w:int h:int = DocumentAttribute;
documentAttributeAnimated#11b58939 = DocumentAttribute;
documentAttributeSticker#fb0a5727 = DocumentAttribute;
documentAttributeVideo#5910cccb duration:int w:int h:int = DocumentAttribute;
documentAttributeAudio#51448e5 duration:int = DocumentAttribute;
documentAttributeFilename#15590068 file_name:string = DocumentAttribute;
messages.stickersNotModified#f1749a22 = messages.Stickers;
messages.stickers#8a8ecd32 hash:string stickers:Vector<Document> = messages.Stickers;
stickerPack#12b299d4 emoticon:string documents:Vector<long> = StickerPack;
messages.allStickersNotModified#e86602c3 = messages.AllStickers;
messages.allStickers#dcef3102 hash:string packs:Vector<StickerPack> documents:Vector<Document> = messages.AllStickers;
---functions---
messages.getStickers#ae22e045 emoticon:string hash:string = messages.Stickers;
messages.getAllStickers#aa3bc868 hash:string = messages.AllStickers;
