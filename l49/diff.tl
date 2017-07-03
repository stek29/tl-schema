---types---
// messageService#c06b9607 flags:# unread:flags.0?true out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true silent:flags.13?true post:flags.14?true id:int from_id:flags.8?int to_id:Peer date:int action:MessageAction = Message;
// userFull#5a89ac5b user:User link:contacts.Link profile_photo:Photo notify_settings:PeerNotifySettings blocked:Bool bot_info:BotInfo = UserFull;
// botInfoEmpty#bb2e37ce = BotInfo;
// botInfo#9cf585d user_id:int version:int share_text:string description:string commands:Vector<BotCommand> = BotInfo;
// channel#4b1b7506 flags:# creator:flags.0?true kicked:flags.1?true left:flags.2?true editor:flags.3?true moderator:flags.4?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true restricted:flags.9?true democracy:flags.10?true signatures:flags.11?true id:int access_hash:long title:string username:flags.6?string photo:ChatPhoto date:int version:int restriction_reason:flags.9?string = Chat;
// channelFull#9e341ddf flags:# can_view_participants:flags.3?true id:int about:string participants_count:flags.0?int admins_count:flags.1?int kicked_count:flags.2?int read_inbox_max_id:int unread_count:int unread_important_count:int chat_photo:Photo notify_settings:PeerNotifySettings exported_invite:ExportedChatInvite bot_info:Vector<BotInfo> migrated_from_chat_id:flags.4?int migrated_from_max_id:flags.4?int = ChatFull;
// updateChannelTooLong#60946422 channel_id:int = Update;
channel#a14dca52 flags:# creator:flags.0?true kicked:flags.1?true left:flags.2?true editor:flags.3?true moderator:flags.4?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true restricted:flags.9?true democracy:flags.10?true signatures:flags.11?true min:flags.12?true id:int access_hash:flags.13?long title:string username:flags.6?string photo:ChatPhoto date:int version:int restriction_reason:flags.9?string = Chat;
channelFull#97bee562 flags:# can_view_participants:flags.3?true can_set_username:flags.6?true id:int about:string participants_count:flags.0?int admins_count:flags.1?int kicked_count:flags.2?int read_inbox_max_id:int unread_count:int unread_important_count:int chat_photo:Photo notify_settings:PeerNotifySettings exported_invite:ExportedChatInvite bot_info:Vector<BotInfo> migrated_from_chat_id:flags.4?int migrated_from_max_id:flags.4?int pinned_msg_id:flags.5?int = ChatFull;
messageService#9e19a1f6 flags:# unread:flags.0?true out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true silent:flags.13?true post:flags.14?true id:int from_id:flags.8?int to_id:Peer reply_to_msg_id:flags.3?int date:int action:MessageAction = Message;
messageActionPinMessage#94bd38ed = MessageAction;
peerSettings#818426cd flags:# report_spam:flags.0?true = PeerSettings;
userFull#5932fc03 flags:# blocked:flags.0?true user:User about:flags.1?string link:contacts.Link profile_photo:flags.2?Photo notify_settings:PeerNotifySettings bot_info:flags.3?BotInfo = UserFull;
updateChannelTooLong#eb0467fb flags:# channel_id:int pts:flags.0?int = Update;
updateChannelPinnedMessage#98592475 channel_id:int id:int = Update;
botInfo#98e81d3a user_id:int description:string commands:Vector<BotCommand> = BotInfo;
---functions---
// account.updateProfile#f0888d68 first_name:string last_name:string = User;
account.updateProfile#78515775 flags:# first_name:flags.0?string last_name:flags.1?string about:flags.2?string = User;
messages.hideReportSpam#a8f1709b peer:InputPeer = Bool;
messages.getPeerSettings#3672e09c peer:InputPeer = PeerSettings;
channels.updatePinnedMessage#a72ded52 flags:# silent:flags.0?true channel:InputChannel id:int = Updates;
