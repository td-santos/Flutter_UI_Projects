import 'package:social_app/models/Comments_model.dart';
import 'package:social_app/models/user_model.dart';

class PostModel{

  String imagePost;
  UserModel userModel;
  bool liked;
  List<CommentsModel> listComments ;

  PostModel(this.imagePost,this.userModel,this.liked, this.listComments);

}

var listPost = [

  PostModel(
    'https://photos8.com/wp-content/uploads/2019/11/Love-Hands-Heart-Copyright-by-Sam-Mugraby.jpg', 
    UserModel(userFirstName:'Andressa',userLastName:'Costa',urlPhoto:'https://i.pinimg.com/originals/9c/1f/42/9c1f425a3745f63bd0bbb48f160ebf7a.jpg'), 
    true,
    [
      CommentsModel(UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'), 'Ótima Foto !!!!!!'),
      CommentsModel(UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'), 'fesdfsdfafasd fasdfafdfsfsfsfsfsfs fsfsfsfsfsfsfsf sfsfsff'),
      CommentsModel(UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'), 'Ótima Foto !!!!!!'),
    ]
    ),

  PostModel(
    'https://images.unsplash.com/photo-1519834785169-98be25ec3f84?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1000&q=80',
     UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'), 
     false,
     [
       CommentsModel(UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'), 'Ótima Foto !!!!!!'),
       CommentsModel(UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'), 'Ótima Foto !!!!!!'),
       CommentsModel(UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'), 'Ótima Foto !!!!!!'),
       CommentsModel(UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'), 'Ótima Foto !!!!!!'),
     ]
     ),

  PostModel(
    'https://images.squarespace-cdn.com/content/v1/5ab40dd745776e23408d7314/1577939402755-Y4GZDQ0QPAX2UTGJ6NT1/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/Desert-Elopement-Arizona-KaliMPhotos+%28297+of+382%29.jpg?format=2500w',
     UserModel(userFirstName:'Rogerio',userLastName:'Almeida',urlPhoto:'https://www.bnl.gov/today/body_pics/2017/06/stephanhruszkewycz-hr.jpg'), 
     true,
     [CommentsModel(UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'), 'Ótima Foto !!!!!!')]
     ),


    PostModel(
    'https://photos8.com/wp-content/uploads/2019/11/Love-Hands-Heart-Copyright-by-Sam-Mugraby.jpg', 
    UserModel(userFirstName:'Andressa',userLastName:'Costa',urlPhoto:'https://i.pinimg.com/originals/9c/1f/42/9c1f425a3745f63bd0bbb48f160ebf7a.jpg'), 
    true,
    [CommentsModel(UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'), 'Ótima Foto !!!!!!')]
    ),

  PostModel(
    'https://images.unsplash.com/photo-1519834785169-98be25ec3f84?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1000&q=80',
     UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'), 
     false,
     [CommentsModel(UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'), 'Ótima Foto !!!!!!')]
     ),

  PostModel(
    'https://images.squarespace-cdn.com/content/v1/5ab40dd745776e23408d7314/1577939402755-Y4GZDQ0QPAX2UTGJ6NT1/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/Desert-Elopement-Arizona-KaliMPhotos+%28297+of+382%29.jpg?format=2500w',
     UserModel(userFirstName:'Rogerio',userLastName:'Almeida',urlPhoto:'https://www.bnl.gov/today/body_pics/2017/06/stephanhruszkewycz-hr.jpg'), 
     true,
     [CommentsModel(UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'), 'Ótima Foto !!!!!!')]
     ),

     PostModel(
    'https://images.squarespace-cdn.com/content/v1/5ab40dd745776e23408d7314/1577939402755-Y4GZDQ0QPAX2UTGJ6NT1/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/Desert-Elopement-Arizona-KaliMPhotos+%28297+of+382%29.jpg?format=2500w',
     UserModel(userFirstName:'Rogerio',userLastName:'Almeida',urlPhoto:'https://www.bnl.gov/today/body_pics/2017/06/stephanhruszkewycz-hr.jpg'), 
     true,
     [CommentsModel(UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'), 'Ótima Foto !!!!!!')]
     ),

     PostModel(
    'https://images.squarespace-cdn.com/content/v1/5ab40dd745776e23408d7314/1577939402755-Y4GZDQ0QPAX2UTGJ6NT1/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/Desert-Elopement-Arizona-KaliMPhotos+%28297+of+382%29.jpg?format=2500w',
     UserModel(userFirstName:'Rogerio',userLastName:'Almeida',urlPhoto:'https://www.bnl.gov/today/body_pics/2017/06/stephanhruszkewycz-hr.jpg'), 
     true,
     [CommentsModel(UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'), 'Ótima Foto !!!!!!')]
     ),

     PostModel(
    'https://images.squarespace-cdn.com/content/v1/5ab40dd745776e23408d7314/1577939402755-Y4GZDQ0QPAX2UTGJ6NT1/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/Desert-Elopement-Arizona-KaliMPhotos+%28297+of+382%29.jpg?format=2500w',
     UserModel(userFirstName:'Rogerio',userLastName:'Almeida',urlPhoto:'https://www.bnl.gov/today/body_pics/2017/06/stephanhruszkewycz-hr.jpg'), 
     true,
     [CommentsModel(UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'), 'Ótima Foto !!!!!!')]
     ),

     PostModel(
    'https://images.squarespace-cdn.com/content/v1/5ab40dd745776e23408d7314/1577939402755-Y4GZDQ0QPAX2UTGJ6NT1/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/Desert-Elopement-Arizona-KaliMPhotos+%28297+of+382%29.jpg?format=2500w',
     UserModel(userFirstName:'Rogerio',userLastName:'Almeida',urlPhoto:'https://www.bnl.gov/today/body_pics/2017/06/stephanhruszkewycz-hr.jpg'), 
     true,
     [CommentsModel(UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'), 'Ótima Foto !!!!!!')]
     ),

     PostModel(
    'https://images.squarespace-cdn.com/content/v1/5ab40dd745776e23408d7314/1577939402755-Y4GZDQ0QPAX2UTGJ6NT1/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/Desert-Elopement-Arizona-KaliMPhotos+%28297+of+382%29.jpg?format=2500w',
     UserModel(userFirstName:'Rogerio',userLastName:'Almeida',urlPhoto:'https://www.bnl.gov/today/body_pics/2017/06/stephanhruszkewycz-hr.jpg'), 
     true,
     [CommentsModel(UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'), 'Ótima Foto !!!!!!')]
     ),

     PostModel(
    'https://images.squarespace-cdn.com/content/v1/5ab40dd745776e23408d7314/1577939402755-Y4GZDQ0QPAX2UTGJ6NT1/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/Desert-Elopement-Arizona-KaliMPhotos+%28297+of+382%29.jpg?format=2500w',
     UserModel(userFirstName:'Rogerio',userLastName:'Almeida',urlPhoto:'https://www.bnl.gov/today/body_pics/2017/06/stephanhruszkewycz-hr.jpg'), 
     true,
     [CommentsModel(UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'), 'Ótima Foto !!!!!!')]
     ),

     PostModel(
    'https://images.squarespace-cdn.com/content/v1/5ab40dd745776e23408d7314/1577939402755-Y4GZDQ0QPAX2UTGJ6NT1/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/Desert-Elopement-Arizona-KaliMPhotos+%28297+of+382%29.jpg?format=2500w',
     UserModel(userFirstName:'Rogerio',userLastName:'Almeida',urlPhoto:'https://www.bnl.gov/today/body_pics/2017/06/stephanhruszkewycz-hr.jpg'), 
     true,
     [CommentsModel(UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'), 'Ótima Foto !!!!!!')]
     ),

     PostModel(
    'https://images.squarespace-cdn.com/content/v1/5ab40dd745776e23408d7314/1577939402755-Y4GZDQ0QPAX2UTGJ6NT1/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/Desert-Elopement-Arizona-KaliMPhotos+%28297+of+382%29.jpg?format=2500w',
     UserModel(userFirstName:'Rogerio',userLastName:'Almeida',urlPhoto:'https://www.bnl.gov/today/body_pics/2017/06/stephanhruszkewycz-hr.jpg'), 
     true,
     [CommentsModel(UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'), 'Ótima Foto !!!!!!')]
     ),

     PostModel(
    'https://images.squarespace-cdn.com/content/v1/5ab40dd745776e23408d7314/1577939402755-Y4GZDQ0QPAX2UTGJ6NT1/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/Desert-Elopement-Arizona-KaliMPhotos+%28297+of+382%29.jpg?format=2500w',
     UserModel(userFirstName:'Rogerio',userLastName:'Almeida',urlPhoto:'https://www.bnl.gov/today/body_pics/2017/06/stephanhruszkewycz-hr.jpg'), 
     true,
     [CommentsModel(UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'), 'Ótima Foto !!!!!!')]
     ),

     PostModel(
    'https://images.squarespace-cdn.com/content/v1/5ab40dd745776e23408d7314/1577939402755-Y4GZDQ0QPAX2UTGJ6NT1/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/Desert-Elopement-Arizona-KaliMPhotos+%28297+of+382%29.jpg?format=2500w',
     UserModel(userFirstName:'Rogerio',userLastName:'Almeida',urlPhoto:'https://www.bnl.gov/today/body_pics/2017/06/stephanhruszkewycz-hr.jpg'), 
     true,
     [CommentsModel(UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'), 'Ótima Foto !!!!!!')]
     ),

     PostModel(
    'https://images.squarespace-cdn.com/content/v1/5ab40dd745776e23408d7314/1577939402755-Y4GZDQ0QPAX2UTGJ6NT1/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/Desert-Elopement-Arizona-KaliMPhotos+%28297+of+382%29.jpg?format=2500w',
     UserModel(userFirstName:'Rogerio',userLastName:'Almeida',urlPhoto:'https://www.bnl.gov/today/body_pics/2017/06/stephanhruszkewycz-hr.jpg'), 
     true,
     [CommentsModel(UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'), 'Ótima Foto !!!!!!')]
     ),

     PostModel(
    'https://images.squarespace-cdn.com/content/v1/5ab40dd745776e23408d7314/1577939402755-Y4GZDQ0QPAX2UTGJ6NT1/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/Desert-Elopement-Arizona-KaliMPhotos+%28297+of+382%29.jpg?format=2500w',
     UserModel(userFirstName:'Rogerio',userLastName:'Almeida',urlPhoto:'https://www.bnl.gov/today/body_pics/2017/06/stephanhruszkewycz-hr.jpg'), 
     true,
     [CommentsModel(UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'), 'Ótima Foto !!!!!!')]
     ),

     PostModel(
    'https://images.squarespace-cdn.com/content/v1/5ab40dd745776e23408d7314/1577939402755-Y4GZDQ0QPAX2UTGJ6NT1/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/Desert-Elopement-Arizona-KaliMPhotos+%28297+of+382%29.jpg?format=2500w',
     UserModel(userFirstName:'Rogerio',userLastName:'Almeida',urlPhoto:'https://www.bnl.gov/today/body_pics/2017/06/stephanhruszkewycz-hr.jpg'), 
     true,
     [CommentsModel(UserModel(userFirstName:'Evandro',userLastName:'Lins',urlPhoto:'https://i.imgur.com/yW0v5EP.jpg'), 'Ótima Foto !!!!!!')]
     ),
];