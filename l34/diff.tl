---types---
// message#c3060325 flags:# id:int from_id:int to_id:Peer fwd_from_id:flags.2?int fwd_date:flags.2?int reply_to_msg_id:flags.3?int date:int message:string media:MessageMedia reply_markup:flags.6?ReplyMarkup = Message;
// messages.sentMessage#4c3d47f3 id:int date:int media:MessageMedia pts:int pts_count:int = messages.SentMessage;
// updateShortMessage#ed5c2127 flags:# id:int user_id:int message:string pts:int pts_count:int date:int fwd_from_id:flags.2?int fwd_date:flags.2?int reply_to_msg_id:flags.3?int = Updates;
// updateShortChatMessage#52238b3c flags:# id:int from_id:int chat_id:int message:string pts:int pts_count:int date:int fwd_from_id:flags.2?int fwd_date:flags.2?int reply_to_msg_id:flags.3?int = Updates;
// messages.messageEmpty#3f4e0648 = messages.Message;
message#f07814c8 flags:# id:int from_id:int to_id:Peer fwd_from_id:flags.2?int fwd_date:flags.2?int reply_to_msg_id:flags.3?int date:int message:string media:MessageMedia reply_markup:flags.6?ReplyMarkup entities:flags.7?Vector<MessageEntity> = Message;
messages.sentMessage#8a99d8e0 id:int date:int media:MessageMedia entities:Vector<MessageEntity> pts:int pts_count:int = messages.SentMessage;
updateShortMessage#3f32d858 flags:# id:int user_id:int message:string pts:int pts_count:int date:int fwd_from_id:flags.2?int fwd_date:flags.2?int reply_to_msg_id:flags.3?int entities:flags.7?Vector<MessageEntity> = Updates;
updateShortChatMessage#f9409b3d flags:# id:int from_id:int chat_id:int message:string pts:int pts_count:int date:int fwd_from_id:flags.2?int fwd_date:flags.2?int reply_to_msg_id:flags.3?int entities:flags.7?Vector<MessageEntity> = Updates;
messageEntityUnknown#bb92ba95 offset:int length:int = MessageEntity;
messageEntityMention#fa04579d offset:int length:int = MessageEntity;
messageEntityHashtag#6f635b0d offset:int length:int = MessageEntity;
messageEntityBotCommand#6cef8ac7 offset:int length:int = MessageEntity;
messageEntityUrl#6ed02538 offset:int length:int = MessageEntity;
messageEntityEmail#64e475c2 offset:int length:int = MessageEntity;
messageEntityBold#bd610bc9 offset:int length:int = MessageEntity;
messageEntityItalic#826f8b60 offset:int length:int = MessageEntity;
messageEntityCode#28a20571 offset:int length:int = MessageEntity;
messageEntityPre#73924be0 offset:int length:int language:string = MessageEntity;
messageEntityTextUrl#76a6d327 offset:int length:int url:string = MessageEntity;
---functions---
// messages.sendMessage#fc55e6b5 flags:# peer:InputPeer reply_to_msg_id:flags.0?int message:string random_id:long reply_markup:flags.2?ReplyMarkup = messages.SentMessage;
messages.sendMessage#df12390 flags:# peer:InputPeer reply_to_msg_id:flags.0?int message:string random_id:long reply_markup:flags.2?ReplyMarkup entities:flags.3?Vector<MessageEntity> = messages.SentMessage;
