---types---
// inputMediaVenue#2827a81a geo_point:InputGeoPoint title:string address:string provider:string venue_id:string = InputMedia;
inputMediaVenue#c13d1c11 geo_point:InputGeoPoint title:string address:string provider:string venue_id:string venue_type:string = InputMedia;
// channelFull#17f45fcf flags:# can_view_participants:flags.3?true can_set_username:flags.6?true can_set_stickers:flags.7?true id:int about:string participants_count:flags.0?int admins_count:flags.1?int kicked_count:flags.2?int banned_count:flags.2?int read_inbox_max_id:int read_outbox_max_id:int unread_count:int chat_photo:Photo notify_settings:PeerNotifySettings exported_invite:ExportedChatInvite bot_info:Vector<BotInfo> migrated_from_chat_id:flags.4?int migrated_from_max_id:flags.4?int pinned_msg_id:flags.5?int stickerset:flags.8?StickerSet = ChatFull;
channelFull#76af5481 flags:# can_view_participants:flags.3?true can_set_username:flags.6?true can_set_stickers:flags.7?true hidden_prehistory:flags.10?true id:int about:string participants_count:flags.0?int admins_count:flags.1?int kicked_count:flags.2?int banned_count:flags.2?int read_inbox_max_id:int read_outbox_max_id:int unread_count:int chat_photo:Photo notify_settings:PeerNotifySettings exported_invite:ExportedChatInvite bot_info:Vector<BotInfo> migrated_from_chat_id:flags.4?int migrated_from_max_id:flags.4?int pinned_msg_id:flags.5?int stickerset:flags.8?StickerSet available_min_id:flags.9?int = ChatFull;
// messageMediaVenue#7912b71f geo:GeoPoint title:string address:string provider:string venue_id:string = MessageMedia;
messageMediaVenue#2ec0533f geo:GeoPoint title:string address:string provider:string venue_id:string venue_type:string = MessageMedia;
// config#8df376a4 flags:# phonecalls_enabled:flags.1?true date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int megagroup_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int saved_gifs_limit:int edit_time_limit:int rating_e_decay:int stickers_recent_limit:int stickers_faved_limit:int tmp_sessions:flags.0?int pinned_dialogs_count_max:int call_receive_timeout_ms:int call_ring_timeout_ms:int call_connect_timeout_ms:int call_packet_timeout_ms:int me_url_prefix:string suggested_lang_code:flags.2?string lang_pack_version:flags.2?int disabled_features:Vector<DisabledFeature> = Config;
config#9c840964 flags:# phonecalls_enabled:flags.1?true date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int megagroup_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int saved_gifs_limit:int edit_time_limit:int rating_e_decay:int stickers_recent_limit:int stickers_faved_limit:int channels_read_media_period:int tmp_sessions:flags.0?int pinned_dialogs_count_max:int call_receive_timeout_ms:int call_ring_timeout_ms:int call_connect_timeout_ms:int call_packet_timeout_ms:int me_url_prefix:string suggested_lang_code:flags.2?string lang_pack_version:flags.2?int disabled_features:Vector<DisabledFeature> = Config;
// inputBotInlineMessageMediaGeo#f4a59de1 flags:# geo_point:InputGeoPoint reply_markup:flags.2?ReplyMarkup = InputBotInlineMessage;
inputBotInlineMessageMediaGeo#c1b15d65 flags:# geo_point:InputGeoPoint period:int reply_markup:flags.2?ReplyMarkup = InputBotInlineMessage;
// botInlineMessageMediaGeo#3a8fd8b8 flags:# geo:GeoPoint reply_markup:flags.2?ReplyMarkup = BotInlineMessage;
botInlineMessageMediaGeo#b722de65 flags:# geo:GeoPoint period:int reply_markup:flags.2?ReplyMarkup = BotInlineMessage;
// messages.botResults#ccd3563d flags:# gallery:flags.0?true query_id:long next_offset:flags.1?string switch_pm:flags.2?InlineBotSwitchPM results:Vector<BotInlineResult> cache_time:int = messages.BotResults;
messages.botResults#947ca848 flags:# gallery:flags.0?true query_id:long next_offset:flags.1?string switch_pm:flags.2?InlineBotSwitchPM results:Vector<BotInlineResult> cache_time:int users:Vector<User> = messages.BotResults;
inputMediaGeoLive#7b1a118f geo_point:InputGeoPoint period:int = InputMedia;
messageMediaGeoLive#7c3c2609 geo:GeoPoint period:int = MessageMedia;
messageActionCustomAction#fae69f56 message:string = MessageAction;
inputMessagesFilterContacts#e062db83 = MessagesFilter;
inputMessagesFilterGeo#e7026d0d = MessagesFilter;
updateChannelAvailableMessages#70db6837 channel_id:int available_min_id:int = Update;
channels.channelParticipantsNotModified#f0173fe9 = channels.ChannelParticipants;
channelAdminLogEventActionTogglePreHistoryHidden#5f5c95f1 new_value:Bool = ChannelAdminLogEventAction;
help.recentMeUrls#e0310d7 urls:Vector<RecentMeUrl> chats:Vector<Chat> users:Vector<User> = help.RecentMeUrls;
recentMeUrlUser#8dbc3336 url:string user_id:int = RecentMeUrl;
recentMeUrlChat#a01b22f9 url:string chat_id:int = RecentMeUrl;
recentMeUrlStickerSet#bc0a57dc url:string set:StickerSetCovered = RecentMeUrl;
recentMeUrlChatInvite#eb49081d url:string chat_invite:ChatInvite = RecentMeUrl;
recentMeUrlUnknown#46e1d13d url:string = RecentMeUrl;
---functions---
// messages.editMessage#ce91e4ca flags:# no_webpage:flags.1?true peer:InputPeer id:int message:flags.11?string reply_markup:flags.2?ReplyMarkup entities:flags.3?Vector<MessageEntity> = Updates;
messages.editMessage#5d1b8dd flags:# no_webpage:flags.1?true stop_geo_live:flags.12?true peer:InputPeer id:int message:flags.11?string reply_markup:flags.2?ReplyMarkup entities:flags.3?Vector<MessageEntity> geo_point:flags.13?InputGeoPoint = Updates;
// channels.getParticipants#24d98f92 channel:InputChannel filter:ChannelParticipantsFilter offset:int limit:int = channels.ChannelParticipants;
channels.getParticipants#123e05e9 channel:InputChannel filter:ChannelParticipantsFilter offset:int limit:int hash:int = channels.ChannelParticipants;
messages.getRecentLocations#249431e2 peer:InputPeer limit:int = messages.Messages;
messages.readMentions#f0189d3 peer:InputPeer = messages.AffectedHistory;
help.getRecentMeUrls#3dc0f114 referer:string = help.RecentMeUrls;
channels.deleteHistory#af369d42 channel:InputChannel max_id:int = Bool;
channels.togglePreHistoryHidden#eabbb94c channel:InputChannel enabled:Bool = Updates;
