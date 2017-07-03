---types---
messages.statedMessagesLinks#3e74f5c6 messages:Vector<Message> chats:Vector<Chat> users:Vector<User> links:Vector<contacts.Link> pts:int seq:int = messages.StatedMessages;
messages.statedMessageLink#a9af2881 message:Message chats:Vector<Chat> users:Vector<User> links:Vector<contacts.Link> pts:int seq:int = messages.StatedMessage;
messages.sentMessageLink#e9db4a3f id:int date:int pts:int seq:int links:Vector<contacts.Link> = messages.SentMessage;
---functions---
messages.forwardMessage#3f3f4f2 peer:InputPeer id:int random_id:long = messages.StatedMessage;
messages.sendBroadcast#41bb0972 contacts:Vector<InputUser> message:string media:InputMedia = messages.StatedMessages;
invokeWithLayer3#b7475268 query:!X = X;
