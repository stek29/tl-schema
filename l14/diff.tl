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
