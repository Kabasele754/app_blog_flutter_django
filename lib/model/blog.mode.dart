class Blog {
  final int? id;
  final String? titre;
  final String? description;
  final String? image;
  // final int auteur;

  Blog({this.id, this.titre, this.description, this.image});

  factory Blog.fromJson(Map<String, dynamic> json) {
    return Blog(
      id: json['id'],
      titre: json['titre'],
      description: json['description'],
      image: json['image'],
      // auteur: json['auteur'],
    );
  }

  Map<String, dynamic> toJson() => {
        'titre': titre,
        'description': description,
        'image': image,
        // 'auteur': auteur,
      };

  static List<Blog> breakingNewsData = [
    Blog(
        id: 1,
        titre:
            "U.S. Gas Prices Fall Below \$4 a Gallon, AAA Says - The New York Times",
        description:
            "After peaking in June, they are back where they were in March, offering some relief to consumers and policymakers amid inflation worries.",
        image:
            "https://achille.pythonanywhere.com/media/images/image_picker_2D4DFE15-E5B8-4283-A16F-AACB324569AB-34128-00003EE7A1D99491_O0RM2El.jpg"),
    Blog(
        id: 2,
        titre: "BYD Is Taking Electric Vehicles To The World!",
        description:
            "There was quite a bit of drama on several forums following reports in various media platforms around the world that BYD has overtaken Telsa to become the top-selling EV company. In fact, there was quite a bit of an uproar from some circles that felt that it w…",
        image:
            "https://achille.pythonanywhere.com/media/images/image_picker_2D4DFE15-E5B8-4283-A16F-AACB324569AB-34128-00003EE7A1D99491_O0RM2El.jpg"),
    Blog(
        id: 3,
        titre:
            "Unexpected storms diverted 100 American Airlines flights and sparked hundreds of cancellations",
        description:
            "Severe thunderstorms around Dallas-Fort Worth International Airport on Wednesday caused 100 American Airlines flight diversions and led to hundreds of cancellations that extended into Thursday's schedule.",
        image:
            "https://achille.pythonanywhere.com/media/images/image_picker_2D4DFE15-E5B8-4283-A16F-AACB324569AB-34128-00003EE7A1D99491_O0RM2El.jpg"),
  ];
}
