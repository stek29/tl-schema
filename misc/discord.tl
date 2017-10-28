---types---
groupCall#80ce8f21 id:long access_hash:long date:int channel_id:int admin_id:int encryption_key:bytes protocol:PhoneCallProtocol connection:GroupCallConnection reflector_group_tag:bytes reflector_self_tag:bytes reflector_self_secret:bytes = GroupCall;
groupCallDiscarded#b42e9de1 id:long access_hash:long date:int admin_id:int duration:int = GroupCall;
groupCallPrivate#f9793466 id:long access_hash:long date:int channel_id:int admin_id:int = GroupCall;
inputGroupCall#d8aa840f id:long access_hash:long = InputGroupCall;
groupCallParticipant#a1637e6b flags:# readonly:flags.0?true user_id:int inviter_id:int date:int member_tag_hash:bytes = GroupCallParticipant;
groupCallParticipantAdmin#956f9a6a user_id:int member_tag_hash:bytes = GroupCallParticipant;
groupCallParticipantLeft#419b0df2 user_id:int = GroupCallParticipant;
updateGroupCallParticipant#57eaec8 call:InputGroupCall participant:GroupCallParticipant = Update;
updateGroupCall#85fe86ed call:GroupCall = Update;
messageActionGroupCall#ebd29cd8 call:InputGroupCall = MessageAction;
groupCallConnection#40732163 id:long ip:string ipv6:string port:int = GroupCallConnection;
phone.groupCall#6737ffb7 call:GroupCall participants:Vector<GroupCallParticipant> chats:Vector<Chat> users:Vector<User> = phone.GroupCall;
---functions---
phone.getGroupCall#c7cb017 call:InputGroupCall = phone.GroupCall;
phone.joinGroupCall#254a7577 call:InputGroupCall = Updates;
phone.leaveGroupCall#60e98e5f call:InputGroupCall = Updates;
phone.discardGroupCall#7a777135 call:InputGroupCall = Updates;
phone.createGroupCall#4061acdd channel:InputChannel random_id:int protocol:PhoneCallProtocol encryption_key:bytes = Updates;
