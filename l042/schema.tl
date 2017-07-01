---types---
// channelMessagesFilter#cd77d957 flags:# important_only:flags.0?true ranges:Vector<MessageRange> = ChannelMessagesFilter;
channelMessagesFilter#cd77d957 flags:# important_only:flags.0?true exclude_new_messages:flags.1?true ranges:Vector<MessageRange> = ChannelMessagesFilter;
---functions---
// messages.getDialogs#859b3d3c offset:int limit:int = messages.Dialogs;
messages.getDialogs#6b47f94d offset_date:int offset_id:int offset_peer:InputPeer limit:int = messages.Dialogs;
// channels.editAdmin#52b16962 channel:InputChannel user_id:InputUser role:ChannelParticipantRole = Bool;
channels.editAdmin#eb7611d0 channel:InputChannel user_id:InputUser role:ChannelParticipantRole = Updates;
