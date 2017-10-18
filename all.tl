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

---types---
===8===
decryptedMessage#1f814f1f random_id:long random_bytes:bytes message:string media:DecryptedMessageMedia = DecryptedMessage;
decryptedMessageService#aa48327d random_id:long random_bytes:bytes action:DecryptedMessageAction = DecryptedMessage;
decryptedMessageMediaEmpty#89f5c4a = DecryptedMessageMedia;
decryptedMessageMediaPhoto#32798a8c thumb:bytes thumb_w:int thumb_h:int w:int h:int size:int key:bytes iv:bytes = DecryptedMessageMedia;
decryptedMessageMediaVideo#4cee6ef3 thumb:bytes thumb_w:int thumb_h:int duration:int w:int h:int size:int key:bytes iv:bytes = DecryptedMessageMedia;
decryptedMessageMediaGeoPoint#35480a59 lat:double long:double = DecryptedMessageMedia;
decryptedMessageMediaContact#588a0a97 phone_number:string first_name:string last_name:string user_id:int = DecryptedMessageMedia;
decryptedMessageActionSetMessageTTL#a1733aec ttl_seconds:int = DecryptedMessageAction;
decryptedMessageMediaDocument#b095434b thumb:bytes thumb_w:int thumb_h:int file_name:string mime_type:string size:int key:bytes iv:bytes = DecryptedMessageMedia;
decryptedMessageMediaAudio#6080758f duration:int size:int key:bytes iv:bytes = DecryptedMessageMedia;
decryptedMessageActionReadMessages#c4f40be random_ids:Vector<long> = DecryptedMessageAction;
decryptedMessageActionDeleteMessages#65614304 random_ids:Vector<long> = DecryptedMessageAction;
decryptedMessageActionScreenshotMessages#8ac1f475 random_ids:Vector<long> = DecryptedMessageAction;
decryptedMessageActionFlushHistory#6719e45c = DecryptedMessageAction;

===17===
decryptedMessage#204d3878 random_id:long ttl:int message:string media:DecryptedMessageMedia = DecryptedMessage;
decryptedMessageService#73164160 random_id:long action:DecryptedMessageAction = DecryptedMessage;
decryptedMessageMediaVideo#524a415d thumb:bytes thumb_w:int thumb_h:int duration:int mime_type:string w:int h:int size:int key:bytes iv:bytes = DecryptedMessageMedia;
decryptedMessageMediaAudio#57e0a9cb duration:int mime_type:string size:int key:bytes iv:bytes = DecryptedMessageMedia;
decryptedMessageLayer#1be31789 random_bytes:bytes layer:int in_seq_no:int out_seq_no:int message:DecryptedMessage = DecryptedMessageLayer;
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
decryptedMessageActionResend#511110b0 start_seq_no:int end_seq_no:int = DecryptedMessageAction;
decryptedMessageActionNotifyLayer#f3048883 layer:int = DecryptedMessageAction;
decryptedMessageActionTyping#ccb27641 action:SendMessageAction = DecryptedMessageAction;

===20===
decryptedMessageActionRequestKey#f3c9611b exchange_id:long g_a:bytes = DecryptedMessageAction;
decryptedMessageActionAcceptKey#6fe1735b exchange_id:long g_b:bytes key_fingerprint:long = DecryptedMessageAction;
decryptedMessageActionAbortKey#dd05ec6b exchange_id:long = DecryptedMessageAction;
decryptedMessageActionCommitKey#ec2e0b9b exchange_id:long key_fingerprint:long = DecryptedMessageAction;
decryptedMessageActionNoop#a82fdd63 = DecryptedMessageAction;

===23===
documentAttributeImageSize#6c37c15c w:int h:int = DocumentAttribute;
documentAttributeAnimated#11b58939 = DocumentAttribute;
documentAttributeSticker#fb0a5727 = DocumentAttribute;
documentAttributeVideo#5910cccb duration:int w:int h:int = DocumentAttribute;
documentAttributeAudio#51448e5 duration:int = DocumentAttribute;
documentAttributeFilename#15590068 file_name:string = DocumentAttribute;
photoSizeEmpty#e17e23c type:string = PhotoSize;
photoSize#77bfb61b type:string location:FileLocation w:int h:int size:int = PhotoSize;
photoCachedSize#e9a734fa type:string location:FileLocation w:int h:int bytes:bytes = PhotoSize;
fileLocationUnavailable#7c596b46 volume_id:long local_id:int secret:long = FileLocation;
fileLocation#53d69076 dc_id:int volume_id:long local_id:int secret:long = FileLocation;
decryptedMessageMediaExternalDocument#fa95b0dd id:long access_hash:long date:int mime_type:string size:int thumb:PhotoSize dc_id:int attributes:Vector<DocumentAttribute> = DecryptedMessageMedia;

===46===
decryptedMessage#36b091de flags:# random_id:long ttl:int message:string media:flags.9?DecryptedMessageMedia entities:flags.7?Vector<MessageEntity> via_bot_name:flags.11?string reply_to_random_id:flags.3?long = DecryptedMessage;
decryptedMessageMediaDocument#fee613da thumb:bytes thumb_w:int thumb_h:int mime_type:string size:int key:bytes iv:bytes attributes:Vector<DocumentAttribute> = DecryptedMessageMedia;
documentAttributeSticker#3a556302 alt:string stickerset:InputStickerSet = DocumentAttribute;
documentAttributeAudio#ded218e0 duration:int title:string performer:string = DocumentAttribute;
inputStickerSetShortName#861cc8a0 short_name:string = InputStickerSet;
inputStickerSetEmpty#ffb62b95 = InputStickerSet;


===55===
documentAttributeSticker#3a556302 alt:string stickerset:InputStickerSet = DocumentAttribute;

