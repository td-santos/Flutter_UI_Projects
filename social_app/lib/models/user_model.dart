class UserModel{

  String userFirstName;
  String userLastName;
  String urlPhoto;

  UserModel({this.userFirstName, this.userLastName,this.urlPhoto});

  listUser(){
    List<UserModel> getListUser =[];
    getListUser.add(UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'));
    getListUser.add(UserModel(userFirstName:'Andressa',userLastName:'Costa',urlPhoto:'https://i.pinimg.com/originals/9c/1f/42/9c1f425a3745f63bd0bbb48f160ebf7a.jpg'));
    getListUser.add(UserModel(userFirstName:'Rogerio',userLastName:'Almeida',urlPhoto:'https://www.bnl.gov/today/body_pics/2017/06/stephanhruszkewycz-hr.jpg'));

    getListUser.add(UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'));
    getListUser.add(UserModel(userFirstName:'Andressa',userLastName:'Costa',urlPhoto:'https://i.pinimg.com/originals/9c/1f/42/9c1f425a3745f63bd0bbb48f160ebf7a.jpg'));
    getListUser.add(UserModel(userFirstName:'Rogerio',userLastName:'Almeida',urlPhoto:'https://www.bnl.gov/today/body_pics/2017/06/stephanhruszkewycz-hr.jpg'));

    getListUser.add(UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'));
    getListUser.add(UserModel(userFirstName:'Andressa',userLastName:'Costa',urlPhoto:'https://i.pinimg.com/originals/9c/1f/42/9c1f425a3745f63bd0bbb48f160ebf7a.jpg'));
    getListUser.add(UserModel(userFirstName:'Rogerio',userLastName:'Almeida',urlPhoto:'https://www.bnl.gov/today/body_pics/2017/06/stephanhruszkewycz-hr.jpg'));

    getListUser.add(UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'));
    getListUser.add(UserModel(userFirstName:'Andressa',userLastName:'Costa',urlPhoto:'https://i.pinimg.com/originals/9c/1f/42/9c1f425a3745f63bd0bbb48f160ebf7a.jpg'));
    getListUser.add(UserModel(userFirstName:'Rogerio',userLastName:'Almeida',urlPhoto:'https://www.bnl.gov/today/body_pics/2017/06/stephanhruszkewycz-hr.jpg'));

    getListUser.add(UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'));
    getListUser.add(UserModel(userFirstName:'Andressa',userLastName:'Costa',urlPhoto:'https://i.pinimg.com/originals/9c/1f/42/9c1f425a3745f63bd0bbb48f160ebf7a.jpg'));
    getListUser.add(UserModel(userFirstName:'Rogerio',userLastName:'Almeida',urlPhoto:'https://www.bnl.gov/today/body_pics/2017/06/stephanhruszkewycz-hr.jpg'));

    return getListUser;
  }

}