---types---
// Audio
audioEncrypted#555555f6 id:long access_hash:long user_id:int date:int duration:int size:int dc_id:int key:bytes iv:bytes = Audio;


// Document
documentEncrypted#55555558 id:long access_hash:long date:int mime_type:string size:int thumb:PhotoSize dc_id:int attributes:Vector<DocumentAttribute> key:bytes iv:bytes = Document;
documentEncrypted_old#55555556 id:long access_hash:long user_id:int date:int file_name:string mime_type:string size:int thumb:PhotoSize dc_id:int key:bytes iv:bytes = Document;


// FileLocation
fileEncryptedLocation#55555554 dc_id:int volume_id:long local_id:int secret:long key:bytes iv:bytes = FileLocation;


// Message
message_secret#555555f9 unread:flags.0?true out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true flags:# id:int ttl:int from_id:int to_id:Peer date:int message:string media:MessageMedia entities:Vector<MessageEntity> via_bot_name:flags.11?string reply_to_random_id:flags.3?long attachPath:string = Message;
message_secret_old#555555f8 unread:flags.0?true out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true flags:# id:int ttl:int from_id:int to_id:Peer date:int message:string media:MessageMedia attachPath:string = Message;


// MessageAction
messageActionLoginUnknownLocation#555555f5 title:string address:string = MessageAction;
messageActionTTLChange#55555552 ttl:int = MessageAction;
messageActionUserUpdatedPhoto#55555551 newUserPhoto:UserProfilePhoto = MessageAction;
messageEncryptedAction#555555f7 encryptedAction:DecryptedMessageAction = MessageAction;


// Video
videoEncrypted#55555553 id:long access_hash:long user_id:int date:int caption:string duration:int size:int thumb:PhotoSize dc_id:int w:int h:int key:bytes iv:bytes = Video;