===66===
documentAttributeVideo#ef02ce6 flags:# round_message:flags.0?true duration:int w:int h:int = DocumentAttribute;
===1===
---types---
boolFalse#bc799737 = Bool;
boolTrue#997275b5 = Bool;
error#c4b9f9bb code:int text:string = Error;
null#56730bcc = Null;
inputPeerEmpty#7f3b18ea = InputPeer;
inputPeerSelf#7da07ec9 = InputPeer;
inputPeerContact#1023dbe8 user_id:int = InputPeer;
inputPeerForeign#9b447325 user_id:int access_hash:long = InputPeer;
inputPeerChat#179be863 chat_id:int = InputPeer;
inputUserEmpty#b98886cf = InputUser;
inputUserSelf#f7c1b13f = InputUser;
inputUserContact#86e94f65 user_id:int = InputUser;
inputUserForeign#655e74ff user_id:int access_hash:long = InputUser;
inputPhoneContact#f392b7f4 client_id:long phone:string first_name:string last_name:string = InputContact;
inputFile#f52ff27f id:long parts:int name:string md5_checksum:string = InputFile;
inputMediaEmpty#9664f57f = InputMedia;
inputMediaUploadedPhoto#2dc53a7d file:InputFile = InputMedia;
inputMediaPhoto#8f2ab2ec id:InputPhoto = InputMedia;
inputMediaGeoPoint#f9c44144 geo_point:InputGeoPoint = InputMedia;
inputMediaContact#a6e45987 phone_number:string first_name:string last_name:string = InputMedia;
inputMediaUploadedVideo#4847d92a file:InputFile duration:int w:int h:int = InputMedia;
inputMediaUploadedThumbVideo#e628a145 file:InputFile thumb:InputFile duration:int w:int h:int = InputMedia;
inputMediaVideo#7f023ae6 id:InputVideo = InputMedia;
inputChatPhotoEmpty#1ca48f57 = InputChatPhoto;
inputChatUploadedPhoto#94254732 file:InputFile crop:InputPhotoCrop = InputChatPhoto;
inputChatPhoto#b2e1bf08 id:InputPhoto crop:InputPhotoCrop = InputChatPhoto;
inputGeoPointEmpty#e4c123d6 = InputGeoPoint;
inputGeoPoint#f3b7acc9 lat:double long:double = InputGeoPoint;
inputPhotoEmpty#1cd7bf0d = InputPhoto;
inputPhoto#fb95c6c4 id:long access_hash:long = InputPhoto;
inputVideoEmpty#5508ec75 = InputVideo;
inputVideo#ee579652 id:long access_hash:long = InputVideo;
inputFileLocation#14637196 volume_id:long local_id:int secret:long = InputFileLocation;
inputVideoFileLocation#3d0364ec id:long access_hash:long = InputFileLocation;
inputPhotoCropAuto#ade6b004 = InputPhotoCrop;
inputPhotoCrop#d9915325 crop_left:double crop_top:double crop_width:double = InputPhotoCrop;
inputAppEvent#770656a8 time:double type:string peer:long data:string = InputAppEvent;
peerUser#9db1bc6d user_id:int = Peer;
peerChat#bad0e5bb chat_id:int = Peer;
storage.fileUnknown#aa963b05 = storage.FileType;
storage.fileJpeg#7efe0e = storage.FileType;
storage.fileGif#cae1aadf = storage.FileType;
storage.filePng#a4f63c0 = storage.FileType;
storage.fileMp3#528a0677 = storage.FileType;
storage.fileMov#4b09ebbc = storage.FileType;
storage.filePartial#40bc6f52 = storage.FileType;
storage.fileMp4#b3cea0e4 = storage.FileType;
storage.fileWebp#1081464c = storage.FileType;
fileLocationUnavailable#7c596b46 volume_id:long local_id:int secret:long = FileLocation;
fileLocation#53d69076 dc_id:int volume_id:long local_id:int secret:long = FileLocation;
userEmpty#200250ba id:int = User;
userSelf#720535ec id:int first_name:string last_name:string phone:string photo:UserProfilePhoto status:UserStatus inactive:Bool = User;
userContact#f2fb8319 id:int first_name:string last_name:string access_hash:long phone:string photo:UserProfilePhoto status:UserStatus = User;
userRequest#22e8ceb0 id:int first_name:string last_name:string access_hash:long phone:string photo:UserProfilePhoto status:UserStatus = User;
userForeign#5214c89d id:int first_name:string last_name:string access_hash:long photo:UserProfilePhoto status:UserStatus = User;
userDeleted#b29ad7cc id:int first_name:string last_name:string = User;
userProfilePhotoEmpty#4f11bae1 = UserProfilePhoto;
userProfilePhoto#990d1493 photo_small:FileLocation photo_big:FileLocation = UserProfilePhoto;
userStatusEmpty#9d05049 = UserStatus;
userStatusOnline#edb93949 expires:int = UserStatus;
userStatusOffline#8c703f was_online:int = UserStatus;
chatEmpty#9ba2d800 id:int = Chat;
chat#6e9c9bc7 id:int title:string photo:ChatPhoto participants_count:int date:int left:Bool version:int = Chat;
chatForbidden#fb0ccc41 id:int title:string date:int = Chat;
chatFull#630e61be id:int participants:ChatParticipants chat_photo:Photo notify_settings:PeerNotifySettings = ChatFull;
chatParticipant#c8d7493e user_id:int inviter_id:int date:int = ChatParticipant;
chatParticipantsForbidden#fd2bb8a chat_id:int = ChatParticipants;
chatParticipants#7841b415 chat_id:int admin_id:int participants:Vector<ChatParticipant> version:int = ChatParticipants;
chatPhotoEmpty#37c1011c = ChatPhoto;
chatPhoto#6153276a photo_small:FileLocation photo_big:FileLocation = ChatPhoto;
messageEmpty#83e5de54 id:int = Message;
message#22eb6aba id:int from_id:int to_id:Peer out:Bool unread:Bool date:int message:string media:MessageMedia = Message;
messageForwarded#5f46804 id:int fwd_from_id:int fwd_date:int from_id:int to_id:Peer out:Bool unread:Bool date:int message:string media:MessageMedia = Message;
messageService#9f8d60bb id:int from_id:int to_id:Peer out:Bool unread:Bool date:int action:MessageAction = Message;
messageMediaEmpty#3ded6320 = MessageMedia;
messageMediaPhoto#c8c45a2a photo:Photo = MessageMedia;
messageMediaVideo#a2d24290 video:Video = MessageMedia;
messageMediaGeo#56e0d474 geo:GeoPoint = MessageMedia;
messageMediaContact#5e7d2f39 phone_number:string first_name:string last_name:string user_id:int = MessageMedia;
messageMediaUnsupported#29632a36 bytes:bytes = MessageMedia;
messageActionEmpty#b6aef7b0 = MessageAction;
messageActionChatCreate#a6638b9a title:string users:Vector<int> = MessageAction;
messageActionChatEditTitle#b5a1ce5a title:string = MessageAction;
messageActionChatEditPhoto#7fcb13a8 photo:Photo = MessageAction;
messageActionChatDeletePhoto#95e3fbef = MessageAction;
messageActionChatAddUser#5e3cfc4b user_id:int = MessageAction;
messageActionChatDeleteUser#b2ae9b0c user_id:int = MessageAction;
dialog#214a8cdf peer:Peer top_message:int unread_count:int = Dialog;
photoEmpty#2331b22d id:long = Photo;
photo#22b56751 id:long access_hash:long user_id:int date:int caption:string geo:GeoPoint sizes:Vector<PhotoSize> = Photo;
photoSizeEmpty#e17e23c type:string = PhotoSize;
photoSize#77bfb61b type:string location:FileLocation w:int h:int size:int = PhotoSize;
photoCachedSize#e9a734fa type:string location:FileLocation w:int h:int bytes:bytes = PhotoSize;
videoEmpty#c10658a8 id:long = Video;
video#5a04a49f id:long access_hash:long user_id:int date:int caption:string duration:int size:int thumb:PhotoSize dc_id:int w:int h:int = Video;
geoPointEmpty#1117dd5f = GeoPoint;
geoPoint#2049d70c long:double lat:double = GeoPoint;
auth.checkedPhone#e300cc3b phone_registered:Bool phone_invited:Bool = auth.CheckedPhone;
auth.sentCode#2215bcbd phone_registered:Bool phone_code_hash:string = auth.SentCode;
auth.authorization#f6b673a4 expires:int user:User = auth.Authorization;
auth.exportedAuthorization#df969c2d id:int bytes:bytes = auth.ExportedAuthorization;
inputNotifyPeer#b8bc5b0c peer:InputPeer = InputNotifyPeer;
inputNotifyUsers#193b4417 = InputNotifyPeer;
inputNotifyChats#4a95e84e = InputNotifyPeer;
inputNotifyAll#a429b886 = InputNotifyPeer;
inputPeerNotifySettings#19bd4ed1 mute_until:int sound:string show_previews:Bool = InputPeerNotifySettings;
peerNotifyEventsEmpty#add53cb3 = PeerNotifyEvents;
peerNotifyEventsAll#6d1ded88 = PeerNotifyEvents;
peerNotifySettingsEmpty#70a68512 = PeerNotifySettings;
peerNotifySettings#dfc6621b mute_until:int sound:string show_previews:Bool = PeerNotifySettings;
wallPaper#ccb03657 id:int title:string sizes:Vector<PhotoSize> color:int = WallPaper;
userFull#771095da user:User link:contacts.Link profile_photo:Photo notify_settings:PeerNotifySettings blocked:Bool real_first_name:string real_last_name:string = UserFull;
contact#f911c994 user_id:int mutual:Bool = Contact;
importedContact#d0028438 user_id:int client_id:long = ImportedContact;
contactBlocked#561bc879 user_id:int date:int = ContactBlocked;
contactFound#ea879f95 user_id:int = ContactFound;
contactSuggested#3de191a1 user_id:int mutual_contacts:int = ContactSuggested;
contactStatus#aa77b873 user_id:int expires:int = ContactStatus;
contacts.foreignLinkUnknown#133421f8 = contacts.ForeignLink;
contacts.foreignLinkRequested#a7801f47 has_phone:Bool = contacts.ForeignLink;
contacts.foreignLinkMutual#1bea8ce1 = contacts.ForeignLink;
contacts.myLinkEmpty#d22a1c60 = contacts.MyLink;
contacts.myLinkRequested#6c69efee contact:Bool = contacts.MyLink;
contacts.myLinkContact#c240ebd9 = contacts.MyLink;
contacts.link#eccea3f5 my_link:contacts.MyLink foreign_link:contacts.ForeignLink user:User = contacts.Link;
contacts.contacts#6f8b8cb2 contacts:Vector<Contact> users:Vector<User> = contacts.Contacts;
contacts.contactsNotModified#b74ba9d2 = contacts.Contacts;
contacts.importedContacts#d1cd0a4c imported:Vector<ImportedContact> users:Vector<User> = contacts.ImportedContacts;
contacts.blocked#1c138d15 blocked:Vector<ContactBlocked> users:Vector<User> = contacts.Blocked;
contacts.blockedSlice#900802a1 count:int blocked:Vector<ContactBlocked> users:Vector<User> = contacts.Blocked;
contacts.found#566000e results:Vector<ContactFound> users:Vector<User> = contacts.Found;
contacts.suggested#5649dcc5 results:Vector<ContactSuggested> users:Vector<User> = contacts.Suggested;
messages.dialogs#15ba6c40 dialogs:Vector<Dialog> messages:Vector<Message> chats:Vector<Chat> users:Vector<User> = messages.Dialogs;
messages.dialogsSlice#71e094f3 count:int dialogs:Vector<Dialog> messages:Vector<Message> chats:Vector<Chat> users:Vector<User> = messages.Dialogs;
messages.messages#8c718e87 messages:Vector<Message> chats:Vector<Chat> users:Vector<User> = messages.Messages;
messages.messagesSlice#b446ae3 count:int messages:Vector<Message> chats:Vector<Chat> users:Vector<User> = messages.Messages;
messages.messageEmpty#3f4e0648 = messages.Message;
messages.message#ff90c417 message:Message chats:Vector<Chat> users:Vector<User> = messages.Message;
messages.statedMessages#969478bb messages:Vector<Message> chats:Vector<Chat> users:Vector<User> pts:int seq:int = messages.StatedMessages;
messages.statedMessage#d07ae726 message:Message chats:Vector<Chat> users:Vector<User> pts:int seq:int = messages.StatedMessage;
messages.sentMessage#d1f4d35c id:int date:int pts:int seq:int = messages.SentMessage;
messages.chat#40e9002a chat:Chat users:Vector<User> = messages.Chat;
messages.chats#8150cbd8 chats:Vector<Chat> users:Vector<User> = messages.Chats;
messages.chatFull#e5d7d19c full_chat:ChatFull chats:Vector<Chat> users:Vector<User> = messages.ChatFull;
messages.affectedHistory#b7de36f2 pts:int seq:int offset:int = messages.AffectedHistory;
inputMessagesFilterEmpty#57e2f66c = MessagesFilter;
inputMessagesFilterPhotos#9609a51c = MessagesFilter;
inputMessagesFilterVideo#9fc00e65 = MessagesFilter;
inputMessagesFilterPhotoVideo#56e9f0e4 = MessagesFilter;
updateNewMessage#13abdb3 message:Message pts:int = Update;
updateMessageID#4e90bfd6 id:int random_id:long = Update;
updateReadMessages#c6649e31 messages:Vector<int> pts:int = Update;
updateDeleteMessages#a92bfe26 messages:Vector<int> pts:int = Update;
updateRestoreMessages#d15de04d messages:Vector<int> pts:int = Update;
updateUserTyping#6baa8508 user_id:int = Update;
updateChatUserTyping#3c46cfe6 chat_id:int user_id:int = Update;
updateChatParticipants#7761198 participants:ChatParticipants = Update;
updateUserStatus#1bfbd823 user_id:int status:UserStatus = Update;
updateUserName#da22d9ad user_id:int first_name:string last_name:string = Update;
updateUserPhoto#bb8ba607 user_id:int photo:UserProfilePhoto = Update;
updateContactRegistered#2575bbb9 user_id:int date:int = Update;
updateContactLink#51a48a9a user_id:int my_link:contacts.MyLink foreign_link:contacts.ForeignLink = Update;
updateActivation#6f690963 user_id:int = Update;
updateNewAuthorization#8f06529a auth_key_id:long date:int device:string location:string = Update;
updates.state#a0d9c0c pts:int date:int seq:int unread_count:int = updates.State;
updates.differenceEmpty#5d75a138 date:int seq:int = updates.Difference;
updates.difference#8adb0077 new_messages:Vector<Message> other_updates:Vector<Update> chats:Vector<Chat> users:Vector<User> state:updates.State = updates.Difference;
updates.differenceSlice#c5e839b4 new_messages:Vector<Message> other_updates:Vector<Update> chats:Vector<Chat> users:Vector<User> intermediate_state:updates.State = updates.Difference;
updatesTooLong#e317af7e = Updates;
updateShortMessage#d3f45784 id:int from_id:int message:string pts:int date:int seq:int = Updates;
updateShortChatMessage#2b2fbd4e id:int from_id:int chat_id:int message:string pts:int date:int seq:int = Updates;
updateShort#78d4dec1 update:Update date:int = Updates;
updatesCombined#725b04c3 updates:Vector<Update> users:Vector<User> chats:Vector<Chat> date:int seq_start:int seq:int = Updates;
updates#74ae4240 updates:Vector<Update> users:Vector<User> chats:Vector<Chat> date:int seq:int = Updates;
photos.photo#20212ca8 photo:Photo users:Vector<User> = photos.Photo;
upload.file#96a18d5 type:storage.FileType mtime:int bytes:bytes = upload.File;
dcOption#2ec2a43c id:int hostname:string ip_address:string port:int = DcOption;
config#232d5905 date:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int = Config;
nearestDc#8e1a1775 country:string this_dc:int nearest_dc:int = NearestDc;
help.appUpdate#8987f311 id:int critical:Bool url:string text:string = help.AppUpdate;
help.noAppUpdate#c45a6536 = help.AppUpdate;
help.inviteText#18cb9f78 message:string = help.InviteText;
---functions---
invokeAfterMsg#cb9f372d msg_id:long query:!X = X;
invokeAfterMsgs#3dc4b4f0 msg_ids:Vector<long> query:!X = X;
invokeWithLayer1#53835315 query:!X = X;
auth.checkPhone#6fe51dfb phone_number:string = auth.CheckedPhone;
auth.sendCode#d16ff372 phone_number:string sms_type:int api_id:int api_hash:string = auth.SentCode;
auth.sendCall#3c51564 phone_number:string phone_code_hash:string = Bool;
auth.signUp#1b067634 phone_number:string phone_code_hash:string phone_code:string first_name:string last_name:string = auth.Authorization;
auth.signIn#bcd51581 phone_number:string phone_code_hash:string phone_code:string = auth.Authorization;
auth.logOut#5717da40 = Bool;
auth.resetAuthorizations#9fab0d1a = Bool;
auth.sendInvites#771c1d97 phone_numbers:Vector<string> message:string = Bool;
auth.exportAuthorization#e5bfffcd dc_id:int = auth.ExportedAuthorization;
auth.importAuthorization#e3ef9613 id:int bytes:bytes = auth.Authorization;
account.registerDevice#a28557ac token_type:int token:string device_model:string system_version:string app_version:string app_sandbox:Bool = Bool;
account.unregisterDevice#65c55b40 token_type:int token:string = Bool;
account.updateNotifySettings#84be5b93 peer:InputNotifyPeer settings:InputPeerNotifySettings = Bool;
account.getNotifySettings#12b3ad31 peer:InputNotifyPeer = PeerNotifySettings;
account.resetNotifySettings#db7e1747 = Bool;
account.updateProfile#f0888d68 first_name:string last_name:string = User;
account.updateStatus#6628562c offline:Bool = Bool;
account.getWallPapers#c04cfac2 = Vector<WallPaper>;
users.getUsers#d91a548 id:Vector<InputUser> = Vector<User>;
users.getFullUser#ca30a5b1 id:InputUser = UserFull;
contacts.getStatuses#c4a353ee = Vector<ContactStatus>;
contacts.getContacts#22c6aa08 hash:string = contacts.Contacts;
contacts.importContacts#da30b32d contacts:Vector<InputContact> replace:Bool = contacts.ImportedContacts;
contacts.search#11f812d8 q:string limit:int = contacts.Found;
contacts.getSuggested#cd773428 limit:int = contacts.Suggested;
contacts.deleteContact#8e953744 id:InputUser = contacts.Link;
contacts.deleteContacts#59ab389e id:Vector<InputUser> = Bool;
contacts.block#332b49fc id:InputUser = Bool;
contacts.unblock#e54100bd id:InputUser = Bool;
contacts.getBlocked#f57c350f offset:int limit:int = contacts.Blocked;
messages.getMessages#4222fa74 id:Vector<int> = messages.Messages;
messages.getDialogs#eccf1df6 offset:int max_id:int limit:int = messages.Dialogs;
messages.getHistory#92a1df2f peer:InputPeer offset:int max_id:int limit:int = messages.Messages;
messages.search#7e9f2ab peer:InputPeer q:string filter:MessagesFilter min_date:int max_date:int offset:int max_id:int limit:int = messages.Messages;
messages.readHistory#b04f2510 peer:InputPeer max_id:int offset:int = messages.AffectedHistory;
messages.deleteHistory#f4f8fb61 peer:InputPeer offset:int = messages.AffectedHistory;
messages.deleteMessages#14f2dd0a id:Vector<int> = Vector<int>;
messages.restoreMessages#395f9d7e id:Vector<int> = Vector<int>;
messages.receivedMessages#28abcb68 max_id:int = Vector<int>;
messages.setTyping#719839e9 peer:InputPeer typing:Bool = Bool;
messages.sendMessage#4cde0aab peer:InputPeer message:string random_id:long = messages.SentMessage;
messages.sendMedia#a3c85d76 peer:InputPeer media:InputMedia random_id:long = messages.StatedMessage;
messages.forwardMessages#514cd10f peer:InputPeer id:Vector<int> = messages.StatedMessages;
messages.getChats#3c6aa187 id:Vector<int> = messages.Chats;
messages.getFullChat#3b831c66 chat_id:int = messages.ChatFull;
messages.editChatTitle#b4bc68b5 chat_id:int title:string = messages.StatedMessage;
messages.editChatPhoto#d881821d chat_id:int photo:InputChatPhoto = messages.StatedMessage;
messages.addChatUser#2ee9ee9e chat_id:int user_id:InputUser fwd_limit:int = messages.StatedMessage;
messages.deleteChatUser#c3c5cd23 chat_id:int user_id:InputUser = messages.StatedMessage;
messages.createChat#419d9aee users:Vector<InputUser> title:string = messages.StatedMessage;
updates.getState#edd4882a = updates.State;
updates.getDifference#5b36855a pts:int date:int = updates.Difference;
photos.updateProfilePhoto#eef579a0 id:InputPhoto crop:InputPhotoCrop = UserProfilePhoto;
photos.uploadProfilePhoto#d50f9c88 file:InputFile caption:string geo_point:InputGeoPoint crop:InputPhotoCrop = photos.Photo;
upload.saveFilePart#b304a621 file_id:long file_part:int bytes:bytes = Bool;
upload.getFile#e3a6cfb5 location:InputFileLocation offset:int limit:int = upload.File;
help.getConfig#c4f9186b = Config;
help.getNearestDc#1fb33026 = NearestDc;
help.getAppUpdate#c812ac7e device_model:string system_version:string app_version:string lang_code:string = help.AppUpdate;
help.saveAppLog#6f02f748 events:Vector<InputAppEvent> = Bool;
help.getInviteText#a4a95186 lang_code:string = help.InviteText;
===2===
---types---
// userProfilePhoto#990d1493 photo_small:FileLocation photo_big:FileLocation = UserProfilePhoto;
userProfilePhoto#d559d8c8 photo_id:long photo_small:FileLocation photo_big:FileLocation = UserProfilePhoto;
// inputPeerNotifySettings#19bd4ed1 mute_until:int sound:string show_previews:Bool = InputPeerNotifySettings;
inputPeerNotifySettings#46a2ce98 mute_until:int sound:string show_previews:Bool events_mask:int = InputPeerNotifySettings;
// peerNotifySettings#dfc6621b mute_until:int sound:string show_previews:Bool = PeerNotifySettings;
peerNotifySettings#8d5e11ee mute_until:int sound:string show_previews:Bool events_mask:int = PeerNotifySettings;
// updateUserPhoto#bb8ba607 user_id:int photo:UserProfilePhoto = Update;
updateUserPhoto#95313b0c user_id:int date:int photo:UserProfilePhoto previous:Bool = Update;
inputPeerNotifyEventsEmpty#f03064d8 = InputPeerNotifyEvents;
inputPeerNotifyEventsAll#e86a2c74 = InputPeerNotifyEvents;
photos.photos#8dca6aa5 photos:Vector<Photo> users:Vector<User> = photos.Photos;
photos.photosSlice#15051f54 count:int photos:Vector<Photo> users:Vector<User> = photos.Photos;
---functions---
photos.deletePhotos#87cf7f2f id:Vector<InputPhoto> = Vector<long>;
photos.getUserPhotos#b7ee553c user_id:InputUser offset:int max_id:int limit:int = photos.Photos;
invokeWithLayer2#289dd1f6 query:!X = X;
===3===
---types---
messages.statedMessagesLinks#3e74f5c6 messages:Vector<Message> chats:Vector<Chat> users:Vector<User> links:Vector<contacts.Link> pts:int seq:int = messages.StatedMessages;
messages.statedMessageLink#a9af2881 message:Message chats:Vector<Chat> users:Vector<User> links:Vector<contacts.Link> pts:int seq:int = messages.StatedMessage;
messages.sentMessageLink#e9db4a3f id:int date:int pts:int seq:int links:Vector<contacts.Link> = messages.SentMessage;
---functions---
messages.forwardMessage#3f3f4f2 peer:InputPeer id:int random_id:long = messages.StatedMessage;
messages.sendBroadcast#41bb0972 contacts:Vector<InputUser> message:string media:InputMedia = messages.StatedMessages;
invokeWithLayer3#b7475268 query:!X = X;
===4===
---types---
// updates.state#a0d9c0c pts:int date:int seq:int unread_count:int = updates.State;
updates.state#1fe1a90a pts:int date:int seq:int unread_count:int friends_unread_count:int = updates.State;
chatLocated#3631cf4c chat_id:int distance:int = ChatLocated;
inputGeoChat#74d456fa chat_id:int access_hash:long = InputGeoChat;
inputNotifyGeoChatPeer#4d8ddec8 peer:InputGeoChat = InputNotifyPeer;
geoChat#e24415f5 id:int access_hash:long title:string address:string geo:GeoPoint photo:ChatPhoto participants_count:int date:int checked_in:Bool version:int = Chat;
geoChatMessageEmpty#60311a9b chat_id:int id:int = GeoChatMessage;
geoChatMessage#4505f8e1 chat_id:int id:int from_id:int date:int message:string media:MessageMedia = GeoChatMessage;
geoChatMessageService#d34fa24e chat_id:int id:int from_id:int date:int action:MessageAction = GeoChatMessage;
geochats.statedMessage#17b1578b message:GeoChatMessage chats:Vector<Chat> users:Vector<User> seq:int = geochats.StatedMessage;
geochats.located#48feb267 results:Vector<ChatLocated> messages:Vector<GeoChatMessage> chats:Vector<Chat> users:Vector<User> = geochats.Located;
geochats.messages#d1526db1 messages:Vector<GeoChatMessage> chats:Vector<Chat> users:Vector<User> = geochats.Messages;
geochats.messagesSlice#bc5863e8 count:int messages:Vector<GeoChatMessage> chats:Vector<Chat> users:Vector<User> = geochats.Messages;
messageActionGeoChatCreate#6f038ebc title:string address:string = MessageAction;
messageActionGeoChatCheckin#c7d53de = MessageAction;
updateNewGeoChatMessage#5a68e3f7 message:GeoChatMessage = Update;
---functions---
geochats.getLocated#7f192d8f geo_point:InputGeoPoint radius:int limit:int = geochats.Located;
geochats.getRecents#e1427e6f offset:int limit:int = geochats.Messages;
geochats.checkin#55b3e8fb peer:InputGeoChat = geochats.StatedMessage;
geochats.getFullChat#6722dd6f peer:InputGeoChat = messages.ChatFull;
geochats.editChatTitle#4c8e2273 peer:InputGeoChat title:string address:string = geochats.StatedMessage;
geochats.editChatPhoto#35d81a95 peer:InputGeoChat photo:InputChatPhoto = geochats.StatedMessage;
geochats.search#cfcdc44d peer:InputGeoChat q:string filter:MessagesFilter min_date:int max_date:int offset:int max_id:int limit:int = geochats.Messages;
geochats.getHistory#b53f7a68 peer:InputGeoChat offset:int max_id:int limit:int = geochats.Messages;
geochats.setTyping#8b8a729 peer:InputGeoChat typing:Bool = Bool;
geochats.sendMessage#61b0044 peer:InputGeoChat message:string random_id:long = geochats.StatedMessage;
geochats.sendMedia#b8f0deff peer:InputGeoChat media:InputMedia random_id:long = geochats.StatedMessage;
geochats.createGeoChat#745f22cb title:string geo_point:InputGeoPoint address:string = geochats.StatedMessage;
invokeWithLayer4#dea0d430 query:!X = X;
===5===
---types---
---functions---
// auth.sendCode#d16ff372 phone_number:string sms_type:int api_id:int api_hash:string = auth.SentCode;
auth.sendCode#768d5f4d phone_number:string sms_type:int api_id:int api_hash:string lang_code:string = auth.SentCode;
// account.registerDevice#a28557ac token_type:int token:string device_model:string system_version:string app_version:string app_sandbox:Bool = Bool;
account.registerDevice#446c712c token_type:int token:string device_model:string system_version:string app_version:string app_sandbox:Bool lang_code:string = Bool;
invokeWithLayer5#417a57ae query:!X = X;
===6===
---types---
// geoChat#e24415f5 id:int access_hash:long title:string address:string geo:GeoPoint photo:ChatPhoto participants_count:int date:int checked_in:Bool version:int = Chat;
geoChat#75eaea5a id:int access_hash:long title:string address:string venue:string geo:GeoPoint photo:ChatPhoto participants_count:int date:int checked_in:Bool version:int = Chat;
---functions---
// geochats.createGeoChat#745f22cb title:string geo_point:InputGeoPoint address:string = geochats.StatedMessage;
geochats.createGeoChat#e092e16 title:string geo_point:InputGeoPoint address:string venue:string = geochats.StatedMessage;
invokeWithLayer6#3a64d54d query:!X = X;
===7===
---types---
wallPaperSolid#63117f24 id:int title:string bg_color:int color:int = WallPaper;
---functions---
invokeWithLayer7#a5be56d3 query:!X = X;
===8===
---types---
// updates.state#1fe1a90a pts:int date:int seq:int unread_count:int friends_unread_count:int = updates.State;
updates.state#a56c2a3e pts:int qts:int date:int seq:int unread_count:int = updates.State;
// updates.difference#8adb0077 new_messages:Vector<Message> other_updates:Vector<Update> chats:Vector<Chat> users:Vector<User> state:updates.State = updates.Difference;
updates.difference#f49ca0 new_messages:Vector<Message> new_encrypted_messages:Vector<EncryptedMessage> other_updates:Vector<Update> chats:Vector<Chat> users:Vector<User> state:updates.State = updates.Difference;
// updates.differenceSlice#c5e839b4 new_messages:Vector<Message> other_updates:Vector<Update> chats:Vector<Chat> users:Vector<User> intermediate_state:updates.State = updates.Difference;
updates.differenceSlice#a8fb1981 new_messages:Vector<Message> new_encrypted_messages:Vector<EncryptedMessage> other_updates:Vector<Update> chats:Vector<Chat> users:Vector<User> intermediate_state:updates.State = updates.Difference;
updateNewEncryptedMessage#12bcbd9a message:EncryptedMessage qts:int = Update;
updateEncryptedChatTyping#1710f156 chat_id:int = Update;
updateEncryption#b4a2e88d chat:EncryptedChat date:int = Update;
updateEncryptedMessagesRead#38fe25b7 chat_id:int max_date:int date:int = Update;
encryptedChatEmpty#ab7ec0a0 id:int = EncryptedChat;
encryptedChatWaiting#3bf703dc id:int access_hash:long date:int admin_id:int participant_id:int = EncryptedChat;
encryptedChatRequested#fda9a7b7 id:int access_hash:long date:int admin_id:int participant_id:int g_a:bytes nonce:bytes = EncryptedChat;
encryptedChat#6601d14f id:int access_hash:long date:int admin_id:int participant_id:int g_a_or_b:bytes nonce:bytes key_fingerprint:long = EncryptedChat;
encryptedChatDiscarded#13d6dd27 id:int = EncryptedChat;
inputEncryptedChat#f141b5e1 chat_id:int access_hash:long = InputEncryptedChat;
encryptedFileEmpty#c21f497e = EncryptedFile;
encryptedFile#4a70994c id:long access_hash:long size:int dc_id:int key_fingerprint:int = EncryptedFile;
inputEncryptedFileEmpty#1837c364 = InputEncryptedFile;
inputEncryptedFileUploaded#64bd0306 id:long parts:int md5_checksum:string key_fingerprint:int = InputEncryptedFile;
inputEncryptedFile#5a17b5e5 id:long access_hash:long = InputEncryptedFile;
inputEncryptedFileLocation#f5235d55 id:long access_hash:long = InputFileLocation;
encryptedMessage#ed18c118 random_id:long chat_id:int date:int bytes:bytes file:EncryptedFile = EncryptedMessage;
encryptedMessageService#23734b06 random_id:long chat_id:int date:int bytes:bytes = EncryptedMessage;
messages.dhConfigNotModified#c0e24635 random:bytes = messages.DhConfig;
messages.dhConfig#2c221edd g:int p:bytes version:int random:bytes = messages.DhConfig;
messages.sentEncryptedMessage#560f8935 date:int = messages.SentEncryptedMessage;
messages.sentEncryptedFile#9493ff32 date:int file:EncryptedFile = messages.SentEncryptedMessage;
---functions---
// updates.getDifference#5b36855a pts:int date:int = updates.Difference;
updates.getDifference#a041495 pts:int date:int qts:int = updates.Difference;
messages.getDhConfig#26cf8950 version:int random_length:int = messages.DhConfig;
messages.requestEncryption#f64daf43 user_id:InputUser random_id:int g_a:bytes = EncryptedChat;
messages.acceptEncryption#3dbc0415 peer:InputEncryptedChat g_b:bytes key_fingerprint:long = EncryptedChat;
messages.discardEncryption#edd923c5 chat_id:int = Bool;
messages.setEncryptedTyping#791451ed peer:InputEncryptedChat typing:Bool = Bool;
messages.readEncryptedHistory#7f4b690a peer:InputEncryptedChat max_date:int = Bool;
messages.sendEncrypted#a9776773 peer:InputEncryptedChat random_id:long data:bytes = messages.SentEncryptedMessage;
messages.sendEncryptedFile#9a901b66 peer:InputEncryptedChat random_id:long data:bytes file:InputEncryptedFile = messages.SentEncryptedMessage;
messages.sendEncryptedService#32d439a4 peer:InputEncryptedChat random_id:long data:bytes = messages.SentEncryptedMessage;
messages.receivedQueue#55a5bb66 max_qts:int = Vector<long>;
invokeWithLayer8#e9abd9fd query:!X = X;
===9===
---types---
inputFileBig#fa4f0bb5 id:long parts:int name:string = InputFile;
inputEncryptedFileBigUploaded#2dc173c8 id:long parts:int key_fingerprint:int = InputEncryptedFile;
---functions---
upload.saveBigFilePart#de7b673d file_id:long file_part:int file_total_parts:int bytes:bytes = Bool;
initConnection#69796de9 api_id:int device_model:string system_version:string app_version:string lang_code:string query:!X = X;
invokeWithLayer9#76715a63 query:!X = X;
===10===
---types---
storage.filePdf#ae1e508d = storage.FileType;
inputMessagesFilterAudio#cfc87522 = MessagesFilter;
inputMessagesFilterDocument#9eddf188 = MessagesFilter;
inputMessagesFilterPhotoVideoDocuments#d95e73bb = MessagesFilter;
updateChatParticipantAdd#3a0eeb22 chat_id:int user_id:int inviter_id:int version:int = Update;
updateChatParticipantDelete#6e5f8c22 chat_id:int user_id:int version:int = Update;
updateDcOptions#8e5e9873 dc_options:Vector<DcOption> = Update;
inputMediaUploadedAudio#61a6d436 file:InputFile duration:int = InputMedia;
inputMediaAudio#89938781 id:InputAudio = InputMedia;
inputMediaUploadedDocument#34e794bd file:InputFile file_name:string mime_type:string = InputMedia;
inputMediaUploadedThumbDocument#3e46de5d file:InputFile thumb:InputFile file_name:string mime_type:string = InputMedia;
inputMediaDocument#d184e841 id:InputDocument = InputMedia;
messageMediaDocument#2fda2204 document:Document = MessageMedia;
messageMediaAudio#c6b68300 audio:Audio = MessageMedia;
inputAudioEmpty#d95adc84 = InputAudio;
inputAudio#77d440ff id:long access_hash:long = InputAudio;
inputDocumentEmpty#72f0eaae = InputDocument;
inputDocument#18798952 id:long access_hash:long = InputDocument;
inputAudioFileLocation#74dc404d id:long access_hash:long = InputFileLocation;
inputDocumentFileLocation#4e45abe9 id:long access_hash:long = InputFileLocation;
audioEmpty#586988d8 id:long = Audio;
audio#427425e7 id:long access_hash:long user_id:int date:int duration:int size:int dc_id:int = Audio;
documentEmpty#36f8c871 id:long = Document;
document#9efc6326 id:long access_hash:long user_id:int date:int file_name:string mime_type:string size:int thumb:PhotoSize dc_id:int = Document;
---functions---
invokeWithLayer10#39620c41 query:!X = X;
===11===
---types---
// encryptedChatRequested#fda9a7b7 id:int access_hash:long date:int admin_id:int participant_id:int g_a:bytes nonce:bytes = EncryptedChat;
encryptedChatRequested#c878527e id:int access_hash:long date:int admin_id:int participant_id:int g_a:bytes = EncryptedChat;
// encryptedChat#6601d14f id:int access_hash:long date:int admin_id:int participant_id:int g_a_or_b:bytes nonce:bytes key_fingerprint:long = EncryptedChat;
encryptedChat#fa56ce36 id:int access_hash:long date:int admin_id:int participant_id:int g_a_or_b:bytes key_fingerprint:long = EncryptedChat;
---functions---
invokeWithLayer11#a6b88fdf query:!X = X;
===12===
---types---
// auth.sentCode#2215bcbd phone_registered:Bool phone_code_hash:string = auth.SentCode;
auth.sentCode#efed51d9 phone_registered:Bool phone_code_hash:string send_call_timeout:int is_password:Bool = auth.SentCode;
// config#232d5905 date:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int = Config;
config#2e54dd74 date:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int broadcast_size_max:int = Config;
help.support#17c6b5f6 phone_number:string user:User = help.Support;
---functions---
help.getSupport#9cdf08cd = help.Support;
invokeWithLayer12#dda60d3c query:!X = X;
===13===
---types---
// inputMediaUploadedVideo#4847d92a file:InputFile duration:int w:int h:int = InputMedia;
inputMediaUploadedVideo#133ad6f6 file:InputFile duration:int w:int h:int mime_type:string = InputMedia;
// inputMediaUploadedThumbVideo#e628a145 file:InputFile thumb:InputFile duration:int w:int h:int = InputMedia;
inputMediaUploadedThumbVideo#9912dabf file:InputFile thumb:InputFile duration:int w:int h:int mime_type:string = InputMedia;
// video#5a04a49f id:long access_hash:long user_id:int date:int caption:string duration:int size:int thumb:PhotoSize dc_id:int w:int h:int = Video;
video#388fa391 id:long access_hash:long user_id:int date:int caption:string duration:int mime_type:string size:int thumb:PhotoSize dc_id:int w:int h:int = Video;
// contacts.importedContacts#d1cd0a4c imported:Vector<ImportedContact> users:Vector<User> = contacts.ImportedContacts;
contacts.importedContacts#ad524315 imported:Vector<ImportedContact> retry_contacts:Vector<long> users:Vector<User> = contacts.ImportedContacts;
// inputMediaUploadedAudio#61a6d436 file:InputFile duration:int = InputMedia;
inputMediaUploadedAudio#4e498cab file:InputFile duration:int mime_type:string = InputMedia;
// audio#427425e7 id:long access_hash:long user_id:int date:int duration:int size:int dc_id:int = Audio;
audio#c7ac6496 id:long access_hash:long user_id:int date:int duration:int mime_type:string size:int dc_id:int = Audio;
---functions---
invokeWithLayer13#427c8ea2 query:!X = X;
===14===
---types---
// dialog#214a8cdf peer:Peer top_message:int unread_count:int = Dialog;
dialog#ab3a99ac peer:Peer top_message:int unread_count:int notify_settings:PeerNotifySettings = Dialog;
notifyAll#74d07c60 = NotifyPeer;
notifyChats#c007cec3 = NotifyPeer;
notifyPeer#9fd40bd8 peer:Peer = NotifyPeer;
notifyUsers#b4c83b4c = NotifyPeer;
updateUserBlocked#80ece81a user_id:int blocked:Bool = Update;
updateNotifySettings#bec268ef peer:NotifyPeer notify_settings:PeerNotifySettings = Update;
---functions---
invokeWithLayer14#2b9b08fa query:!X = X;
===15===
---types---
---functions---
invokeWithLayer15#b4418b64 query:!X = X;
===16===
---types---
auth.sentAppCode#e325edcf phone_registered:Bool phone_code_hash:string send_call_timeout:int is_password:Bool = auth.SentCode;
---functions---
auth.bindTempAuthKey#cdd42a05 perm_auth_key_id:long nonce:long expires_at:int encrypted_message:bytes = Bool;
contacts.exportCard#84e53737 = Vector<int>;
contacts.importCard#4fe196fe export_card:Vector<int> = User;
auth.sendSms#da9f3e8 phone_number:string phone_code_hash:string = Bool;
invokeWithLayer16#cf5f0987 query:!X = X;
===17===
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
===18===
---types---
// userSelf#720535ec id:int first_name:string last_name:string phone:string photo:UserProfilePhoto status:UserStatus inactive:Bool = User;
userSelf#7007b451 id:int first_name:string last_name:string username:string phone:string photo:UserProfilePhoto status:UserStatus inactive:Bool = User;
// userContact#f2fb8319 id:int first_name:string last_name:string access_hash:long phone:string photo:UserProfilePhoto status:UserStatus = User;
userContact#cab35e18 id:int first_name:string last_name:string username:string access_hash:long phone:string photo:UserProfilePhoto status:UserStatus = User;
// userRequest#22e8ceb0 id:int first_name:string last_name:string access_hash:long phone:string photo:UserProfilePhoto status:UserStatus = User;
userRequest#d9ccc4ef id:int first_name:string last_name:string username:string access_hash:long phone:string photo:UserProfilePhoto status:UserStatus = User;
// userForeign#5214c89d id:int first_name:string last_name:string access_hash:long photo:UserProfilePhoto status:UserStatus = User;
userForeign#75cf7a8 id:int first_name:string last_name:string username:string access_hash:long photo:UserProfilePhoto status:UserStatus = User;
// userDeleted#b29ad7cc id:int first_name:string last_name:string = User;
userDeleted#d6016d7a id:int first_name:string last_name:string username:string = User;
// updateUserName#da22d9ad user_id:int first_name:string last_name:string = Update;
updateUserName#a7332b73 user_id:int first_name:string last_name:string username:string = Update;
updateServiceNotification#382dd3e4 type:string message:string media:MessageMedia popup:Bool = Update;
---functions---
account.checkUsername#2714d86c username:string = Bool;
account.updateUsername#3e0bdd7c username:string = User;
invokeWithLayer18#1c900537 query:!X = X;
===19===
---types---
// contactStatus#aa77b873 user_id:int expires:int = ContactStatus;
contactStatus#d3680c61 user_id:int status:UserStatus = ContactStatus;
userStatusRecently#e26f42f1 = UserStatus;
userStatusLastWeek#7bf09fc = UserStatus;
userStatusLastMonth#77ebc742 = UserStatus;
updatePrivacy#ee3b272a key:PrivacyKey rules:Vector<PrivacyRule> = Update;
inputPrivacyKeyStatusTimestamp#4f96cb18 = InputPrivacyKey;
privacyKeyStatusTimestamp#bc2eab30 = PrivacyKey;
inputPrivacyValueAllowContacts#d09e07b = InputPrivacyRule;
inputPrivacyValueAllowAll#184b35ce = InputPrivacyRule;
inputPrivacyValueAllowUsers#131cc67f users:Vector<InputUser> = InputPrivacyRule;
inputPrivacyValueDisallowContacts#ba52007 = InputPrivacyRule;
inputPrivacyValueDisallowAll#d66b66c9 = InputPrivacyRule;
inputPrivacyValueDisallowUsers#90110467 users:Vector<InputUser> = InputPrivacyRule;
privacyValueAllowContacts#fffe1bac = PrivacyRule;
privacyValueAllowAll#65427b82 = PrivacyRule;
privacyValueAllowUsers#4d5bbe0c users:Vector<int> = PrivacyRule;
privacyValueDisallowContacts#f888fa1a = PrivacyRule;
privacyValueDisallowAll#8b73e763 = PrivacyRule;
privacyValueDisallowUsers#c7f49b7 users:Vector<int> = PrivacyRule;
account.privacyRules#554abb6f rules:Vector<PrivacyRule> users:Vector<User> = account.PrivacyRules;
accountDaysTTL#b8d0afdf days:int = AccountDaysTTL;
---functions---
// invokeWithLayer1#53835315 query:!X = X;
// invokeWithLayer2#289dd1f6 query:!X = X;
// invokeWithLayer3#b7475268 query:!X = X;
// invokeWithLayer4#dea0d430 query:!X = X;
// invokeWithLayer5#417a57ae query:!X = X;
// invokeWithLayer6#3a64d54d query:!X = X;
// invokeWithLayer7#a5be56d3 query:!X = X;
// invokeWithLayer8#e9abd9fd query:!X = X;
// invokeWithLayer9#76715a63 query:!X = X;
// invokeWithLayer10#39620c41 query:!X = X;
// invokeWithLayer11#a6b88fdf query:!X = X;
// invokeWithLayer12#dda60d3c query:!X = X;
// invokeWithLayer13#427c8ea2 query:!X = X;
// invokeWithLayer14#2b9b08fa query:!X = X;
// invokeWithLayer15#b4418b64 query:!X = X;
// invokeWithLayer16#cf5f0987 query:!X = X;
// invokeWithLayer17#50858a19 query:!X = X;
// invokeWithLayer18#1c900537 query:!X = X;
account.getPrivacy#dadbc950 key:InputPrivacyKey = account.PrivacyRules;
account.setPrivacy#c9f81ce8 key:InputPrivacyKey rules:Vector<InputPrivacyRule> = account.PrivacyRules;
account.deleteAccount#418d4e0b reason:string = Bool;
account.getAccountTTL#8fc711d = AccountDaysTTL;
account.setAccountTTL#2442485e ttl:AccountDaysTTL = Bool;
invokeWithLayer#da9b0d0d layer:int query:!X = X;
===20===
---types---
account.sentChangePhoneCode#a4f58c4c phone_code_hash:string send_call_timeout:int = account.SentChangePhoneCode;
updateUserPhone#12b9417b user_id:int phone:string = Update;
---functions---
contacts.resolveUsername#bf0131c username:string = User;
account.sendChangePhoneCode#a407a8f4 phone_number:string = account.SentChangePhoneCode;
account.changePhone#70c32edb phone_number:string phone_code_hash:string phone_code:string = User;
===21===
---types---
// contactSuggested#3de191a1 user_id:int mutual_contacts:int = ContactSuggested;
// contacts.suggested#5649dcc5 results:Vector<ContactSuggested> users:Vector<User> = contacts.Suggested;
// messages.messageEmpty#3f4e0648 = messages.Message;
// messages.message#ff90c417 message:Message chats:Vector<Chat> users:Vector<User> = messages.Message;
// messages.chat#40e9002a chat:Chat users:Vector<User> = messages.Chat;
// updateRestoreMessages#d15de04d messages:Vector<int> pts:int = Update;
// updateActivation#6f690963 user_id:int = Update;
// chatLocated#3631cf4c chat_id:int distance:int = ChatLocated;
// inputGeoChat#74d456fa chat_id:int access_hash:long = InputGeoChat;
// inputNotifyGeoChatPeer#4d8ddec8 peer:InputGeoChat = InputNotifyPeer;
// geoChat#75eaea5a id:int access_hash:long title:string address:string venue:string geo:GeoPoint photo:ChatPhoto participants_count:int date:int checked_in:Bool version:int = Chat;
// geoChatMessageEmpty#60311a9b chat_id:int id:int = GeoChatMessage;
// geoChatMessage#4505f8e1 chat_id:int id:int from_id:int date:int message:string media:MessageMedia = GeoChatMessage;
// geoChatMessageService#d34fa24e chat_id:int id:int from_id:int date:int action:MessageAction = GeoChatMessage;
// geochats.statedMessage#17b1578b message:GeoChatMessage chats:Vector<Chat> users:Vector<User> seq:int = geochats.StatedMessage;
// geochats.located#48feb267 results:Vector<ChatLocated> messages:Vector<GeoChatMessage> chats:Vector<Chat> users:Vector<User> = geochats.Located;
// geochats.messages#d1526db1 messages:Vector<GeoChatMessage> chats:Vector<Chat> users:Vector<User> = geochats.Messages;
// geochats.messagesSlice#bc5863e8 count:int messages:Vector<GeoChatMessage> chats:Vector<Chat> users:Vector<User> = geochats.Messages;
// messageActionGeoChatCreate#6f038ebc title:string address:string = MessageAction;
// messageActionGeoChatCheckin#c7d53de = MessageAction;
// updateNewGeoChatMessage#5a68e3f7 message:GeoChatMessage = Update;
// messageMediaUnsupported#29632a36 bytes:bytes = MessageMedia;
messageMediaUnsupported#9f84f49e = MessageMedia;
// config#2e54dd74 date:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int broadcast_size_max:int = Config;
config#7dae33e0 date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_big_size:int chat_size_max:int broadcast_size_max:int disabled_features:Vector<DisabledFeature> = Config;
disabledFeature#ae636f24 feature:string description:string = DisabledFeature;
---functions---
// contacts.getSuggested#cd773428 limit:int = contacts.Suggested;
// messages.restoreMessages#395f9d7e id:Vector<int> = Vector<int>;
// messages.sendBroadcast#41bb0972 contacts:Vector<InputUser> message:string media:InputMedia = messages.StatedMessages;
// geochats.getLocated#7f192d8f geo_point:InputGeoPoint radius:int limit:int = geochats.Located;
// geochats.getRecents#e1427e6f offset:int limit:int = geochats.Messages;
// geochats.checkin#55b3e8fb peer:InputGeoChat = geochats.StatedMessage;
// geochats.getFullChat#6722dd6f peer:InputGeoChat = messages.ChatFull;
// geochats.editChatTitle#4c8e2273 peer:InputGeoChat title:string address:string = geochats.StatedMessage;
// geochats.editChatPhoto#35d81a95 peer:InputGeoChat photo:InputChatPhoto = geochats.StatedMessage;
// geochats.search#cfcdc44d peer:InputGeoChat q:string filter:MessagesFilter min_date:int max_date:int offset:int max_id:int limit:int = geochats.Messages;
// geochats.getHistory#b53f7a68 peer:InputGeoChat offset:int max_id:int limit:int = geochats.Messages;
// geochats.setTyping#8b8a729 peer:InputGeoChat typing:Bool = Bool;
// geochats.sendMessage#61b0044 peer:InputGeoChat message:string random_id:long = geochats.StatedMessage;
// geochats.sendMedia#b8f0deff peer:InputGeoChat media:InputMedia random_id:long = geochats.StatedMessage;
// geochats.createGeoChat#e092e16 title:string geo_point:InputGeoPoint address:string venue:string = geochats.StatedMessage;
===22===
---types---
// inputMediaUploadedDocument#34e794bd file:InputFile file_name:string mime_type:string = InputMedia;
inputMediaUploadedDocument#ffe76b78 file:InputFile mime_type:string attributes:Vector<DocumentAttribute> = InputMedia;
// inputMediaUploadedThumbDocument#3e46de5d file:InputFile thumb:InputFile file_name:string mime_type:string = InputMedia;
inputMediaUploadedThumbDocument#41481486 file:InputFile thumb:InputFile mime_type:string attributes:Vector<DocumentAttribute> = InputMedia;
// document#9efc6326 id:long access_hash:long user_id:int date:int file_name:string mime_type:string size:int thumb:PhotoSize dc_id:int = Document;
document#f9a39f4f id:long access_hash:long date:int mime_type:string size:int thumb:PhotoSize dc_id:int attributes:Vector<DocumentAttribute> = Document;
documentAttributeImageSize#6c37c15c w:int h:int = DocumentAttribute;
documentAttributeAnimated#11b58939 = DocumentAttribute;
documentAttributeSticker#fb0a5727 = DocumentAttribute;
documentAttributeVideo#5910cccb duration:int w:int h:int = DocumentAttribute;
documentAttributeAudio#51448e5 duration:int = DocumentAttribute;
documentAttributeFilename#15590068 file_name:string = DocumentAttribute;
messages.stickersNotModified#f1749a22 = messages.Stickers;
messages.stickers#8a8ecd32 hash:string stickers:Vector<Document> = messages.Stickers;
stickerPack#12b299d4 emoticon:string documents:Vector<long> = StickerPack;
messages.allStickersNotModified#e86602c3 = messages.AllStickers;
messages.allStickers#dcef3102 hash:string packs:Vector<StickerPack> documents:Vector<Document> = messages.AllStickers;
---functions---
messages.getStickers#ae22e045 emoticon:string hash:string = messages.Stickers;
messages.getAllStickers#aa3bc868 hash:string = messages.AllStickers;
===23===
---types---
---functions---
===24===
---types---
account.noPassword#5770e7a9 new_salt:bytes = account.Password;
account.password#739e5f72 current_salt:bytes new_salt:bytes hint:string = account.Password;
---functions---
account.updateDeviceLocked#38df3532 period:int = Bool;
account.getPassword#548a30f5 = account.Password;
account.setPassword#dd2a4d8f current_password_hash:bytes new_salt:bytes new_password_hash:bytes hint:string = Bool;
auth.checkPassword#a63011e password_hash:bytes = auth.Authorization;
===25===
---types---
// messageForwarded#a367e716 flags:int id:int fwd_from_id:int fwd_date:int from_id:int to_id:Peer date:int message:string media:MessageMedia = Message;
// contacts.foreignLinkUnknown#133421f8 = contacts.ForeignLink;
// contacts.foreignLinkRequested#a7801f47 has_phone:Bool = contacts.ForeignLink;
// contacts.foreignLinkMutual#1bea8ce1 = contacts.ForeignLink;
// contacts.myLinkEmpty#d22a1c60 = contacts.MyLink;
// contacts.myLinkRequested#6c69efee contact:Bool = contacts.MyLink;
// contacts.myLinkContact#c240ebd9 = contacts.MyLink;
// userSelf#7007b451 id:int first_name:string last_name:string username:string phone:string photo:UserProfilePhoto status:UserStatus inactive:Bool = User;
userSelf#1c60e608 id:int first_name:string last_name:string username:string phone:string photo:UserProfilePhoto status:UserStatus = User;
// message#567699b3 flags:int id:int from_id:int to_id:Peer date:int message:string media:MessageMedia = Message;
message#a7ab1991 flags:# id:int from_id:int to_id:Peer fwd_from_id:flags.2?int fwd_date:flags.2?int reply_to_msg_id:flags.3?int date:int message:string media:MessageMedia = Message;
// dialog#ab3a99ac peer:Peer top_message:int unread_count:int notify_settings:PeerNotifySettings = Dialog;
dialog#c1dd804a peer:Peer top_message:int read_inbox_max_id:int unread_count:int notify_settings:PeerNotifySettings = Dialog;
// auth.checkedPhone#e300cc3b phone_registered:Bool phone_invited:Bool = auth.CheckedPhone;
auth.checkedPhone#811ea28e phone_registered:Bool = auth.CheckedPhone;
// contacts.link#eccea3f5 my_link:contacts.MyLink foreign_link:contacts.ForeignLink user:User = contacts.Link;
contacts.link#3ace484c my_link:ContactLink foreign_link:ContactLink user:User = contacts.Link;
// messages.statedMessages#969478bb messages:Vector<Message> chats:Vector<Chat> users:Vector<User> pts:int seq:int = messages.StatedMessages;
messages.statedMessages#7d84b48 messages:Vector<Message> chats:Vector<Chat> users:Vector<User> pts:int pts_count:int = messages.StatedMessages;
// messages.statedMessage#d07ae726 message:Message chats:Vector<Chat> users:Vector<User> pts:int seq:int = messages.StatedMessage;
messages.statedMessage#96240c6a message:Message chats:Vector<Chat> users:Vector<User> pts:int pts_count:int = messages.StatedMessage;
// messages.sentMessage#d1f4d35c id:int date:int pts:int seq:int = messages.SentMessage;
messages.sentMessage#900eac40 id:int date:int pts:int pts_count:int = messages.SentMessage;
// messages.chats#8150cbd8 chats:Vector<Chat> users:Vector<User> = messages.Chats;
messages.chats#64ff9fd5 chats:Vector<Chat> = messages.Chats;
// messages.affectedHistory#b7de36f2 pts:int seq:int offset:int = messages.AffectedHistory;
messages.affectedHistory#b45c69d1 pts:int pts_count:int offset:int = messages.AffectedHistory;
// updateNewMessage#13abdb3 message:Message pts:int = Update;
updateNewMessage#1f2b0afd message:Message pts:int pts_count:int = Update;
// updateReadMessages#c6649e31 messages:Vector<int> pts:int = Update;
updateReadMessages#2e5ab668 messages:Vector<int> pts:int pts_count:int = Update;
// updateDeleteMessages#a92bfe26 messages:Vector<int> pts:int = Update;
updateDeleteMessages#a20db0e5 messages:Vector<int> pts:int pts_count:int = Update;
// updateContactLink#51a48a9a user_id:int my_link:contacts.MyLink foreign_link:contacts.ForeignLink = Update;
updateContactLink#9d2e67c5 user_id:int my_link:ContactLink foreign_link:ContactLink = Update;
// updateShortMessage#d3f45784 id:int from_id:int message:string pts:int date:int seq:int = Updates;
updateShortMessage#ed5c2127 flags:# id:int user_id:int message:string pts:int pts_count:int date:int fwd_from_id:flags.2?int fwd_date:flags.2?int reply_to_msg_id:flags.3?int = Updates;
// updateShortChatMessage#2b2fbd4e id:int from_id:int chat_id:int message:string pts:int date:int seq:int = Updates;
updateShortChatMessage#52238b3c flags:# id:int from_id:int chat_id:int message:string pts:int pts_count:int date:int fwd_from_id:flags.2?int fwd_date:flags.2?int reply_to_msg_id:flags.3?int = Updates;
// config#7dae33e0 date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_big_size:int chat_size_max:int broadcast_size_max:int disabled_features:Vector<DisabledFeature> = Config;
config#3e6f732a date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int broadcast_size_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int disabled_features:Vector<DisabledFeature> = Config;
// messages.statedMessagesLinks#3e74f5c6 messages:Vector<Message> chats:Vector<Chat> users:Vector<User> links:Vector<contacts.Link> pts:int seq:int = messages.StatedMessages;
messages.statedMessagesLinks#51be5d19 messages:Vector<Message> chats:Vector<Chat> users:Vector<User> pts:int pts_count:int links:Vector<contacts.Link> seq:int = messages.StatedMessages;
// messages.statedMessageLink#a9af2881 message:Message chats:Vector<Chat> users:Vector<User> links:Vector<contacts.Link> pts:int seq:int = messages.StatedMessage;
messages.statedMessageLink#948a288 message:Message chats:Vector<Chat> users:Vector<User> pts:int pts_count:int links:Vector<contacts.Link> seq:int = messages.StatedMessage;
// messages.sentMessageLink#e9db4a3f id:int date:int pts:int seq:int links:Vector<contacts.Link> = messages.SentMessage;
messages.sentMessageLink#e923400d id:int date:int pts:int pts_count:int links:Vector<contacts.Link> seq:int = messages.SentMessage;
// documentAttributeSticker#fb0a5727 = DocumentAttribute;
documentAttributeSticker#994c9882 alt:string = DocumentAttribute;
contactSuggested#3de191a1 user_id:int mutual_contacts:int = ContactSuggested;
contacts.suggested#5649dcc5 results:Vector<ContactSuggested> users:Vector<User> = contacts.Suggested;
messages.messageEmpty#3f4e0648 = messages.Message;
updateReadHistoryInbox#9961fd5c peer:Peer max_id:int pts:int pts_count:int = Update;
updateReadHistoryOutbox#2f2f21bf peer:Peer max_id:int pts:int pts_count:int = Update;
messages.affectedMessages#84d19185 pts:int pts_count:int = messages.AffectedMessages;
contactLinkUnknown#5f4f9247 = ContactLink;
contactLinkNone#feedd3ad = ContactLink;
contactLinkHasPhone#268f3f59 = ContactLink;
contactLinkContact#d502c2d0 = ContactLink;
---functions---
// messages.readHistory#eed884c6 peer:InputPeer max_id:int offset:int read_contents:Bool = messages.AffectedHistory;
messages.readHistory#b04f2510 peer:InputPeer max_id:int offset:int = messages.AffectedHistory;
// messages.deleteMessages#14f2dd0a id:Vector<int> = Vector<int>;
messages.deleteMessages#a5f18925 id:Vector<int> = messages.AffectedMessages;
// messages.sendMessage#4cde0aab peer:InputPeer message:string random_id:long = messages.SentMessage;
messages.sendMessage#1ca852a1 peer:InputPeer reply_to_msg_id:int message:string random_id:long = messages.SentMessage;
// messages.sendMedia#a3c85d76 peer:InputPeer media:InputMedia random_id:long = messages.StatedMessage;
messages.sendMedia#fcee7fc0 peer:InputPeer reply_to_msg_id:int media:InputMedia random_id:long = messages.StatedMessage;
// messages.forwardMessages#514cd10f peer:InputPeer id:Vector<int> = messages.StatedMessages;
messages.forwardMessages#ded42045 peer:InputPeer id:Vector<int> random_id:Vector<long> = messages.StatedMessages;
// messages.readMessageContents#354b5bc2 id:Vector<int> = Vector<int>;
messages.readMessageContents#36a73f77 id:Vector<int> = messages.AffectedMessages;
contacts.getSuggested#cd773428 limit:int = contacts.Suggested;
messages.sendBroadcast#41bb0972 contacts:Vector<InputUser> message:string media:InputMedia = messages.StatedMessages;
===27===
---types---
// messages.statedMessages#7d84b48 messages:Vector<Message> chats:Vector<Chat> users:Vector<User> pts:int pts_count:int = messages.StatedMessages;
// messages.statedMessage#96240c6a message:Message chats:Vector<Chat> users:Vector<User> pts:int pts_count:int = messages.StatedMessage;
// messages.statedMessagesLinks#51be5d19 messages:Vector<Message> chats:Vector<Chat> users:Vector<User> pts:int pts_count:int links:Vector<contacts.Link> seq:int = messages.StatedMessages;
// messages.statedMessageLink#948a288 message:Message chats:Vector<Chat> users:Vector<User> pts:int pts_count:int links:Vector<contacts.Link> seq:int = messages.StatedMessage;
// messages.sentMessage#900eac40 id:int date:int pts:int pts_count:int = messages.SentMessage;
messages.sentMessage#4c3d47f3 id:int date:int media:MessageMedia pts:int pts_count:int = messages.SentMessage;
// config#3e6f732a date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int broadcast_size_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int disabled_features:Vector<DisabledFeature> = Config;
config#68bac247 date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int broadcast_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int disabled_features:Vector<DisabledFeature> = Config;
// messages.sentMessageLink#e923400d id:int date:int pts:int pts_count:int links:Vector<contacts.Link> seq:int = messages.SentMessage;
messages.sentMessageLink#35a1a663 id:int date:int media:MessageMedia pts:int pts_count:int links:Vector<contacts.Link> seq:int = messages.SentMessage;
// account.noPassword#5770e7a9 new_salt:bytes = account.Password;
account.noPassword#96dabc18 new_salt:bytes email_unconfirmed_pattern:string = account.Password;
// account.password#739e5f72 current_salt:bytes new_salt:bytes hint:string = account.Password;
account.password#7c18141c current_salt:bytes new_salt:bytes hint:string has_recovery:Bool email_unconfirmed_pattern:string = account.Password;
updateWebPage#2cc36971 webpage:WebPage = Update;
webPageEmpty#eb1477e8 id:long = WebPage;
webPagePending#c586da1c id:long date:int = WebPage;
webPage#a31ea0b5 flags:# id:long url:string display_url:string type:flags.0?string site_name:flags.1?string title:flags.2?string description:flags.3?string photo:flags.4?Photo embed_url:flags.5?string embed_type:flags.5?string embed_width:flags.6?int embed_height:flags.6?int duration:flags.7?int author:flags.8?string = WebPage;
messageMediaWebPage#a32dd600 webpage:WebPage = MessageMedia;
authorization#7bf2e6f6 hash:long flags:int device_model:string platform:string system_version:string api_id:int app_name:string app_version:string date_created:int date_active:int ip:string country:string region:string = Authorization;
account.authorizations#1250abde authorizations:Vector<Authorization> = account.Authorizations;
account.passwordSettings#b7b72ab3 email:string = account.PasswordSettings;
account.passwordInputSettings#bcfc532c flags:# new_salt:flags.0?bytes new_password_hash:flags.0?bytes hint:flags.0?string email:flags.1?string = account.PasswordInputSettings;
auth.passwordRecovery#137948a5 email_pattern:string = auth.PasswordRecovery;
---functions---
// account.setPassword#dd2a4d8f current_password_hash:bytes new_salt:bytes new_password_hash:bytes hint:string = Bool;
// messages.sendMessage#1ca852a1 peer:InputPeer reply_to_msg_id:int message:string random_id:long = messages.SentMessage;
messages.sendMessage#9add8f26 flags:# peer:InputPeer reply_to_msg_id:flags.0?int message:string random_id:long = messages.SentMessage;
// messages.sendMedia#fcee7fc0 peer:InputPeer reply_to_msg_id:int media:InputMedia random_id:long = messages.StatedMessage;
messages.sendMedia#2d7923b1 flags:# peer:InputPeer reply_to_msg_id:flags.0?int media:InputMedia random_id:long = Updates;
// messages.forwardMessages#ded42045 peer:InputPeer id:Vector<int> random_id:Vector<long> = messages.StatedMessages;
messages.forwardMessages#55e1728d peer:InputPeer id:Vector<int> random_id:Vector<long> = Updates;
// messages.editChatTitle#b4bc68b5 chat_id:int title:string = messages.StatedMessage;
messages.editChatTitle#dc452855 chat_id:int title:string = Updates;
// messages.editChatPhoto#d881821d chat_id:int photo:InputChatPhoto = messages.StatedMessage;
messages.editChatPhoto#ca4c79d8 chat_id:int photo:InputChatPhoto = Updates;
// messages.addChatUser#2ee9ee9e chat_id:int user_id:InputUser fwd_limit:int = messages.StatedMessage;
messages.addChatUser#f9a0aa09 chat_id:int user_id:InputUser fwd_limit:int = Updates;
// messages.deleteChatUser#c3c5cd23 chat_id:int user_id:InputUser = messages.StatedMessage;
messages.deleteChatUser#e0611f16 chat_id:int user_id:InputUser = Updates;
// messages.createChat#419d9aee users:Vector<InputUser> title:string = messages.StatedMessage;
messages.createChat#9cb126e users:Vector<InputUser> title:string = Updates;
// messages.forwardMessage#3f3f4f2 peer:InputPeer id:int random_id:long = messages.StatedMessage;
messages.forwardMessage#33963bf9 peer:InputPeer id:int random_id:long = Updates;
// messages.sendBroadcast#41bb0972 contacts:Vector<InputUser> message:string media:InputMedia = messages.StatedMessages;
messages.sendBroadcast#bf73f4da contacts:Vector<InputUser> random_id:Vector<long> message:string media:InputMedia = Updates;
messages.getWebPagePreview#25223e24 message:string = MessageMedia;
account.getAuthorizations#e320c158 = account.Authorizations;
account.resetAuthorization#df77f3bc hash:long = Bool;
account.getPasswordSettings#bc8d11bb current_password_hash:bytes = account.PasswordSettings;
account.updatePasswordSettings#fa7c4b86 current_password_hash:bytes new_settings:account.PasswordInputSettings = Bool;
auth.requestPasswordRecovery#d897bc66 = auth.PasswordRecovery;
auth.recoverPassword#4ea56e92 code:string = auth.Authorization;
===28===
---types---
// updateReadMessages#2e5ab668 messages:Vector<int> pts:int pts_count:int = Update;
// inputMediaUploadedPhoto#2dc53a7d file:InputFile = InputMedia;
inputMediaUploadedPhoto#f7aff1c0 file:InputFile caption:string = InputMedia;
// inputMediaPhoto#8f2ab2ec id:InputPhoto = InputMedia;
inputMediaPhoto#e9bfb4f3 id:InputPhoto caption:string = InputMedia;
// inputMediaUploadedVideo#133ad6f6 file:InputFile duration:int w:int h:int mime_type:string = InputMedia;
inputMediaUploadedVideo#e13fd4bc file:InputFile duration:int w:int h:int caption:string = InputMedia;
// inputMediaUploadedThumbVideo#9912dabf file:InputFile thumb:InputFile duration:int w:int h:int mime_type:string = InputMedia;
inputMediaUploadedThumbVideo#96fb97dc file:InputFile thumb:InputFile duration:int w:int h:int caption:string = InputMedia;
// inputMediaVideo#7f023ae6 id:InputVideo = InputMedia;
inputMediaVideo#936a4ebd id:InputVideo caption:string = InputMedia;
// chatFull#630e61be id:int participants:ChatParticipants chat_photo:Photo notify_settings:PeerNotifySettings = ChatFull;
chatFull#cade0791 id:int participants:ChatParticipants chat_photo:Photo notify_settings:PeerNotifySettings exported_invite:ExportedChatInvite = ChatFull;
// messageMediaPhoto#c8c45a2a photo:Photo = MessageMedia;
messageMediaPhoto#3d8ce53d photo:Photo caption:string = MessageMedia;
// messageMediaVideo#a2d24290 video:Video = MessageMedia;
messageMediaVideo#5bcf1675 video:Video caption:string = MessageMedia;
// photo#22b56751 id:long access_hash:long user_id:int date:int caption:string geo:GeoPoint sizes:Vector<PhotoSize> = Photo;
photo#c3838076 id:long access_hash:long user_id:int date:int geo:GeoPoint sizes:Vector<PhotoSize> = Photo;
// video#388fa391 id:long access_hash:long user_id:int date:int caption:string duration:int mime_type:string size:int thumb:PhotoSize dc_id:int w:int h:int = Video;
video#ee9f4a4d id:long access_hash:long user_id:int date:int duration:int size:int thumb:PhotoSize dc_id:int w:int h:int = Video;
// config#68bac247 date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int broadcast_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int disabled_features:Vector<DisabledFeature> = Config;
config#4e32b894 date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int broadcast_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int disabled_features:Vector<DisabledFeature> = Config;
// sendMessageUploadVideoAction#92042ff7 = SendMessageAction;
sendMessageUploadVideoAction#e9763aec progress:int = SendMessageAction;
// sendMessageUploadAudioAction#e6ac8a6f = SendMessageAction;
sendMessageUploadAudioAction#f351d7ab progress:int = SendMessageAction;
// sendMessageUploadPhotoAction#990a3c1a = SendMessageAction;
sendMessageUploadPhotoAction#d1d34a26 progress:int = SendMessageAction;
// sendMessageUploadDocumentAction#8faee98e = SendMessageAction;
sendMessageUploadDocumentAction#aa0cd9e4 progress:int = SendMessageAction;
inputMediaVenue#2827a81a geo_point:InputGeoPoint title:string address:string provider:string venue_id:string = InputMedia;
messageMediaVenue#7912b71f geo:GeoPoint title:string address:string provider:string venue_id:string = MessageMedia;
receivedNotifyMessage#a384b779 id:int flags:int = ReceivedNotifyMessage;
chatInviteEmpty#69df3769 = ExportedChatInvite;
chatInviteExported#fc2e05bc link:string = ExportedChatInvite;
chatInviteAlready#5a686d7c chat:Chat = ChatInvite;
chatInvite#ce917dcd title:string = ChatInvite;
messageActionChatJoinedByLink#f89cf5e8 inviter_id:int = MessageAction;
updateReadMessagesContents#68c13933 messages:Vector<int> pts:int pts_count:int = Update;
---functions---
// messages.receivedMessages#28abcb68 max_id:int = Vector<int>;
messages.receivedMessages#5a954c0 max_id:int = Vector<ReceivedNotifyMessage>;
invokeWithoutUpdates#bf9459b7 query:!X = X;
messages.exportChatInvite#7d885289 chat_id:int = ExportedChatInvite;
messages.checkChatInvite#3eadb1bb hash:string = ChatInvite;
messages.importChatInvite#6c50051c hash:string = Updates;
===29===
---types---
// documentAttributeSticker#994c9882 alt:string = DocumentAttribute;
documentAttributeSticker#3a556302 alt:string stickerset:InputStickerSet = DocumentAttribute;
// messages.allStickers#dcef3102 hash:string packs:Vector<StickerPack> documents:Vector<Document> = messages.AllStickers;
messages.allStickers#5ce352ec hash:string packs:Vector<StickerPack> sets:Vector<StickerSet> documents:Vector<Document> = messages.AllStickers;
inputStickerSetEmpty#ffb62b95 = InputStickerSet;
inputStickerSetID#9de7a269 id:long access_hash:long = InputStickerSet;
inputStickerSetShortName#861cc8a0 short_name:string = InputStickerSet;
stickerSet#a7a43b17 id:long access_hash:long title:string short_name:string = StickerSet;
messages.stickerSet#b60a24a6 set:StickerSet packs:Vector<StickerPack> documents:Vector<Document> = messages.StickerSet;
---functions---
messages.getStickerSet#2619a90e stickerset:InputStickerSet = messages.StickerSet;
messages.installStickerSet#efbbfae9 stickerset:InputStickerSet = Bool;
messages.uninstallStickerSet#f96e55de stickerset:InputStickerSet = Bool;
===31===
---types---
// userSelf#1c60e608 id:int first_name:string last_name:string username:string phone:string photo:UserProfilePhoto status:UserStatus = User;
// userContact#cab35e18 id:int first_name:string last_name:string username:string access_hash:long phone:string photo:UserProfilePhoto status:UserStatus = User;
// userRequest#d9ccc4ef id:int first_name:string last_name:string username:string access_hash:long phone:string photo:UserProfilePhoto status:UserStatus = User;
// userForeign#75cf7a8 id:int first_name:string last_name:string username:string access_hash:long photo:UserProfilePhoto status:UserStatus = User;
// userDeleted#d6016d7a id:int first_name:string last_name:string username:string = User;
// chatFull#cade0791 id:int participants:ChatParticipants chat_photo:Photo notify_settings:PeerNotifySettings exported_invite:ExportedChatInvite = ChatFull;
chatFull#2e02a614 id:int participants:ChatParticipants chat_photo:Photo notify_settings:PeerNotifySettings exported_invite:ExportedChatInvite bot_info:Vector<BotInfo> = ChatFull;
// message#a7ab1991 flags:# id:int from_id:int to_id:Peer fwd_from_id:flags.2?int fwd_date:flags.2?int reply_to_msg_id:flags.3?int date:int message:string media:MessageMedia = Message;
message#c3060325 flags:# id:int from_id:int to_id:Peer fwd_from_id:flags.2?int fwd_date:flags.2?int reply_to_msg_id:flags.3?int date:int message:string media:MessageMedia reply_markup:flags.6?ReplyMarkup = Message;
// auth.authorization#f6b673a4 expires:int user:User = auth.Authorization;
auth.authorization#ff036af1 user:User = auth.Authorization;
// userFull#771095da user:User link:contacts.Link profile_photo:Photo notify_settings:PeerNotifySettings blocked:Bool real_first_name:string real_last_name:string = UserFull;
userFull#5a89ac5b user:User link:contacts.Link profile_photo:Photo notify_settings:PeerNotifySettings blocked:Bool bot_info:BotInfo = UserFull;
// dcOption#2ec2a43c id:int hostname:string ip_address:string port:int = DcOption;
dcOption#5d8c6cc flags:# id:int ip_address:string port:int = DcOption;
inputMessagesFilterAudioDocuments#5afbf764 = MessagesFilter;
user#22e49072 flags:# id:int access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?UserProfilePhoto status:flags.6?UserStatus bot_info_version:flags.14?int = User;
botCommand#c27ac8c7 command:string description:string = BotCommand;
botInfoEmpty#bb2e37ce = BotInfo;
botInfo#9cf585d user_id:int version:int share_text:string description:string commands:Vector<BotCommand> = BotInfo;
keyboardButton#a2fa4880 text:string = KeyboardButton;
keyboardButtonRow#77608b83 buttons:Vector<KeyboardButton> = KeyboardButtonRow;
replyKeyboardHide#a03e5b85 flags:# = ReplyMarkup;
replyKeyboardForceReply#f4108aa0 flags:# = ReplyMarkup;
replyKeyboardMarkup#3502758c flags:# rows:Vector<KeyboardButtonRow> = ReplyMarkup;
---functions---
// messages.sendMessage#9add8f26 flags:# peer:InputPeer reply_to_msg_id:flags.0?int message:string random_id:long = messages.SentMessage;
messages.sendMessage#fc55e6b5 flags:# peer:InputPeer reply_to_msg_id:flags.0?int message:string random_id:long reply_markup:flags.2?ReplyMarkup = messages.SentMessage;
// messages.sendMedia#2d7923b1 flags:# peer:InputPeer reply_to_msg_id:flags.0?int media:InputMedia random_id:long = Updates;
messages.sendMedia#c8f16791 flags:# peer:InputPeer reply_to_msg_id:flags.0?int media:InputMedia random_id:long reply_markup:flags.2?ReplyMarkup = Updates;
auth.importBotAuthorization#67a3ff2c flags:int api_id:int api_hash:string bot_auth_token:string = auth.Authorization;
messages.startBot#1b3e0ffc bot:InputUser chat_id:int random_id:long start_param:string = Updates;
===32===
---types---
// documentAttributeAudio#51448e5 duration:int = DocumentAttribute;
documentAttributeAudio#ded218e0 duration:int title:string performer:string = DocumentAttribute;
// messages.allStickers#5ce352ec hash:string packs:Vector<StickerPack> sets:Vector<StickerSet> documents:Vector<Document> = messages.AllStickers;
messages.allStickers#d51dafdb hash:string sets:Vector<StickerSet> = messages.AllStickers;
// stickerSet#a7a43b17 id:long access_hash:long title:string short_name:string = StickerSet;
stickerSet#cd303b41 flags:# id:long access_hash:long title:string short_name:string count:int hash:int = StickerSet;
---functions---
// messages.installStickerSet#efbbfae9 stickerset:InputStickerSet = Bool;
messages.installStickerSet#7b30c3a6 stickerset:InputStickerSet disabled:Bool = Bool;
===33===
---types---
// inputPeerContact#1023dbe8 user_id:int = InputPeer;
// inputPeerForeign#9b447325 user_id:int access_hash:long = InputPeer;
// inputUserContact#86e94f65 user_id:int = InputUser;
// inputUserForeign#655e74ff user_id:int access_hash:long = InputUser;
// photo#c3838076 id:long access_hash:long user_id:int date:int geo:GeoPoint sizes:Vector<PhotoSize> = Photo;
photo#cded42fe id:long access_hash:long date:int sizes:Vector<PhotoSize> = Photo;
// video#ee9f4a4d id:long access_hash:long user_id:int date:int duration:int size:int thumb:PhotoSize dc_id:int w:int h:int = Video;
video#f72887d3 id:long access_hash:long date:int duration:int mime_type:string size:int thumb:PhotoSize dc_id:int w:int h:int = Video;
// audio#c7ac6496 id:long access_hash:long user_id:int date:int duration:int mime_type:string size:int dc_id:int = Audio;
audio#f9e35055 id:long access_hash:long date:int duration:int mime_type:string size:int dc_id:int = Audio;
inputMessagesFilterUrl#7ef0dd87 = MessagesFilter;
inputPeerUser#7b8e7de6 user_id:int access_hash:long = InputPeer;
inputUser#d8292816 user_id:int access_hash:long = InputUser;
help.appChangelogEmpty#af7e0394 = help.AppChangelog;
help.appChangelog#4668e6bd text:string = help.AppChangelog;
---functions---
// photos.getUserPhotos#b7ee553c user_id:InputUser offset:int max_id:int limit:int = photos.Photos;
photos.getUserPhotos#91cd32a8 user_id:InputUser offset:int max_id:long limit:int = photos.Photos;
help.getAppChangelog#5bab7fb2 device_model:string system_version:string app_version:string lang_code:string = help.AppChangelog;
===34===
---types---
// messages.messageEmpty#3f4e0648 = messages.Message;
// message#c3060325 flags:# id:int from_id:int to_id:Peer fwd_from_id:flags.2?int fwd_date:flags.2?int reply_to_msg_id:flags.3?int date:int message:string media:MessageMedia reply_markup:flags.6?ReplyMarkup = Message;
message#f07814c8 flags:# id:int from_id:int to_id:Peer fwd_from_id:flags.2?int fwd_date:flags.2?int reply_to_msg_id:flags.3?int date:int message:string media:MessageMedia reply_markup:flags.6?ReplyMarkup entities:flags.7?Vector<MessageEntity> = Message;
// messages.sentMessage#4c3d47f3 id:int date:int media:MessageMedia pts:int pts_count:int = messages.SentMessage;
messages.sentMessage#8a99d8e0 id:int date:int media:MessageMedia entities:Vector<MessageEntity> pts:int pts_count:int = messages.SentMessage;
// updateShortMessage#ed5c2127 flags:# id:int user_id:int message:string pts:int pts_count:int date:int fwd_from_id:flags.2?int fwd_date:flags.2?int reply_to_msg_id:flags.3?int = Updates;
updateShortMessage#3f32d858 flags:# id:int user_id:int message:string pts:int pts_count:int date:int fwd_from_id:flags.2?int fwd_date:flags.2?int reply_to_msg_id:flags.3?int entities:flags.7?Vector<MessageEntity> = Updates;
// updateShortChatMessage#52238b3c flags:# id:int from_id:int chat_id:int message:string pts:int pts_count:int date:int fwd_from_id:flags.2?int fwd_date:flags.2?int reply_to_msg_id:flags.3?int = Updates;
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
===36===
---types---
// messages.sentMessage#8a99d8e0 id:int date:int media:MessageMedia entities:Vector<MessageEntity> pts:int pts_count:int = messages.SentMessage;
// messages.sentMessageLink#35a1a663 id:int date:int media:MessageMedia pts:int pts_count:int links:Vector<contacts.Link> seq:int = messages.SentMessage;
// inputMediaUploadedVideo#e13fd4bc file:InputFile duration:int w:int h:int caption:string = InputMedia;
inputMediaUploadedVideo#82713fdf file:InputFile duration:int w:int h:int mime_type:string caption:string = InputMedia;
// inputMediaUploadedThumbVideo#96fb97dc file:InputFile thumb:InputFile duration:int w:int h:int caption:string = InputMedia;
inputMediaUploadedThumbVideo#7780ddf9 file:InputFile thumb:InputFile duration:int w:int h:int mime_type:string caption:string = InputMedia;
// message#f07814c8 flags:# id:int from_id:int to_id:Peer fwd_from_id:flags.2?int fwd_date:flags.2?int reply_to_msg_id:flags.3?int date:int message:string media:MessageMedia reply_markup:flags.6?ReplyMarkup entities:flags.7?Vector<MessageEntity> = Message;
message#2bebfa86 flags:# id:int from_id:int to_id:Peer fwd_from_id:flags.2?int fwd_date:flags.2?int reply_to_msg_id:flags.3?int date:int message:string media:flags.9?MessageMedia reply_markup:flags.6?ReplyMarkup entities:flags.7?Vector<MessageEntity> = Message;
// webPage#a31ea0b5 flags:# id:long url:string display_url:string type:flags.0?string site_name:flags.1?string title:flags.2?string description:flags.3?string photo:flags.4?Photo embed_url:flags.5?string embed_type:flags.5?string embed_width:flags.6?int embed_height:flags.6?int duration:flags.7?int author:flags.8?string = WebPage;
webPage#ca820ed7 flags:# id:long url:string display_url:string type:flags.0?string site_name:flags.1?string title:flags.2?string description:flags.3?string photo:flags.4?Photo embed_url:flags.5?string embed_type:flags.5?string embed_width:flags.6?int embed_height:flags.6?int duration:flags.7?int author:flags.8?string document:flags.9?Document = WebPage;
updateShortSentMessage#11f1331c flags:# id:int pts:int pts_count:int date:int media:flags.9?MessageMedia entities:flags.7?Vector<MessageEntity> = Updates;
---functions---
// messages.sendMessage#df12390 flags:# peer:InputPeer reply_to_msg_id:flags.0?int message:string random_id:long reply_markup:flags.2?ReplyMarkup entities:flags.3?Vector<MessageEntity> = messages.SentMessage;
messages.sendMessage#fa88427a flags:# peer:InputPeer reply_to_msg_id:flags.0?int message:string random_id:long reply_markup:flags.2?ReplyMarkup entities:flags.3?Vector<MessageEntity> = Updates;
===38===
---types---
// contactFound#ea879f95 user_id:int = ContactFound;
// chat#6e9c9bc7 id:int title:string photo:ChatPhoto participants_count:int date:int left:Bool version:int = Chat;
chat#7312bc48 flags:# id:int title:string photo:ChatPhoto participants_count:int date:int version:int = Chat;
// chatForbidden#fb0ccc41 id:int title:string date:int = Chat;
chatForbidden#7328bdb id:int title:string = Chat;
// chatParticipantsForbidden#fd2bb8a chat_id:int = ChatParticipants;
chatParticipantsForbidden#fc900c2b flags:# chat_id:int self_participant:flags.0?ChatParticipant = ChatParticipants;
// messageService#1d86f70e flags:int id:int from_id:int to_id:Peer date:int action:MessageAction = Message;
messageService#c06b9607 flags:# id:int from_id:flags.8?int to_id:Peer date:int action:MessageAction = Message;
// contacts.found#566000e results:Vector<ContactFound> users:Vector<User> = contacts.Found;
contacts.found#1aa1f784 results:Vector<Peer> chats:Vector<Chat> users:Vector<User> = contacts.Found;
// updateShortMessage#3f32d858 flags:# id:int user_id:int message:string pts:int pts_count:int date:int fwd_from_id:flags.2?int fwd_date:flags.2?int reply_to_msg_id:flags.3?int entities:flags.7?Vector<MessageEntity> = Updates;
updateShortMessage#f7d91a46 flags:# id:int user_id:int message:string pts:int pts_count:int date:int fwd_from_id:flags.2?Peer fwd_date:flags.2?int reply_to_msg_id:flags.3?int entities:flags.7?Vector<MessageEntity> = Updates;
// updateShortChatMessage#f9409b3d flags:# id:int from_id:int chat_id:int message:string pts:int pts_count:int date:int fwd_from_id:flags.2?int fwd_date:flags.2?int reply_to_msg_id:flags.3?int entities:flags.7?Vector<MessageEntity> = Updates;
updateShortChatMessage#cac7fdd2 flags:# id:int from_id:int chat_id:int message:string pts:int pts_count:int date:int fwd_from_id:flags.2?Peer fwd_date:flags.2?int reply_to_msg_id:flags.3?int entities:flags.7?Vector<MessageEntity> = Updates;
// updateChatParticipantAdd#3a0eeb22 chat_id:int user_id:int inviter_id:int version:int = Update;
updateChatParticipantAdd#ea4b0e5c chat_id:int user_id:int inviter_id:int date:int version:int = Update;
// updateWebPage#2cc36971 webpage:WebPage = Update;
updateWebPage#7f891213 webpage:WebPage pts:int pts_count:int = Update;
// chatInvite#ce917dcd title:string = ChatInvite;
chatInvite#93e99b60 flags:# title:string = ChatInvite;
inputPeerChannel#20adaef8 channel_id:int access_hash:long = InputPeer;
peerChannel#bddde532 channel_id:int = Peer;
channel#678e9587 flags:# id:int access_hash:long title:string username:flags.6?string photo:ChatPhoto date:int version:int = Chat;
channelForbidden#2d85832c id:int access_hash:long title:string = Chat;
channelFull#fab31aa3 flags:# id:int about:string participants_count:flags.0?int admins_count:flags.1?int kicked_count:flags.2?int read_inbox_max_id:int unread_count:int unread_important_count:int chat_photo:Photo notify_settings:PeerNotifySettings exported_invite:ExportedChatInvite = ChatFull;
messageActionChannelCreate#95d2ac92 title:string = MessageAction;
dialogChannel#5b8496b2 peer:Peer top_message:int top_important_message:int read_inbox_max_id:int unread_count:int unread_important_count:int notify_settings:PeerNotifySettings pts:int = Dialog;
messages.channelMessages#bc0f17bc flags:# pts:int count:int messages:Vector<Message> collapsed:flags.0?Vector<MessageGroup> chats:Vector<Chat> users:Vector<User> = messages.Messages;
updateChannelTooLong#60946422 channel_id:int = Update;
updateChannel#b6d45656 channel_id:int = Update;
updateChannelGroup#c36c1e3c channel_id:int group:MessageGroup = Update;
updateNewChannelMessage#62ba04d9 message:Message pts:int pts_count:int = Update;
updateReadChannelInbox#4214f37f channel_id:int max_id:int = Update;
updateDeleteChannelMessages#c37521c9 channel_id:int messages:Vector<int> pts:int pts_count:int = Update;
updateChannelMessageViews#98a12b4b channel_id:int id:int views:int = Update;
inputChannelEmpty#ee8c1e86 = InputChannel;
inputChannel#afeb712e channel_id:int access_hash:long = InputChannel;
contacts.resolvedPeer#7f077ad9 peer:Peer chats:Vector<Chat> users:Vector<User> = contacts.ResolvedPeer;
messageRange#ae30253 min_id:int max_id:int = MessageRange;
messageGroup#e8346f53 min_id:int max_id:int count:int date:int = MessageGroup;
updates.channelDifferenceEmpty#3e11affb flags:# pts:int timeout:flags.1?int = updates.ChannelDifference;
updates.channelDifferenceTooLong#5e167646 flags:# pts:int timeout:flags.1?int top_message:int top_important_message:int read_inbox_max_id:int unread_count:int unread_important_count:int messages:Vector<Message> chats:Vector<Chat> users:Vector<User> = updates.ChannelDifference;
updates.channelDifference#2064674e flags:# pts:int timeout:flags.1?int new_messages:Vector<Message> other_updates:Vector<Update> chats:Vector<Chat> users:Vector<User> = updates.ChannelDifference;
channelMessagesFilterEmpty#94d42ee7 = ChannelMessagesFilter;
channelMessagesFilter#cd77d957 flags:# ranges:Vector<MessageRange> = ChannelMessagesFilter;
channelMessagesFilterCollapsed#fa01232e = ChannelMessagesFilter;
channelParticipant#15ebac1d user_id:int date:int = ChannelParticipant;
channelParticipantSelf#a3289a6d user_id:int inviter_id:int date:int = ChannelParticipant;
channelParticipantModerator#91057fef user_id:int inviter_id:int date:int = ChannelParticipant;
channelParticipantEditor#98192d61 user_id:int inviter_id:int date:int = ChannelParticipant;
channelParticipantKicked#8cc5e69a user_id:int kicked_by:int date:int = ChannelParticipant;
channelParticipantCreator#e3e2e1f9 user_id:int = ChannelParticipant;
channelParticipantsRecent#de3f3c79 = ChannelParticipantsFilter;
channelParticipantsAdmins#b4608969 = ChannelParticipantsFilter;
channelParticipantsKicked#3c37bb7a = ChannelParticipantsFilter;
channelRoleEmpty#b285a0c6 = ChannelParticipantRole;
channelRoleModerator#9618d975 = ChannelParticipantRole;
channelRoleEditor#820bfe8c = ChannelParticipantRole;
channels.channelParticipants#f56ee2a8 count:int participants:Vector<ChannelParticipant> users:Vector<User> = channels.ChannelParticipants;
channels.channelParticipant#d0d9b163 participant:ChannelParticipant users:Vector<User> = channels.ChannelParticipant;
---functions---
// messages.getDialogs#eccf1df6 offset:int max_id:int limit:int = messages.Dialogs;
messages.getDialogs#859b3d3c offset:int limit:int = messages.Dialogs;
// messages.getHistory#92a1df2f peer:InputPeer offset:int max_id:int limit:int = messages.Messages;
messages.getHistory#8a8ec2da peer:InputPeer offset_id:int add_offset:int limit:int max_id:int min_id:int = messages.Messages;
// messages.search#7e9f2ab peer:InputPeer q:string filter:MessagesFilter min_date:int max_date:int offset:int max_id:int limit:int = messages.Messages;
messages.search#d4569248 flags:# peer:InputPeer q:string filter:MessagesFilter min_date:int max_date:int offset:int max_id:int limit:int = messages.Messages;
// messages.forwardMessages#55e1728d peer:InputPeer id:Vector<int> random_id:Vector<long> = Updates;
messages.forwardMessages#708e0195 flags:# from_peer:InputPeer id:Vector<int> random_id:Vector<long> to_peer:InputPeer = Updates;
// contacts.resolveUsername#bf0131c username:string = User;
contacts.resolveUsername#f93ccba3 username:string = contacts.ResolvedPeer;
messages.reportSpam#cf1592db peer:InputPeer = Bool;
messages.getMessagesViews#c4c8a55d peer:InputPeer id:Vector<int> increment:Bool = Vector<int>;
updates.getChannelDifference#bb32d7c0 channel:InputChannel filter:ChannelMessagesFilter pts:int limit:int = updates.ChannelDifference;
channels.getDialogs#a9d3d249 offset:int limit:int = messages.Dialogs;
channels.getImportantHistory#ddb929cb channel:InputChannel offset_id:int add_offset:int limit:int max_id:int min_id:int = messages.Messages;
channels.readHistory#cc104937 channel:InputChannel max_id:int = Bool;
channels.deleteMessages#84c1fd4e channel:InputChannel id:Vector<int> = messages.AffectedMessages;
channels.deleteUserHistory#d10dd71b channel:InputChannel user_id:InputUser = messages.AffectedHistory;
channels.reportSpam#fe087810 channel:InputChannel user_id:InputUser id:Vector<int> = Bool;
channels.getMessages#93d7b347 channel:InputChannel id:Vector<int> = messages.Messages;
channels.getParticipants#24d98f92 channel:InputChannel filter:ChannelParticipantsFilter offset:int limit:int = channels.ChannelParticipants;
channels.getParticipant#546dd7a6 channel:InputChannel user_id:InputUser = channels.ChannelParticipant;
channels.getChannels#a7f6bbb id:Vector<InputChannel> = messages.Chats;
channels.getFullChannel#8736a09 channel:InputChannel = messages.ChatFull;
channels.createChannel#5521d844 flags:# title:string about:string users:Vector<InputUser> = Updates;
channels.editAbout#13e27f1e channel:InputChannel about:string = Bool;
channels.editAdmin#52b16962 channel:InputChannel user_id:InputUser role:ChannelParticipantRole = Bool;
channels.editTitle#566decd0 channel:InputChannel title:string = Updates;
channels.editPhoto#f12e57c9 channel:InputChannel photo:InputChatPhoto = Updates;
channels.toggleComments#aaa29e88 channel:InputChannel enabled:Bool = Updates;
channels.checkUsername#10e6bd2c channel:InputChannel username:string = Bool;
channels.updateUsername#3514b3de channel:InputChannel username:string = Bool;
channels.joinChannel#24b524c5 channel:InputChannel = Updates;
channels.leaveChannel#f836aa95 channel:InputChannel = Updates;
channels.inviteToChannel#199f3a6c channel:InputChannel users:Vector<InputUser> = Updates;
channels.kickFromChannel#a672de14 channel:InputChannel user_id:InputUser kicked:Bool = Updates;
channels.exportInvite#c7560885 channel:InputChannel = ExportedChatInvite;
channels.deleteChannel#c0111fe3 channel:InputChannel = Updates;
===40===
---types---
// chat#7312bc48 flags:# id:int title:string photo:ChatPhoto participants_count:int date:int version:int = Chat;
chat#7312bc48 flags:# creator:flags.0?true kicked:flags.1?true left:flags.2?true admins_enabled:flags.3?true admin:flags.4?true id:int title:string photo:ChatPhoto participants_count:int date:int version:int = Chat;
// chatParticipants#7841b415 chat_id:int admin_id:int participants:Vector<ChatParticipant> version:int = ChatParticipants;
chatParticipants#3f460fed chat_id:int participants:Vector<ChatParticipant> version:int = ChatParticipants;
// message#2bebfa86 flags:# id:int from_id:int to_id:Peer fwd_from_id:flags.2?int fwd_date:flags.2?int reply_to_msg_id:flags.3?int date:int message:string media:flags.9?MessageMedia reply_markup:flags.6?ReplyMarkup entities:flags.7?Vector<MessageEntity> = Message;
message#5ba66c13 flags:# unread:flags.0?true out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true id:int from_id:flags.8?int to_id:Peer fwd_from_id:flags.2?Peer fwd_date:flags.2?int reply_to_msg_id:flags.3?int date:int message:string media:flags.9?MessageMedia reply_markup:flags.6?ReplyMarkup entities:flags.7?Vector<MessageEntity> views:flags.10?int = Message;
// messageService#c06b9607 flags:# id:int from_id:flags.8?int to_id:Peer date:int action:MessageAction = Message;
messageService#c06b9607 flags:# unread:flags.0?true out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true id:int from_id:flags.8?int to_id:Peer date:int action:MessageAction = Message;
// updateShortMessage#f7d91a46 flags:# id:int user_id:int message:string pts:int pts_count:int date:int fwd_from_id:flags.2?Peer fwd_date:flags.2?int reply_to_msg_id:flags.3?int entities:flags.7?Vector<MessageEntity> = Updates;
updateShortMessage#f7d91a46 flags:# unread:flags.0?true out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true id:int user_id:int message:string pts:int pts_count:int date:int fwd_from_id:flags.2?Peer fwd_date:flags.2?int reply_to_msg_id:flags.3?int entities:flags.7?Vector<MessageEntity> = Updates;
// updateShortChatMessage#cac7fdd2 flags:# id:int from_id:int chat_id:int message:string pts:int pts_count:int date:int fwd_from_id:flags.2?Peer fwd_date:flags.2?int reply_to_msg_id:flags.3?int entities:flags.7?Vector<MessageEntity> = Updates;
updateShortChatMessage#cac7fdd2 flags:# unread:flags.0?true out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true id:int from_id:int chat_id:int message:string pts:int pts_count:int date:int fwd_from_id:flags.2?Peer fwd_date:flags.2?int reply_to_msg_id:flags.3?int entities:flags.7?Vector<MessageEntity> = Updates;
// dcOption#5d8c6cc flags:# id:int ip_address:string port:int = DcOption;
dcOption#5d8c6cc flags:# ipv6:flags.0?true media_only:flags.1?true id:int ip_address:string port:int = DcOption;
// chatInvite#93e99b60 flags:# title:string = ChatInvite;
chatInvite#93e99b60 flags:# channel:flags.0?true broadcast:flags.1?true public:flags.2?true title:string = ChatInvite;
// stickerSet#cd303b41 flags:# id:long access_hash:long title:string short_name:string count:int hash:int = StickerSet;
stickerSet#cd303b41 flags:# installed:flags.0?true disabled:flags.1?true official:flags.2?true id:long access_hash:long title:string short_name:string count:int hash:int = StickerSet;
// user#22e49072 flags:# id:int access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?UserProfilePhoto status:flags.6?UserStatus bot_info_version:flags.14?int = User;
user#22e49072 flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true id:int access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?UserProfilePhoto status:flags.6?UserStatus bot_info_version:flags.14?int = User;
// replyKeyboardHide#a03e5b85 flags:# = ReplyMarkup;
replyKeyboardHide#a03e5b85 flags:# selective:flags.2?true = ReplyMarkup;
// replyKeyboardForceReply#f4108aa0 flags:# = ReplyMarkup;
replyKeyboardForceReply#f4108aa0 flags:# single_use:flags.1?true selective:flags.2?true = ReplyMarkup;
// replyKeyboardMarkup#3502758c flags:# rows:Vector<KeyboardButtonRow> = ReplyMarkup;
replyKeyboardMarkup#3502758c flags:# resize:flags.0?true single_use:flags.1?true selective:flags.2?true rows:Vector<KeyboardButtonRow> = ReplyMarkup;
// updateShortSentMessage#11f1331c flags:# id:int pts:int pts_count:int date:int media:flags.9?MessageMedia entities:flags.7?Vector<MessageEntity> = Updates;
updateShortSentMessage#11f1331c flags:# unread:flags.0?true out:flags.1?true id:int pts:int pts_count:int date:int media:flags.9?MessageMedia entities:flags.7?Vector<MessageEntity> = Updates;
// channel#678e9587 flags:# id:int access_hash:long title:string username:flags.6?string photo:ChatPhoto date:int version:int = Chat;
channel#678e9587 flags:# creator:flags.0?true kicked:flags.1?true left:flags.2?true editor:flags.3?true moderator:flags.4?true broadcast:flags.5?true verified:flags.7?true id:int access_hash:long title:string username:flags.6?string photo:ChatPhoto date:int version:int = Chat;
// channelFull#fab31aa3 flags:# id:int about:string participants_count:flags.0?int admins_count:flags.1?int kicked_count:flags.2?int read_inbox_max_id:int unread_count:int unread_important_count:int chat_photo:Photo notify_settings:PeerNotifySettings exported_invite:ExportedChatInvite = ChatFull;
channelFull#fab31aa3 flags:# can_view_participants:flags.3?true id:int about:string participants_count:flags.0?int admins_count:flags.1?int kicked_count:flags.2?int read_inbox_max_id:int unread_count:int unread_important_count:int chat_photo:Photo notify_settings:PeerNotifySettings exported_invite:ExportedChatInvite = ChatFull;
// updates.channelDifferenceEmpty#3e11affb flags:# pts:int timeout:flags.1?int = updates.ChannelDifference;
updates.channelDifferenceEmpty#3e11affb flags:# final:flags.0?true pts:int timeout:flags.1?int = updates.ChannelDifference;
// updates.channelDifferenceTooLong#5e167646 flags:# pts:int timeout:flags.1?int top_message:int top_important_message:int read_inbox_max_id:int unread_count:int unread_important_count:int messages:Vector<Message> chats:Vector<Chat> users:Vector<User> = updates.ChannelDifference;
updates.channelDifferenceTooLong#5e167646 flags:# final:flags.0?true pts:int timeout:flags.1?int top_message:int top_important_message:int read_inbox_max_id:int unread_count:int unread_important_count:int messages:Vector<Message> chats:Vector<Chat> users:Vector<User> = updates.ChannelDifference;
// updates.channelDifference#2064674e flags:# pts:int timeout:flags.1?int new_messages:Vector<Message> other_updates:Vector<Update> chats:Vector<Chat> users:Vector<User> = updates.ChannelDifference;
updates.channelDifference#2064674e flags:# final:flags.0?true pts:int timeout:flags.1?int new_messages:Vector<Message> other_updates:Vector<Update> chats:Vector<Chat> users:Vector<User> = updates.ChannelDifference;
// channelMessagesFilter#cd77d957 flags:# ranges:Vector<MessageRange> = ChannelMessagesFilter;
channelMessagesFilter#cd77d957 flags:# important_only:flags.0?true ranges:Vector<MessageRange> = ChannelMessagesFilter;
true#3fedd339 = True;
chatParticipantCreator#da13538a user_id:int = ChatParticipant;
chatParticipantAdmin#e2d6e436 user_id:int inviter_id:int date:int = ChatParticipant;
updateChatAdmins#6e947941 chat_id:int enabled:Bool version:int = Update;
updateChatParticipantAdmin#b6901959 chat_id:int user_id:int is_admin:Bool version:int = Update;
---functions---
// messages.search#d4569248 flags:# peer:InputPeer q:string filter:MessagesFilter min_date:int max_date:int offset:int max_id:int limit:int = messages.Messages;
messages.search#d4569248 flags:# important_only:flags.0?true peer:InputPeer q:string filter:MessagesFilter min_date:int max_date:int offset:int max_id:int limit:int = messages.Messages;
// messages.readHistory#b04f2510 peer:InputPeer max_id:int offset:int = messages.AffectedHistory;
messages.readHistory#e306d3a peer:InputPeer max_id:int = messages.AffectedMessages;
// messages.deleteHistory#f4f8fb61 peer:InputPeer offset:int = messages.AffectedHistory;
messages.deleteHistory#b7c13bd9 peer:InputPeer max_id:int = messages.AffectedHistory;
// messages.sendMessage#fa88427a flags:# peer:InputPeer reply_to_msg_id:flags.0?int message:string random_id:long reply_markup:flags.2?ReplyMarkup entities:flags.3?Vector<MessageEntity> = Updates;
messages.sendMessage#fa88427a flags:# no_webpage:flags.1?true broadcast:flags.4?true peer:InputPeer reply_to_msg_id:flags.0?int message:string random_id:long reply_markup:flags.2?ReplyMarkup entities:flags.3?Vector<MessageEntity> = Updates;
// messages.sendMedia#c8f16791 flags:# peer:InputPeer reply_to_msg_id:flags.0?int media:InputMedia random_id:long reply_markup:flags.2?ReplyMarkup = Updates;
messages.sendMedia#c8f16791 flags:# broadcast:flags.4?true peer:InputPeer reply_to_msg_id:flags.0?int media:InputMedia random_id:long reply_markup:flags.2?ReplyMarkup = Updates;
// messages.forwardMessages#708e0195 flags:# from_peer:InputPeer id:Vector<int> random_id:Vector<long> to_peer:InputPeer = Updates;
messages.forwardMessages#708e0195 flags:# broadcast:flags.4?true from_peer:InputPeer id:Vector<int> random_id:Vector<long> to_peer:InputPeer = Updates;
// channels.createChannel#5521d844 flags:# title:string about:string users:Vector<InputUser> = Updates;
channels.createChannel#5521d844 flags:# broadcast:flags.0?true title:string about:string users:Vector<InputUser> = Updates;
messages.toggleChatAdmins#ec8bd9e1 chat_id:int enabled:Bool = Updates;
messages.editChatAdmin#a9e69f2e chat_id:int user_id:InputUser is_admin:Bool = Bool;
===41===
---types---
// chat#7312bc48 flags:# creator:flags.0?true kicked:flags.1?true left:flags.2?true admins_enabled:flags.3?true admin:flags.4?true id:int title:string photo:ChatPhoto participants_count:int date:int version:int = Chat;
chat#d91cdd54 flags:# creator:flags.0?true kicked:flags.1?true left:flags.2?true admins_enabled:flags.3?true admin:flags.4?true deactivated:flags.5?true id:int title:string photo:ChatPhoto participants_count:int date:int version:int migrated_to:flags.6?InputChannel = Chat;
// messageActionChatAddUser#5e3cfc4b user_id:int = MessageAction;
messageActionChatAddUser#488a7337 users:Vector<int> = MessageAction;
// config#4e32b894 date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int broadcast_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int disabled_features:Vector<DisabledFeature> = Config;
config#6cb6e65e date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int megagroup_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int disabled_features:Vector<DisabledFeature> = Config;
// chatInvite#93e99b60 flags:# channel:flags.0?true broadcast:flags.1?true public:flags.2?true title:string = ChatInvite;
chatInvite#93e99b60 flags:# channel:flags.0?true broadcast:flags.1?true public:flags.2?true megagroup:flags.3?true title:string = ChatInvite;
// channel#678e9587 flags:# creator:flags.0?true kicked:flags.1?true left:flags.2?true editor:flags.3?true moderator:flags.4?true broadcast:flags.5?true verified:flags.7?true id:int access_hash:long title:string username:flags.6?string photo:ChatPhoto date:int version:int = Chat;
channel#678e9587 flags:# creator:flags.0?true kicked:flags.1?true left:flags.2?true editor:flags.3?true moderator:flags.4?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true id:int access_hash:long title:string username:flags.6?string photo:ChatPhoto date:int version:int = Chat;
// channelFull#fab31aa3 flags:# can_view_participants:flags.3?true id:int about:string participants_count:flags.0?int admins_count:flags.1?int kicked_count:flags.2?int read_inbox_max_id:int unread_count:int unread_important_count:int chat_photo:Photo notify_settings:PeerNotifySettings exported_invite:ExportedChatInvite = ChatFull;
channelFull#9e341ddf flags:# can_view_participants:flags.3?true id:int about:string participants_count:flags.0?int admins_count:flags.1?int kicked_count:flags.2?int read_inbox_max_id:int unread_count:int unread_important_count:int chat_photo:Photo notify_settings:PeerNotifySettings exported_invite:ExportedChatInvite bot_info:Vector<BotInfo> migrated_from_chat_id:flags.4?int migrated_from_max_id:flags.4?int = ChatFull;
messageActionChatMigrateTo#51bdb021 channel_id:int = MessageAction;
messageActionChannelMigrateFrom#b055eaee title:string chat_id:int = MessageAction;
channelParticipantsBots#b0d1865b = ChannelParticipantsFilter;
---functions---
// messages.startBot#1b3e0ffc bot:InputUser chat_id:int random_id:long start_param:string = Updates;
messages.startBot#e6df7378 bot:InputUser peer:InputPeer random_id:long start_param:string = Updates;
// channels.createChannel#5521d844 flags:# broadcast:flags.0?true title:string about:string users:Vector<InputUser> = Updates;
channels.createChannel#f4893d7f flags:# broadcast:flags.0?true megagroup:flags.1?true title:string about:string = Updates;
messages.migrateChat#15a3b8e3 chat_id:int = Updates;
messages.searchGlobal#9e3cacb0 q:string offset_date:int offset_peer:InputPeer offset_id:int limit:int = messages.Messages;
===42===
---types---
// channelMessagesFilter#cd77d957 flags:# important_only:flags.0?true ranges:Vector<MessageRange> = ChannelMessagesFilter;
channelMessagesFilter#cd77d957 flags:# important_only:flags.0?true exclude_new_messages:flags.1?true ranges:Vector<MessageRange> = ChannelMessagesFilter;
---functions---
// messages.getDialogs#859b3d3c offset:int limit:int = messages.Dialogs;
messages.getDialogs#6b47f94d offset_date:int offset_id:int offset_peer:InputPeer limit:int = messages.Dialogs;
// channels.editAdmin#52b16962 channel:InputChannel user_id:InputUser role:ChannelParticipantRole = Bool;
channels.editAdmin#eb7611d0 channel:InputChannel user_id:InputUser role:ChannelParticipantRole = Updates;
===43===
---types---
// messages.allStickers#d51dafdb hash:string sets:Vector<StickerSet> = messages.AllStickers;
messages.allStickers#edfd405f hash:int sets:Vector<StickerSet> = messages.AllStickers;
inputReportReasonSpam#58dbcab8 = ReportReason;
inputReportReasonViolence#1e22c78d = ReportReason;
inputReportReasonPornography#2e59d922 = ReportReason;
inputReportReasonOther#e1746d0a text:string = ReportReason;
updateNewStickerSet#688a30aa stickerset:messages.StickerSet = Update;
updateStickerSetsOrder#f0dfb451 order:Vector<long> = Update;
updateStickerSets#43ae3dec = Update;
help.termsOfService#f1ee3e90 text:string = help.TermsOfService;
---functions---
// messages.getAllStickers#aa3bc868 hash:string = messages.AllStickers;
messages.getAllStickers#1c9618b1 hash:int = messages.AllStickers;
account.reportPeer#ae189d5f peer:InputPeer reason:ReportReason = Bool;
messages.reorderStickerSets#9fcfbc30 order:Vector<long> = Bool;
help.getTermsOfService#37d78f83 lang_code:string = help.TermsOfService;
===44===
---types---
// user#22e49072 flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true id:int access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?UserProfilePhoto status:flags.6?UserStatus bot_info_version:flags.14?int = User;
user#3289b590 flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true restricted:flags.18?true id:int access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?UserProfilePhoto status:flags.6?UserStatus bot_info_version:flags.14?int restiction_reason:flags.18?string = User;
// channel#678e9587 flags:# creator:flags.0?true kicked:flags.1?true left:flags.2?true editor:flags.3?true moderator:flags.4?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true id:int access_hash:long title:string username:flags.6?string photo:ChatPhoto date:int version:int = Chat;
channel#e834ce68 flags:# creator:flags.0?true kicked:flags.1?true left:flags.2?true editor:flags.3?true moderator:flags.4?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true restricted:flags.9?true id:int access_hash:long title:string username:flags.6?string photo:ChatPhoto date:int version:int restiction_reason:flags.9?string = Chat;
webPageExternal#cf73f207 flags:# url:string display_url:string type:flags.0?string title:flags.1?string description:flags.2?string thumb_url:flags.3?string content_url:flags.4?string w:flags.5?int h:flags.5?int duration:flags.6?int = WebPage;
foundGif#d579cccb webpage:WebPage = FoundGif;
inputMediaGifExternal#4843b0fd url:string q:string = InputMedia;
messages.foundGifs#450a1c0a next_offset:int results:Vector<FoundGif> = messages.FoundGifs;
---functions---
messages.getDocumentByHash#338e2464 sha256:bytes size:int mime_type:string = Document;
messages.searchGifs#bf9a776b q:string offset:int = messages.FoundGifs;
===45===
---types---
// webPageExternal#cf73f207 flags:# url:string display_url:string type:flags.0?string title:flags.1?string description:flags.2?string thumb_url:flags.3?string content_url:flags.4?string w:flags.5?int h:flags.5?int duration:flags.6?int = WebPage;
// message#5ba66c13 flags:# unread:flags.0?true out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true id:int from_id:flags.8?int to_id:Peer fwd_from_id:flags.2?Peer fwd_date:flags.2?int reply_to_msg_id:flags.3?int date:int message:string media:flags.9?MessageMedia reply_markup:flags.6?ReplyMarkup entities:flags.7?Vector<MessageEntity> views:flags.10?int = Message;
message#c992e15c flags:# unread:flags.0?true out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true id:int from_id:flags.8?int to_id:Peer fwd_from_id:flags.2?Peer fwd_date:flags.2?int via_bot_id:flags.11?int reply_to_msg_id:flags.3?int date:int message:string media:flags.9?MessageMedia reply_markup:flags.6?ReplyMarkup entities:flags.7?Vector<MessageEntity> views:flags.10?int = Message;
// updateShortMessage#f7d91a46 flags:# unread:flags.0?true out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true id:int user_id:int message:string pts:int pts_count:int date:int fwd_from_id:flags.2?Peer fwd_date:flags.2?int reply_to_msg_id:flags.3?int entities:flags.7?Vector<MessageEntity> = Updates;
updateShortMessage#13e4deaa flags:# unread:flags.0?true out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true id:int user_id:int message:string pts:int pts_count:int date:int fwd_from_id:flags.2?Peer fwd_date:flags.2?int via_bot_id:flags.11?int reply_to_msg_id:flags.3?int entities:flags.7?Vector<MessageEntity> = Updates;
// updateShortChatMessage#cac7fdd2 flags:# unread:flags.0?true out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true id:int from_id:int chat_id:int message:string pts:int pts_count:int date:int fwd_from_id:flags.2?Peer fwd_date:flags.2?int reply_to_msg_id:flags.3?int entities:flags.7?Vector<MessageEntity> = Updates;
updateShortChatMessage#248afa62 flags:# unread:flags.0?true out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true id:int from_id:int chat_id:int message:string pts:int pts_count:int date:int fwd_from_id:flags.2?Peer fwd_date:flags.2?int via_bot_id:flags.11?int reply_to_msg_id:flags.3?int entities:flags.7?Vector<MessageEntity> = Updates;
// config#6cb6e65e date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int megagroup_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int disabled_features:Vector<DisabledFeature> = Config;
config#6bbc5f8 date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int megagroup_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int saved_gifs_limit:int disabled_features:Vector<DisabledFeature> = Config;
// inputMediaUploadedDocument#ffe76b78 file:InputFile mime_type:string attributes:Vector<DocumentAttribute> = InputMedia;
inputMediaUploadedDocument#1d89306d file:InputFile mime_type:string attributes:Vector<DocumentAttribute> caption:string = InputMedia;
// inputMediaUploadedThumbDocument#41481486 file:InputFile thumb:InputFile mime_type:string attributes:Vector<DocumentAttribute> = InputMedia;
inputMediaUploadedThumbDocument#ad613491 file:InputFile thumb:InputFile mime_type:string attributes:Vector<DocumentAttribute> caption:string = InputMedia;
// inputMediaDocument#d184e841 id:InputDocument = InputMedia;
inputMediaDocument#1a77f29c id:InputDocument caption:string = InputMedia;
// messageMediaDocument#2fda2204 document:Document = MessageMedia;
messageMediaDocument#f3e02ea8 document:Document caption:string = MessageMedia;
// user#3289b590 flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true restricted:flags.18?true id:int access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?UserProfilePhoto status:flags.6?UserStatus bot_info_version:flags.14?int restiction_reason:flags.18?string = User;
user#d10d979a flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true restricted:flags.18?true id:int access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?UserProfilePhoto status:flags.6?UserStatus bot_info_version:flags.14?int restriction_reason:flags.18?string bot_inline_placeholder:flags.19?string = User;
// channel#e834ce68 flags:# creator:flags.0?true kicked:flags.1?true left:flags.2?true editor:flags.3?true moderator:flags.4?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true restricted:flags.9?true id:int access_hash:long title:string username:flags.6?string photo:ChatPhoto date:int version:int restiction_reason:flags.9?string = Chat;
channel#4b1b7506 flags:# creator:flags.0?true kicked:flags.1?true left:flags.2?true editor:flags.3?true moderator:flags.4?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true restricted:flags.9?true id:int access_hash:long title:string username:flags.6?string photo:ChatPhoto date:int version:int restriction_reason:flags.9?string = Chat;
// foundGif#d579cccb webpage:WebPage = FoundGif;
foundGif#162ecc1f url:string thumb_url:string content_url:string content_type:string w:int h:int = FoundGif;
inputMessagesFilterGif#ffc86587 = MessagesFilter;
updateSavedGifs#9375341e = Update;
updateBotInlineQuery#c01eea08 query_id:long user_id:int query:string offset:string = Update;
foundGifCached#9c750409 url:string photo:Photo document:Document = FoundGif;
messages.savedGifsNotModified#e8025ca2 = messages.SavedGifs;
messages.savedGifs#2e0709a5 hash:int gifs:Vector<Document> = messages.SavedGifs;
inputBotInlineMessageMediaAuto#2e43e587 caption:string = InputBotInlineMessage;
inputBotInlineMessageText#adf0df71 flags:# no_webpage:flags.0?true message:string entities:flags.1?Vector<MessageEntity> = InputBotInlineMessage;
inputBotInlineResult#2cbbe15a flags:# id:string type:string title:flags.1?string description:flags.2?string url:flags.3?string thumb_url:flags.4?string content_url:flags.5?string content_type:flags.5?string w:flags.6?int h:flags.6?int duration:flags.7?int send_message:InputBotInlineMessage = InputBotInlineResult;
botInlineMessageMediaAuto#fc56e87d caption:string = BotInlineMessage;
botInlineMessageText#a56197a9 flags:# no_webpage:flags.0?true message:string entities:flags.1?Vector<MessageEntity> = BotInlineMessage;
botInlineMediaResultDocument#f897d33e id:string type:string document:Document send_message:BotInlineMessage = BotInlineResult;
botInlineMediaResultPhoto#c5528587 id:string type:string photo:Photo send_message:BotInlineMessage = BotInlineResult;
botInlineResult#9bebaeb9 flags:# id:string type:string title:flags.1?string description:flags.2?string url:flags.3?string thumb_url:flags.4?string content_url:flags.5?string content_type:flags.5?string w:flags.6?int h:flags.6?int duration:flags.7?int send_message:BotInlineMessage = BotInlineResult;
messages.botResults#1170b0a3 flags:# gallery:flags.0?true query_id:long next_offset:flags.1?string results:Vector<BotInlineResult> = messages.BotResults;
---functions---
messages.getSavedGifs#83bf3d52 hash:int = messages.SavedGifs;
messages.saveGif#327a30cb id:InputDocument unsave:Bool = Bool;
messages.getInlineBotResults#9324600d bot:InputUser query:string offset:string = messages.BotResults;
messages.setInlineBotResults#3f23ec12 flags:# gallery:flags.0?true private:flags.1?true query_id:long results:Vector<InputBotInlineResult> cache_time:int next_offset:flags.2?string = Bool;
messages.sendInlineBotResult#b16e06fe flags:# broadcast:flags.4?true peer:InputPeer reply_to_msg_id:flags.0?int random_id:long query_id:long id:string = Updates;
===46===
---types---
// inputMessagesFilterAudio#cfc87522 = MessagesFilter;
// inputMediaUploadedAudio#4e498cab file:InputFile duration:int mime_type:string = InputMedia;
// inputMediaAudio#89938781 id:InputAudio = InputMedia;
// messageMediaAudio#c6b68300 audio:Audio = MessageMedia;
// inputAudioEmpty#d95adc84 = InputAudio;
// inputAudio#77d440ff id:long access_hash:long = InputAudio;
// inputAudioFileLocation#74dc404d id:long access_hash:long = InputFileLocation;
// audioEmpty#586988d8 id:long = Audio;
// audio#f9e35055 id:long access_hash:long date:int duration:int mime_type:string size:int dc_id:int = Audio;
// contactSuggested#3de191a1 user_id:int mutual_contacts:int = ContactSuggested;
// contacts.suggested#5649dcc5 results:Vector<ContactSuggested> users:Vector<User> = contacts.Suggested;
// inputMessagesFilterAudioDocuments#5afbf764 = MessagesFilter;
// documentAttributeAudio#ded218e0 duration:int title:string performer:string = DocumentAttribute;
documentAttributeAudio#9852f9c6 flags:# voice:flags.10?true duration:int title:flags.0?string performer:flags.1?string waveform:flags.2?bytes = DocumentAttribute;
// account.passwordInputSettings#bcfc532c flags:# new_salt:flags.0?bytes new_password_hash:flags.0?bytes hint:flags.0?string email:flags.1?string = account.PasswordInputSettings;
account.passwordInputSettings#86916deb flags:# new_salt:flags.0?bytes new_password_hash:flags.0?bytes hint:flags.0?string email:flags.1?string = account.PasswordInputSettings;
// channel#4b1b7506 flags:# creator:flags.0?true kicked:flags.1?true left:flags.2?true editor:flags.3?true moderator:flags.4?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true restricted:flags.9?true id:int access_hash:long title:string username:flags.6?string photo:ChatPhoto date:int version:int restriction_reason:flags.9?string = Chat;
channel#4b1b7506 flags:# creator:flags.0?true kicked:flags.1?true left:flags.2?true editor:flags.3?true moderator:flags.4?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true restricted:flags.9?true invites_enabled:flags.10?true id:int access_hash:long title:string username:flags.6?string photo:ChatPhoto date:int version:int restriction_reason:flags.9?string = Chat;
inputMessagesFilterVoice#50f5c392 = MessagesFilter;
inputMessagesFilterMusic#3751b49e = MessagesFilter;
updateBotInlineSend#f69e113 user_id:int query:string id:string = Update;
inputPrivacyKeyChatInvite#bdfb0426 = InputPrivacyKey;
privacyKeyChatInvite#500e6dfa = PrivacyKey;
---functions---
// contacts.getSuggested#cd773428 limit:int = contacts.Suggested;
// messages.getHistory#8a8ec2da peer:InputPeer offset_id:int add_offset:int limit:int max_id:int min_id:int = messages.Messages;
messages.getHistory#afa92846 peer:InputPeer offset_id:int offset_date:int add_offset:int limit:int max_id:int min_id:int = messages.Messages;
// channels.getImportantHistory#ddb929cb channel:InputChannel offset_id:int add_offset:int limit:int max_id:int min_id:int = messages.Messages;
channels.getImportantHistory#8f494bb2 channel:InputChannel offset_id:int offset_date:int add_offset:int limit:int max_id:int min_id:int = messages.Messages;
channels.toggleInvites#49609307 channel:InputChannel enabled:Bool = Updates;
===47===
---types---
// inputMediaUploadedVideo#82713fdf file:InputFile duration:int w:int h:int mime_type:string caption:string = InputMedia;
// inputMediaUploadedThumbVideo#7780ddf9 file:InputFile thumb:InputFile duration:int w:int h:int mime_type:string caption:string = InputMedia;
// inputMediaVideo#936a4ebd id:InputVideo caption:string = InputMedia;
// inputVideoEmpty#5508ec75 = InputVideo;
// inputVideo#ee579652 id:long access_hash:long = InputVideo;
// inputVideoFileLocation#3d0364ec id:long access_hash:long = InputFileLocation;
// messageMediaVideo#5bcf1675 video:Video caption:string = MessageMedia;
// videoEmpty#c10658a8 id:long = Video;
// video#f72887d3 id:long access_hash:long date:int duration:int mime_type:string size:int thumb:PhotoSize dc_id:int w:int h:int = Video;
---functions---
===48===
---types---
// message#c992e15c flags:# unread:flags.0?true out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true id:int from_id:flags.8?int to_id:Peer fwd_from_id:flags.2?Peer fwd_date:flags.2?int via_bot_id:flags.11?int reply_to_msg_id:flags.3?int date:int message:string media:flags.9?MessageMedia reply_markup:flags.6?ReplyMarkup entities:flags.7?Vector<MessageEntity> views:flags.10?int = Message;
message#c09be45f flags:# unread:flags.0?true out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true silent:flags.13?true post:flags.14?true id:int from_id:flags.8?int to_id:Peer fwd_from:flags.2?MessageFwdHeader via_bot_id:flags.11?int reply_to_msg_id:flags.3?int date:int message:string media:flags.9?MessageMedia reply_markup:flags.6?ReplyMarkup entities:flags.7?Vector<MessageEntity> views:flags.10?int edit_date:flags.15?int = Message;
// messageService#c06b9607 flags:# unread:flags.0?true out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true id:int from_id:flags.8?int to_id:Peer date:int action:MessageAction = Message;
messageService#c06b9607 flags:# unread:flags.0?true out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true silent:flags.13?true post:flags.14?true id:int from_id:flags.8?int to_id:Peer date:int action:MessageAction = Message;
// inputPeerNotifySettings#46a2ce98 mute_until:int sound:string show_previews:Bool events_mask:int = InputPeerNotifySettings;
inputPeerNotifySettings#38935eb2 flags:# show_previews:flags.0?true silent:flags.1?true mute_until:int sound:string = InputPeerNotifySettings;
// peerNotifySettings#8d5e11ee mute_until:int sound:string show_previews:Bool events_mask:int = PeerNotifySettings;
peerNotifySettings#9acda4c0 flags:# show_previews:flags.0?true silent:flags.1?true mute_until:int sound:string = PeerNotifySettings;
// updateShortMessage#13e4deaa flags:# unread:flags.0?true out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true id:int user_id:int message:string pts:int pts_count:int date:int fwd_from_id:flags.2?Peer fwd_date:flags.2?int via_bot_id:flags.11?int reply_to_msg_id:flags.3?int entities:flags.7?Vector<MessageEntity> = Updates;
updateShortMessage#914fbf11 flags:# unread:flags.0?true out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true silent:flags.13?true id:int user_id:int message:string pts:int pts_count:int date:int fwd_from:flags.2?MessageFwdHeader via_bot_id:flags.11?int reply_to_msg_id:flags.3?int entities:flags.7?Vector<MessageEntity> = Updates;
// updateShortChatMessage#248afa62 flags:# unread:flags.0?true out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true id:int from_id:int chat_id:int message:string pts:int pts_count:int date:int fwd_from_id:flags.2?Peer fwd_date:flags.2?int via_bot_id:flags.11?int reply_to_msg_id:flags.3?int entities:flags.7?Vector<MessageEntity> = Updates;
updateShortChatMessage#16812688 flags:# unread:flags.0?true out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true silent:flags.13?true id:int from_id:int chat_id:int message:string pts:int pts_count:int date:int fwd_from:flags.2?MessageFwdHeader via_bot_id:flags.11?int reply_to_msg_id:flags.3?int entities:flags.7?Vector<MessageEntity> = Updates;
// dcOption#5d8c6cc flags:# ipv6:flags.0?true media_only:flags.1?true id:int ip_address:string port:int = DcOption;
dcOption#5d8c6cc flags:# ipv6:flags.0?true media_only:flags.1?true tcpo_only:flags.2?true id:int ip_address:string port:int = DcOption;
// config#6bbc5f8 date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int megagroup_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int saved_gifs_limit:int disabled_features:Vector<DisabledFeature> = Config;
config#317ceef4 date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int megagroup_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int saved_gifs_limit:int edit_time_limit:int disabled_features:Vector<DisabledFeature> = Config;
// user#d10d979a flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true restricted:flags.18?true id:int access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?UserProfilePhoto status:flags.6?UserStatus bot_info_version:flags.14?int restriction_reason:flags.18?string bot_inline_placeholder:flags.19?string = User;
user#d10d979a flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true restricted:flags.18?true min:flags.20?true id:int access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?UserProfilePhoto status:flags.6?UserStatus bot_info_version:flags.14?int restriction_reason:flags.18?string bot_inline_placeholder:flags.19?string = User;
// channel#4b1b7506 flags:# creator:flags.0?true kicked:flags.1?true left:flags.2?true editor:flags.3?true moderator:flags.4?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true restricted:flags.9?true invites_enabled:flags.10?true id:int access_hash:long title:string username:flags.6?string photo:ChatPhoto date:int version:int restriction_reason:flags.9?string = Chat;
channel#4b1b7506 flags:# creator:flags.0?true kicked:flags.1?true left:flags.2?true editor:flags.3?true moderator:flags.4?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true restricted:flags.9?true democracy:flags.10?true signatures:flags.11?true id:int access_hash:long title:string username:flags.6?string photo:ChatPhoto date:int version:int restriction_reason:flags.9?string = Chat;
updateEditChannelMessage#1b3f4df7 message:Message pts:int pts_count:int = Update;
exportedMessageLink#1f486803 link:string = ExportedMessageLink;
messageFwdHeader#c786ddcb flags:# from_id:flags.0?int date:int channel_id:flags.1?int channel_post:flags.2?int = MessageFwdHeader;
channels.messageEditData#67e1255f flags:# caption:flags.0?true = channels.MessageEditData;
---functions---
// messages.sendMessage#fa88427a flags:# no_webpage:flags.1?true broadcast:flags.4?true peer:InputPeer reply_to_msg_id:flags.0?int message:string random_id:long reply_markup:flags.2?ReplyMarkup entities:flags.3?Vector<MessageEntity> = Updates;
messages.sendMessage#fa88427a flags:# no_webpage:flags.1?true broadcast:flags.4?true silent:flags.5?true background:flags.6?true peer:InputPeer reply_to_msg_id:flags.0?int message:string random_id:long reply_markup:flags.2?ReplyMarkup entities:flags.3?Vector<MessageEntity> = Updates;
// messages.sendMedia#c8f16791 flags:# broadcast:flags.4?true peer:InputPeer reply_to_msg_id:flags.0?int media:InputMedia random_id:long reply_markup:flags.2?ReplyMarkup = Updates;
messages.sendMedia#c8f16791 flags:# broadcast:flags.4?true silent:flags.5?true background:flags.6?true peer:InputPeer reply_to_msg_id:flags.0?int media:InputMedia random_id:long reply_markup:flags.2?ReplyMarkup = Updates;
// messages.forwardMessages#708e0195 flags:# broadcast:flags.4?true from_peer:InputPeer id:Vector<int> random_id:Vector<long> to_peer:InputPeer = Updates;
messages.forwardMessages#708e0195 flags:# broadcast:flags.4?true silent:flags.5?true background:flags.6?true from_peer:InputPeer id:Vector<int> random_id:Vector<long> to_peer:InputPeer = Updates;
// messages.sendInlineBotResult#b16e06fe flags:# broadcast:flags.4?true peer:InputPeer reply_to_msg_id:flags.0?int random_id:long query_id:long id:string = Updates;
messages.sendInlineBotResult#b16e06fe flags:# broadcast:flags.4?true silent:flags.5?true background:flags.6?true peer:InputPeer reply_to_msg_id:flags.0?int random_id:long query_id:long id:string = Updates;
channels.exportMessageLink#c846d22d channel:InputChannel id:int = ExportedMessageLink;
channels.toggleSignatures#1f69b606 channel:InputChannel enabled:Bool = Updates;
channels.getMessageEditData#27ea3a28 channel:InputChannel id:int = channels.MessageEditData;
channels.editMessage#dcda80ed flags:# no_webpage:flags.1?true channel:InputChannel id:int message:string entities:flags.3?Vector<MessageEntity> = Updates;
===49===
---types---
// botInfoEmpty#bb2e37ce = BotInfo;
// messageService#c06b9607 flags:# unread:flags.0?true out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true silent:flags.13?true post:flags.14?true id:int from_id:flags.8?int to_id:Peer date:int action:MessageAction = Message;
messageService#9e19a1f6 flags:# unread:flags.0?true out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true silent:flags.13?true post:flags.14?true id:int from_id:flags.8?int to_id:Peer reply_to_msg_id:flags.3?int date:int action:MessageAction = Message;
// userFull#5a89ac5b user:User link:contacts.Link profile_photo:Photo notify_settings:PeerNotifySettings blocked:Bool bot_info:BotInfo = UserFull;
userFull#5932fc03 flags:# blocked:flags.0?true user:User about:flags.1?string link:contacts.Link profile_photo:flags.2?Photo notify_settings:PeerNotifySettings bot_info:flags.3?BotInfo = UserFull;
// botInfo#9cf585d user_id:int version:int share_text:string description:string commands:Vector<BotCommand> = BotInfo;
botInfo#98e81d3a user_id:int description:string commands:Vector<BotCommand> = BotInfo;
// channel#4b1b7506 flags:# creator:flags.0?true kicked:flags.1?true left:flags.2?true editor:flags.3?true moderator:flags.4?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true restricted:flags.9?true democracy:flags.10?true signatures:flags.11?true id:int access_hash:long title:string username:flags.6?string photo:ChatPhoto date:int version:int restriction_reason:flags.9?string = Chat;
channel#a14dca52 flags:# creator:flags.0?true kicked:flags.1?true left:flags.2?true editor:flags.3?true moderator:flags.4?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true restricted:flags.9?true democracy:flags.10?true signatures:flags.11?true min:flags.12?true id:int access_hash:flags.13?long title:string username:flags.6?string photo:ChatPhoto date:int version:int restriction_reason:flags.9?string = Chat;
// channelFull#9e341ddf flags:# can_view_participants:flags.3?true id:int about:string participants_count:flags.0?int admins_count:flags.1?int kicked_count:flags.2?int read_inbox_max_id:int unread_count:int unread_important_count:int chat_photo:Photo notify_settings:PeerNotifySettings exported_invite:ExportedChatInvite bot_info:Vector<BotInfo> migrated_from_chat_id:flags.4?int migrated_from_max_id:flags.4?int = ChatFull;
channelFull#97bee562 flags:# can_view_participants:flags.3?true can_set_username:flags.6?true id:int about:string participants_count:flags.0?int admins_count:flags.1?int kicked_count:flags.2?int read_inbox_max_id:int unread_count:int unread_important_count:int chat_photo:Photo notify_settings:PeerNotifySettings exported_invite:ExportedChatInvite bot_info:Vector<BotInfo> migrated_from_chat_id:flags.4?int migrated_from_max_id:flags.4?int pinned_msg_id:flags.5?int = ChatFull;
// updateChannelTooLong#60946422 channel_id:int = Update;
updateChannelTooLong#eb0467fb flags:# channel_id:int pts:flags.0?int = Update;
messageActionPinMessage#94bd38ed = MessageAction;
peerSettings#818426cd flags:# report_spam:flags.0?true = PeerSettings;
updateChannelPinnedMessage#98592475 channel_id:int id:int = Update;
---functions---
// account.updateProfile#f0888d68 first_name:string last_name:string = User;
account.updateProfile#78515775 flags:# first_name:flags.0?string last_name:flags.1?string about:flags.2?string = User;
messages.hideReportSpam#a8f1709b peer:InputPeer = Bool;
messages.getPeerSettings#3672e09c peer:InputPeer = PeerSettings;
channels.updatePinnedMessage#a72ded52 flags:# silent:flags.0?true channel:InputChannel id:int = Updates;
===50===
---types---
// auth.sentAppCode#e325edcf phone_registered:Bool phone_code_hash:string send_call_timeout:int is_password:Bool = auth.SentCode;
// account.sentChangePhoneCode#a4f58c4c phone_code_hash:string send_call_timeout:int = account.SentChangePhoneCode;
// auth.sentCode#efed51d9 phone_registered:Bool phone_code_hash:string send_call_timeout:int is_password:Bool = auth.SentCode;
auth.sentCode#5e002502 flags:# phone_registered:flags.0?true type:auth.SentCodeType phone_code_hash:string next_type:flags.1?auth.CodeType timeout:flags.2?int = auth.SentCode;
// replyKeyboardMarkup#3502758c flags:# resize:flags.0?true single_use:flags.1?true selective:flags.2?true rows:Vector<KeyboardButtonRow> = ReplyMarkup;
replyKeyboardMarkup#3502758c flags:# resize:flags.0?true single_use:flags.1?true selective:flags.2?true inline:flags.3?true rows:Vector<KeyboardButtonRow> = ReplyMarkup;
keyboardButtonUrl#258aff05 text:string url:string = KeyboardButton;
keyboardButtonCallback#2aae4183 text:string = KeyboardButton;
keyboardButtonRequestPhone#b16a6c29 text:string = KeyboardButton;
keyboardButtonRequestGeoLocation#fc796b3f text:string = KeyboardButton;
auth.codeTypeSms#72a3158c = auth.CodeType;
auth.codeTypeCall#741cd3e3 = auth.CodeType;
auth.codeTypeFlashCall#226ccefb = auth.CodeType;
auth.sentCodeTypeApp#3dbb5986 length:int = auth.SentCodeType;
auth.sentCodeTypeSms#c000bba2 length:int = auth.SentCodeType;
auth.sentCodeTypeCall#5353e5a7 length:int = auth.SentCodeType;
auth.sentCodeTypeFlashCall#ab03c6d9 pattern:string = auth.SentCodeType;
---functions---
// auth.sendCall#3c51564 phone_number:string phone_code_hash:string = Bool;
// auth.sendSms#da9f3e8 phone_number:string phone_code_hash:string = Bool;
// auth.sendCode#768d5f4d phone_number:string sms_type:int api_id:int api_hash:string lang_code:string = auth.SentCode;
auth.sendCode#ccfd70cf flags:# allow_flashcall:flags.0?true phone_number:string current_number:flags.0?Bool api_id:int api_hash:string lang_code:string = auth.SentCode;
// account.sendChangePhoneCode#a407a8f4 phone_number:string = account.SentChangePhoneCode;
account.sendChangePhoneCode#8e57deb flags:# allow_flashcall:flags.0?true phone_number:string current_number:flags.0?Bool = auth.SentCode;
auth.resendCode#3ef1a9bf phone_number:string phone_code_hash:string = auth.SentCode;
auth.cancelCode#1f040578 phone_number:string phone_code_hash:string = Bool;
===51===
---types---
// botInlineMediaResultDocument#f897d33e id:string type:string document:Document send_message:BotInlineMessage = BotInlineResult;
// botInlineMediaResultPhoto#c5528587 id:string type:string photo:Photo send_message:BotInlineMessage = BotInlineResult;
// channels.messageEditData#67e1255f flags:# caption:flags.0?true = channels.MessageEditData;
// user#d10d979a flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true restricted:flags.18?true min:flags.20?true id:int access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?UserProfilePhoto status:flags.6?UserStatus bot_info_version:flags.14?int restriction_reason:flags.18?string bot_inline_placeholder:flags.19?string = User;
user#d10d979a flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true restricted:flags.18?true min:flags.20?true bot_inline_geo:flags.21?true id:int access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?UserProfilePhoto status:flags.6?UserStatus bot_info_version:flags.14?int restriction_reason:flags.18?string bot_inline_placeholder:flags.19?string = User;
// replyKeyboardMarkup#3502758c flags:# resize:flags.0?true single_use:flags.1?true selective:flags.2?true inline:flags.3?true rows:Vector<KeyboardButtonRow> = ReplyMarkup;
replyKeyboardMarkup#3502758c flags:# resize:flags.0?true single_use:flags.1?true selective:flags.2?true rows:Vector<KeyboardButtonRow> = ReplyMarkup;
// updateBotInlineQuery#c01eea08 query_id:long user_id:int query:string offset:string = Update;
updateBotInlineQuery#54826690 flags:# query_id:long user_id:int query:string geo:flags.0?GeoPoint offset:string = Update;
// inputBotInlineMessageMediaAuto#2e43e587 caption:string = InputBotInlineMessage;
inputBotInlineMessageMediaAuto#292fed13 flags:# caption:string reply_markup:flags.2?ReplyMarkup = InputBotInlineMessage;
// inputBotInlineMessageText#adf0df71 flags:# no_webpage:flags.0?true message:string entities:flags.1?Vector<MessageEntity> = InputBotInlineMessage;
inputBotInlineMessageText#3dcd7a87 flags:# no_webpage:flags.0?true message:string entities:flags.1?Vector<MessageEntity> reply_markup:flags.2?ReplyMarkup = InputBotInlineMessage;
// botInlineMessageMediaAuto#fc56e87d caption:string = BotInlineMessage;
botInlineMessageMediaAuto#a74b15b flags:# caption:string reply_markup:flags.2?ReplyMarkup = BotInlineMessage;
// botInlineMessageText#a56197a9 flags:# no_webpage:flags.0?true message:string entities:flags.1?Vector<MessageEntity> = BotInlineMessage;
botInlineMessageText#8c7f65e2 flags:# no_webpage:flags.0?true message:string entities:flags.1?Vector<MessageEntity> reply_markup:flags.2?ReplyMarkup = BotInlineMessage;
// messages.botResults#1170b0a3 flags:# gallery:flags.0?true query_id:long next_offset:flags.1?string results:Vector<BotInlineResult> = messages.BotResults;
messages.botResults#256709a6 flags:# gallery:flags.0?true query_id:long next_offset:flags.1?string switch_pm:flags.2?InlineBotSwitchPM results:Vector<BotInlineResult> = messages.BotResults;
// updateBotInlineSend#f69e113 user_id:int query:string id:string = Update;
updateBotInlineSend#e48f964 flags:# user_id:int query:string geo:flags.0?GeoPoint id:string msg_id:flags.1?InputBotInlineMessageID = Update;
// keyboardButtonCallback#2aae4183 text:string = KeyboardButton;
keyboardButtonCallback#683a5e46 text:string data:bytes = KeyboardButton;
keyboardButtonSwitchInline#ea1b7a14 text:string query:string = KeyboardButton;
replyInlineMarkup#48a30254 rows:Vector<KeyboardButtonRow> = ReplyMarkup;
messages.botCallbackAnswer#1264f1c6 flags:# alert:flags.1?true message:flags.0?string = messages.BotCallbackAnswer;
updateBotCallbackQuery#a68c688c query_id:long user_id:int peer:Peer msg_id:int data:bytes = Update;
messages.messageEditData#26b5dde6 flags:# caption:flags.0?true = messages.MessageEditData;
updateEditMessage#e40370a3 message:Message pts:int pts_count:int = Update;
inputBotInlineMessageMediaGeo#f4a59de1 flags:# geo_point:InputGeoPoint reply_markup:flags.2?ReplyMarkup = InputBotInlineMessage;
inputBotInlineMessageMediaVenue#aaafadc8 flags:# geo_point:InputGeoPoint title:string address:string provider:string venue_id:string reply_markup:flags.2?ReplyMarkup = InputBotInlineMessage;
inputBotInlineMessageMediaContact#2daf01a7 flags:# phone_number:string first_name:string last_name:string reply_markup:flags.2?ReplyMarkup = InputBotInlineMessage;
botInlineMessageMediaGeo#3a8fd8b8 flags:# geo:GeoPoint reply_markup:flags.2?ReplyMarkup = BotInlineMessage;
botInlineMessageMediaVenue#4366232e flags:# geo:GeoPoint title:string address:string provider:string venue_id:string reply_markup:flags.2?ReplyMarkup = BotInlineMessage;
botInlineMessageMediaContact#35edb4d4 flags:# phone_number:string first_name:string last_name:string reply_markup:flags.2?ReplyMarkup = BotInlineMessage;
inputBotInlineResultPhoto#a8d864a7 id:string type:string photo:InputPhoto send_message:InputBotInlineMessage = InputBotInlineResult;
inputBotInlineResultDocument#fff8fdc4 flags:# id:string type:string title:flags.1?string description:flags.2?string document:InputDocument send_message:InputBotInlineMessage = InputBotInlineResult;
botInlineMediaResult#17db940b flags:# id:string type:string photo:flags.0?Photo document:flags.1?Document title:flags.2?string description:flags.3?string send_message:BotInlineMessage = BotInlineResult;
inputBotInlineMessageID#890c3d89 dc_id:int id:long access_hash:long = InputBotInlineMessageID;
updateInlineBotCallbackQuery#2cbd95af query_id:long user_id:int msg_id:InputBotInlineMessageID data:bytes = Update;
inlineBotSwitchPM#3c20629f text:string start_param:string = InlineBotSwitchPM;
---functions---
// channels.getMessageEditData#27ea3a28 channel:InputChannel id:int = channels.MessageEditData;
// channels.editMessage#dcda80ed flags:# no_webpage:flags.1?true channel:InputChannel id:int message:string entities:flags.3?Vector<MessageEntity> = Updates;
// messages.getInlineBotResults#9324600d bot:InputUser query:string offset:string = messages.BotResults;
messages.getInlineBotResults#514e999d flags:# bot:InputUser peer:InputPeer geo_point:flags.0?InputGeoPoint query:string offset:string = messages.BotResults;
// messages.setInlineBotResults#3f23ec12 flags:# gallery:flags.0?true private:flags.1?true query_id:long results:Vector<InputBotInlineResult> cache_time:int next_offset:flags.2?string = Bool;
messages.setInlineBotResults#eb5ea206 flags:# gallery:flags.0?true private:flags.1?true query_id:long results:Vector<InputBotInlineResult> cache_time:int next_offset:flags.2?string switch_pm:flags.3?InlineBotSwitchPM = Bool;
messages.getMessageEditData#fda68d36 peer:InputPeer id:int = messages.MessageEditData;
messages.editMessage#ce91e4ca flags:# no_webpage:flags.1?true peer:InputPeer id:int message:flags.11?string reply_markup:flags.2?ReplyMarkup entities:flags.3?Vector<MessageEntity> = Updates;
messages.editInlineBotMessage#130c2c85 flags:# no_webpage:flags.1?true id:InputBotInlineMessageID message:flags.11?string reply_markup:flags.2?ReplyMarkup entities:flags.3?Vector<MessageEntity> = Bool;
messages.getBotCallbackAnswer#a6e94f04 peer:InputPeer msg_id:int data:bytes = messages.BotCallbackAnswer;
messages.setBotCallbackAnswer#481c591a flags:# alert:flags.1?true query_id:long message:flags.0?string = Bool;
===52===
---types---
// config#317ceef4 date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int megagroup_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int saved_gifs_limit:int edit_time_limit:int disabled_features:Vector<DisabledFeature> = Config;
config#c9411388 date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int megagroup_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int saved_gifs_limit:int edit_time_limit:int rating_e_decay:int disabled_features:Vector<DisabledFeature> = Config;
messageEntityMentionName#352dca58 offset:int length:int user_id:int = MessageEntity;
inputMessageEntityMentionName#208e68c9 offset:int length:int user_id:InputUser = MessageEntity;
messages.peerDialogs#3371c354 dialogs:Vector<Dialog> messages:Vector<Message> chats:Vector<Chat> users:Vector<User> state:updates.State = messages.PeerDialogs;
topPeer#edcdc05b peer:Peer rating:double = TopPeer;
topPeerCategoryBotsPM#ab661b5b = TopPeerCategory;
topPeerCategoryBotsInline#148677e2 = TopPeerCategory;
topPeerCategoryCorrespondents#637b7ed = TopPeerCategory;
topPeerCategoryGroups#bd17a14a = TopPeerCategory;
topPeerCategoryChannels#161d9628 = TopPeerCategory;
topPeerCategoryPeers#fb834291 category:TopPeerCategory count:int peers:Vector<TopPeer> = TopPeerCategoryPeers;
contacts.topPeersNotModified#de266ef5 = contacts.TopPeers;
contacts.topPeers#70b772a8 categories:Vector<TopPeerCategoryPeers> chats:Vector<Chat> users:Vector<User> = contacts.TopPeers;
---functions---
contacts.getTopPeers#d4982db5 flags:# correspondents:flags.0?true bots_pm:flags.1?true bots_inline:flags.2?true groups:flags.10?true channels:flags.15?true offset:int limit:int hash:int = contacts.TopPeers;
contacts.resetTopPeerRating#1ae373ac category:TopPeerCategory peer:InputPeer = Bool;
messages.getPeerDialogs#19250887 peer:Vector<InputPeer> = messages.PeerDialogs;
===53===
---types---
// dialogChannel#5b8496b2 peer:Peer top_message:int top_important_message:int read_inbox_max_id:int unread_count:int unread_important_count:int notify_settings:PeerNotifySettings pts:int = Dialog;
// updateChannelGroup#c36c1e3c channel_id:int group:MessageGroup = Update;
// messageGroup#e8346f53 min_id:int max_id:int count:int date:int = MessageGroup;
// channelMessagesFilterCollapsed#fa01232e = ChannelMessagesFilter;
// message#c09be45f flags:# unread:flags.0?true out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true silent:flags.13?true post:flags.14?true id:int from_id:flags.8?int to_id:Peer fwd_from:flags.2?MessageFwdHeader via_bot_id:flags.11?int reply_to_msg_id:flags.3?int date:int message:string media:flags.9?MessageMedia reply_markup:flags.6?ReplyMarkup entities:flags.7?Vector<MessageEntity> views:flags.10?int edit_date:flags.15?int = Message;
message#c09be45f flags:# out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true silent:flags.13?true post:flags.14?true id:int from_id:flags.8?int to_id:Peer fwd_from:flags.2?MessageFwdHeader via_bot_id:flags.11?int reply_to_msg_id:flags.3?int date:int message:string media:flags.9?MessageMedia reply_markup:flags.6?ReplyMarkup entities:flags.7?Vector<MessageEntity> views:flags.10?int edit_date:flags.15?int = Message;
// messageService#9e19a1f6 flags:# unread:flags.0?true out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true silent:flags.13?true post:flags.14?true id:int from_id:flags.8?int to_id:Peer reply_to_msg_id:flags.3?int date:int action:MessageAction = Message;
messageService#9e19a1f6 flags:# out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true silent:flags.13?true post:flags.14?true id:int from_id:flags.8?int to_id:Peer reply_to_msg_id:flags.3?int date:int action:MessageAction = Message;
// dialog#c1dd804a peer:Peer top_message:int read_inbox_max_id:int unread_count:int notify_settings:PeerNotifySettings = Dialog;
dialog#66ffba14 flags:# peer:Peer top_message:int read_inbox_max_id:int read_outbox_max_id:int unread_count:int notify_settings:PeerNotifySettings pts:flags.0?int draft:flags.1?DraftMessage = Dialog;
// updateShortMessage#914fbf11 flags:# unread:flags.0?true out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true silent:flags.13?true id:int user_id:int message:string pts:int pts_count:int date:int fwd_from:flags.2?MessageFwdHeader via_bot_id:flags.11?int reply_to_msg_id:flags.3?int entities:flags.7?Vector<MessageEntity> = Updates;
updateShortMessage#914fbf11 flags:# out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true silent:flags.13?true id:int user_id:int message:string pts:int pts_count:int date:int fwd_from:flags.2?MessageFwdHeader via_bot_id:flags.11?int reply_to_msg_id:flags.3?int entities:flags.7?Vector<MessageEntity> = Updates;
// updateShortChatMessage#16812688 flags:# unread:flags.0?true out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true silent:flags.13?true id:int from_id:int chat_id:int message:string pts:int pts_count:int date:int fwd_from:flags.2?MessageFwdHeader via_bot_id:flags.11?int reply_to_msg_id:flags.3?int entities:flags.7?Vector<MessageEntity> = Updates;
updateShortChatMessage#16812688 flags:# out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true silent:flags.13?true id:int from_id:int chat_id:int message:string pts:int pts_count:int date:int fwd_from:flags.2?MessageFwdHeader via_bot_id:flags.11?int reply_to_msg_id:flags.3?int entities:flags.7?Vector<MessageEntity> = Updates;
// updateShortSentMessage#11f1331c flags:# unread:flags.0?true out:flags.1?true id:int pts:int pts_count:int date:int media:flags.9?MessageMedia entities:flags.7?Vector<MessageEntity> = Updates;
updateShortSentMessage#11f1331c flags:# out:flags.1?true id:int pts:int pts_count:int date:int media:flags.9?MessageMedia entities:flags.7?Vector<MessageEntity> = Updates;
// channelForbidden#2d85832c id:int access_hash:long title:string = Chat;
channelForbidden#8537784f flags:# broadcast:flags.5?true megagroup:flags.8?true id:int access_hash:long title:string = Chat;
// channelFull#97bee562 flags:# can_view_participants:flags.3?true can_set_username:flags.6?true id:int about:string participants_count:flags.0?int admins_count:flags.1?int kicked_count:flags.2?int read_inbox_max_id:int unread_count:int unread_important_count:int chat_photo:Photo notify_settings:PeerNotifySettings exported_invite:ExportedChatInvite bot_info:Vector<BotInfo> migrated_from_chat_id:flags.4?int migrated_from_max_id:flags.4?int pinned_msg_id:flags.5?int = ChatFull;
channelFull#c3d5512f flags:# can_view_participants:flags.3?true can_set_username:flags.6?true id:int about:string participants_count:flags.0?int admins_count:flags.1?int kicked_count:flags.2?int read_inbox_max_id:int read_outbox_max_id:int unread_count:int chat_photo:Photo notify_settings:PeerNotifySettings exported_invite:ExportedChatInvite bot_info:Vector<BotInfo> migrated_from_chat_id:flags.4?int migrated_from_max_id:flags.4?int pinned_msg_id:flags.5?int = ChatFull;
// messages.channelMessages#bc0f17bc flags:# pts:int count:int messages:Vector<Message> collapsed:flags.0?Vector<MessageGroup> chats:Vector<Chat> users:Vector<User> = messages.Messages;
messages.channelMessages#99262e37 flags:# pts:int count:int messages:Vector<Message> chats:Vector<Chat> users:Vector<User> = messages.Messages;
// updates.channelDifferenceTooLong#5e167646 flags:# final:flags.0?true pts:int timeout:flags.1?int top_message:int top_important_message:int read_inbox_max_id:int unread_count:int unread_important_count:int messages:Vector<Message> chats:Vector<Chat> users:Vector<User> = updates.ChannelDifference;
updates.channelDifferenceTooLong#410dee07 flags:# final:flags.0?true pts:int timeout:flags.1?int top_message:int read_inbox_max_id:int read_outbox_max_id:int unread_count:int messages:Vector<Message> chats:Vector<Chat> users:Vector<User> = updates.ChannelDifference;
// channelMessagesFilter#cd77d957 flags:# important_only:flags.0?true exclude_new_messages:flags.1?true ranges:Vector<MessageRange> = ChannelMessagesFilter;
channelMessagesFilter#cd77d957 flags:# exclude_new_messages:flags.1?true ranges:Vector<MessageRange> = ChannelMessagesFilter;
inputMessagesFilterChatPhotos#3a20ecb8 = MessagesFilter;
updateReadChannelOutbox#25d6c9c7 channel_id:int max_id:int = Update;
updateDraftMessage#ee2bb969 peer:Peer draft:DraftMessage = Update;
draftMessageEmpty#ba4baec5 = DraftMessage;
draftMessage#fd8e711f flags:# no_webpage:flags.1?true reply_to_msg_id:flags.0?int message:string entities:flags.3?Vector<MessageEntity> date:int = DraftMessage;
messageActionHistoryClear#9fbab604 = MessageAction;
---functions---
// channels.getDialogs#a9d3d249 offset:int limit:int = messages.Dialogs;
// channels.getImportantHistory#8f494bb2 channel:InputChannel offset_id:int offset_date:int add_offset:int limit:int max_id:int min_id:int = messages.Messages;
// channels.toggleComments#aaa29e88 channel:InputChannel enabled:Bool = Updates;
// auth.sendCode#ccfd70cf flags:# allow_flashcall:flags.0?true phone_number:string current_number:flags.0?Bool api_id:int api_hash:string lang_code:string = auth.SentCode;
auth.sendCode#86aef0ec flags:# allow_flashcall:flags.0?true phone_number:string current_number:flags.0?Bool api_id:int api_hash:string = auth.SentCode;
// account.registerDevice#446c712c token_type:int token:string device_model:string system_version:string app_version:string app_sandbox:Bool lang_code:string = Bool;
account.registerDevice#637ea878 token_type:int token:string = Bool;
// messages.search#d4569248 flags:# important_only:flags.0?true peer:InputPeer q:string filter:MessagesFilter min_date:int max_date:int offset:int max_id:int limit:int = messages.Messages;
messages.search#d4569248 flags:# peer:InputPeer q:string filter:MessagesFilter min_date:int max_date:int offset:int max_id:int limit:int = messages.Messages;
// messages.deleteHistory#b7c13bd9 peer:InputPeer max_id:int = messages.AffectedHistory;
messages.deleteHistory#1c015b09 flags:# just_clear:flags.0?true peer:InputPeer max_id:int = messages.AffectedHistory;
// messages.sendMessage#fa88427a flags:# no_webpage:flags.1?true broadcast:flags.4?true silent:flags.5?true background:flags.6?true peer:InputPeer reply_to_msg_id:flags.0?int message:string random_id:long reply_markup:flags.2?ReplyMarkup entities:flags.3?Vector<MessageEntity> = Updates;
messages.sendMessage#fa88427a flags:# no_webpage:flags.1?true silent:flags.5?true background:flags.6?true clear_draft:flags.7?true peer:InputPeer reply_to_msg_id:flags.0?int message:string random_id:long reply_markup:flags.2?ReplyMarkup entities:flags.3?Vector<MessageEntity> = Updates;
// messages.sendMedia#c8f16791 flags:# broadcast:flags.4?true silent:flags.5?true background:flags.6?true peer:InputPeer reply_to_msg_id:flags.0?int media:InputMedia random_id:long reply_markup:flags.2?ReplyMarkup = Updates;
messages.sendMedia#c8f16791 flags:# silent:flags.5?true background:flags.6?true clear_draft:flags.7?true peer:InputPeer reply_to_msg_id:flags.0?int media:InputMedia random_id:long reply_markup:flags.2?ReplyMarkup = Updates;
// messages.forwardMessages#708e0195 flags:# broadcast:flags.4?true silent:flags.5?true background:flags.6?true from_peer:InputPeer id:Vector<int> random_id:Vector<long> to_peer:InputPeer = Updates;
messages.forwardMessages#708e0195 flags:# silent:flags.5?true background:flags.6?true from_peer:InputPeer id:Vector<int> random_id:Vector<long> to_peer:InputPeer = Updates;
// help.getAppUpdate#c812ac7e device_model:string system_version:string app_version:string lang_code:string = help.AppUpdate;
help.getAppUpdate#ae2de196 = help.AppUpdate;
// help.getInviteText#a4a95186 lang_code:string = help.InviteText;
help.getInviteText#4d392343 = help.InviteText;
// help.getAppChangelog#5bab7fb2 device_model:string system_version:string app_version:string lang_code:string = help.AppChangelog;
help.getAppChangelog#b921197a = help.AppChangelog;
// help.getTermsOfService#37d78f83 lang_code:string = help.TermsOfService;
help.getTermsOfService#350170f3 = help.TermsOfService;
// messages.sendInlineBotResult#b16e06fe flags:# broadcast:flags.4?true silent:flags.5?true background:flags.6?true peer:InputPeer reply_to_msg_id:flags.0?int random_id:long query_id:long id:string = Updates;
messages.sendInlineBotResult#b16e06fe flags:# silent:flags.5?true background:flags.6?true clear_draft:flags.7?true peer:InputPeer reply_to_msg_id:flags.0?int random_id:long query_id:long id:string = Updates;
// messages.getPeerDialogs#19250887 peer:Vector<InputPeer> = messages.PeerDialogs;
messages.getPeerDialogs#2d9776b9 peers:Vector<InputPeer> = messages.PeerDialogs;
messages.saveDraft#bc39e14b flags:# no_webpage:flags.1?true reply_to_msg_id:flags.0?int peer:InputPeer message:string entities:flags.3?Vector<MessageEntity> = Bool;
messages.getAllDrafts#6a3f8d65 = Updates;
===54===
---types---
// config#c9411388 date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int megagroup_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int saved_gifs_limit:int edit_time_limit:int rating_e_decay:int disabled_features:Vector<DisabledFeature> = Config;
config#f401a4bf date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int megagroup_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int saved_gifs_limit:int edit_time_limit:int rating_e_decay:int stickers_recent_limit:int disabled_features:Vector<DisabledFeature> = Config;
// inputDocumentFileLocation#4e45abe9 id:long access_hash:long = InputFileLocation;
inputDocumentFileLocation#430f0724 id:long access_hash:long version:int = InputFileLocation;
// document#f9a39f4f id:long access_hash:long date:int mime_type:string size:int thumb:PhotoSize dc_id:int attributes:Vector<DocumentAttribute> = Document;
document#87232bc7 id:long access_hash:long date:int mime_type:string size:int thumb:PhotoSize dc_id:int version:int attributes:Vector<DocumentAttribute> = Document;
// chatInvite#93e99b60 flags:# channel:flags.0?true broadcast:flags.1?true public:flags.2?true megagroup:flags.3?true title:string = ChatInvite;
chatInvite#db74f558 flags:# channel:flags.0?true broadcast:flags.1?true public:flags.2?true megagroup:flags.3?true title:string photo:ChatPhoto participants_count:int participants:flags.4?Vector<User> = ChatInvite;
// stickerSet#cd303b41 flags:# installed:flags.0?true disabled:flags.1?true official:flags.2?true id:long access_hash:long title:string short_name:string count:int hash:int = StickerSet;
stickerSet#cd303b41 flags:# installed:flags.0?true archived:flags.1?true official:flags.2?true id:long access_hash:long title:string short_name:string count:int hash:int = StickerSet;
// messages.botCallbackAnswer#1264f1c6 flags:# alert:flags.1?true message:flags.0?string = messages.BotCallbackAnswer;
messages.botCallbackAnswer#b10df1fb flags:# alert:flags.1?true message:flags.0?string url:flags.2?string = messages.BotCallbackAnswer;
updateReadFeaturedStickers#571d2742 = Update;
updateRecentStickers#9a422c20 = Update;
messages.featuredStickersNotModified#4ede3cf = messages.FeaturedStickers;
messages.featuredStickers#f89d88e5 hash:int sets:Vector<StickerSetCovered> unread:Vector<long> = messages.FeaturedStickers;
messages.recentStickersNotModified#b17f890 = messages.RecentStickers;
messages.recentStickers#5ce20970 hash:int stickers:Vector<Document> = messages.RecentStickers;
messages.archivedStickers#4fcba9c8 count:int sets:Vector<StickerSetCovered> = messages.ArchivedStickers;
messages.stickerSetInstallResultSuccess#38641628 = messages.StickerSetInstallResult;
messages.stickerSetInstallResultArchive#35e410a8 sets:Vector<StickerSetCovered> = messages.StickerSetInstallResult;
stickerSetCovered#6410a5d2 set:StickerSet cover:Document = StickerSetCovered;
---functions---
// messages.installStickerSet#7b30c3a6 stickerset:InputStickerSet disabled:Bool = Bool;
messages.installStickerSet#c78fe460 stickerset:InputStickerSet archived:Bool = messages.StickerSetInstallResult;
// messages.setBotCallbackAnswer#481c591a flags:# alert:flags.1?true query_id:long message:flags.0?string = Bool;
messages.setBotCallbackAnswer#c927d44b flags:# alert:flags.1?true query_id:long message:flags.0?string url:flags.2?string = Bool;
account.sendConfirmPhoneCode#1516d7bd flags:# allow_flashcall:flags.0?true hash:string current_number:flags.0?Bool = auth.SentCode;
account.confirmPhone#5f2178c3 phone_code_hash:string phone_code:string = Bool;
messages.getFeaturedStickers#2dacca4f hash:int = messages.FeaturedStickers;
messages.readFeaturedStickers#e21cbb = Bool;
messages.getRecentStickers#99197c2c hash:int = messages.RecentStickers;
messages.saveRecentSticker#348e39bf id:InputDocument unsave:Bool = Bool;
messages.clearRecentStickers#ab02e5d2 = Bool;
messages.getUnusedStickers#4309d65b limit:int = Vector<StickerSetCovered>;
messages.getArchivedStickers#906e241f offset_id:long limit:int = messages.ArchivedStickers;
===55===
---types---
// auth.authorization#ff036af1 user:User = auth.Authorization;
auth.authorization#cd050916 flags:# tmp_sessions:flags.0?int user:User = auth.Authorization;
// config#f401a4bf date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int megagroup_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int saved_gifs_limit:int edit_time_limit:int rating_e_decay:int stickers_recent_limit:int disabled_features:Vector<DisabledFeature> = Config;
config#9a6b2e2a flags:# date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int megagroup_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int saved_gifs_limit:int edit_time_limit:int rating_e_decay:int stickers_recent_limit:int tmp_sessions:flags.0?int disabled_features:Vector<DisabledFeature> = Config;
// keyboardButtonSwitchInline#ea1b7a14 text:string query:string = KeyboardButton;
keyboardButtonSwitchInline#568a748 flags:# same_peer:flags.0?true text:string query:string = KeyboardButton;
// messages.botCallbackAnswer#b10df1fb flags:# alert:flags.1?true message:flags.0?string url:flags.2?string = messages.BotCallbackAnswer;
messages.botCallbackAnswer#b10df1fb flags:# alert:flags.1?true has_url:flags.3?true message:flags.0?string url:flags.2?string = messages.BotCallbackAnswer;
inputMediaPhotoExternal#b55f4f18 url:string caption:string = InputMedia;
inputMediaDocumentExternal#e5e9607c url:string caption:string = InputMedia;
updateConfig#a229dd06 = Update;
updatePtsChanged#3354678f = Update;
---functions---
// messages.sendBroadcast#bf73f4da contacts:Vector<InputUser> random_id:Vector<long> message:string media:InputMedia = Updates;
channels.getAdminedPublicChannels#8d8d82d7 = messages.Chats;
===56===
---types---
// inputPhotoCropAuto#ade6b004 = InputPhotoCrop;
// inputPhotoCrop#d9915325 crop_left:double crop_top:double crop_width:double = InputPhotoCrop;
// inputMediaUploadedPhoto#f7aff1c0 file:InputFile caption:string = InputMedia;
inputMediaUploadedPhoto#630c9af1 flags:# file:InputFile caption:string stickers:flags.0?Vector<InputDocument> = InputMedia;
// inputChatUploadedPhoto#94254732 file:InputFile crop:InputPhotoCrop = InputChatPhoto;
inputChatUploadedPhoto#927c55b4 file:InputFile = InputChatPhoto;
// inputChatPhoto#b2e1bf08 id:InputPhoto crop:InputPhotoCrop = InputChatPhoto;
inputChatPhoto#8953ad37 id:InputPhoto = InputChatPhoto;
// photo#cded42fe id:long access_hash:long date:int sizes:Vector<PhotoSize> = Photo;
photo#9288dd29 flags:# has_stickers:flags.0?true id:long access_hash:long date:int sizes:Vector<PhotoSize> = Photo;
// inputMediaUploadedDocument#1d89306d file:InputFile mime_type:string attributes:Vector<DocumentAttribute> caption:string = InputMedia;
inputMediaUploadedDocument#d070f1e9 flags:# file:InputFile mime_type:string attributes:Vector<DocumentAttribute> caption:string stickers:flags.0?Vector<InputDocument> = InputMedia;
// inputMediaUploadedThumbDocument#ad613491 file:InputFile thumb:InputFile mime_type:string attributes:Vector<DocumentAttribute> caption:string = InputMedia;
inputMediaUploadedThumbDocument#50d88cae flags:# file:InputFile thumb:InputFile mime_type:string attributes:Vector<DocumentAttribute> caption:string stickers:flags.0?Vector<InputDocument> = InputMedia;
// documentAttributeSticker#3a556302 alt:string stickerset:InputStickerSet = DocumentAttribute;
documentAttributeSticker#6319d612 flags:# mask:flags.1?true alt:string stickerset:InputStickerSet mask_coords:flags.0?MaskCoords = DocumentAttribute;
// stickerSet#cd303b41 flags:# installed:flags.0?true archived:flags.1?true official:flags.2?true id:long access_hash:long title:string short_name:string count:int hash:int = StickerSet;
stickerSet#cd303b41 flags:# installed:flags.0?true archived:flags.1?true official:flags.2?true masks:flags.3?true id:long access_hash:long title:string short_name:string count:int hash:int = StickerSet;
// updateStickerSetsOrder#f0dfb451 order:Vector<long> = Update;
updateStickerSetsOrder#bb2d201 flags:# masks:flags.0?true order:Vector<long> = Update;
// updateBotCallbackQuery#a68c688c query_id:long user_id:int peer:Peer msg_id:int data:bytes = Update;
updateBotCallbackQuery#4bf9a8a0 flags:# query_id:long user_id:int peer:Peer msg_id:int chat_instance:long data:flags.0?bytes game_id:flags.1?int = Update;
// updateInlineBotCallbackQuery#2cbd95af query_id:long user_id:int msg_id:InputBotInlineMessageID data:bytes = Update;
updateInlineBotCallbackQuery#4f2f45d1 flags:# query_id:long user_id:int msg_id:InputBotInlineMessageID chat_instance:long data:flags.0?bytes game_id:flags.1?int = Update;
messageActionGameScore#3a14cfa5 game_id:int score:int = MessageAction;
documentAttributeHasStickers#9801d2f7 = DocumentAttribute;
keyboardButtonGame#28fc3164 text:string game_title:string game_id:int start_param:string = KeyboardButton;
stickerSetMultiCovered#3407e51b set:StickerSet covers:Vector<Document> = StickerSetCovered;
maskCoords#aed6dbb2 n:int x:double y:double zoom:double = MaskCoords;
inputStickeredMediaPhoto#4a992157 id:InputPhoto = InputStickeredMedia;
inputStickeredMediaDocument#438865b id:InputDocument = InputStickeredMedia;
---functions---
// messages.getStickers#ae22e045 emoticon:string hash:string = messages.Stickers;
// messages.getUnusedStickers#4309d65b limit:int = Vector<StickerSetCovered>;
// messages.forwardMessages#708e0195 flags:# silent:flags.5?true background:flags.6?true from_peer:InputPeer id:Vector<int> random_id:Vector<long> to_peer:InputPeer = Updates;
messages.forwardMessages#708e0195 flags:# silent:flags.5?true background:flags.6?true with_my_score:flags.8?true from_peer:InputPeer id:Vector<int> random_id:Vector<long> to_peer:InputPeer = Updates;
// photos.updateProfilePhoto#eef579a0 id:InputPhoto crop:InputPhotoCrop = UserProfilePhoto;
photos.updateProfilePhoto#f0bb5152 id:InputPhoto = UserProfilePhoto;
// photos.uploadProfilePhoto#d50f9c88 file:InputFile caption:string geo_point:InputGeoPoint crop:InputPhotoCrop = photos.Photo;
photos.uploadProfilePhoto#4f32c098 file:InputFile = photos.Photo;
// messages.reorderStickerSets#9fcfbc30 order:Vector<long> = Bool;
messages.reorderStickerSets#78337739 flags:# masks:flags.0?true order:Vector<long> = Bool;
// messages.getBotCallbackAnswer#a6e94f04 peer:InputPeer msg_id:int data:bytes = messages.BotCallbackAnswer;
messages.getBotCallbackAnswer#6c996518 flags:# peer:InputPeer msg_id:int data:flags.0?bytes game_id:flags.1?int = messages.BotCallbackAnswer;
// messages.readFeaturedStickers#e21cbb = Bool;
messages.readFeaturedStickers#5b118126 id:Vector<long> = Bool;
// messages.getRecentStickers#99197c2c hash:int = messages.RecentStickers;
messages.getRecentStickers#5ea192c9 flags:# attached:flags.0?true hash:int = messages.RecentStickers;
// messages.saveRecentSticker#348e39bf id:InputDocument unsave:Bool = Bool;
messages.saveRecentSticker#392718f8 flags:# attached:flags.0?true id:InputDocument unsave:Bool = Bool;
// messages.clearRecentStickers#ab02e5d2 = Bool;
messages.clearRecentStickers#8999602d flags:# attached:flags.0?true = Bool;
// messages.getArchivedStickers#906e241f offset_id:long limit:int = messages.ArchivedStickers;
messages.getArchivedStickers#57f17692 flags:# masks:flags.0?true offset_id:long limit:int = messages.ArchivedStickers;
auth.dropTempAuthKeys#8e48a188 except_auth_keys:Vector<long> = Bool;
messages.setGameScore#dfbc7c1f flags:# edit_message:flags.0?true peer:InputPeer id:int user_id:InputUser game_id:int score:int = Updates;
messages.setInlineGameScore#54f882f1 flags:# edit_message:flags.0?true id:InputBotInlineMessageID user_id:InputUser game_id:int score:int = Bool;
messages.getMaskStickers#65b8c79f hash:int = messages.AllStickers;
messages.getAttachedStickers#cc5b67cc media:InputStickeredMedia = Vector<StickerSetCovered>;
===57===
---types---
// updateBotCallbackQuery#4bf9a8a0 flags:# query_id:long user_id:int peer:Peer msg_id:int chat_instance:long data:flags.0?bytes game_id:flags.1?int = Update;
updateBotCallbackQuery#e73547e1 flags:# query_id:long user_id:int peer:Peer msg_id:int chat_instance:long data:flags.0?bytes game_short_name:flags.1?string = Update;
// updateInlineBotCallbackQuery#4f2f45d1 flags:# query_id:long user_id:int msg_id:InputBotInlineMessageID chat_instance:long data:flags.0?bytes game_id:flags.1?int = Update;
updateInlineBotCallbackQuery#f9d27a5a flags:# query_id:long user_id:int msg_id:InputBotInlineMessageID chat_instance:long data:flags.0?bytes game_short_name:flags.1?string = Update;
// messageActionGameScore#3a14cfa5 game_id:int score:int = MessageAction;
messageActionGameScore#92a72876 game_id:long score:int = MessageAction;
// keyboardButtonGame#28fc3164 text:string game_title:string game_id:int start_param:string = KeyboardButton;
keyboardButtonGame#50f41ccf text:string = KeyboardButton;
inputMediaGame#d33f43f3 id:InputGame = InputMedia;
messageMediaGame#fdb19008 game:Game = MessageMedia;
sendMessageGamePlayAction#dd6a8f48 = SendMessageAction;
sendMessageGameStopAction#15c2c99a = SendMessageAction;
inputBotInlineMessageGame#4b425864 flags:# reply_markup:flags.2?ReplyMarkup = InputBotInlineMessage;
inputBotInlineResultGame#4fa417f2 id:string short_name:string send_message:InputBotInlineMessage = InputBotInlineResult;
game#bdf9653b flags:# id:long access_hash:long short_name:string title:string description:string photo:Photo document:flags.0?Document = Game;
inputGameID#32c3e77 id:long access_hash:long = InputGame;
inputGameShortName#c331e80a bot_id:InputUser short_name:string = InputGame;
highScore#58fffcd0 pos:int user_id:int score:int = HighScore;
messages.highScores#9a3bfd99 scores:Vector<HighScore> users:Vector<User> = messages.HighScores;
---functions---
// messages.getBotCallbackAnswer#6c996518 flags:# peer:InputPeer msg_id:int data:flags.0?bytes game_id:flags.1?int = messages.BotCallbackAnswer;
messages.getBotCallbackAnswer#810a9fec flags:# game:flags.1?true peer:InputPeer msg_id:int data:flags.0?bytes = messages.BotCallbackAnswer;
// messages.setGameScore#dfbc7c1f flags:# edit_message:flags.0?true peer:InputPeer id:int user_id:InputUser game_id:int score:int = Updates;
messages.setGameScore#8ef8ecc0 flags:# edit_message:flags.0?true peer:InputPeer id:int user_id:InputUser score:int = Updates;
// messages.setInlineGameScore#54f882f1 flags:# edit_message:flags.0?true id:InputBotInlineMessageID user_id:InputUser game_id:int score:int = Bool;
messages.setInlineGameScore#15ad9f64 flags:# edit_message:flags.0?true id:InputBotInlineMessageID user_id:InputUser score:int = Bool;
messages.getGameHighScores#e822649d peer:InputPeer id:int user_id:InputUser = messages.HighScores;
messages.getInlineGameHighScores#f635e1b id:InputBotInlineMessageID user_id:InputUser = messages.HighScores;
===58===
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
===59===
---types---
// userFull#f220f3f flags:# blocked:flags.0?true phone_calls_available:flags.4?true user:User about:flags.1?string link:contacts.Link profile_photo:flags.2?Photo notify_settings:PeerNotifySettings bot_info:flags.3?BotInfo common_chats_count:int = UserFull;
userFull#f220f3f flags:# blocked:flags.0?true user:User about:flags.1?string link:contacts.Link profile_photo:flags.2?Photo notify_settings:PeerNotifySettings bot_info:flags.3?BotInfo common_chats_count:int = UserFull;
// webPage#ca820ed7 flags:# id:long url:string display_url:string type:flags.0?string site_name:flags.1?string title:flags.2?string description:flags.3?string photo:flags.4?Photo embed_url:flags.5?string embed_type:flags.5?string embed_width:flags.6?int embed_height:flags.6?int duration:flags.7?int author:flags.8?string document:flags.9?Document = WebPage;
webPage#5f07b4bc flags:# id:long url:string display_url:string hash:int type:flags.0?string site_name:flags.1?string title:flags.2?string description:flags.3?string photo:flags.4?Photo embed_url:flags.5?string embed_type:flags.5?string embed_width:flags.6?int embed_height:flags.6?int duration:flags.7?int author:flags.8?string document:flags.9?Document cached_page:flags.10?Page = WebPage;
sendMessageGamePlayAction#dd6a8f48 = SendMessageAction;
webPageNotModified#85849473 = WebPage;
textEmpty#dc3d824f = RichText;
textPlain#744694e0 text:string = RichText;
textBold#6724abc4 text:RichText = RichText;
textItalic#d912a59c text:RichText = RichText;
textUnderline#c12622c4 text:RichText = RichText;
textStrike#9bf8bb95 text:RichText = RichText;
textFixed#6c3f19b9 text:RichText = RichText;
textUrl#3c2884c1 text:RichText url:string webpage_id:long = RichText;
textEmail#de5a0dd6 text:RichText email:string = RichText;
textConcat#7e6260d7 texts:Vector<RichText> = RichText;
pageBlockTitle#70abc3fd text:RichText = PageBlock;
pageBlockSubtitle#8ffa9a1f text:RichText = PageBlock;
pageBlockAuthorDate#3d5b64f2 author:string published_date:int = PageBlock;
pageBlockHeader#bfd064ec text:RichText = PageBlock;
pageBlockSubheader#f12bb6e1 text:RichText = PageBlock;
pageBlockParagraph#467a0766 text:RichText = PageBlock;
pageBlockPreformatted#c070d93e text:RichText language:string = PageBlock;
pageBlockFooter#48870999 text:RichText = PageBlock;
pageBlockDivider#db20b188 = PageBlock;
pageBlockList#3a58c7f4 ordered:Bool items:Vector<RichText> = PageBlock;
pageBlockBlockquote#263d7c26 text:RichText caption:RichText = PageBlock;
pageBlockPullquote#4f4456d3 text:RichText caption:RichText = PageBlock;
pageBlockPhoto#e9c69982 photo_id:long caption:RichText = PageBlock;
pageBlockVideo#d9d71866 flags:# autoplay:flags.1?true loop:flags.2?true video_id:long caption:RichText = PageBlock;
pageBlockCover#39f23300 cover:PageBlock = PageBlock;
pageBlockEmbed#36b0816 url:string w:int h:int caption:RichText = PageBlock;
pageBlockEmbedPost#7ff81db7 flags:# author:string date:int caption:RichText url:string webpage_id:long text:flags.1?RichText medias:flags.2?Vector<EmbedPostMedia> author_photo_id:flags.3?long = PageBlock;
pageBlockSlideshow#130c8963 items:Vector<PageBlock> caption:RichText = PageBlock;
embedPostPhoto#e31ee77 photo_id:long = EmbedPostMedia;
embedPostVideo#a07f2d66 video_id:long = EmbedPostMedia;
pagePart#8dee6c44 blocks:Vector<PageBlock> photos:Vector<Photo> videos:Vector<Document> = Page;
pageFull#d7a19d69 blocks:Vector<PageBlock> photos:Vector<Photo> videos:Vector<Document> = Page;
---functions---
messages.getWebPage#61203e2 id:long hash:int = WebPage;
===60===
---types---


