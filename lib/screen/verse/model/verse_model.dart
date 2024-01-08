class SlugModel {
  final int id, verse_number, chapter_number;
  final String slug, text, transliteration, word_meanings;

  List<TranslationsModel> translations = [];
  List<CommentariesModel> commentaries = [];

  SlugModel({required this.id,
    required this.verse_number,
    required this.chapter_number,
    required this.slug,
    required this.text,
    required this.transliteration,
    required this.word_meanings,
    required this.translations,
    required this.commentaries,});

  factory SlugModel.mapToModel(Map m1){
    List translations = m1['translations'];
    List commentaries = m1['commentaries'];

    return SlugModel(id: m1['id'],
        verse_number: m1['verse_number'],
        chapter_number: m1['chapter_number'],
        slug: m1['slug'],
        text: m1['text'],
        transliteration: m1['transliteration'],
        word_meanings: m1['word_meanings'],
        translations:translations.map((e) => TranslationsModel.mapToModel(e)).toList(),
        commentaries:commentaries.map((e) => CommentariesModel.mapToModel(e)).toList(), );
  }
}

class TranslationsModel {
  final int id;
  final String description, author_name, language;

  TranslationsModel({required this.id,
    required this.description,
    required this.author_name,
    required this.language});

  factory TranslationsModel.mapToModel(Map m1) {
    return TranslationsModel(
        id: m1['id'],
        description: m1['description'],
        author_name: m1['author_name'],
        language: m1['language']);
  }
}
class CommentariesModel {
  final int id;
  final String description, author_name, language;

  CommentariesModel({required this.id,
    required this.description,
    required this.author_name,
    required this.language});

  factory CommentariesModel.mapToModel(Map m1) {
    return CommentariesModel(
        id: m1['id'],
        description: m1['description'],
        author_name: m1['author_name'],
        language: m1['language']);
  }
}
