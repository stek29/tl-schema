### Version info
App|Version/Hash|Date
---|---|---
TDesktop|b23cd9fc11ed93d344b85a02960b2ac658244f1e|28.12.15
Webogram|4898023ed797d34f7a43dc70229a208e6e78f0e8|14.12.15

### Notes
TDesktop's version was different (it also had context bot instead of inline bot)

```diff
62a63
> botContextResult#ea0b7eec flags:# hide_url:flags.0?true webpage:WebPage = BotContextResult;
65c66
< channel#e834ce68 flags:# creator:flags.0?true kicked:flags.1?true left:flags.2?true editor:flags.3?true moderator:flags.4?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true restricted:flags.9?true id:int access_hash:long title:string username:flags.6?string photo:ChatPhoto date:int version:int restiction_reason:flags.9?string = Chat;
---
> channel#4b1b7506 flags:# creator:flags.0?true kicked:flags.1?true left:flags.2?true editor:flags.3?true moderator:flags.4?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true restricted:flags.9?true id:int access_hash:long title:string username:flags.6?string photo:ChatPhoto date:int version:int restriction_reason:flags.9?string = Chat;
126c127
< config#6cb6e65e date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int megagroup_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int disabled_features:Vector<DisabledFeature> = Config;
---
> config#06bbc5f8 date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int megagroup_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int saved_gifs_limit:int disabled_features:Vector<DisabledFeature> = Config;
204a206
> inputBotContextResult#a47850c5 flags:# hide_url:flags.20?true url:string type:flags.0?string title:flags.1?string description:flags.2?string thumb_url:flags.3?string content_url:flags.4?string content_type:flags.4?string w:flags.5?int h:flags.5?int duration:flags.6?int = InputBotContextResult;
226c228,229
< inputMediaDocument#d184e841 id:InputDocument = InputMedia;
---
> inputMediaContextBotResult#48720fe8 flags:# media:flags.0?true bot:InputUser url:string query_id:long = InputMedia;
> inputMediaDocument#1a77f29c id:InputDocument caption:string = InputMedia;
232c235
< inputMediaUploadedDocument#ffe76b78 file:InputFile mime_type:string attributes:Vector<DocumentAttribute> = InputMedia;
---
> inputMediaUploadedDocument#1d89306d file:InputFile mime_type:string attributes:Vector<DocumentAttribute> caption:string = InputMedia;
234c237
< inputMediaUploadedThumbDocument#41481486 file:InputFile thumb:InputFile mime_type:string attributes:Vector<DocumentAttribute> = InputMedia;
---
> inputMediaUploadedThumbDocument#ad613491 file:InputFile thumb:InputFile mime_type:string attributes:Vector<DocumentAttribute> caption:string = InputMedia;
242a246
> inputMessagesFilterGif#ffc86587  = MessagesFilter;
318c322
< messageMediaDocument#2fda2204 document:Document = MessageMedia;
---
> messageMediaDocument#f3e02ea8 document:Document caption:string = MessageMedia;
333a338
> messages.botResults#772740b1 flags:# media:flags.0?true query_id:long next_offset:flags.1?string results:Vector<BotContextResult> = messages.BotResults;
355a361
> messages.getContextBotResults#36e7d06c bot:InputUser query:string offset:string = messages.BotResults;
362a369
> messages.getSavedGifs#83bf3d52 hash:int = messages.SavedGifs;
378a386,388
> messages.saveGif#327a30cb id:InputDocument unsave:Bool = Bool;
> messages.savedGifs#2e0709a5 hash:int gifs:Vector<Document> = messages.SavedGifs;
> messages.savedGifsNotModified#e8025ca2  = messages.SavedGifs;
389a400
> messages.setContextBotResults#d7f2de0f flags:# media:flags.0?true private:flags.1?true query_id:long results:Vector<InputBotContextResult> cache_time:int next_offset:flags.2?string = Bool;
456a468
> updateBotContextQuery#934bca16 query_id:long user_id:int query:string offset:string = Update;
486a499
> updateSavedGifs#9375341e  = Update;
518c531
< user#3289b590 flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true restricted:flags.18?true id:int access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?UserProfilePhoto status:flags.6?UserStatus bot_info_version:flags.14?int restiction_reason:flags.18?string = User;
---
> user#cb574c74 flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true restricted:flags.18?true id:int access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?UserProfilePhoto status:flags.6?UserStatus bot_info_version:flags.14?int restriction_reason:flags.18?string bot_context_placeholder:flags.19?string = User;
537c550
< webPageExternal#cf73f207 flags:# url:string display_url:string type:flags.0?string title:flags.1?string description:flags.2?string thumb_url:flags.3?string content_url:flags.4?string w:flags.5?int h:flags.5?int duration:flags.6?int = WebPage;
---
> webPageExternal#b08fbb93 flags:# url:string display_url:string type:flags.0?string title:flags.1?string description:flags.2?string thumb_url:flags.3?string content_url:flags.4?string content_type:flags.4?string w:flags.5?int h:flags.5?int duration:flags.6?int = WebPage;
```
