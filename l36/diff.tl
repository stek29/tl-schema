---types---
// inputMediaUploadedVideo#e13fd4bc file:InputFile duration:int w:int h:int caption:string = InputMedia;
// inputMediaUploadedThumbVideo#96fb97dc file:InputFile thumb:InputFile duration:int w:int h:int caption:string = InputMedia;
// message#f07814c8 flags:# id:int from_id:int to_id:Peer fwd_from_id:flags.2?int fwd_date:flags.2?int reply_to_msg_id:flags.3?int date:int message:string media:MessageMedia reply_markup:flags.6?ReplyMarkup entities:flags.7?Vector<MessageEntity> = Message;
// messages.sentMessage#8a99d8e0 id:int date:int media:MessageMedia entities:Vector<MessageEntity> pts:int pts_count:int = messages.SentMessage;
// messages.sentMessageLink#35a1a663 id:int date:int media:MessageMedia pts:int pts_count:int links:Vector<contacts.Link> seq:int = messages.SentMessage;
// webPage#a31ea0b5 flags:# id:long url:string display_url:string type:flags.0?string site_name:flags.1?string title:flags.2?string description:flags.3?string photo:flags.4?Photo embed_url:flags.5?string embed_type:flags.5?string embed_width:flags.6?int embed_height:flags.6?int duration:flags.7?int author:flags.8?string = WebPage;
inputMediaUploadedVideo#82713fdf file:InputFile duration:int w:int h:int mime_type:string caption:string = InputMedia;
inputMediaUploadedThumbVideo#7780ddf9 file:InputFile thumb:InputFile duration:int w:int h:int mime_type:string caption:string = InputMedia;
message#2bebfa86 flags:# id:int from_id:int to_id:Peer fwd_from_id:flags.2?int fwd_date:flags.2?int reply_to_msg_id:flags.3?int date:int message:string media:flags.9?MessageMedia reply_markup:flags.6?ReplyMarkup entities:flags.7?Vector<MessageEntity> = Message;
webPage#ca820ed7 flags:# id:long url:string display_url:string type:flags.0?string site_name:flags.1?string title:flags.2?string description:flags.3?string photo:flags.4?Photo embed_url:flags.5?string embed_type:flags.5?string embed_width:flags.6?int embed_height:flags.6?int duration:flags.7?int author:flags.8?string document:flags.9?Document = WebPage;
updateShortSentMessage#11f1331c flags:# id:int pts:int pts_count:int date:int media:flags.9?MessageMedia entities:flags.7?Vector<MessageEntity> = Updates;
---functions---
// messages.sendMessage#df12390 flags:# peer:InputPeer reply_to_msg_id:flags.0?int message:string random_id:long reply_markup:flags.2?ReplyMarkup entities:flags.3?Vector<MessageEntity> = messages.SentMessage;
messages.sendMessage#fa88427a flags:# peer:InputPeer reply_to_msg_id:flags.0?int message:string random_id:long reply_markup:flags.2?ReplyMarkup entities:flags.3?Vector<MessageEntity> = Updates;
