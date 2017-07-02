---types---
// auth.sentCode#2215bcbd phone_registered:Bool phone_code_hash:string = auth.SentCode;
auth.sentCode#efed51d9 phone_registered:Bool phone_code_hash:string send_call_timeout:int is_password:Bool = auth.SentCode;
// config#232d5905 date:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int = Config;
config#2e54dd74 date:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int broadcast_size_max:int = Config;
help.support#17c6b5f6 phone_number:string user:User = help.Support;
---functions---
help.getSupport#9cdf08cd = help.Support;
invokeWithLayer12#dda60d3c query:!X = X;
