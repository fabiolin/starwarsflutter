class Film {
  final String id;
  final String director;
  final String producer;
  final String openingCrawl;
  final String episodeId;
  final String releaseDate;
  final String title;
  final String url;

  Film(
      {this.id,
      this.director,
      this.producer,
      this.openingCrawl,
      this.episodeId,
      this.releaseDate,
      this.title,
      this.url});

  factory Film.fromJson(Map<String, dynamic> json) {
    return Film(
        id: json['id'] as String,
        director: json['director'] as String,
        producer: json['producer'] as String,
        openingCrawl: json['opening_crawl'] as String,
        episodeId: json['episode_id'] as String,
        releaseDate: json['release_date'] as String,
        title: json['title'] as String,
        url: json['url'] as String);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'director': director,
      'producer': producer,
      'opening_crawl': openingCrawl,
      'episode_id': episodeId,
      'release_date': releaseDate,
      'title': title,
      'url': url
    };
  }
}

class FilmsList {
  final List<Film> filmsList;

  FilmsList({
    this.filmsList,
  });

  factory FilmsList.fromJson(List<dynamic> parsedJson) {
    return new FilmsList(
        filmsList: parsedJson.map((i) => Film.fromJson(i)).toList());
  }
}
