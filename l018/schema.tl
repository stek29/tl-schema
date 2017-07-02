---types---
// userSelf#720535ec id:int first_name:string last_name:string phone:string photo:UserProfilePhoto status:UserStatus inactive:Bool = User;
userSelf#7007b451 id:int first_name:string last_name:string username:string phone:string photo:UserProfilePhoto status:UserStatus inactive:Bool = User;
// userContact#f2fb8319 id:int first_name:string last_name:string access_hash:long phone:string photo:UserProfilePhoto status:UserStatus = User;
userContact#cab35e18 id:int first_name:string last_name:string username:string access_hash:long phone:string photo:UserProfilePhoto status:UserStatus = User;
// userRequest#22e8ceb0 id:int first_name:string last_name:string access_hash:long phone:string photo:UserProfilePhoto status:UserStatus = User;
userRequest#d9ccc4ef id:int first_name:string last_name:string username:string access_hash:long phone:string photo:UserProfilePhoto status:UserStatus = User;
// userForeign#5214c89d id:int first_name:string last_name:string access_hash:long photo:UserProfilePhoto status:UserStatus = User;
userForeign#75cf7a8 id:int first_name:string last_name:string username:string access_hash:long photo:UserProfilePhoto status:UserStatus = User;
// userDeleted#b29ad7cc id:int first_name:string last_name:string = User;
userDeleted#d6016d7a id:int first_name:string last_name:string username:string = User;
// updateUserName#da22d9ad user_id:int first_name:string last_name:string = Update;
updateUserName#a7332b73 user_id:int first_name:string last_name:string username:string = Update;
updateServiceNotification#382dd3e4 type:string message:string media:MessageMedia popup:Bool = Update;
---functions---
account.checkUsername#2714d86c username:string = Bool;
account.updateUsername#3e0bdd7c username:string = User;
invokeWithLayer18#1c900537 query:!X = X;
