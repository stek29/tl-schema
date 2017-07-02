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
