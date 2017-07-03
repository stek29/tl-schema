---types---
invoiceAmount#9ea74300 label:string amount:int = InvoiceAmount;
invoice#39d7e2cc flags:# test:flags.0?true name_requested:flags.1?true phone_requested:flags.2?true email_requested:flags.3?true shipping_address_requested:flags.4?true currency:string amounts:Vector<InvoiceAmount> = Invoice;
inputMediaInvoice#52411b invoice:Invoice payload:bytes = InputMedia;
paymentChargeStripe#b861498 id:string stripe_charge_id:string = PaymentCharge;
messageActionPaymentSentMe#2c39bfa9 flags:# currency:string total_amount:int payload:bytes add_info:PaymentRequestedInfo charge:PaymentCharge = MessageAction;
messageMediaInvoice#54293561 currency:string total_amount:int = MessageMedia;
keyboardButtonBuy#afd93fbb text:string = KeyboardButton;
messageActionPaymentSent#eacd8c80 currency:string total_amount:int = MessageAction;
messageActionPaymentReceipt#a54bf5cd = MessageAction;
paymentProviderStripe#38a9a3ec = PaymentProvider;
payments.paymentForm#38253273 bot_id:int url:string invoice:Invoice provider:PaymentProvider users:Vector<User> = payments.PaymentForm;
paymentCredentialsToken#8970d135 token:string token_type:string = PaymentCredentials;
postAddress#1e8caaeb street_line1:string street_line2:string city:string state:string country_iso2:string post_code:string = PostAddress;
paymentRequestedInfo#909c3f94 flags:# name:flags.0?string phone:flags.1?string email:flags.2?string shipping_address:flags.3?PostAddress = PaymentRequestedInfo;
---functions---
payments.getPaymentForm#99f09745 msg_id:int = payments.PaymentForm;
payments.sendPaymentForm#2922d956 msg_id:int credentials:PaymentCredentials info:PaymentRequestedInfo = Updates;
payments.confirmBuy#3709fb95 msg_id:int currency:string total_amount:int = Updates;
