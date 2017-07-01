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
