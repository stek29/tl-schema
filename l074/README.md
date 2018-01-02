### Version info
App|Version/Hash|Date
---|---|---
Android/iOS|4.7|30.12.17
Webogram|0.7|31.12.17

[Blog post](https://telegram.org/blog/themes-accounts)

#### Caching messages
`messages.messagesNotModified` were added, and `messages.getHistory`
now accepts a hash.
That's 20261 hash: `id`, `edit_date` if existes or just `date`
Messages are sorted in desc order (just as in results of getHistory)

#### Multiple accounts
`account.registerDevice`/`account.unregisterDevice` now have `other_uids:Vector<int>`

#### Other changes
- `my_results` were added to `contacts.found`
  Now it's possible to search for chats you're in by name on server
  (previously it was done locally by app)

- `default_p2p_contacts` flag was added to `config`

- `inputMediaInvoice` now has `provider_data:DataJSON`

- `phone_to_provider` & `email_to_provider` flags were added to `invoice`

- `messages.botCallbackAnswer` now has `native_ui` flag

- `channels.exportMessageLink` now has `grouped:Bool`

#### P.S.
`inputMessagesFilterPhotoVideoDocuments` was removed quite some time
ago, but I haven't noticed it. I guess it's time to remove it.

`inputPaymentCredentialsApplePay`/`inputPaymentCredentialsAndroidPay`
were also likely added some time ago too.

`messages.editInlineBotMessage` likely had geopoint related flags since
live locations update

`messages.uploadEncryptedFile` existed for quite long time too I guess.
