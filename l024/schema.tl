---types---
account.noPassword#5770e7a9 new_salt:bytes = account.Password;
account.password#739e5f72 current_salt:bytes new_salt:bytes hint:string = account.Password;
---functions---
account.updateDeviceLocked#38df3532 period:int = Bool;
account.getPassword#548a30f5 = account.Password;
account.setPassword#dd2a4d8f current_password_hash:bytes new_salt:bytes new_password_hash:bytes hint:string = Bool;
auth.checkPassword#a63011e password_hash:bytes = auth.Authorization;
