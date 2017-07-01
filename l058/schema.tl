---types---
// sendMessageGamePlayAction#dd6a8f48 = SendMessageAction;
// sendMessageGameStopAction#15c2c99a = SendMessageAction;
// userFull#5932fc03 flags:# blocked:flags.0?true user:User about:flags.1?string link:contacts.Link profile_photo:flags.2?Photo notify_settings:PeerNotifySettings bot_info:flags.3?BotInfo = UserFull;
userFull#f220f3f flags:# blocked:flags.0?true phone_calls_available:flags.4?true user:User about:flags.1?string link:contacts.Link profile_photo:flags.2?Photo notify_settings:PeerNotifySettings bot_info:flags.3?BotInfo common_chats_count:int = UserFull;
// messages.botResults#256709a6 flags:# gallery:flags.0?true query_id:long next_offset:flags.1?string switch_pm:flags.2?InlineBotSwitchPM results:Vector<BotInlineResult> = messages.BotResults;
messages.botResults#ccd3563d flags:# gallery:flags.0?true query_id:long next_offset:flags.1?string switch_pm:flags.2?InlineBotSwitchPM results:Vector<BotInlineResult> cache_time:int = messages.BotResults;
// messages.botCallbackAnswer#b10df1fb flags:# alert:flags.1?true has_url:flags.3?true message:flags.0?string url:flags.2?string = messages.BotCallbackAnswer;
messages.botCallbackAnswer#36585ea4 flags:# alert:flags.1?true has_url:flags.3?true message:flags.0?string url:flags.2?string cache_time:int = messages.BotCallbackAnswer;
messages.chatsSlice#78f69146 count:int chats:Vector<Chat> users:Vector<User> = messages.Chats;
updateChannelWebPage#40771900 channel_id:int webpage:WebPage pts:int pts_count:int = Update;
updates.differenceTooLong#4afe8f6d pts:int = updates.Difference;
---functions---
// updates.getDifference#a041495 pts:int date:int qts:int = updates.Difference;
updates.getDifference#25939651 flags:# pts:int pts_total_limit:flags.0?int date:int qts:int = updates.Difference;
// updates.getChannelDifference#bb32d7c0 channel:InputChannel filter:ChannelMessagesFilter pts:int limit:int = updates.ChannelDifference;
updates.getChannelDifference#3173d78 flags:# force:flags.0?true channel:InputChannel filter:ChannelMessagesFilter pts:int limit:int = updates.ChannelDifference;
// messages.setBotCallbackAnswer#c927d44b flags:# alert:flags.1?true query_id:long message:flags.0?string url:flags.2?string = Bool;
messages.setBotCallbackAnswer#d58f130a flags:# alert:flags.1?true query_id:long message:flags.0?string url:flags.2?string cache_time:int = Bool;
messages.getCommonChats#d0a48c4 user_id:InputUser max_id:int limit:int = messages.Chats;
messages.getAllChats#eba80ff0 except_ids:Vector<int> = messages.Chats;
help.setBotUpdatesStatus#ec22cfcd pending_updates_count:int message:string = Bool;
