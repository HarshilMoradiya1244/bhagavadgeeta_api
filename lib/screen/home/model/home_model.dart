class ChapterModel {
  final int id,verses_count, chapter_number;
  final String name, slug, name_transliterated, name_translated,  name_meaning, chapter_summary, chapter_summary_hindi;

  ChapterModel( {
    required this.id,
    required this.name,
    required this.slug,
    required this.name_transliterated,
    required this.name_translated,
    required this.verses_count,
    required this.chapter_number,
    required this.name_meaning,
    required this.chapter_summary,
    required this.chapter_summary_hindi,
  });

  factory ChapterModel.mapToModel(Map m1) {
    return ChapterModel(
         id: m1['id'],
        name: m1['name'],
        slug: m1['slug'],
        name_transliterated: m1['name_transliterated'],
        name_translated: m1['name_translated'],
        verses_count: m1['verses_count'],
        chapter_number: m1['chapter_number'],
        name_meaning: m1['name_meaning'],
        chapter_summary: m1['chapter_summary'],
        chapter_summary_hindi: m1['chapter_summary_hindi']);
  }
}
