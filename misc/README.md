### Notes
Most files here are submited by @danog


### l060.tl
I don't want to rewrite whole history since this isn't so important.
Neither I will change l061 diff, to avoid breaking stuff.
So I decieded to put this here. Was in #6.

This may be interesting tho:
`webPageUrlPending#d41a5167 url:string = WebPage;`

### android.tl
From #6 too.
Explaination form Daniil:

> TL scheme used internally only by the android app
> it's a scheme used to translate secret chat messages to constructors of type Message
> but the API doesn't use it
> with that scheme, they are of type Message
> they are converted internally and handled like normal Messages

### botfileid.tl
These are from Madeline's `TL_botAPI.tl`

From [here](https://vk.com/topic-55882680_31509731?post=10641)
> Daniil:
> These are used to generate persistent\_file\_ids, then they're RLE
> compressed with NULL byte, and then are URL base64 encoded
>
> drinkless: (not Lyablin lol)
> This scheme is far from being full on the one hand, and is absolutely
> useless for "clients" on the other. It can be used for converting
> requests to TDLib into requests to MTProto, but TDLib can do much more
> with that persistent\_file\_id, and is much easier to use.

### calls.tl
From danog's TL\_calls.tl

### end-to-end.tl
Latest end-to-end aka secret chat schema
Thx Mike and danog