// PageBlock
pageBlockEmbed#d935d8fb full_width:flags.0?true allow_scrolling:flags.3?true flags:# url:flags.1?string html:flags.2?string w:int h:int caption:RichText = PageBlock;


// WebPage
webPageUrlPending#d41a5167 url:string = WebPage;


===61===
---types---
// updateNewAuthorization#8f06529a auth_key_id:long date:int device:string location:string = Update;
// embedPostPhoto#e31ee77 photo_id:long = EmbedPostMedia;
// embedPostVideo#a07f2d66 video_id:long = EmbedPostMedia;
// dialog#66ffba14 flags:# peer:Peer top_message:int read_inbox_max_id:int read_outbox_max_id:int unread_count:int notify_settings:PeerNotifySettings pts:flags.0?int draft:flags.1?DraftMessage = Dialog;
dialog#66ffba14 flags:# pinned:flags.2?true peer:Peer top_message:int read_inbox_max_id:int read_outbox_max_id:int unread_count:int notify_settings:PeerNotifySettings pts:flags.0?int draft:flags.1?DraftMessage = Dialog;
// userFull#f220f3f flags:# blocked:flags.0?true user:User about:flags.1?string link:contacts.Link profile_photo:flags.2?Photo notify_settings:PeerNotifySettings bot_info:flags.3?BotInfo common_chats_count:int = UserFull;
userFull#f220f3f flags:# blocked:flags.0?true phone_calls_available:flags.4?true user:User about:flags.1?string link:contacts.Link profile_photo:flags.2?Photo notify_settings:PeerNotifySettings bot_info:flags.3?BotInfo common_chats_count:int = UserFull;
// config#9a6b2e2a flags:# date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int megagroup_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int saved_gifs_limit:int edit_time_limit:int rating_e_decay:int stickers_recent_limit:int tmp_sessions:flags.0?int disabled_features:Vector<DisabledFeature> = Config;
config#3af6fb5f flags:# phonecalls_enabled:flags.1?true date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int megagroup_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int saved_gifs_limit:int edit_time_limit:int rating_e_decay:int stickers_recent_limit:int tmp_sessions:flags.0?int pinned_dialogs_count_max:int call_receive_timeout_ms:int call_ring_timeout_ms:int call_connect_timeout_ms:int call_packet_timeout_ms:int disabled_features:Vector<DisabledFeature> = Config;
// updateServiceNotification#382dd3e4 type:string message:string media:MessageMedia popup:Bool = Update;
updateServiceNotification#ebe46819 flags:# popup:flags.0?true inbox_date:flags.1?int type:string message:string media:MessageMedia entities:Vector<MessageEntity> = Update;
// help.appChangelog#4668e6bd text:string = help.AppChangelog;
help.appChangelog#2a137e7c message:string media:MessageMedia entities:Vector<MessageEntity> = help.AppChangelog;
// messages.chatsSlice#78f69146 count:int chats:Vector<Chat> users:Vector<User> = messages.Chats;
messages.chatsSlice#9cd81144 count:int chats:Vector<Chat> = messages.Chats;
// pageBlockAuthorDate#3d5b64f2 author:string published_date:int = PageBlock;
pageBlockAuthorDate#baafe5e0 author:RichText published_date:int = PageBlock;
// pageBlockVideo#d9d71866 flags:# autoplay:flags.1?true loop:flags.2?true video_id:long caption:RichText = PageBlock;
pageBlockVideo#d9d71866 flags:# autoplay:flags.0?true loop:flags.1?true video_id:long caption:RichText = PageBlock;
// pageBlockEmbed#36b0816 url:string w:int h:int caption:RichText = PageBlock;
pageBlockEmbed#cde200d1 flags:# full_width:flags.0?true allow_scrolling:flags.3?true url:flags.1?string html:flags.2?string poster_photo_id:flags.4?long w:int h:int caption:RichText = PageBlock;
// pageBlockEmbedPost#7ff81db7 flags:# author:string date:int caption:RichText url:string webpage_id:long text:flags.1?RichText medias:flags.2?Vector<EmbedPostMedia> author_photo_id:flags.3?long = PageBlock;
pageBlockEmbedPost#292c7be9 url:string webpage_id:long author_photo_id:long author:string date:int blocks:Vector<PageBlock> caption:RichText = PageBlock;
updatePhoneCall#ab0f6b1e phone_call:PhoneCall = Update;
updateDialogPinned#d711a2cc flags:# pinned:flags.0?true peer:Peer = Update;
updatePinnedDialogs#d8caf68d flags:# order:flags.0?Vector<Peer> = Update;
inputPrivacyKeyPhoneCall#fabadc5f = InputPrivacyKey;
privacyKeyPhoneCall#3d662b7b = PrivacyKey;
pageBlockUnsupported#13567e8a = PageBlock;
pageBlockAnchor#ce0d37b0 name:string = PageBlock;
pageBlockCollage#8b31c4f items:Vector<PageBlock> caption:RichText = PageBlock;
inputPhoneCall#1e36fded id:long access_hash:long = InputPhoneCall;
phoneCallEmpty#5366c915 id:long = PhoneCall;
phoneCallWaiting#1b8f4ad1 flags:# id:long access_hash:long date:int admin_id:int participant_id:int protocol:PhoneCallProtocol receive_date:flags.0?int = PhoneCall;
phoneCallRequested#6c448ae8 id:long access_hash:long date:int admin_id:int participant_id:int g_a:bytes protocol:PhoneCallProtocol = PhoneCall;
phoneCall#ffe6ab67 id:long access_hash:long date:int admin_id:int participant_id:int g_a_or_b:bytes key_fingerprint:long protocol:PhoneCallProtocol connection:PhoneConnection alternative_connections:Vector<PhoneConnection> start_date:int = PhoneCall;
phoneCallDiscarded#50ca4de1 flags:# id:long reason:flags.0?PhoneCallDiscardReason duration:flags.1?int = PhoneCall;
phoneConnection#9d4c17c0 id:long ip:string ipv6:string port:int peer_tag:bytes = PhoneConnection;
phoneCallProtocol#a2bb35cb flags:# udp_p2p:flags.0?true udp_reflector:flags.1?true min_layer:int max_layer:int = PhoneCallProtocol;
phone.phoneCall#ec82e140 phone_call:PhoneCall users:Vector<User> = phone.PhoneCall;
phoneCallDiscardReasonMissed#85e42301 = PhoneCallDiscardReason;
phoneCallDiscardReasonDisconnect#e095c1a0 = PhoneCallDiscardReason;
phoneCallDiscardReasonHangup#57adc690 = PhoneCallDiscardReason;
phoneCallDiscardReasonBusy#faf7e8c9 = PhoneCallDiscardReason;
---functions---
// messages.getDialogs#6b47f94d offset_date:int offset_id:int offset_peer:InputPeer limit:int = messages.Dialogs;
messages.getDialogs#191ba9c5 flags:# exclude_pinned:flags.0?true offset_date:int offset_id:int offset_peer:InputPeer limit:int = messages.Dialogs;
// messages.setGameScore#8ef8ecc0 flags:# edit_message:flags.0?true peer:InputPeer id:int user_id:InputUser score:int = Updates;
messages.setGameScore#8ef8ecc0 flags:# edit_message:flags.0?true force:flags.1?true peer:InputPeer id:int user_id:InputUser score:int = Updates;
// messages.setInlineGameScore#15ad9f64 flags:# edit_message:flags.0?true id:InputBotInlineMessageID user_id:InputUser score:int = Bool;
messages.setInlineGameScore#15ad9f64 flags:# edit_message:flags.0?true force:flags.1?true id:InputBotInlineMessageID user_id:InputUser score:int = Bool;
// messages.getWebPage#61203e2 id:long hash:int = WebPage;
messages.getWebPage#32ca8f91 url:string hash:int = WebPage;
messages.toggleDialogPin#3289be6a flags:# pinned:flags.0?true peer:InputPeer = Bool;
messages.reorderPinnedDialogs#959ff644 flags:# force:flags.0?true order:Vector<InputPeer> = Bool;
messages.getPinnedDialogs#e254d64e = messages.PeerDialogs;
phone.requestCall#a41aa5e4 user_id:InputUser random_id:int g_a:bytes protocol:PhoneCallProtocol = phone.PhoneCall;
phone.acceptCall#220f0b20 peer:InputPhoneCall g_b:bytes key_fingerprint:long protocol:PhoneCallProtocol = phone.PhoneCall;
phone.discardCall#5dfbcddc peer:InputPhoneCall duration:int reason:PhoneCallDiscardReason connection_id:long = Bool;
phone.receivedCall#17d54f61 peer:InputPhoneCall = Bool;
===62===
---types---
inputMessagesFilterPhoneCalls#80c99768 flags:# missed:flags.0?true = MessagesFilter;
messageActionPhoneCall#80e11a7f flags:# call_id:long reason:flags.0?PhoneCallDiscardReason duration:flags.1?int = MessageAction;
---functions---
// messages.deleteMessages#a5f18925 id:Vector<int> = messages.AffectedMessages;
messages.deleteMessages#e58e95d2 flags:# revoke:flags.0?true id:Vector<int> = messages.AffectedMessages;
messages.reportEncryptedSpam#4b0c8c0f peer:InputEncryptedChat = Bool;
===63===
---types---
invoiceAmount#9ea74300 label:string amount:int = InvoiceAmount;
invoice#39d7e2cc flags:# test:flags.0?true name_requested:flags.1?true phone_requested:flags.2?true email_requested:flags.3?true shipping_address_requested:flags.4?true currency:string amounts:Vector<InvoiceAmount> = Invoice;
inputMediaInvoice#52411b invoice:Invoice payload:bytes = InputMedia;
paymentChargeStripe#b861498 id:string stripe_charge_id:string = PaymentCharge;
messageActionPaymentSentMe#2c39bfa9 flags:# currency:string total_amount:int payload:bytes add_info:PaymentRequestedInfo charge:PaymentCharge = MessageAction;
messageMediaInvoice#54293561 currency:string total_amount:int = MessageMedia;
keyboardButtonBuy#afd93fbb text:string = KeyboardButton;
messageActionPaymentSent#eacd8c80 currency:string total_amount:int = MessageAction;
messageActionPaymentReceipt#a54bf5cd = MessageAction;
paymentProviderStripe#38a9a3ec = PaymentProvider;
payments.paymentForm#38253273 bot_id:int url:string invoice:Invoice provider:PaymentProvider users:Vector<User> = payments.PaymentForm;
paymentCredentialsToken#8970d135 token:string token_type:string = PaymentCredentials;
postAddress#1e8caaeb street_line1:string street_line2:string city:string state:string country_iso2:string post_code:string = PostAddress;
paymentRequestedInfo#909c3f94 flags:# name:flags.0?string phone:flags.1?string email:flags.2?string shipping_address:flags.3?PostAddress = PaymentRequestedInfo;
---functions---
payments.getPaymentForm#99f09745 msg_id:int = payments.PaymentForm;
payments.sendPaymentForm#2922d956 msg_id:int credentials:PaymentCredentials info:PaymentRequestedInfo = Updates;
payments.confirmBuy#3709fb95 msg_id:int currency:string total_amount:int = Updates;
===65===
---types---
// help.appChangelogEmpty#af7e0394 = help.AppChangelog;
// help.appChangelog#2a137e7c message:string media:MessageMedia entities:Vector<MessageEntity> = help.AppChangelog;
// invoiceAmount#9ea74300 label:string amount:int = InvoiceAmount;
// paymentChargeStripe#b861498 id:string stripe_charge_id:string = PaymentCharge;
// messageActionPaymentReceipt#a54bf5cd = MessageAction;
// paymentProviderStripe#38a9a3ec = PaymentProvider;
// paymentCredentialsToken#8970d135 token:string token_type:string = PaymentCredentials;
// userFull#f220f3f flags:# blocked:flags.0?true phone_calls_available:flags.4?true user:User about:flags.1?string link:contacts.Link profile_photo:flags.2?Photo notify_settings:PeerNotifySettings bot_info:flags.3?BotInfo common_chats_count:int = UserFull;
userFull#f220f3f flags:# blocked:flags.0?true phone_calls_available:flags.4?true phone_calls_private:flags.5?true user:User about:flags.1?string link:contacts.Link profile_photo:flags.2?Photo notify_settings:PeerNotifySettings bot_info:flags.3?BotInfo common_chats_count:int = UserFull;
// config#3af6fb5f flags:# phonecalls_enabled:flags.1?true date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int megagroup_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int saved_gifs_limit:int edit_time_limit:int rating_e_decay:int stickers_recent_limit:int tmp_sessions:flags.0?int pinned_dialogs_count_max:int call_receive_timeout_ms:int call_ring_timeout_ms:int call_connect_timeout_ms:int call_packet_timeout_ms:int disabled_features:Vector<DisabledFeature> = Config;
config#cb601684 flags:# phonecalls_enabled:flags.1?true date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int megagroup_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int saved_gifs_limit:int edit_time_limit:int rating_e_decay:int stickers_recent_limit:int tmp_sessions:flags.0?int pinned_dialogs_count_max:int call_receive_timeout_ms:int call_ring_timeout_ms:int call_connect_timeout_ms:int call_packet_timeout_ms:int me_url_prefix:string disabled_features:Vector<DisabledFeature> = Config;
// phoneCallRequested#6c448ae8 id:long access_hash:long date:int admin_id:int participant_id:int g_a:bytes protocol:PhoneCallProtocol = PhoneCall;
phoneCallRequested#83761ce4 id:long access_hash:long date:int admin_id:int participant_id:int g_a_hash:bytes protocol:PhoneCallProtocol = PhoneCall;
// phoneCallDiscarded#50ca4de1 flags:# id:long reason:flags.0?PhoneCallDiscardReason duration:flags.1?int = PhoneCall;
phoneCallDiscarded#50ca4de1 flags:# need_rating:flags.2?true need_debug:flags.3?true id:long reason:flags.0?PhoneCallDiscardReason duration:flags.1?int = PhoneCall;
// invoice#39d7e2cc flags:# test:flags.0?true name_requested:flags.1?true phone_requested:flags.2?true email_requested:flags.3?true shipping_address_requested:flags.4?true currency:string amounts:Vector<InvoiceAmount> = Invoice;
invoice#c30aa358 flags:# test:flags.0?true name_requested:flags.1?true phone_requested:flags.2?true email_requested:flags.3?true shipping_address_requested:flags.4?true flexible:flags.5?true currency:string prices:Vector<LabeledPrice> = Invoice;
// inputMediaInvoice#52411b invoice:Invoice payload:bytes = InputMedia;
inputMediaInvoice#92153685 flags:# title:string description:string photo:flags.0?InputWebDocument invoice:Invoice payload:bytes provider:string start_param:string = InputMedia;
// messageActionPaymentSentMe#2c39bfa9 flags:# currency:string total_amount:int payload:bytes add_info:PaymentRequestedInfo charge:PaymentCharge = MessageAction;
messageActionPaymentSentMe#8f31b327 flags:# currency:string total_amount:long payload:bytes info:flags.0?PaymentRequestedInfo shipping_option_id:flags.1?string charge:PaymentCharge = MessageAction;
// messageMediaInvoice#54293561 currency:string total_amount:int = MessageMedia;
messageMediaInvoice#84551347 flags:# shipping_address_requested:flags.1?true test:flags.3?true title:string description:string photo:flags.0?WebDocument receipt_msg_id:flags.2?int currency:string total_amount:long start_param:string = MessageMedia;
// messageActionPaymentSent#eacd8c80 currency:string total_amount:int = MessageAction;
messageActionPaymentSent#40699cd0 currency:string total_amount:long = MessageAction;
// payments.paymentForm#38253273 bot_id:int url:string invoice:Invoice provider:PaymentProvider users:Vector<User> = payments.PaymentForm;
payments.paymentForm#3f56aea3 flags:# can_save_credentials:flags.2?true password_missing:flags.3?true bot_id:int invoice:Invoice provider_id:int url:string native_provider:flags.4?string native_params:flags.4?DataJSON saved_info:flags.0?PaymentRequestedInfo saved_credentials:flags.1?PaymentSavedCredentials users:Vector<User> = payments.PaymentForm;
updateBotWebhookJSON#8317c0c3 data:DataJSON = Update;
updateBotWebhookJSONQuery#9b9240a6 query_id:long data:DataJSON timeout:int = Update;
updateBotShippingQuery#e0cdc940 query_id:long user_id:int payload:bytes shipping_address:PostAddress = Update;
updateBotPrecheckoutQuery#5d2f3aa9 flags:# query_id:long user_id:int payload:bytes info:flags.0?PaymentRequestedInfo shipping_option_id:flags.1?string currency:string total_amount:long = Update;
dataJSON#7d748d04 data:string = DataJSON;
labeledPrice#cb296bf8 label:string amount:long = LabeledPrice;
paymentCharge#ea02c27e id:string provider_charge_id:string = PaymentCharge;
paymentSavedCredentialsCard#cdc27a1f id:string title:string = PaymentSavedCredentials;
webDocument#c61acbd8 url:string access_hash:long size:int mime_type:string attributes:Vector<DocumentAttribute> dc_id:int = WebDocument;
inputWebDocument#9bed434d url:string size:int mime_type:string attributes:Vector<DocumentAttribute> = InputWebDocument;
inputWebFileLocation#c239d686 url:string access_hash:long = InputWebFileLocation;
upload.webFile#21e753bc size:int mime_type:string file_type:storage.FileType mtime:int bytes:bytes = upload.WebFile;
payments.validatedRequestedInfo#d1451883 flags:# id:flags.0?string shipping_options:flags.1?Vector<ShippingOption> = payments.ValidatedRequestedInfo;
payments.paymentResult#4e5f810d updates:Updates = payments.PaymentResult;
payments.paymentVerficationNeeded#6b56b921 url:string = payments.PaymentResult;
payments.paymentReceipt#500911e1 flags:# date:int bot_id:int invoice:Invoice provider_id:int info:flags.0?PaymentRequestedInfo shipping:flags.1?ShippingOption currency:string total_amount:long credentials_title:string users:Vector<User> = payments.PaymentReceipt;
payments.savedInfo#fb8fe43c flags:# has_saved_credentials:flags.1?true saved_info:flags.0?PaymentRequestedInfo = payments.SavedInfo;
inputPaymentCredentialsSaved#c10eb2cf id:string tmp_password:bytes = InputPaymentCredentials;
inputPaymentCredentials#3417d728 flags:# save:flags.0?true data:DataJSON = InputPaymentCredentials;
account.tmpPassword#db64fd34 tmp_password:bytes valid_until:int = account.TmpPassword;
shippingOption#b6213cdf id:string title:string prices:Vector<LabeledPrice> = ShippingOption;
phoneCallAccepted#6d003d3f id:long access_hash:long date:int admin_id:int participant_id:int g_b:bytes protocol:PhoneCallProtocol = PhoneCall;
---functions---
// payments.confirmBuy#3709fb95 msg_id:int currency:string total_amount:int = Updates;
// help.getAppChangelog#b921197a = help.AppChangelog;
help.getAppChangelog#9010ef6f prev_app_version:string = Updates;
// phone.requestCall#a41aa5e4 user_id:InputUser random_id:int g_a:bytes protocol:PhoneCallProtocol = phone.PhoneCall;
phone.requestCall#5b95b3d4 user_id:InputUser random_id:int g_a_hash:bytes protocol:PhoneCallProtocol = phone.PhoneCall;
// phone.acceptCall#220f0b20 peer:InputPhoneCall g_b:bytes key_fingerprint:long protocol:PhoneCallProtocol = phone.PhoneCall;
phone.acceptCall#3bd2b4a0 peer:InputPhoneCall g_b:bytes protocol:PhoneCallProtocol = phone.PhoneCall;
// phone.discardCall#5dfbcddc peer:InputPhoneCall duration:int reason:PhoneCallDiscardReason connection_id:long = Bool;
phone.discardCall#78d413a6 peer:InputPhoneCall duration:int reason:PhoneCallDiscardReason connection_id:long = Updates;
// payments.sendPaymentForm#2922d956 msg_id:int credentials:PaymentCredentials info:PaymentRequestedInfo = Updates;
payments.sendPaymentForm#2b8879b3 flags:# msg_id:int requested_info_id:flags.0?string shipping_option_id:flags.1?string credentials:InputPaymentCredentials = payments.PaymentResult;
account.getTmpPassword#4a82327e password_hash:bytes period:int = account.TmpPassword;
messages.setBotShippingResults#e5f672fa flags:# query_id:long error:flags.0?string shipping_options:flags.1?Vector<ShippingOption> = Bool;
messages.setBotPrecheckoutResults#9c2dd95 flags:# success:flags.1?true query_id:long error:flags.0?string = Bool;
upload.getWebFile#24e6818d location:InputWebFileLocation offset:int limit:int = upload.WebFile;
bots.sendCustomRequest#aa2769ed custom_method:string params:DataJSON = DataJSON;
bots.answerWebhookJSONQuery#e6213f4d query_id:long data:DataJSON = Bool;
payments.getPaymentReceipt#a092a980 msg_id:int = payments.PaymentReceipt;
payments.validateRequestedInfo#770a8e74 flags:# save:flags.0?true msg_id:int info:PaymentRequestedInfo = payments.ValidatedRequestedInfo;
payments.getSavedInfo#227d824b = payments.SavedInfo;
payments.clearSavedInfo#d83d70c1 flags:# credentials:flags.0?true info:flags.1?true = Bool;
phone.getCallConfig#55451fa9 = DataJSON;
phone.confirmCall#2efe1722 peer:InputPhoneCall g_a:bytes key_fingerprint:long protocol:PhoneCallProtocol = phone.PhoneCall;
phone.setCallRating#1c536a34 peer:InputPhoneCall rating:int comment:string = Updates;
phone.saveCallDebug#277add7e peer:InputPhoneCall debug:DataJSON = Bool;
===66===
---types---
// dcOption#5d8c6cc flags:# ipv6:flags.0?true media_only:flags.1?true tcpo_only:flags.2?true id:int ip_address:string port:int = DcOption;
dcOption#5d8c6cc flags:# ipv6:flags.0?true media_only:flags.1?true tcpo_only:flags.2?true cdn:flags.3?true id:int ip_address:string port:int = DcOption;
// documentAttributeVideo#5910cccb duration:int w:int h:int = DocumentAttribute;
documentAttributeVideo#ef02ce6 flags:# round_message:flags.0?true duration:int w:int h:int = DocumentAttribute;
// user#d10d979a flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true restricted:flags.18?true min:flags.20?true bot_inline_geo:flags.21?true id:int access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?UserProfilePhoto status:flags.6?UserStatus bot_info_version:flags.14?int restriction_reason:flags.18?string bot_inline_placeholder:flags.19?string = User;
user#2e13f4c3 flags:# self:flags.10?true contact:flags.11?true mutual_contact:flags.12?true deleted:flags.13?true bot:flags.14?true bot_chat_history:flags.15?true bot_nochats:flags.16?true verified:flags.17?true restricted:flags.18?true min:flags.20?true bot_inline_geo:flags.21?true id:int access_hash:flags.0?long first_name:flags.1?string last_name:flags.2?string username:flags.3?string phone:flags.4?string photo:flags.5?UserProfilePhoto status:flags.6?UserStatus bot_info_version:flags.14?int restriction_reason:flags.18?string bot_inline_placeholder:flags.19?string lang_code:flags.22?string = User;
inputMessagesFilterRoundVoice#7a7c17a4 = MessagesFilter;
inputMessagesFilterRoundVideo#b549da53 = MessagesFilter;
upload.fileCdnRedirect#1508485a dc_id:int file_token:bytes encryption_key:bytes encryption_iv:bytes = upload.File;
sendMessageRecordRoundAction#88f27fbc = SendMessageAction;
sendMessageUploadRoundAction#bb718624 = SendMessageAction;
upload.cdnFileReuploadNeeded#eea8e46e request_token:bytes = upload.CdnFile;
upload.cdnFile#a99fca4f bytes:bytes = upload.CdnFile;
cdnPublicKey#c982eaba dc_id:int public_key:string = CdnPublicKey;
cdnConfig#5725e40a public_keys:Vector<CdnPublicKey> = CdnConfig;
---functions---
upload.getCdnFile#2000bcc3 file_token:bytes offset:int limit:int = upload.CdnFile;
upload.reuploadCdnFile#2e7a2020 file_token:bytes request_token:bytes = Bool;
help.getCdnConfig#52029342 = CdnConfig;
===67===
---types---
// config#cb601684 flags:# phonecalls_enabled:flags.1?true date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int megagroup_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int saved_gifs_limit:int edit_time_limit:int rating_e_decay:int stickers_recent_limit:int tmp_sessions:flags.0?int pinned_dialogs_count_max:int call_receive_timeout_ms:int call_ring_timeout_ms:int call_connect_timeout_ms:int call_packet_timeout_ms:int me_url_prefix:string disabled_features:Vector<DisabledFeature> = Config;
config#7feec888 flags:# phonecalls_enabled:flags.1?true date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int megagroup_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int saved_gifs_limit:int edit_time_limit:int rating_e_decay:int stickers_recent_limit:int tmp_sessions:flags.0?int pinned_dialogs_count_max:int call_receive_timeout_ms:int call_ring_timeout_ms:int call_connect_timeout_ms:int call_packet_timeout_ms:int me_url_prefix:string suggested_lang_code:flags.2?string lang_pack_version:flags.2?int disabled_features:Vector<DisabledFeature> = Config;
// sendMessageUploadRoundAction#bb718624 = SendMessageAction;
sendMessageUploadRoundAction#243e1c66 progress:int = SendMessageAction;
updateLangPackTooLong#10c2404b = Update;
updateLangPack#56022f4d difference:LangPackDifference = Update;
pageBlockChannel#ef1751b5 channel:Chat = PageBlock;
inputStickerSetItem#ffa0a496 flags:# document:InputDocument emoji:string mask_coords:flags.0?MaskCoords = InputStickerSetItem;
langPackString#cad181f6 key:string value:string = LangPackString;
langPackStringPluralized#6c47ac9f flags:# key:string zero_value:flags.0?string one_value:flags.1?string two_value:flags.2?string few_value:flags.3?string many_value:flags.4?string other_value:string = LangPackString;
langPackStringDeleted#2979eeb2 key:string = LangPackString;
langPackDifference#f385c1f6 lang_code:string from_version:int version:int strings:Vector<LangPackString> = LangPackDifference;
langPackLanguage#117698f1 name:string native_name:string lang_code:string = LangPackLanguage;
---functions---
// initConnection#69796de9 api_id:int device_model:string system_version:string app_version:string lang_code:string query:!X = X;
initConnection#c7481da6 api_id:int device_model:string system_version:string app_version:string system_lang_code:string lang_pack:string lang_code:string query:!X = X;
messages.uploadMedia#519bc2b1 peer:InputPeer media:InputMedia = MessageMedia;
stickers.createStickerSet#4da2730c flags:# masks:flags.0?true user_id:InputUser title:string short_name:string stickers:Vector<InputStickerSetItem> = Bool;
langpack.getLangPack#9ab5c58e lang_code:string = LangPackDifference;
langpack.getStrings#2e1ee318 lang_code:string keys:Vector<string> = Vector<LangPackString>;
langpack.getDifference#b2e4d7d from_version:int = LangPackDifference;
langpack.getLanguages#800fd57d = Vector<LangPackLanguage>;
===68===
---types---
// channelParticipantModerator#91057fef user_id:int inviter_id:int date:int = ChannelParticipant;
// channelParticipantEditor#98192d61 user_id:int inviter_id:int date:int = ChannelParticipant;
// channelParticipantKicked#8cc5e69a user_id:int kicked_by:int date:int = ChannelParticipant;
// channelRoleEmpty#b285a0c6 = ChannelParticipantRole;
// channelRoleModerator#9618d975 = ChannelParticipantRole;
// channelRoleEditor#820bfe8c = ChannelParticipantRole;
// dcOption#5d8c6cc flags:# ipv6:flags.0?true media_only:flags.1?true tcpo_only:flags.2?true cdn:flags.3?true id:int ip_address:string port:int = DcOption;
dcOption#5d8c6cc flags:# ipv6:flags.0?true media_only:flags.1?true tcpo_only:flags.2?true cdn:flags.3?true static:flags.4?true id:int ip_address:string port:int = DcOption;
// channel#a14dca52 flags:# creator:flags.0?true kicked:flags.1?true left:flags.2?true editor:flags.3?true moderator:flags.4?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true restricted:flags.9?true democracy:flags.10?true signatures:flags.11?true min:flags.12?true id:int access_hash:flags.13?long title:string username:flags.6?string photo:ChatPhoto date:int version:int restriction_reason:flags.9?string = Chat;
channel#cb44b1c flags:# creator:flags.0?true left:flags.2?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true restricted:flags.9?true democracy:flags.10?true signatures:flags.11?true min:flags.12?true id:int access_hash:flags.13?long title:string username:flags.6?string photo:ChatPhoto date:int version:int restriction_reason:flags.9?string admin_rights:flags.14?ChannelAdminRights banned_rights:flags.15?ChannelBannedRights = Chat;
// channelForbidden#8537784f flags:# broadcast:flags.5?true megagroup:flags.8?true id:int access_hash:long title:string = Chat;
channelForbidden#289da732 flags:# broadcast:flags.5?true megagroup:flags.8?true id:int access_hash:long title:string until_date:flags.16?int = Chat;
// channelFull#c3d5512f flags:# can_view_participants:flags.3?true can_set_username:flags.6?true id:int about:string participants_count:flags.0?int admins_count:flags.1?int kicked_count:flags.2?int read_inbox_max_id:int read_outbox_max_id:int unread_count:int chat_photo:Photo notify_settings:PeerNotifySettings exported_invite:ExportedChatInvite bot_info:Vector<BotInfo> migrated_from_chat_id:flags.4?int migrated_from_max_id:flags.4?int pinned_msg_id:flags.5?int = ChatFull;
channelFull#95cb5f57 flags:# can_view_participants:flags.3?true can_set_username:flags.6?true id:int about:string participants_count:flags.0?int admins_count:flags.1?int kicked_count:flags.2?int banned_count:flags.2?int read_inbox_max_id:int read_outbox_max_id:int unread_count:int chat_photo:Photo notify_settings:PeerNotifySettings exported_invite:ExportedChatInvite bot_info:Vector<BotInfo> migrated_from_chat_id:flags.4?int migrated_from_max_id:flags.4?int pinned_msg_id:flags.5?int = ChatFull;
// channelParticipantsKicked#3c37bb7a = ChannelParticipantsFilter;
channelParticipantsKicked#a3b54985 q:string = ChannelParticipantsFilter;
// pagePart#8dee6c44 blocks:Vector<PageBlock> photos:Vector<Photo> videos:Vector<Document> = Page;
pagePart#8e3f9ebe blocks:Vector<PageBlock> photos:Vector<Photo> documents:Vector<Document> = Page;
// pageFull#d7a19d69 blocks:Vector<PageBlock> photos:Vector<Photo> videos:Vector<Document> = Page;
pageFull#556ec7aa blocks:Vector<PageBlock> photos:Vector<Photo> documents:Vector<Document> = Page;
channelParticipantAdmin#a82fa898 flags:# can_edit:flags.0?true user_id:int inviter_id:int promoted_by:int date:int admin_rights:ChannelAdminRights = ChannelParticipant;
channelParticipantBanned#222c1886 flags:# left:flags.0?true user_id:int kicked_by:int date:int banned_rights:ChannelBannedRights = ChannelParticipant;
channelParticipantsBanned#1427a5e1 q:string = ChannelParticipantsFilter;
channelParticipantsSearch#656ac4b q:string = ChannelParticipantsFilter;
topPeerCategoryPhoneCalls#1e76a78c = TopPeerCategory;
pageBlockAudio#31b81a7f audio_id:long caption:RichText = PageBlock;
channelAdminRights#5d7ceba5 flags:# change_info:flags.0?true post_messages:flags.1?true edit_messages:flags.2?true delete_messages:flags.3?true ban_users:flags.4?true invite_users:flags.5?true invite_link:flags.6?true pin_messages:flags.7?true add_admins:flags.9?true = ChannelAdminRights;
channelBannedRights#58cf4249 flags:# view_messages:flags.0?true send_messages:flags.1?true send_media:flags.2?true send_stickers:flags.3?true send_gifs:flags.4?true send_games:flags.5?true send_inline:flags.6?true embed_links:flags.7?true until_date:int = ChannelBannedRights;
channelAdminLogEventActionChangeTitle#e6dfb825 prev_value:string new_value:string = ChannelAdminLogEventAction;
channelAdminLogEventActionChangeAbout#55188a2e prev_value:string new_value:string = ChannelAdminLogEventAction;
channelAdminLogEventActionChangeUsername#6a4afc38 prev_value:string new_value:string = ChannelAdminLogEventAction;
channelAdminLogEventActionChangePhoto#b82f55c3 prev_photo:ChatPhoto new_photo:ChatPhoto = ChannelAdminLogEventAction;
channelAdminLogEventActionToggleInvites#1b7907ae new_value:Bool = ChannelAdminLogEventAction;
channelAdminLogEventActionToggleSignatures#26ae0971 new_value:Bool = ChannelAdminLogEventAction;
channelAdminLogEventActionUpdatePinned#e9e82c18 message:Message = ChannelAdminLogEventAction;
channelAdminLogEventActionEditMessage#709b2405 prev_message:Message new_message:Message = ChannelAdminLogEventAction;
channelAdminLogEventActionDeleteMessage#42e047bb message:Message = ChannelAdminLogEventAction;
channelAdminLogEventActionParticipantJoin#183040d3 = ChannelAdminLogEventAction;
channelAdminLogEventActionParticipantLeave#f89777f2 = ChannelAdminLogEventAction;
channelAdminLogEventActionParticipantInvite#e31c34d8 participant:ChannelParticipant = ChannelAdminLogEventAction;
channelAdminLogEventActionParticipantToggleBan#e6d83d7e prev_participant:ChannelParticipant new_participant:ChannelParticipant = ChannelAdminLogEventAction;
channelAdminLogEventActionParticipantToggleAdmin#d5676710 prev_participant:ChannelParticipant new_participant:ChannelParticipant = ChannelAdminLogEventAction;
channelAdminLogEvent#3b5a3e40 id:long date:int user_id:int action:ChannelAdminLogEventAction = ChannelAdminLogEvent;
channels.adminLogResults#ed8af74d events:Vector<ChannelAdminLogEvent> chats:Vector<Chat> users:Vector<User> = channels.AdminLogResults;
channelAdminLogEventsFilter#ea107ae4 flags:# join:flags.0?true leave:flags.1?true invite:flags.2?true ban:flags.3?true unban:flags.4?true kick:flags.5?true unkick:flags.6?true promote:flags.7?true demote:flags.8?true info:flags.9?true settings:flags.10?true pinned:flags.11?true edit:flags.12?true delete:flags.13?true = ChannelAdminLogEventsFilter;
---functions---
// channels.kickFromChannel#a672de14 channel:InputChannel user_id:InputUser kicked:Bool = Updates;
// messages.search#d4569248 flags:# peer:InputPeer q:string filter:MessagesFilter min_date:int max_date:int offset:int max_id:int limit:int = messages.Messages;
messages.search#f288a275 flags:# peer:InputPeer q:string from_id:flags.0?InputUser filter:MessagesFilter min_date:int max_date:int offset:int max_id:int limit:int = messages.Messages;
// channels.editAdmin#eb7611d0 channel:InputChannel user_id:InputUser role:ChannelParticipantRole = Updates;
channels.editAdmin#20b88214 channel:InputChannel user_id:InputUser admin_rights:ChannelAdminRights = Updates;
// contacts.getTopPeers#d4982db5 flags:# correspondents:flags.0?true bots_pm:flags.1?true bots_inline:flags.2?true groups:flags.10?true channels:flags.15?true offset:int limit:int hash:int = contacts.TopPeers;
contacts.getTopPeers#d4982db5 flags:# correspondents:flags.0?true bots_pm:flags.1?true bots_inline:flags.2?true phone_calls:flags.3?true groups:flags.10?true channels:flags.15?true offset:int limit:int hash:int = contacts.TopPeers;
// stickers.createStickerSet#4da2730c flags:# masks:flags.0?true user_id:InputUser title:string short_name:string stickers:Vector<InputStickerSetItem> = Bool;
stickers.createStickerSet#9bd86e6a flags:# masks:flags.0?true user_id:InputUser title:string short_name:string stickers:Vector<InputStickerSetItem> = messages.StickerSet;
channels.editBanned#bfd915cd channel:InputChannel user_id:InputUser banned_rights:ChannelBannedRights = Updates;
channels.getAdminLog#33ddf480 flags:# channel:InputChannel q:string events_filter:flags.0?ChannelAdminLogEventsFilter admins:flags.1?Vector<InputUser> max_id:long min_id:long limit:int = channels.AdminLogResults;
stickers.removeStickerFromSet#4255934 sticker:InputDocument = Bool;
stickers.changeStickerPosition#4ed705ca sticker:InputDocument position:int = Bool;
stickers.addStickerToSet#8653febe stickerset:InputStickerSet sticker:InputStickerSetItem = messages.StickerSet;
===70===
---types---
// inputMediaUploadedThumbDocument#50d88cae flags:# file:InputFile thumb:InputFile mime_type:string attributes:Vector<DocumentAttribute> caption:string stickers:flags.0?Vector<InputDocument> = InputMedia;
// inputMediaUploadedPhoto#630c9af1 flags:# file:InputFile caption:string stickers:flags.0?Vector<InputDocument> = InputMedia;
inputMediaUploadedPhoto#2f37e231 flags:# file:InputFile caption:string stickers:flags.0?Vector<InputDocument> ttl_seconds:flags.1?int = InputMedia;
// inputMediaPhoto#e9bfb4f3 id:InputPhoto caption:string = InputMedia;
inputMediaPhoto#81fa373a flags:# id:InputPhoto caption:string ttl_seconds:flags.0?int = InputMedia;
// inputMediaUploadedDocument#d070f1e9 flags:# file:InputFile mime_type:string attributes:Vector<DocumentAttribute> caption:string stickers:flags.0?Vector<InputDocument> = InputMedia;
inputMediaUploadedDocument#e39621fd flags:# file:InputFile thumb:flags.2?InputFile mime_type:string attributes:Vector<DocumentAttribute> caption:string stickers:flags.0?Vector<InputDocument> ttl_seconds:flags.1?int = InputMedia;
// inputMediaDocument#1a77f29c id:InputDocument caption:string = InputMedia;
inputMediaDocument#5acb668e flags:# id:InputDocument caption:string ttl_seconds:flags.0?int = InputMedia;
// inputMediaPhotoExternal#b55f4f18 url:string caption:string = InputMedia;
inputMediaPhotoExternal#922aec1 flags:# url:string caption:string ttl_seconds:flags.0?int = InputMedia;
// inputMediaDocumentExternal#e5e9607c url:string caption:string = InputMedia;
inputMediaDocumentExternal#b6f74335 flags:# url:string caption:string ttl_seconds:flags.0?int = InputMedia;
// channel#cb44b1c flags:# creator:flags.0?true left:flags.2?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true restricted:flags.9?true democracy:flags.10?true signatures:flags.11?true min:flags.12?true id:int access_hash:flags.13?long title:string username:flags.6?string photo:ChatPhoto date:int version:int restriction_reason:flags.9?string admin_rights:flags.14?ChannelAdminRights banned_rights:flags.15?ChannelBannedRights = Chat;
channel#cb44b1c flags:# creator:flags.0?true left:flags.2?true editor:flags.3?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true restricted:flags.9?true democracy:flags.10?true signatures:flags.11?true min:flags.12?true id:int access_hash:flags.13?long title:string username:flags.6?string photo:ChatPhoto date:int version:int restriction_reason:flags.9?string admin_rights:flags.14?ChannelAdminRights banned_rights:flags.15?ChannelBannedRights = Chat;
// message#c09be45f flags:# out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true silent:flags.13?true post:flags.14?true id:int from_id:flags.8?int to_id:Peer fwd_from:flags.2?MessageFwdHeader via_bot_id:flags.11?int reply_to_msg_id:flags.3?int date:int message:string media:flags.9?MessageMedia reply_markup:flags.6?ReplyMarkup entities:flags.7?Vector<MessageEntity> views:flags.10?int edit_date:flags.15?int = Message;
message#90dddc11 flags:# out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true silent:flags.13?true post:flags.14?true id:int from_id:flags.8?int to_id:Peer fwd_from:flags.2?MessageFwdHeader via_bot_id:flags.11?int reply_to_msg_id:flags.3?int date:int message:string media:flags.9?MessageMedia reply_markup:flags.6?ReplyMarkup entities:flags.7?Vector<MessageEntity> views:flags.10?int edit_date:flags.15?int post_author:flags.16?string = Message;
// messageMediaPhoto#3d8ce53d photo:Photo caption:string = MessageMedia;
messageMediaPhoto#b5223b0f flags:# photo:flags.0?Photo caption:flags.1?string ttl_seconds:flags.2?int = MessageMedia;
// messageMediaDocument#f3e02ea8 document:Document caption:string = MessageMedia;
messageMediaDocument#7c4414d3 flags:# document:flags.0?Document caption:flags.1?string ttl_seconds:flags.2?int = MessageMedia;
// contacts.importedContacts#ad524315 imported:Vector<ImportedContact> retry_contacts:Vector<long> users:Vector<User> = contacts.ImportedContacts;
contacts.importedContacts#77d01c3b imported:Vector<ImportedContact> popular_invites:Vector<PopularContact> retry_contacts:Vector<long> users:Vector<User> = contacts.ImportedContacts;
// upload.fileCdnRedirect#1508485a dc_id:int file_token:bytes encryption_key:bytes encryption_iv:bytes = upload.File;
upload.fileCdnRedirect#ea52fe5a dc_id:int file_token:bytes encryption_key:bytes encryption_iv:bytes cdn_file_hashes:Vector<CdnFileHash> = upload.File;
// messageFwdHeader#c786ddcb flags:# from_id:flags.0?int date:int channel_id:flags.1?int channel_post:flags.2?int = MessageFwdHeader;
messageFwdHeader#fadff4ac flags:# from_id:flags.0?int date:int channel_id:flags.1?int channel_post:flags.2?int post_author:flags.3?string = MessageFwdHeader;
messageActionScreenshotTaken#4792929b = MessageAction;
popularContact#5ce14175 client_id:long importers:int = PopularContact;
cdnFileHash#77eec38f offset:int limit:int hash:bytes = CdnFileHash;
---functions---
// upload.reuploadCdnFile#2e7a2020 file_token:bytes request_token:bytes = Bool;
upload.reuploadCdnFile#1af91c09 file_token:bytes request_token:bytes = Vector<CdnFileHash>;
// stickers.removeStickerFromSet#4255934 sticker:InputDocument = Bool;
stickers.removeStickerFromSet#f7760f51 sticker:InputDocument = messages.StickerSet;
// stickers.changeStickerPosition#4ed705ca sticker:InputDocument position:int = Bool;
stickers.changeStickerPosition#ffb6d4ca sticker:InputDocument position:int = messages.StickerSet;
messages.sendScreenshotNotification#c97df020 peer:InputPeer reply_to_msg_id:int random_id:long = Updates;
upload.getCdnFileHashes#f715c87b file_token:bytes offset:int = Vector<CdnFileHash>;
===71===
---types---
// dialog#66ffba14 flags:# pinned:flags.2?true peer:Peer top_message:int read_inbox_max_id:int read_outbox_max_id:int unread_count:int notify_settings:PeerNotifySettings pts:flags.0?int draft:flags.1?DraftMessage = Dialog;
dialog#e4def5db flags:# pinned:flags.2?true peer:Peer top_message:int read_inbox_max_id:int read_outbox_max_id:int unread_count:int unread_mentions_count:int notify_settings:PeerNotifySettings pts:flags.0?int draft:flags.1?DraftMessage = Dialog;
// contacts.contacts#6f8b8cb2 contacts:Vector<Contact> users:Vector<User> = contacts.Contacts;
contacts.contacts#eae87e42 contacts:Vector<Contact> saved_count:int users:Vector<User> = contacts.Contacts;
// config#7feec888 flags:# phonecalls_enabled:flags.1?true date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int megagroup_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int saved_gifs_limit:int edit_time_limit:int rating_e_decay:int stickers_recent_limit:int tmp_sessions:flags.0?int pinned_dialogs_count_max:int call_receive_timeout_ms:int call_ring_timeout_ms:int call_connect_timeout_ms:int call_packet_timeout_ms:int me_url_prefix:string suggested_lang_code:flags.2?string lang_pack_version:flags.2?int disabled_features:Vector<DisabledFeature> = Config;
config#8df376a4 flags:# phonecalls_enabled:flags.1?true date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int megagroup_size_max:int forwarded_count_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int push_chat_period_ms:int push_chat_limit:int saved_gifs_limit:int edit_time_limit:int rating_e_decay:int stickers_recent_limit:int stickers_faved_limit:int tmp_sessions:flags.0?int pinned_dialogs_count_max:int call_receive_timeout_ms:int call_ring_timeout_ms:int call_connect_timeout_ms:int call_packet_timeout_ms:int me_url_prefix:string suggested_lang_code:flags.2?string lang_pack_version:flags.2?int disabled_features:Vector<DisabledFeature> = Config;
// channelFull#95cb5f57 flags:# can_view_participants:flags.3?true can_set_username:flags.6?true id:int about:string participants_count:flags.0?int admins_count:flags.1?int kicked_count:flags.2?int banned_count:flags.2?int read_inbox_max_id:int read_outbox_max_id:int unread_count:int chat_photo:Photo notify_settings:PeerNotifySettings exported_invite:ExportedChatInvite bot_info:Vector<BotInfo> migrated_from_chat_id:flags.4?int migrated_from_max_id:flags.4?int pinned_msg_id:flags.5?int = ChatFull;
channelFull#17f45fcf flags:# can_view_participants:flags.3?true can_set_username:flags.6?true can_set_stickers:flags.7?true id:int about:string participants_count:flags.0?int admins_count:flags.1?int kicked_count:flags.2?int banned_count:flags.2?int read_inbox_max_id:int read_outbox_max_id:int unread_count:int chat_photo:Photo notify_settings:PeerNotifySettings exported_invite:ExportedChatInvite bot_info:Vector<BotInfo> migrated_from_chat_id:flags.4?int migrated_from_max_id:flags.4?int pinned_msg_id:flags.5?int stickerset:flags.8?StickerSet = ChatFull;
// updates.channelDifferenceTooLong#410dee07 flags:# final:flags.0?true pts:int timeout:flags.1?int top_message:int read_inbox_max_id:int read_outbox_max_id:int unread_count:int messages:Vector<Message> chats:Vector<Chat> users:Vector<User> = updates.ChannelDifference;
updates.channelDifferenceTooLong#6a9d7b35 flags:# final:flags.0?true pts:int timeout:flags.1?int top_message:int read_inbox_max_id:int read_outbox_max_id:int unread_count:int unread_mentions_count:int messages:Vector<Message> chats:Vector<Chat> users:Vector<User> = updates.ChannelDifference;
inputMessagesFilterMyMentions#c1f8e69a = MessagesFilter;
updateContactsReset#7084a7be = Update;
channelAdminLogEventActionChangeStickerSet#b1c3caa7 prev_stickerset:InputStickerSet new_stickerset:InputStickerSet = ChannelAdminLogEventAction;
updateFavedStickers#e511996d = Update;
messages.favedStickers#f37f2f16 hash:int packs:Vector<StickerPack> stickers:Vector<Document> = messages.FavedStickers;
messages.favedStickersNotModified#9e8fa6d3 = messages.FavedStickers;
updateChannelReadMessagesContents#89893b45 channel_id:int messages:Vector<int> = Update;
---functions---
// contacts.getContacts#22c6aa08 hash:string = contacts.Contacts;
contacts.getContacts#c023849f hash:int = contacts.Contacts;
// contacts.importContacts#da30b32d contacts:Vector<InputContact> replace:Bool = contacts.ImportedContacts;
contacts.importContacts#2c800be5 contacts:Vector<InputContact> = contacts.ImportedContacts;
// messages.search#f288a275 flags:# peer:InputPeer q:string from_id:flags.0?InputUser filter:MessagesFilter min_date:int max_date:int offset:int max_id:int limit:int = messages.Messages;
messages.search#39e9ea0 flags:# peer:InputPeer q:string from_id:flags.0?InputUser filter:MessagesFilter min_date:int max_date:int offset_id:int add_offset:int limit:int max_id:int min_id:int = messages.Messages;
messages.getUnreadMentions#46578472 peer:InputPeer offset_id:int add_offset:int limit:int max_id:int min_id:int = messages.Messages;
messages.faveSticker#b9ffc55b id:InputDocument unfave:Bool = Bool;
channels.setStickers#ea8ca4f9 channel:InputChannel stickerset:InputStickerSet = Bool;
contacts.resetSaved#879537f1 = Bool;
messages.getFavedStickers#21ce0b0e hash:int = messages.FavedStickers;
channels.readMessageContents#eab5dc38 channel:InputChannel id:Vector<int> = Bool;
