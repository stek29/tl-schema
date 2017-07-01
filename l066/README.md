### Version info
App|Version/Hash|Date
---|---|---
TDesktop|8d28d0691f668a67587b056aeb53302929f77385|23.05.17
Webogram|fb9bd8f1ec76485951d82dda8b8bd31e19dd6ee7|29.06.17

### Notes
Webogram version was outdated:

```diff
165c165
< contacts.getTopPeers#d4982db5 flags:# correspondents:flags.0?true bots_pm:flags.1?true bots_inline:flags.2?true groups:flags.10?true channels:flags.15?true offset:int limit:int hash:int = contacts.TopPeers;
---
> contacts.getTopPeers#d4982db5 flags:# correspondents:flags.0?true bots_pm:flags.1?true bots_inline:flags.2?true phone_calls:flags.3?true groups:flags.10?true channels:flags.15?true offset:int limit:int hash:int = contacts.TopPeers;
323a324
> inputStickerSetItem#ffa0a496 flags:# document:InputDocument emoji:string mask_coords:flags.0?MaskCoords = InputStickerSetItem;
510a512
> messages.uploadMedia#519bc2b1 peer:InputPeer media:InputMedia = MessageMedia;
519a522
> pageBlockChannel#ef1751b5 channel:Chat = PageBlock;
622c625
< sendMessageUploadRoundAction#bb718624  = SendMessageAction;
---
> sendMessageUploadRoundAction#243e1c66 progress:int = SendMessageAction;
628a632,635
> stickers.addStickerToSet#8653febe stickerset:InputStickerSet sticker:InputStickerSetItem = messages.StickerSet;
> stickers.changeStickerPosition#4ed705ca sticker:InputDocument position:int = Bool;
> stickers.createStickerSet#9bd86e6a flags:# masks:flags.0?true user_id:InputUser title:string short_name:string stickers:Vector<InputStickerSetItem> = messages.StickerSet;
> stickers.removeStickerFromSet#04255934 sticker:InputDocument = Bool;
```
