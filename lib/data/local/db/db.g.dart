// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// ignore_for_file: type=lint
class $PostsCommentsTable extends PostsComments
    with TableInfo<$PostsCommentsTable, PostsComment> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PostsCommentsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _postIdMeta = const VerificationMeta('postId');
  @override
  late final GeneratedColumn<int> postId = GeneratedColumn<int>(
      'post_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _commentsMeta =
      const VerificationMeta('comments');
  @override
  late final GeneratedColumnWithTypeConverter<Comments, String> comments =
      GeneratedColumn<String>('comments', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<Comments>($PostsCommentsTable.$convertercomments);
  @override
  List<GeneratedColumn> get $columns => [id, postId, comments];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'posts_comments';
  @override
  VerificationContext validateIntegrity(Insertable<PostsComment> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('post_id')) {
      context.handle(_postIdMeta,
          postId.isAcceptableOrUnknown(data['post_id']!, _postIdMeta));
    } else if (isInserting) {
      context.missing(_postIdMeta);
    }
    context.handle(_commentsMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PostsComment map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PostsComment(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      postId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}post_id'])!,
      comments: $PostsCommentsTable.$convertercomments.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}comments'])!),
    );
  }

  @override
  $PostsCommentsTable createAlias(String alias) {
    return $PostsCommentsTable(attachedDatabase, alias);
  }

  static TypeConverter<Comments, String> $convertercomments =
      const CommentsCoverter();
}

class PostsComment extends DataClass implements Insertable<PostsComment> {
  final int id;
  final int postId;
  final Comments comments;
  const PostsComment(
      {required this.id, required this.postId, required this.comments});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['post_id'] = Variable<int>(postId);
    {
      map['comments'] = Variable<String>(
          $PostsCommentsTable.$convertercomments.toSql(comments));
    }
    return map;
  }

  PostsCommentsCompanion toCompanion(bool nullToAbsent) {
    return PostsCommentsCompanion(
      id: Value(id),
      postId: Value(postId),
      comments: Value(comments),
    );
  }

  factory PostsComment.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PostsComment(
      id: serializer.fromJson<int>(json['id']),
      postId: serializer.fromJson<int>(json['postId']),
      comments: serializer.fromJson<Comments>(json['comments']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'postId': serializer.toJson<int>(postId),
      'comments': serializer.toJson<Comments>(comments),
    };
  }

  PostsComment copyWith({int? id, int? postId, Comments? comments}) =>
      PostsComment(
        id: id ?? this.id,
        postId: postId ?? this.postId,
        comments: comments ?? this.comments,
      );
  @override
  String toString() {
    return (StringBuffer('PostsComment(')
          ..write('id: $id, ')
          ..write('postId: $postId, ')
          ..write('comments: $comments')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, postId, comments);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PostsComment &&
          other.id == this.id &&
          other.postId == this.postId &&
          other.comments == this.comments);
}

class PostsCommentsCompanion extends UpdateCompanion<PostsComment> {
  final Value<int> id;
  final Value<int> postId;
  final Value<Comments> comments;
  const PostsCommentsCompanion({
    this.id = const Value.absent(),
    this.postId = const Value.absent(),
    this.comments = const Value.absent(),
  });
  PostsCommentsCompanion.insert({
    this.id = const Value.absent(),
    required int postId,
    required Comments comments,
  })  : postId = Value(postId),
        comments = Value(comments);
  static Insertable<PostsComment> custom({
    Expression<int>? id,
    Expression<int>? postId,
    Expression<String>? comments,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (postId != null) 'post_id': postId,
      if (comments != null) 'comments': comments,
    });
  }

  PostsCommentsCompanion copyWith(
      {Value<int>? id, Value<int>? postId, Value<Comments>? comments}) {
    return PostsCommentsCompanion(
      id: id ?? this.id,
      postId: postId ?? this.postId,
      comments: comments ?? this.comments,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (postId.present) {
      map['post_id'] = Variable<int>(postId.value);
    }
    if (comments.present) {
      map['comments'] = Variable<String>(
          $PostsCommentsTable.$convertercomments.toSql(comments.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PostsCommentsCompanion(')
          ..write('id: $id, ')
          ..write('postId: $postId, ')
          ..write('comments: $comments')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  _$AppDatabaseManager get managers => _$AppDatabaseManager(this);
  late final $PostsCommentsTable postsComments = $PostsCommentsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [postsComments];
}

typedef $$PostsCommentsTableInsertCompanionBuilder = PostsCommentsCompanion
    Function({
  Value<int> id,
  required int postId,
  required Comments comments,
});
typedef $$PostsCommentsTableUpdateCompanionBuilder = PostsCommentsCompanion
    Function({
  Value<int> id,
  Value<int> postId,
  Value<Comments> comments,
});

class $$PostsCommentsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PostsCommentsTable,
    PostsComment,
    $$PostsCommentsTableFilterComposer,
    $$PostsCommentsTableOrderingComposer,
    $$PostsCommentsTableProcessedTableManager,
    $$PostsCommentsTableInsertCompanionBuilder,
    $$PostsCommentsTableUpdateCompanionBuilder> {
  $$PostsCommentsTableTableManager(_$AppDatabase db, $PostsCommentsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$PostsCommentsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$PostsCommentsTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$PostsCommentsTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<int> postId = const Value.absent(),
            Value<Comments> comments = const Value.absent(),
          }) =>
              PostsCommentsCompanion(
            id: id,
            postId: postId,
            comments: comments,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required int postId,
            required Comments comments,
          }) =>
              PostsCommentsCompanion.insert(
            id: id,
            postId: postId,
            comments: comments,
          ),
        ));
}

class $$PostsCommentsTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $PostsCommentsTable,
    PostsComment,
    $$PostsCommentsTableFilterComposer,
    $$PostsCommentsTableOrderingComposer,
    $$PostsCommentsTableProcessedTableManager,
    $$PostsCommentsTableInsertCompanionBuilder,
    $$PostsCommentsTableUpdateCompanionBuilder> {
  $$PostsCommentsTableProcessedTableManager(super.$state);
}

class $$PostsCommentsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $PostsCommentsTable> {
  $$PostsCommentsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get postId => $state.composableBuilder(
      column: $state.table.postId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<Comments, Comments, String> get comments =>
      $state.composableBuilder(
          column: $state.table.comments,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));
}

class $$PostsCommentsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $PostsCommentsTable> {
  $$PostsCommentsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get postId => $state.composableBuilder(
      column: $state.table.postId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get comments => $state.composableBuilder(
      column: $state.table.comments,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class _$AppDatabaseManager {
  final _$AppDatabase _db;
  _$AppDatabaseManager(this._db);
  $$PostsCommentsTableTableManager get postsComments =>
      $$PostsCommentsTableTableManager(_db, _db.postsComments);
}
