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
