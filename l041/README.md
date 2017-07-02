### Version info
App|Version/Hash|Date
---|---|---
TDesktop|497602f47ef0ba1878b824fd8c5cbebddcd2765f|13.11.15
Webogram|9cef19bc0e08ae701c8e19f1191920a4b1fbc9ca|12.11.15

### Notes
Webogram's version was different:

```diff
< messageActionChatAddUser#488a7337 users:Vector<int> = MessageAction;
---
> messageActionChatActivate#40ad8cb2  = MessageAction;
> messageActionChatAddUser#5e3cfc4b user_id:int = MessageAction;
> messageActionChatDeactivate#64ad20a8  = MessageAction;
> messages.deactivateChat#626f0b41 chat_id:int enabled:Bool = Updates;
```
