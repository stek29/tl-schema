---types---
// chat#7312bc48 flags:# creator:flags.0?true kicked:flags.1?true left:flags.2?true admins_enabled:flags.3?true admin:flags.4?true id:int title:string photo:ChatPhoto participants_count:int date:int version:int = Chat;
// messageActionChatAddUser#5e3cfc4b user_id:int = MessageAction;
// config#4e32b894 date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int broadcast_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int disabled_features:Vector<DisabledFeature> = Config;
// chatInvite#93e99b60 flags:# channel:flags.0?true broadcast:flags.1?true public:flags.2?true title:string = ChatInvite;
// channel#678e9587 flags:# creator:flags.0?true kicked:flags.1?true left:flags.2?true editor:flags.3?true moderator:flags.4?true broadcast:flags.5?true verified:flags.7?true id:int access_hash:long title:string username:flags.6?string photo:ChatPhoto date:int version:int = Chat;
// channelFull#fab31aa3 flags:# can_view_participants:flags.3?true id:int about:string participants_count:flags.0?int admins_count:flags.1?int kicked_count:flags.2?int read_inbox_max_id:int unread_count:int unread_important_count:int chat_photo:Photo notify_settings:PeerNotifySettings exported_invite:ExportedChatInvite = ChatFull;
chat#d91cdd54 flags:# creator:flags.0?true kicked:flags.1?true left:flags.2?true admins_enabled:flags.3?true admin:flags.4?true deactivated:flags.5?true id:int title:string photo:ChatPhoto participants_count:int date:int version:int migrated_to:flags.6?InputChannel = Chat;
channel#678e9587 flags:# creator:flags.0?true kicked:flags.1?true left:flags.2?true editor:flags.3?true moderator:flags.4?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true id:int access_hash:long title:string username:flags.6?string photo:ChatPhoto date:int version:int = Chat;
channelFull#9e341ddf flags:# can_view_participants:flags.3?true id:int about:string participants_count:flags.0?int admins_count:flags.1?int kicked_count:flags.2?int read_inbox_max_id:int unread_count:int unread_important_count:int chat_photo:Photo notify_settings:PeerNotifySettings exported_invite:ExportedChatInvite bot_info:Vector<BotInfo> migrated_from_chat_id:flags.4?int migrated_from_max_id:flags.4?int = ChatFull;
messageActionChatAddUser#488a7337 users:Vector<int> = MessageAction;
messageActionChatMigrateTo#51bdb021 channel_id:int = MessageAction;
messageActionChannelMigrateFrom#b055eaee title:string chat_id:int = MessageAction;
config#6cb6e65e date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int megagroup_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int disabled_features:Vector<DisabledFeature> = Config;
chatInvite#93e99b60 flags:# channel:flags.0?true broadcast:flags.1?true public:flags.2?true megagroup:flags.3?true title:string = ChatInvite;
channelParticipantsBots#b0d1865b = ChannelParticipantsFilter;
---functions---
// messages.startBot#1b3e0ffc bot:InputUser chat_id:int random_id:long start_param:string = Updates;
// channels.createChannel#5521d844 flags:# broadcast:flags.0?true title:string about:string users:Vector<InputUser> = Updates;
messages.startBot#e6df7378 bot:InputUser peer:InputPeer random_id:long start_param:string = Updates;
messages.migrateChat#15a3b8e3 chat_id:int = Updates;
messages.searchGlobal#9e3cacb0 q:string offset_date:int offset_peer:InputPeer offset_id:int limit:int = messages.Messages;
channels.createChannel#f4893d7f flags:# broadcast:flags.0?true megagroup:flags.1?true title:string about:string = Updates;
