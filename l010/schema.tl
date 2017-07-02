---types---
storage.filePdf#ae1e508d = storage.FileType;
inputMessagesFilterAudio#cfc87522 = MessagesFilter;
inputMessagesFilterDocument#9eddf188 = MessagesFilter;
inputMessagesFilterPhotoVideoDocuments#d95e73bb = MessagesFilter;
updateChatParticipantAdd#3a0eeb22 chat_id:int user_id:int inviter_id:int version:int = Update;
updateChatParticipantDelete#6e5f8c22 chat_id:int user_id:int version:int = Update;
updateDcOptions#8e5e9873 dc_options:Vector<DcOption> = Update;
inputMediaUploadedAudio#61a6d436 file:InputFile duration:int = InputMedia;
inputMediaAudio#89938781 id:InputAudio = InputMedia;
inputMediaUploadedDocument#34e794bd file:InputFile file_name:string mime_type:string = InputMedia;
inputMediaUploadedThumbDocument#3e46de5d file:InputFile thumb:InputFile file_name:string mime_type:string = InputMedia;
inputMediaDocument#d184e841 id:InputDocument = InputMedia;
messageMediaDocument#2fda2204 document:Document = MessageMedia;
messageMediaAudio#c6b68300 audio:Audio = MessageMedia;
inputAudioEmpty#d95adc84 = InputAudio;
inputAudio#77d440ff id:long access_hash:long = InputAudio;
inputDocumentEmpty#72f0eaae = InputDocument;
inputDocument#18798952 id:long access_hash:long = InputDocument;
inputAudioFileLocation#74dc404d id:long access_hash:long = InputFileLocation;
inputDocumentFileLocation#4e45abe9 id:long access_hash:long = InputFileLocation;
audioEmpty#586988d8 id:long = Audio;
audio#427425e7 id:long access_hash:long user_id:int date:int duration:int size:int dc_id:int = Audio;
documentEmpty#36f8c871 id:long = Document;
document#9efc6326 id:long access_hash:long user_id:int date:int file_name:string mime_type:string size:int thumb:PhotoSize dc_id:int = Document;
---functions---
invokeWithLayer10#39620c41 query:!X = X;
