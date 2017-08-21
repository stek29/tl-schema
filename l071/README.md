### Version info
None, yet.

### Notes
[First published by Unigram](https://github.com/UnigramDev/Unigram/commit/ee2863cbb6c677382f4c023f336b30b24ca313f9)

This update introduces:
- Better mention system
- Getting info about contacts `saved` on sever
- Favorite stickers and supergroup sticker sets

#### Better mention system
`dialog` and `updates.channelDifferenceTooLong` now have `unread_mentions_count`. It's number of messages having mention in them which were not marked as read explicitly.

Speaking of that, messages with mentions now should be marked as read explicitly using `channels.readMessageContents` in channels. Typically it's called when mention is showed to user, and `updateChannelReadMessagesContents` is issued.

New `MessageFilters` were added: `inputMessagesFilterMyMentions` and `inputMessagesFilterMyMentionsUnread` to find messages where user was mentioned.

`messages.getUnreadMentions` is more efficient. It can be used to let user cycle through unread mentions.

#### Saved Contacts
You can now get number of contacts stored on server side (but not yet registered in Telegram) -- `contacts.contacts` has `saved_count`.

You can remove those contacts by calling `contacts.resetSaved`, which would cause `updateContactsReset` to be sent. It probably should force applications to re-sync contacts, so server saves only ones stored at user's address book currently.

Probably because of that `contact.importContacts` now lacks `replace`.

Also, `contacts.contacts` hash is now `int` and not `string`. However, that hash still can't be passed to server.

#### Favorite stickers and group sets
User can now have up to `config->stickers_faved_limit` stickers "pinned" without saving their sticker pack.
The system is very similar to recents, but these should not be modified without user's will.

Sticker is added to favorites with `messages.faveSticker`. Then `updateFavedStickers` is issued, and applications should use `messages.getFavedStickers` to get new list.

Also, "channels" (supergroups only) now have `stickerset`.
It can be set if `can_set_stickers` is true.
`channels.setStickers` is used for that. Setting it adds `channelAdminLogEventActionChangeStickerSet` to "admin log" aka "recent actions". There seems to be no way to know about that change for user, except re-fetching `channel`.
