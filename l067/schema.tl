---types---
// config#cb601684 flags:# phonecalls_enabled:flags.1?true date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int megagroup_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int saved_gifs_limit:int edit_time_limit:int rating_e_decay:int stickers_recent_limit:int tmp_sessions:flags.0?int pinned_dialogs_count_max:int call_receive_timeout_ms:int call_ring_timeout_ms:int call_connect_timeout_ms:int call_packet_timeout_ms:int me_url_prefix:string disabled_features:Vector<DisabledFeature> = Config;
config#7feec888 flags:# phonecalls_enabled:flags.1?true date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int megagroup_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int saved_gifs_limit:int edit_time_limit:int rating_e_decay:int stickers_recent_limit:int tmp_sessions:flags.0?int pinned_dialogs_count_max:int call_receive_timeout_ms:int call_ring_timeout_ms:int call_connect_timeout_ms:int call_packet_timeout_ms:int me_url_prefix:string suggested_lang_code:flags.2?string lang_pack_version:flags.2?int disabled_features:Vector<DisabledFeature> = Config;
// sendMessageUploadRoundAction#bb718624 = SendMessageAction;
sendMessageUploadRoundAction#243e1c66 progress:int = SendMessageAction;
updateLangPackTooLong#10c2404b = Update;
updateLangPack#56022f4d difference:LangPackDifference = Update;
pageBlockChannel#ef1751b5 channel:Chat = PageBlock;
inputStickerSetItem#ffa0a496 flags:# document:InputDocument emoji:string mask_coords:flags.0?MaskCoords = InputStickerSetItem;
langPackString#cad181f6 key:string value:string = LangPackString;
langPackStringPluralized#6c47ac9f flags:# key:string zero_value:flags.0?string one_value:flags.1?string two_value:flags.2?string few_value:flags.3?string many_value:flags.4?string other_value:string = LangPackString;
langPackStringDeleted#2979eeb2 key:string = LangPackString;
langPackDifference#f385c1f6 lang_code:string from_version:int version:int strings:Vector<LangPackString> = LangPackDifference;
langPackLanguage#117698f1 name:string native_name:string lang_code:string = LangPackLanguage;
---functions---
// initConnection#69796de9 api_id:int device_model:string system_version:string app_version:string lang_code:string query:!X = X;
initConnection#c7481da6 api_id:int device_model:string system_version:string app_version:string system_lang_code:string lang_pack:string lang_code:string query:!X = X;
messages.uploadMedia#519bc2b1 peer:InputPeer media:InputMedia = MessageMedia;
stickers.createStickerSet#4da2730c flags:# masks:flags.0?true user_id:InputUser title:string short_name:string stickers:Vector<InputStickerSetItem> = Bool;
langpack.getLangPack#9ab5c58e lang_code:string = LangPackDifference;
langpack.getStrings#2e1ee318 lang_code:string keys:Vector<string> = Vector<LangPackString>;
langpack.getDifference#b2e4d7d from_version:int = LangPackDifference;
langpack.getLanguages#800fd57d = Vector<LangPackLanguage>;
