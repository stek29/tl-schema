---types---
---functions---
// auth.sendCode#d16ff372 phone_number:string sms_type:int api_id:int api_hash:string = auth.SentCode;
auth.sendCode#768d5f4d phone_number:string sms_type:int api_id:int api_hash:string lang_code:string = auth.SentCode;
// account.registerDevice#a28557ac token_type:int token:string device_model:string system_version:string app_version:string app_sandbox:Bool = Bool;
account.registerDevice#446c712c token_type:int token:string device_model:string system_version:string app_version:string app_sandbox:Bool lang_code:string = Bool;
invokeWithLayer5#417a57ae query:!X = X;
