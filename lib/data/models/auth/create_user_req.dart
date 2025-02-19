class CreateUserReq {
  final String name;  
  final String email;
  final String password;

  CreateUserReq({required this.email, required this.password, required this.name});
}