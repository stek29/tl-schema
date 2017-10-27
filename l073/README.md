### Version info
None, yet

### Notes
This update introduces:
- Saved messages
- Grouped media
- Other changes

#### Saved Messages
aka Cloud Storage, aka Chat with yourself

`messageFwdHeader` now has `saved_from_peer` and `saved_from_msg_id` fields, so going to original message is now possible not just for channel posts but for any message if it was forwarded to `self`.

#### Grouped media
**Make sure see layer 74. Really. It discards some info written here.**

`message` now has `grouped_id`, which is submitted when using `messages.sendMedia` or `messages.forwardMessages`.

If two messages have same `grouped_id`, are one after another, have same `from` and contain video/photo/gif, they'll be rendered in mosaic or visually grouped in some other way.

#### Other
- `channel` now has optional `participants_count`. It's known to exist in search results.