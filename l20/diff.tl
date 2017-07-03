---types---
account.sentChangePhoneCode#a4f58c4c phone_code_hash:string send_call_timeout:int = account.SentChangePhoneCode;
updateUserPhone#12b9417b user_id:int phone:string = Update;
---functions---
contacts.resolveUsername#bf0131c username:string = User;
account.sendChangePhoneCode#a407a8f4 phone_number:string = account.SentChangePhoneCode;
account.changePhone#70c32edb phone_number:string phone_code_hash:string phone_code:string = User;
