class PlayListModel{

  String playListName;
  String songCapa;
  String urlImage;
  bool added;

  PlayListModel(this.playListName,this.songCapa,this.urlImage,this.added);
}

var listaPlaylist =[

  PlayListModel(
    "mais curtidas", 
    "love on the brain", 
    "assets/capa_4.jpg", 
    false
  ),

  
  PlayListModel(
    "Rap songs", 
    "Toosie Slide", 
    "assets/capa_6.jpg", 
    true
  ),
  PlayListModel(
    "melhores da semana", 
    "like it doesn't hurt", 
    "assets/capa_5.jpg", 
    false
  ),
  PlayListModel(
    "recomendadas", 
    "love on the brain", 
    "assets/capa_3.jpeg", 
    true
  ),
  
  
  PlayListModel(
    "old school", 
    "the kids aren't Alright", 
    "assets/capa_1.jpeg", 
    false
  ),
  PlayListModel(
    "folk musics", 
    "Slavic Lands", 
    "assets/capa_7.jpg", 
    false
  ),
];