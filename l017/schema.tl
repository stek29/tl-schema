---types---
// message#22eb6aba id:int from_id:int to_id:Peer out:Bool unread:Bool date:int message:string media:MessageMedia = Message;
message#567699b3 flags:int id:int from_id:int to_id:Peer date:int message:string media:MessageMedia = Message;
// messageForwarded#5f46804 id:int fwd_from_id:int fwd_date:int from_id:int to_id:Peer out:Bool unread:Bool date:int message:string media:MessageMedia = Message;
messageForwarded#a367e716 flags:int id:int fwd_from_id:int fwd_date:int from_id:int to_id:Peer date:int message:string media:MessageMedia = Message;
// messageService#9f8d60bb id:int from_id:int to_id:Peer out:Bool unread:Bool date:int action:MessageAction = Message;
messageService#1d86f70e flags:int id:int from_id:int to_id:Peer date:int action:MessageAction = Message;
// updateUserTyping#6baa8508 user_id:int = Update;
updateUserTyping#5c486927 user_id:int action:SendMessageAction = Update;
// updateChatUserTyping#3c46cfe6 chat_id:int user_id:int = Update;
updateChatUserTyping#9a65ea1f chat_id:int user_id:int action:SendMessageAction = Update;
sendMessageTypingAction#16bf744e = SendMessageAction;
sendMessageCancelAction#fd5ec8f5 = SendMessageAction;
sendMessageRecordVideoAction#a187d66f = SendMessageAction;
sendMessageUploadVideoAction#92042ff7 = SendMessageAction;
sendMessageRecordAudioAction#d52f73f7 = SendMessageAction;
sendMessageUploadAudioAction#e6ac8a6f = SendMessageAction;
sendMessageUploadPhotoAction#990a3c1a = SendMessageAction;
sendMessageUploadDocumentAction#8faee98e = SendMessageAction;
sendMessageGeoLocationAction#176f8ba1 = SendMessageAction;
sendMessageChooseContactAction#628cbc6f = SendMessageAction;
---functions---
// messages.readHistory#b04f2510 peer:InputPeer max_id:int offset:int = messages.AffectedHistory;
messages.readHistory#eed884c6 peer:InputPeer max_id:int offset:int read_contents:Bool = messages.AffectedHistory;
// messages.setTyping#719839e9 peer:InputPeer typing:Bool = Bool;
messages.setTyping#a3825e50 peer:InputPeer action:SendMessageAction = Bool;
messages.readMessageContents#354b5bc2 id:Vector<int> = Vector<int>;
invokeWithLayer17#50858a19 query:!X = X;
