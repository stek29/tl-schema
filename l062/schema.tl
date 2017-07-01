---types---
inputMessagesFilterPhoneCalls#80c99768 flags:# missed:flags.0?true = MessagesFilter;
messageActionPhoneCall#80e11a7f flags:# call_id:long reason:flags.0?PhoneCallDiscardReason duration:flags.1?int = MessageAction;
---functions---
// messages.deleteMessages#a5f18925 id:Vector<int> = messages.AffectedMessages;
messages.deleteMessages#e58e95d2 flags:# revoke:flags.0?true id:Vector<int> = messages.AffectedMessages;
messages.reportEncryptedSpam#4b0c8c0f peer:InputEncryptedChat = Bool;
