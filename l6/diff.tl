---types---
// geoChat#e24415f5 id:int access_hash:long title:string address:string geo:GeoPoint photo:ChatPhoto participants_count:int date:int checked_in:Bool version:int = Chat;
geoChat#75eaea5a id:int access_hash:long title:string address:string venue:string geo:GeoPoint photo:ChatPhoto participants_count:int date:int checked_in:Bool version:int = Chat;
---functions---
// geochats.createGeoChat#745f22cb title:string geo_point:InputGeoPoint address:string = geochats.StatedMessage;
geochats.createGeoChat#e092e16 title:string geo_point:InputGeoPoint address:string venue:string = geochats.StatedMessage;
invokeWithLayer6#3a64d54d query:!X = X;
