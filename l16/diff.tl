---types---
auth.sentAppCode#e325edcf phone_registered:Bool phone_code_hash:string send_call_timeout:int is_password:Bool = auth.SentCode;
---functions---
auth.bindTempAuthKey#cdd42a05 perm_auth_key_id:long nonce:long expires_at:int encrypted_message:bytes = Bool;
contacts.exportCard#84e53737 = Vector<int>;
contacts.importCard#4fe196fe export_card:Vector<int> = User;
auth.sendSms#da9f3e8 phone_number:string phone_code_hash:string = Bool;
invokeWithLayer16#cf5f0987 query:!X = X;
