---types---
inputFileBig#fa4f0bb5 id:long parts:int name:string = InputFile;
inputEncryptedFileBigUploaded#2dc173c8 id:long parts:int key_fingerprint:int = InputEncryptedFile;
---functions---
upload.saveBigFilePart#de7b673d file_id:long file_part:int file_total_parts:int bytes:bytes = Bool;
initConnection#69796de9 api_id:int device_model:string system_version:string app_version:string lang_code:string query:!X = X;
invokeWithLayer9#76715a63 query:!X = X;
