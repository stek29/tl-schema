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
