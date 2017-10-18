### Version info
App|Version/Hash|Date
---|---|---
Android/iOS|4.4|10.10.17

[Blog post](https://telegram.org/blog/live-locations)

### Notes
[Fela is a very good boy](https://github.com/UnigramDev/Unigram/commit/6341809d2d02165aaef9b4332d9fb66616e565d1)

This update introduces:
- "Live" (editable) locations
- Remove history for one user and hidden prehistory in channels
- RecentMeUrl and referer system
- Other changes

#### Live locations
Live locations are normal locations which can me edited, and which have some time-to-stay-live (ttsl).

`inputMediaGeoLive` and `messageMediaGeoLive` constructos were added. They both have `period` field which is ttsl when location is live.
When location sharing is stopped, `period` turns into "for how long was this location live".
It's done for obvious reasons -- to simplify calculations:
- How long will location stay live: `current_date - message.date + message.media.period`

`inputBotInlineMessageMediaGeo`, `botInlineMessageMediaGeo` now have `period` field too.

`messages.editMessage` now has `geo_point` field which allows to "update" live locations, and `stop_geo_live` flag which allows to edit `period` so location is no longer live (=> ded).

And `messages.getRecentLocations` is used to show all users in chat live on one map.

See also _Other changes_.

#### Channels
Channels (megagroups) were updated: 
- Ability to delete history in megagroups only for current user
- Option to hide messages in megagroup sent before user was invited to it

`channelFull` now has `available_min_id` optional `int`, which is likely set either when user is invited to channel with hidden prehistory, or when he removes it for himself.
When it changes, `updateChannelAvailableMessages` is issued, likely.

It also now has `hidden_prehistory` flag.

`channels.deleteHistory` is added to allow user to clear history for himself.

`channels.togglePreHistoryHidden` and new log event for it `channelAdminLogEventActionTogglePreHistoryHidden` were added.

See also _Other changes_.

#### RecentMe & Referers
Currently used by Android app only, I don't have a fucking clue on how it works :)
Following is guesses, thx Fela, F. and Pear for helping me.

So Andoid app uses android stuff like INSTALL_REFERRER to get referrer from Play Store.
Then it saves that referer to it's mainconfig, and uses it to load stuff.

It's likely somehow connected to t.me links getting `http://telegram.org/dl?tme=WEIRD_STRING` in "Don't have Telegram yet" link.
That param isn't passed anywhere yet.
`help.getRecentUrls` seems to return empty result on unknown/invalid referer, and those `WEIRD_STRING`s aren't valid.

Anyway, app somehow gets referer, calls `help.getRecentUrls`, and then gets `help.recentMeUrls` with chat/user vector and `RecentMeUrl`s in it:
- `recentMeUrlUser`
- `recentMeUrlChat`
- `recentMeUrlStickerSet`
- `recentMeUrlChatInvite`
- `recentMeUrlUnknown`

#### Other changes
- `channels.getParticipants` now has `hash` field, which uses normal 20261 hashing.
 It only makes sense to use it with filters like `channelParticipantsAdmins`, like macOS app does. 
 Obviously new constructor `channels.channelParticipantsNotModified` was added.

- `messages.readMentions` was added to clear all unread messages in chat

- `messageActionCustomAction` is added, likely for service notifications

- `messages.botResults` now has `users` Vector, I have no idea why

- Venues now have `venue_type`.
 See [foursquare docs](https://developer.foursquare.com/docs/resources/categories).
 Apps use it to chage pin icon on map.
 iOS app uses `https://ss3.4sqi.net/img/categories_v2/%@_88.png` format string, for example.

- `config->channels_read_media_period` is added.

- Two new `MessagesFilter` constructors were added: `inputMessagesFilterContacts` and `inputMessagesFilterGeo`
