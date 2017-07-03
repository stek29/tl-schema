---types---
// messages.allStickers#d51dafdb hash:string sets:Vector<StickerSet> = messages.AllStickers;
inputReportReasonSpam#58dbcab8 = ReportReason;
inputReportReasonViolence#1e22c78d = ReportReason;
inputReportReasonPornography#2e59d922 = ReportReason;
inputReportReasonOther#e1746d0a text:string = ReportReason;
updateNewStickerSet#688a30aa stickerset:messages.StickerSet = Update;
updateStickerSetsOrder#f0dfb451 order:Vector<long> = Update;
updateStickerSets#43ae3dec = Update;
messages.allStickers#edfd405f hash:int sets:Vector<StickerSet> = messages.AllStickers;
help.termsOfService#f1ee3e90 text:string = help.TermsOfService;
---functions---
// messages.getAllStickers#aa3bc868 hash:string = messages.AllStickers;
account.reportPeer#ae189d5f peer:InputPeer reason:ReportReason = Bool;
messages.getAllStickers#1c9618b1 hash:int = messages.AllStickers;
messages.reorderStickerSets#9fcfbc30 order:Vector<long> = Bool;
help.getTermsOfService#37d78f83 lang_code:string = help.TermsOfService;
