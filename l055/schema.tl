---types---
// auth.authorization#ff036af1 user:User = auth.Authorization;
auth.authorization#cd050916 flags:# tmp_sessions:flags.0?int user:User = auth.Authorization;
// config#f401a4bf date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int megagroup_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int saved_gifs_limit:int edit_time_limit:int rating_e_decay:int stickers_recent_limit:int disabled_features:Vector<DisabledFeature> = Config;
config#9a6b2e2a flags:# date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int megagroup_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int saved_gifs_limit:int edit_time_limit:int rating_e_decay:int stickers_recent_limit:int tmp_sessions:flags.0?int disabled_features:Vector<DisabledFeature> = Config;
// keyboardButtonSwitchInline#ea1b7a14 text:string query:string = KeyboardButton;
keyboardButtonSwitchInline#568a748 flags:# same_peer:flags.0?true text:string query:string = KeyboardButton;
// messages.botCallbackAnswer#b10df1fb flags:# alert:flags.1?true message:flags.0?string url:flags.2?string = messages.BotCallbackAnswer;
messages.botCallbackAnswer#b10df1fb flags:# alert:flags.1?true has_url:flags.3?true message:flags.0?string url:flags.2?string = messages.BotCallbackAnswer;
inputMediaPhotoExternal#b55f4f18 url:string caption:string = InputMedia;
inputMediaDocumentExternal#e5e9607c url:string caption:string = InputMedia;
updateConfig#a229dd06 = Update;
updatePtsChanged#3354678f = Update;
---functions---
// messages.sendBroadcast#bf73f4da contacts:Vector<InputUser> random_id:Vector<long> message:string media:InputMedia = Updates;
channels.getAdminedPublicChannels#8d8d82d7 = messages.Chats;
