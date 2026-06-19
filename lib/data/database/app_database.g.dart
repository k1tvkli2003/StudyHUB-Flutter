// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $PdfsTable extends Pdfs with TableInfo<$PdfsTable, Pdf> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PdfsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pageCountMeta = const VerificationMeta(
    'pageCount',
  );
  @override
  late final GeneratedColumn<int> pageCount = GeneratedColumn<int>(
    'pageCount',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _processingStatusMeta = const VerificationMeta(
    'processingStatus',
  );
  @override
  late final GeneratedColumn<String> processingStatus = GeneratedColumn<String>(
    'processingStatus',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _subjectsMeta = const VerificationMeta(
    'subjects',
  );
  @override
  late final GeneratedColumn<String> subjects = GeneratedColumn<String>(
    'subjects',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _difficultyLevelMeta = const VerificationMeta(
    'difficultyLevel',
  );
  @override
  late final GeneratedColumn<String> difficultyLevel = GeneratedColumn<String>(
    'difficultyLevel',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _contentFormatMeta = const VerificationMeta(
    'contentFormat',
  );
  @override
  late final GeneratedColumn<String> contentFormat = GeneratedColumn<String>(
    'contentFormat',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _progressionMeta = const VerificationMeta(
    'progression',
  );
  @override
  late final GeneratedColumn<int> progression = GeneratedColumn<int>(
    'progression',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _outlineMeta = const VerificationMeta(
    'outline',
  );
  @override
  late final GeneratedColumn<String> outline = GeneratedColumn<String>(
    'outline',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
    'createdAt',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastOpenedAtMeta = const VerificationMeta(
    'lastOpenedAt',
  );
  @override
  late final GeneratedColumn<int> lastOpenedAt = GeneratedColumn<int>(
    'lastOpenedAt',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _coverColorMeta = const VerificationMeta(
    'coverColor',
  );
  @override
  late final GeneratedColumn<String> coverColor = GeneratedColumn<String>(
    'coverColor',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _targetDaysMeta = const VerificationMeta(
    'targetDays',
  );
  @override
  late final GeneratedColumn<int> targetDays = GeneratedColumn<int>(
    'targetDays',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _thumbnailBase64Meta = const VerificationMeta(
    'thumbnailBase64',
  );
  @override
  late final GeneratedColumn<String> thumbnailBase64 = GeneratedColumn<String>(
    'thumbnailBase64',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _localFileNameMeta = const VerificationMeta(
    'localFileName',
  );
  @override
  late final GeneratedColumn<String> localFileName = GeneratedColumn<String>(
    'localFileName',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _thumbnailPathMeta = const VerificationMeta(
    'thumbnailPath',
  );
  @override
  late final GeneratedColumn<String> thumbnailPath = GeneratedColumn<String>(
    'thumbnailPath',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _remoteIdMeta = const VerificationMeta(
    'remoteId',
  );
  @override
  late final GeneratedColumn<String> remoteId = GeneratedColumn<String>(
    'remoteId',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    pageCount,
    processingStatus,
    subjects,
    difficultyLevel,
    contentFormat,
    progression,
    outline,
    createdAt,
    lastOpenedAt,
    coverColor,
    targetDays,
    thumbnailBase64,
    localFileName,
    thumbnailPath,
    remoteId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pdfs';
  @override
  VerificationContext validateIntegrity(
    Insertable<Pdf> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('pageCount')) {
      context.handle(
        _pageCountMeta,
        pageCount.isAcceptableOrUnknown(data['pageCount']!, _pageCountMeta),
      );
    }
    if (data.containsKey('processingStatus')) {
      context.handle(
        _processingStatusMeta,
        processingStatus.isAcceptableOrUnknown(
          data['processingStatus']!,
          _processingStatusMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_processingStatusMeta);
    }
    if (data.containsKey('subjects')) {
      context.handle(
        _subjectsMeta,
        subjects.isAcceptableOrUnknown(data['subjects']!, _subjectsMeta),
      );
    }
    if (data.containsKey('difficultyLevel')) {
      context.handle(
        _difficultyLevelMeta,
        difficultyLevel.isAcceptableOrUnknown(
          data['difficultyLevel']!,
          _difficultyLevelMeta,
        ),
      );
    }
    if (data.containsKey('contentFormat')) {
      context.handle(
        _contentFormatMeta,
        contentFormat.isAcceptableOrUnknown(
          data['contentFormat']!,
          _contentFormatMeta,
        ),
      );
    }
    if (data.containsKey('progression')) {
      context.handle(
        _progressionMeta,
        progression.isAcceptableOrUnknown(
          data['progression']!,
          _progressionMeta,
        ),
      );
    }
    if (data.containsKey('outline')) {
      context.handle(
        _outlineMeta,
        outline.isAcceptableOrUnknown(data['outline']!, _outlineMeta),
      );
    }
    if (data.containsKey('createdAt')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('lastOpenedAt')) {
      context.handle(
        _lastOpenedAtMeta,
        lastOpenedAt.isAcceptableOrUnknown(
          data['lastOpenedAt']!,
          _lastOpenedAtMeta,
        ),
      );
    }
    if (data.containsKey('coverColor')) {
      context.handle(
        _coverColorMeta,
        coverColor.isAcceptableOrUnknown(data['coverColor']!, _coverColorMeta),
      );
    }
    if (data.containsKey('targetDays')) {
      context.handle(
        _targetDaysMeta,
        targetDays.isAcceptableOrUnknown(data['targetDays']!, _targetDaysMeta),
      );
    }
    if (data.containsKey('thumbnailBase64')) {
      context.handle(
        _thumbnailBase64Meta,
        thumbnailBase64.isAcceptableOrUnknown(
          data['thumbnailBase64']!,
          _thumbnailBase64Meta,
        ),
      );
    }
    if (data.containsKey('localFileName')) {
      context.handle(
        _localFileNameMeta,
        localFileName.isAcceptableOrUnknown(
          data['localFileName']!,
          _localFileNameMeta,
        ),
      );
    }
    if (data.containsKey('thumbnailPath')) {
      context.handle(
        _thumbnailPathMeta,
        thumbnailPath.isAcceptableOrUnknown(
          data['thumbnailPath']!,
          _thumbnailPathMeta,
        ),
      );
    }
    if (data.containsKey('remoteId')) {
      context.handle(
        _remoteIdMeta,
        remoteId.isAcceptableOrUnknown(data['remoteId']!, _remoteIdMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Pdf map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Pdf(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      pageCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pageCount'],
      ),
      processingStatus: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}processingStatus'],
      )!,
      subjects: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}subjects'],
      ),
      difficultyLevel: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}difficultyLevel'],
      ),
      contentFormat: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}contentFormat'],
      ),
      progression: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}progression'],
      )!,
      outline: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}outline'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}createdAt'],
      )!,
      lastOpenedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}lastOpenedAt'],
      ),
      coverColor: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}coverColor'],
      ),
      targetDays: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}targetDays'],
      ),
      thumbnailBase64: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}thumbnailBase64'],
      ),
      localFileName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}localFileName'],
      ),
      thumbnailPath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}thumbnailPath'],
      ),
      remoteId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}remoteId'],
      ),
    );
  }

  @override
  $PdfsTable createAlias(String alias) {
    return $PdfsTable(attachedDatabase, alias);
  }
}

class Pdf extends DataClass implements Insertable<Pdf> {
  final int id;
  final String title;
  final int? pageCount;
  final String processingStatus;
  final String? subjects;
  final String? difficultyLevel;
  final String? contentFormat;
  final int progression;
  final String? outline;
  final int createdAt;
  final int? lastOpenedAt;
  final String? coverColor;
  final int? targetDays;
  final String? thumbnailBase64;
  final String? localFileName;
  final String? thumbnailPath;
  final String? remoteId;
  const Pdf({
    required this.id,
    required this.title,
    this.pageCount,
    required this.processingStatus,
    this.subjects,
    this.difficultyLevel,
    this.contentFormat,
    required this.progression,
    this.outline,
    required this.createdAt,
    this.lastOpenedAt,
    this.coverColor,
    this.targetDays,
    this.thumbnailBase64,
    this.localFileName,
    this.thumbnailPath,
    this.remoteId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || pageCount != null) {
      map['pageCount'] = Variable<int>(pageCount);
    }
    map['processingStatus'] = Variable<String>(processingStatus);
    if (!nullToAbsent || subjects != null) {
      map['subjects'] = Variable<String>(subjects);
    }
    if (!nullToAbsent || difficultyLevel != null) {
      map['difficultyLevel'] = Variable<String>(difficultyLevel);
    }
    if (!nullToAbsent || contentFormat != null) {
      map['contentFormat'] = Variable<String>(contentFormat);
    }
    map['progression'] = Variable<int>(progression);
    if (!nullToAbsent || outline != null) {
      map['outline'] = Variable<String>(outline);
    }
    map['createdAt'] = Variable<int>(createdAt);
    if (!nullToAbsent || lastOpenedAt != null) {
      map['lastOpenedAt'] = Variable<int>(lastOpenedAt);
    }
    if (!nullToAbsent || coverColor != null) {
      map['coverColor'] = Variable<String>(coverColor);
    }
    if (!nullToAbsent || targetDays != null) {
      map['targetDays'] = Variable<int>(targetDays);
    }
    if (!nullToAbsent || thumbnailBase64 != null) {
      map['thumbnailBase64'] = Variable<String>(thumbnailBase64);
    }
    if (!nullToAbsent || localFileName != null) {
      map['localFileName'] = Variable<String>(localFileName);
    }
    if (!nullToAbsent || thumbnailPath != null) {
      map['thumbnailPath'] = Variable<String>(thumbnailPath);
    }
    if (!nullToAbsent || remoteId != null) {
      map['remoteId'] = Variable<String>(remoteId);
    }
    return map;
  }

  PdfsCompanion toCompanion(bool nullToAbsent) {
    return PdfsCompanion(
      id: Value(id),
      title: Value(title),
      pageCount: pageCount == null && nullToAbsent
          ? const Value.absent()
          : Value(pageCount),
      processingStatus: Value(processingStatus),
      subjects: subjects == null && nullToAbsent
          ? const Value.absent()
          : Value(subjects),
      difficultyLevel: difficultyLevel == null && nullToAbsent
          ? const Value.absent()
          : Value(difficultyLevel),
      contentFormat: contentFormat == null && nullToAbsent
          ? const Value.absent()
          : Value(contentFormat),
      progression: Value(progression),
      outline: outline == null && nullToAbsent
          ? const Value.absent()
          : Value(outline),
      createdAt: Value(createdAt),
      lastOpenedAt: lastOpenedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastOpenedAt),
      coverColor: coverColor == null && nullToAbsent
          ? const Value.absent()
          : Value(coverColor),
      targetDays: targetDays == null && nullToAbsent
          ? const Value.absent()
          : Value(targetDays),
      thumbnailBase64: thumbnailBase64 == null && nullToAbsent
          ? const Value.absent()
          : Value(thumbnailBase64),
      localFileName: localFileName == null && nullToAbsent
          ? const Value.absent()
          : Value(localFileName),
      thumbnailPath: thumbnailPath == null && nullToAbsent
          ? const Value.absent()
          : Value(thumbnailPath),
      remoteId: remoteId == null && nullToAbsent
          ? const Value.absent()
          : Value(remoteId),
    );
  }

  factory Pdf.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Pdf(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      pageCount: serializer.fromJson<int?>(json['pageCount']),
      processingStatus: serializer.fromJson<String>(json['processingStatus']),
      subjects: serializer.fromJson<String?>(json['subjects']),
      difficultyLevel: serializer.fromJson<String?>(json['difficultyLevel']),
      contentFormat: serializer.fromJson<String?>(json['contentFormat']),
      progression: serializer.fromJson<int>(json['progression']),
      outline: serializer.fromJson<String?>(json['outline']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
      lastOpenedAt: serializer.fromJson<int?>(json['lastOpenedAt']),
      coverColor: serializer.fromJson<String?>(json['coverColor']),
      targetDays: serializer.fromJson<int?>(json['targetDays']),
      thumbnailBase64: serializer.fromJson<String?>(json['thumbnailBase64']),
      localFileName: serializer.fromJson<String?>(json['localFileName']),
      thumbnailPath: serializer.fromJson<String?>(json['thumbnailPath']),
      remoteId: serializer.fromJson<String?>(json['remoteId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'pageCount': serializer.toJson<int?>(pageCount),
      'processingStatus': serializer.toJson<String>(processingStatus),
      'subjects': serializer.toJson<String?>(subjects),
      'difficultyLevel': serializer.toJson<String?>(difficultyLevel),
      'contentFormat': serializer.toJson<String?>(contentFormat),
      'progression': serializer.toJson<int>(progression),
      'outline': serializer.toJson<String?>(outline),
      'createdAt': serializer.toJson<int>(createdAt),
      'lastOpenedAt': serializer.toJson<int?>(lastOpenedAt),
      'coverColor': serializer.toJson<String?>(coverColor),
      'targetDays': serializer.toJson<int?>(targetDays),
      'thumbnailBase64': serializer.toJson<String?>(thumbnailBase64),
      'localFileName': serializer.toJson<String?>(localFileName),
      'thumbnailPath': serializer.toJson<String?>(thumbnailPath),
      'remoteId': serializer.toJson<String?>(remoteId),
    };
  }

  Pdf copyWith({
    int? id,
    String? title,
    Value<int?> pageCount = const Value.absent(),
    String? processingStatus,
    Value<String?> subjects = const Value.absent(),
    Value<String?> difficultyLevel = const Value.absent(),
    Value<String?> contentFormat = const Value.absent(),
    int? progression,
    Value<String?> outline = const Value.absent(),
    int? createdAt,
    Value<int?> lastOpenedAt = const Value.absent(),
    Value<String?> coverColor = const Value.absent(),
    Value<int?> targetDays = const Value.absent(),
    Value<String?> thumbnailBase64 = const Value.absent(),
    Value<String?> localFileName = const Value.absent(),
    Value<String?> thumbnailPath = const Value.absent(),
    Value<String?> remoteId = const Value.absent(),
  }) => Pdf(
    id: id ?? this.id,
    title: title ?? this.title,
    pageCount: pageCount.present ? pageCount.value : this.pageCount,
    processingStatus: processingStatus ?? this.processingStatus,
    subjects: subjects.present ? subjects.value : this.subjects,
    difficultyLevel: difficultyLevel.present
        ? difficultyLevel.value
        : this.difficultyLevel,
    contentFormat: contentFormat.present
        ? contentFormat.value
        : this.contentFormat,
    progression: progression ?? this.progression,
    outline: outline.present ? outline.value : this.outline,
    createdAt: createdAt ?? this.createdAt,
    lastOpenedAt: lastOpenedAt.present ? lastOpenedAt.value : this.lastOpenedAt,
    coverColor: coverColor.present ? coverColor.value : this.coverColor,
    targetDays: targetDays.present ? targetDays.value : this.targetDays,
    thumbnailBase64: thumbnailBase64.present
        ? thumbnailBase64.value
        : this.thumbnailBase64,
    localFileName: localFileName.present
        ? localFileName.value
        : this.localFileName,
    thumbnailPath: thumbnailPath.present
        ? thumbnailPath.value
        : this.thumbnailPath,
    remoteId: remoteId.present ? remoteId.value : this.remoteId,
  );
  Pdf copyWithCompanion(PdfsCompanion data) {
    return Pdf(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      pageCount: data.pageCount.present ? data.pageCount.value : this.pageCount,
      processingStatus: data.processingStatus.present
          ? data.processingStatus.value
          : this.processingStatus,
      subjects: data.subjects.present ? data.subjects.value : this.subjects,
      difficultyLevel: data.difficultyLevel.present
          ? data.difficultyLevel.value
          : this.difficultyLevel,
      contentFormat: data.contentFormat.present
          ? data.contentFormat.value
          : this.contentFormat,
      progression: data.progression.present
          ? data.progression.value
          : this.progression,
      outline: data.outline.present ? data.outline.value : this.outline,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      lastOpenedAt: data.lastOpenedAt.present
          ? data.lastOpenedAt.value
          : this.lastOpenedAt,
      coverColor: data.coverColor.present
          ? data.coverColor.value
          : this.coverColor,
      targetDays: data.targetDays.present
          ? data.targetDays.value
          : this.targetDays,
      thumbnailBase64: data.thumbnailBase64.present
          ? data.thumbnailBase64.value
          : this.thumbnailBase64,
      localFileName: data.localFileName.present
          ? data.localFileName.value
          : this.localFileName,
      thumbnailPath: data.thumbnailPath.present
          ? data.thumbnailPath.value
          : this.thumbnailPath,
      remoteId: data.remoteId.present ? data.remoteId.value : this.remoteId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Pdf(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('pageCount: $pageCount, ')
          ..write('processingStatus: $processingStatus, ')
          ..write('subjects: $subjects, ')
          ..write('difficultyLevel: $difficultyLevel, ')
          ..write('contentFormat: $contentFormat, ')
          ..write('progression: $progression, ')
          ..write('outline: $outline, ')
          ..write('createdAt: $createdAt, ')
          ..write('lastOpenedAt: $lastOpenedAt, ')
          ..write('coverColor: $coverColor, ')
          ..write('targetDays: $targetDays, ')
          ..write('thumbnailBase64: $thumbnailBase64, ')
          ..write('localFileName: $localFileName, ')
          ..write('thumbnailPath: $thumbnailPath, ')
          ..write('remoteId: $remoteId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    title,
    pageCount,
    processingStatus,
    subjects,
    difficultyLevel,
    contentFormat,
    progression,
    outline,
    createdAt,
    lastOpenedAt,
    coverColor,
    targetDays,
    thumbnailBase64,
    localFileName,
    thumbnailPath,
    remoteId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Pdf &&
          other.id == this.id &&
          other.title == this.title &&
          other.pageCount == this.pageCount &&
          other.processingStatus == this.processingStatus &&
          other.subjects == this.subjects &&
          other.difficultyLevel == this.difficultyLevel &&
          other.contentFormat == this.contentFormat &&
          other.progression == this.progression &&
          other.outline == this.outline &&
          other.createdAt == this.createdAt &&
          other.lastOpenedAt == this.lastOpenedAt &&
          other.coverColor == this.coverColor &&
          other.targetDays == this.targetDays &&
          other.thumbnailBase64 == this.thumbnailBase64 &&
          other.localFileName == this.localFileName &&
          other.thumbnailPath == this.thumbnailPath &&
          other.remoteId == this.remoteId);
}

class PdfsCompanion extends UpdateCompanion<Pdf> {
  final Value<int> id;
  final Value<String> title;
  final Value<int?> pageCount;
  final Value<String> processingStatus;
  final Value<String?> subjects;
  final Value<String?> difficultyLevel;
  final Value<String?> contentFormat;
  final Value<int> progression;
  final Value<String?> outline;
  final Value<int> createdAt;
  final Value<int?> lastOpenedAt;
  final Value<String?> coverColor;
  final Value<int?> targetDays;
  final Value<String?> thumbnailBase64;
  final Value<String?> localFileName;
  final Value<String?> thumbnailPath;
  final Value<String?> remoteId;
  const PdfsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.pageCount = const Value.absent(),
    this.processingStatus = const Value.absent(),
    this.subjects = const Value.absent(),
    this.difficultyLevel = const Value.absent(),
    this.contentFormat = const Value.absent(),
    this.progression = const Value.absent(),
    this.outline = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.lastOpenedAt = const Value.absent(),
    this.coverColor = const Value.absent(),
    this.targetDays = const Value.absent(),
    this.thumbnailBase64 = const Value.absent(),
    this.localFileName = const Value.absent(),
    this.thumbnailPath = const Value.absent(),
    this.remoteId = const Value.absent(),
  });
  PdfsCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    this.pageCount = const Value.absent(),
    required String processingStatus,
    this.subjects = const Value.absent(),
    this.difficultyLevel = const Value.absent(),
    this.contentFormat = const Value.absent(),
    this.progression = const Value.absent(),
    this.outline = const Value.absent(),
    required int createdAt,
    this.lastOpenedAt = const Value.absent(),
    this.coverColor = const Value.absent(),
    this.targetDays = const Value.absent(),
    this.thumbnailBase64 = const Value.absent(),
    this.localFileName = const Value.absent(),
    this.thumbnailPath = const Value.absent(),
    this.remoteId = const Value.absent(),
  }) : title = Value(title),
       processingStatus = Value(processingStatus),
       createdAt = Value(createdAt);
  static Insertable<Pdf> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<int>? pageCount,
    Expression<String>? processingStatus,
    Expression<String>? subjects,
    Expression<String>? difficultyLevel,
    Expression<String>? contentFormat,
    Expression<int>? progression,
    Expression<String>? outline,
    Expression<int>? createdAt,
    Expression<int>? lastOpenedAt,
    Expression<String>? coverColor,
    Expression<int>? targetDays,
    Expression<String>? thumbnailBase64,
    Expression<String>? localFileName,
    Expression<String>? thumbnailPath,
    Expression<String>? remoteId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (pageCount != null) 'pageCount': pageCount,
      if (processingStatus != null) 'processingStatus': processingStatus,
      if (subjects != null) 'subjects': subjects,
      if (difficultyLevel != null) 'difficultyLevel': difficultyLevel,
      if (contentFormat != null) 'contentFormat': contentFormat,
      if (progression != null) 'progression': progression,
      if (outline != null) 'outline': outline,
      if (createdAt != null) 'createdAt': createdAt,
      if (lastOpenedAt != null) 'lastOpenedAt': lastOpenedAt,
      if (coverColor != null) 'coverColor': coverColor,
      if (targetDays != null) 'targetDays': targetDays,
      if (thumbnailBase64 != null) 'thumbnailBase64': thumbnailBase64,
      if (localFileName != null) 'localFileName': localFileName,
      if (thumbnailPath != null) 'thumbnailPath': thumbnailPath,
      if (remoteId != null) 'remoteId': remoteId,
    });
  }

  PdfsCompanion copyWith({
    Value<int>? id,
    Value<String>? title,
    Value<int?>? pageCount,
    Value<String>? processingStatus,
    Value<String?>? subjects,
    Value<String?>? difficultyLevel,
    Value<String?>? contentFormat,
    Value<int>? progression,
    Value<String?>? outline,
    Value<int>? createdAt,
    Value<int?>? lastOpenedAt,
    Value<String?>? coverColor,
    Value<int?>? targetDays,
    Value<String?>? thumbnailBase64,
    Value<String?>? localFileName,
    Value<String?>? thumbnailPath,
    Value<String?>? remoteId,
  }) {
    return PdfsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      pageCount: pageCount ?? this.pageCount,
      processingStatus: processingStatus ?? this.processingStatus,
      subjects: subjects ?? this.subjects,
      difficultyLevel: difficultyLevel ?? this.difficultyLevel,
      contentFormat: contentFormat ?? this.contentFormat,
      progression: progression ?? this.progression,
      outline: outline ?? this.outline,
      createdAt: createdAt ?? this.createdAt,
      lastOpenedAt: lastOpenedAt ?? this.lastOpenedAt,
      coverColor: coverColor ?? this.coverColor,
      targetDays: targetDays ?? this.targetDays,
      thumbnailBase64: thumbnailBase64 ?? this.thumbnailBase64,
      localFileName: localFileName ?? this.localFileName,
      thumbnailPath: thumbnailPath ?? this.thumbnailPath,
      remoteId: remoteId ?? this.remoteId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (pageCount.present) {
      map['pageCount'] = Variable<int>(pageCount.value);
    }
    if (processingStatus.present) {
      map['processingStatus'] = Variable<String>(processingStatus.value);
    }
    if (subjects.present) {
      map['subjects'] = Variable<String>(subjects.value);
    }
    if (difficultyLevel.present) {
      map['difficultyLevel'] = Variable<String>(difficultyLevel.value);
    }
    if (contentFormat.present) {
      map['contentFormat'] = Variable<String>(contentFormat.value);
    }
    if (progression.present) {
      map['progression'] = Variable<int>(progression.value);
    }
    if (outline.present) {
      map['outline'] = Variable<String>(outline.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<int>(createdAt.value);
    }
    if (lastOpenedAt.present) {
      map['lastOpenedAt'] = Variable<int>(lastOpenedAt.value);
    }
    if (coverColor.present) {
      map['coverColor'] = Variable<String>(coverColor.value);
    }
    if (targetDays.present) {
      map['targetDays'] = Variable<int>(targetDays.value);
    }
    if (thumbnailBase64.present) {
      map['thumbnailBase64'] = Variable<String>(thumbnailBase64.value);
    }
    if (localFileName.present) {
      map['localFileName'] = Variable<String>(localFileName.value);
    }
    if (thumbnailPath.present) {
      map['thumbnailPath'] = Variable<String>(thumbnailPath.value);
    }
    if (remoteId.present) {
      map['remoteId'] = Variable<String>(remoteId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PdfsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('pageCount: $pageCount, ')
          ..write('processingStatus: $processingStatus, ')
          ..write('subjects: $subjects, ')
          ..write('difficultyLevel: $difficultyLevel, ')
          ..write('contentFormat: $contentFormat, ')
          ..write('progression: $progression, ')
          ..write('outline: $outline, ')
          ..write('createdAt: $createdAt, ')
          ..write('lastOpenedAt: $lastOpenedAt, ')
          ..write('coverColor: $coverColor, ')
          ..write('targetDays: $targetDays, ')
          ..write('thumbnailBase64: $thumbnailBase64, ')
          ..write('localFileName: $localFileName, ')
          ..write('thumbnailPath: $thumbnailPath, ')
          ..write('remoteId: $remoteId')
          ..write(')'))
        .toString();
  }
}

class $LessonForksTable extends LessonForks
    with TableInfo<$LessonForksTable, LessonFork> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LessonForksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pdfIdMeta = const VerificationMeta('pdfId');
  @override
  late final GeneratedColumn<int> pdfId = GeneratedColumn<int>(
    'pdfId',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pdfRemoteIdMeta = const VerificationMeta(
    'pdfRemoteId',
  );
  @override
  late final GeneratedColumn<String> pdfRemoteId = GeneratedColumn<String>(
    'pdfRemoteId',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _presetMeta = const VerificationMeta('preset');
  @override
  late final GeneratedColumn<String> preset = GeneratedColumn<String>(
    'preset',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _scopeTypeMeta = const VerificationMeta(
    'scopeType',
  );
  @override
  late final GeneratedColumn<String> scopeType = GeneratedColumn<String>(
    'scopeType',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _scopeLabelMeta = const VerificationMeta(
    'scopeLabel',
  );
  @override
  late final GeneratedColumn<String> scopeLabel = GeneratedColumn<String>(
    'scopeLabel',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _startPageMeta = const VerificationMeta(
    'startPage',
  );
  @override
  late final GeneratedColumn<int> startPage = GeneratedColumn<int>(
    'startPage',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _endPageMeta = const VerificationMeta(
    'endPage',
  );
  @override
  late final GeneratedColumn<int> endPage = GeneratedColumn<int>(
    'endPage',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _contentJsonMeta = const VerificationMeta(
    'contentJson',
  );
  @override
  late final GeneratedColumn<String> contentJson = GeneratedColumn<String>(
    'contentJson',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _progressMeta = const VerificationMeta(
    'progress',
  );
  @override
  late final GeneratedColumn<double> progress = GeneratedColumn<double>(
    'progress',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _modelMeta = const VerificationMeta('model');
  @override
  late final GeneratedColumn<String> model = GeneratedColumn<String>(
    'model',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
    'createdAt',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<int> updatedAt = GeneratedColumn<int>(
    'updatedAt',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    pdfId,
    pdfRemoteId,
    preset,
    title,
    scopeType,
    scopeLabel,
    startPage,
    endPage,
    contentJson,
    status,
    progress,
    model,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'lesson_forks';
  @override
  VerificationContext validateIntegrity(
    Insertable<LessonFork> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('pdfId')) {
      context.handle(
        _pdfIdMeta,
        pdfId.isAcceptableOrUnknown(data['pdfId']!, _pdfIdMeta),
      );
    } else if (isInserting) {
      context.missing(_pdfIdMeta);
    }
    if (data.containsKey('pdfRemoteId')) {
      context.handle(
        _pdfRemoteIdMeta,
        pdfRemoteId.isAcceptableOrUnknown(
          data['pdfRemoteId']!,
          _pdfRemoteIdMeta,
        ),
      );
    }
    if (data.containsKey('preset')) {
      context.handle(
        _presetMeta,
        preset.isAcceptableOrUnknown(data['preset']!, _presetMeta),
      );
    } else if (isInserting) {
      context.missing(_presetMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('scopeType')) {
      context.handle(
        _scopeTypeMeta,
        scopeType.isAcceptableOrUnknown(data['scopeType']!, _scopeTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_scopeTypeMeta);
    }
    if (data.containsKey('scopeLabel')) {
      context.handle(
        _scopeLabelMeta,
        scopeLabel.isAcceptableOrUnknown(data['scopeLabel']!, _scopeLabelMeta),
      );
    } else if (isInserting) {
      context.missing(_scopeLabelMeta);
    }
    if (data.containsKey('startPage')) {
      context.handle(
        _startPageMeta,
        startPage.isAcceptableOrUnknown(data['startPage']!, _startPageMeta),
      );
    }
    if (data.containsKey('endPage')) {
      context.handle(
        _endPageMeta,
        endPage.isAcceptableOrUnknown(data['endPage']!, _endPageMeta),
      );
    }
    if (data.containsKey('contentJson')) {
      context.handle(
        _contentJsonMeta,
        contentJson.isAcceptableOrUnknown(
          data['contentJson']!,
          _contentJsonMeta,
        ),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('progress')) {
      context.handle(
        _progressMeta,
        progress.isAcceptableOrUnknown(data['progress']!, _progressMeta),
      );
    }
    if (data.containsKey('model')) {
      context.handle(
        _modelMeta,
        model.isAcceptableOrUnknown(data['model']!, _modelMeta),
      );
    }
    if (data.containsKey('createdAt')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updatedAt')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updatedAt']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LessonFork map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LessonFork(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      pdfId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pdfId'],
      )!,
      pdfRemoteId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}pdfRemoteId'],
      ),
      preset: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}preset'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      scopeType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}scopeType'],
      )!,
      scopeLabel: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}scopeLabel'],
      )!,
      startPage: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}startPage'],
      ),
      endPage: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}endPage'],
      ),
      contentJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}contentJson'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      progress: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}progress'],
      )!,
      model: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}model'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}createdAt'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}updatedAt'],
      )!,
    );
  }

  @override
  $LessonForksTable createAlias(String alias) {
    return $LessonForksTable(attachedDatabase, alias);
  }
}

class LessonFork extends DataClass implements Insertable<LessonFork> {
  final String id;
  final int pdfId;
  final String? pdfRemoteId;
  final String preset;
  final String title;
  final String scopeType;
  final String scopeLabel;
  final int? startPage;
  final int? endPage;
  final String contentJson;
  final String status;
  final double progress;
  final String model;
  final int createdAt;
  final int updatedAt;
  const LessonFork({
    required this.id,
    required this.pdfId,
    this.pdfRemoteId,
    required this.preset,
    required this.title,
    required this.scopeType,
    required this.scopeLabel,
    this.startPage,
    this.endPage,
    required this.contentJson,
    required this.status,
    required this.progress,
    required this.model,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['pdfId'] = Variable<int>(pdfId);
    if (!nullToAbsent || pdfRemoteId != null) {
      map['pdfRemoteId'] = Variable<String>(pdfRemoteId);
    }
    map['preset'] = Variable<String>(preset);
    map['title'] = Variable<String>(title);
    map['scopeType'] = Variable<String>(scopeType);
    map['scopeLabel'] = Variable<String>(scopeLabel);
    if (!nullToAbsent || startPage != null) {
      map['startPage'] = Variable<int>(startPage);
    }
    if (!nullToAbsent || endPage != null) {
      map['endPage'] = Variable<int>(endPage);
    }
    map['contentJson'] = Variable<String>(contentJson);
    map['status'] = Variable<String>(status);
    map['progress'] = Variable<double>(progress);
    map['model'] = Variable<String>(model);
    map['createdAt'] = Variable<int>(createdAt);
    map['updatedAt'] = Variable<int>(updatedAt);
    return map;
  }

  LessonForksCompanion toCompanion(bool nullToAbsent) {
    return LessonForksCompanion(
      id: Value(id),
      pdfId: Value(pdfId),
      pdfRemoteId: pdfRemoteId == null && nullToAbsent
          ? const Value.absent()
          : Value(pdfRemoteId),
      preset: Value(preset),
      title: Value(title),
      scopeType: Value(scopeType),
      scopeLabel: Value(scopeLabel),
      startPage: startPage == null && nullToAbsent
          ? const Value.absent()
          : Value(startPage),
      endPage: endPage == null && nullToAbsent
          ? const Value.absent()
          : Value(endPage),
      contentJson: Value(contentJson),
      status: Value(status),
      progress: Value(progress),
      model: Value(model),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory LessonFork.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LessonFork(
      id: serializer.fromJson<String>(json['id']),
      pdfId: serializer.fromJson<int>(json['pdfId']),
      pdfRemoteId: serializer.fromJson<String?>(json['pdfRemoteId']),
      preset: serializer.fromJson<String>(json['preset']),
      title: serializer.fromJson<String>(json['title']),
      scopeType: serializer.fromJson<String>(json['scopeType']),
      scopeLabel: serializer.fromJson<String>(json['scopeLabel']),
      startPage: serializer.fromJson<int?>(json['startPage']),
      endPage: serializer.fromJson<int?>(json['endPage']),
      contentJson: serializer.fromJson<String>(json['contentJson']),
      status: serializer.fromJson<String>(json['status']),
      progress: serializer.fromJson<double>(json['progress']),
      model: serializer.fromJson<String>(json['model']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
      updatedAt: serializer.fromJson<int>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'pdfId': serializer.toJson<int>(pdfId),
      'pdfRemoteId': serializer.toJson<String?>(pdfRemoteId),
      'preset': serializer.toJson<String>(preset),
      'title': serializer.toJson<String>(title),
      'scopeType': serializer.toJson<String>(scopeType),
      'scopeLabel': serializer.toJson<String>(scopeLabel),
      'startPage': serializer.toJson<int?>(startPage),
      'endPage': serializer.toJson<int?>(endPage),
      'contentJson': serializer.toJson<String>(contentJson),
      'status': serializer.toJson<String>(status),
      'progress': serializer.toJson<double>(progress),
      'model': serializer.toJson<String>(model),
      'createdAt': serializer.toJson<int>(createdAt),
      'updatedAt': serializer.toJson<int>(updatedAt),
    };
  }

  LessonFork copyWith({
    String? id,
    int? pdfId,
    Value<String?> pdfRemoteId = const Value.absent(),
    String? preset,
    String? title,
    String? scopeType,
    String? scopeLabel,
    Value<int?> startPage = const Value.absent(),
    Value<int?> endPage = const Value.absent(),
    String? contentJson,
    String? status,
    double? progress,
    String? model,
    int? createdAt,
    int? updatedAt,
  }) => LessonFork(
    id: id ?? this.id,
    pdfId: pdfId ?? this.pdfId,
    pdfRemoteId: pdfRemoteId.present ? pdfRemoteId.value : this.pdfRemoteId,
    preset: preset ?? this.preset,
    title: title ?? this.title,
    scopeType: scopeType ?? this.scopeType,
    scopeLabel: scopeLabel ?? this.scopeLabel,
    startPage: startPage.present ? startPage.value : this.startPage,
    endPage: endPage.present ? endPage.value : this.endPage,
    contentJson: contentJson ?? this.contentJson,
    status: status ?? this.status,
    progress: progress ?? this.progress,
    model: model ?? this.model,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  LessonFork copyWithCompanion(LessonForksCompanion data) {
    return LessonFork(
      id: data.id.present ? data.id.value : this.id,
      pdfId: data.pdfId.present ? data.pdfId.value : this.pdfId,
      pdfRemoteId: data.pdfRemoteId.present
          ? data.pdfRemoteId.value
          : this.pdfRemoteId,
      preset: data.preset.present ? data.preset.value : this.preset,
      title: data.title.present ? data.title.value : this.title,
      scopeType: data.scopeType.present ? data.scopeType.value : this.scopeType,
      scopeLabel: data.scopeLabel.present
          ? data.scopeLabel.value
          : this.scopeLabel,
      startPage: data.startPage.present ? data.startPage.value : this.startPage,
      endPage: data.endPage.present ? data.endPage.value : this.endPage,
      contentJson: data.contentJson.present
          ? data.contentJson.value
          : this.contentJson,
      status: data.status.present ? data.status.value : this.status,
      progress: data.progress.present ? data.progress.value : this.progress,
      model: data.model.present ? data.model.value : this.model,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LessonFork(')
          ..write('id: $id, ')
          ..write('pdfId: $pdfId, ')
          ..write('pdfRemoteId: $pdfRemoteId, ')
          ..write('preset: $preset, ')
          ..write('title: $title, ')
          ..write('scopeType: $scopeType, ')
          ..write('scopeLabel: $scopeLabel, ')
          ..write('startPage: $startPage, ')
          ..write('endPage: $endPage, ')
          ..write('contentJson: $contentJson, ')
          ..write('status: $status, ')
          ..write('progress: $progress, ')
          ..write('model: $model, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    pdfId,
    pdfRemoteId,
    preset,
    title,
    scopeType,
    scopeLabel,
    startPage,
    endPage,
    contentJson,
    status,
    progress,
    model,
    createdAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LessonFork &&
          other.id == this.id &&
          other.pdfId == this.pdfId &&
          other.pdfRemoteId == this.pdfRemoteId &&
          other.preset == this.preset &&
          other.title == this.title &&
          other.scopeType == this.scopeType &&
          other.scopeLabel == this.scopeLabel &&
          other.startPage == this.startPage &&
          other.endPage == this.endPage &&
          other.contentJson == this.contentJson &&
          other.status == this.status &&
          other.progress == this.progress &&
          other.model == this.model &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class LessonForksCompanion extends UpdateCompanion<LessonFork> {
  final Value<String> id;
  final Value<int> pdfId;
  final Value<String?> pdfRemoteId;
  final Value<String> preset;
  final Value<String> title;
  final Value<String> scopeType;
  final Value<String> scopeLabel;
  final Value<int?> startPage;
  final Value<int?> endPage;
  final Value<String> contentJson;
  final Value<String> status;
  final Value<double> progress;
  final Value<String> model;
  final Value<int> createdAt;
  final Value<int> updatedAt;
  final Value<int> rowid;
  const LessonForksCompanion({
    this.id = const Value.absent(),
    this.pdfId = const Value.absent(),
    this.pdfRemoteId = const Value.absent(),
    this.preset = const Value.absent(),
    this.title = const Value.absent(),
    this.scopeType = const Value.absent(),
    this.scopeLabel = const Value.absent(),
    this.startPage = const Value.absent(),
    this.endPage = const Value.absent(),
    this.contentJson = const Value.absent(),
    this.status = const Value.absent(),
    this.progress = const Value.absent(),
    this.model = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LessonForksCompanion.insert({
    required String id,
    required int pdfId,
    this.pdfRemoteId = const Value.absent(),
    required String preset,
    required String title,
    required String scopeType,
    required String scopeLabel,
    this.startPage = const Value.absent(),
    this.endPage = const Value.absent(),
    this.contentJson = const Value.absent(),
    required String status,
    this.progress = const Value.absent(),
    this.model = const Value.absent(),
    required int createdAt,
    required int updatedAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       pdfId = Value(pdfId),
       preset = Value(preset),
       title = Value(title),
       scopeType = Value(scopeType),
       scopeLabel = Value(scopeLabel),
       status = Value(status),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<LessonFork> custom({
    Expression<String>? id,
    Expression<int>? pdfId,
    Expression<String>? pdfRemoteId,
    Expression<String>? preset,
    Expression<String>? title,
    Expression<String>? scopeType,
    Expression<String>? scopeLabel,
    Expression<int>? startPage,
    Expression<int>? endPage,
    Expression<String>? contentJson,
    Expression<String>? status,
    Expression<double>? progress,
    Expression<String>? model,
    Expression<int>? createdAt,
    Expression<int>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (pdfId != null) 'pdfId': pdfId,
      if (pdfRemoteId != null) 'pdfRemoteId': pdfRemoteId,
      if (preset != null) 'preset': preset,
      if (title != null) 'title': title,
      if (scopeType != null) 'scopeType': scopeType,
      if (scopeLabel != null) 'scopeLabel': scopeLabel,
      if (startPage != null) 'startPage': startPage,
      if (endPage != null) 'endPage': endPage,
      if (contentJson != null) 'contentJson': contentJson,
      if (status != null) 'status': status,
      if (progress != null) 'progress': progress,
      if (model != null) 'model': model,
      if (createdAt != null) 'createdAt': createdAt,
      if (updatedAt != null) 'updatedAt': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LessonForksCompanion copyWith({
    Value<String>? id,
    Value<int>? pdfId,
    Value<String?>? pdfRemoteId,
    Value<String>? preset,
    Value<String>? title,
    Value<String>? scopeType,
    Value<String>? scopeLabel,
    Value<int?>? startPage,
    Value<int?>? endPage,
    Value<String>? contentJson,
    Value<String>? status,
    Value<double>? progress,
    Value<String>? model,
    Value<int>? createdAt,
    Value<int>? updatedAt,
    Value<int>? rowid,
  }) {
    return LessonForksCompanion(
      id: id ?? this.id,
      pdfId: pdfId ?? this.pdfId,
      pdfRemoteId: pdfRemoteId ?? this.pdfRemoteId,
      preset: preset ?? this.preset,
      title: title ?? this.title,
      scopeType: scopeType ?? this.scopeType,
      scopeLabel: scopeLabel ?? this.scopeLabel,
      startPage: startPage ?? this.startPage,
      endPage: endPage ?? this.endPage,
      contentJson: contentJson ?? this.contentJson,
      status: status ?? this.status,
      progress: progress ?? this.progress,
      model: model ?? this.model,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (pdfId.present) {
      map['pdfId'] = Variable<int>(pdfId.value);
    }
    if (pdfRemoteId.present) {
      map['pdfRemoteId'] = Variable<String>(pdfRemoteId.value);
    }
    if (preset.present) {
      map['preset'] = Variable<String>(preset.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (scopeType.present) {
      map['scopeType'] = Variable<String>(scopeType.value);
    }
    if (scopeLabel.present) {
      map['scopeLabel'] = Variable<String>(scopeLabel.value);
    }
    if (startPage.present) {
      map['startPage'] = Variable<int>(startPage.value);
    }
    if (endPage.present) {
      map['endPage'] = Variable<int>(endPage.value);
    }
    if (contentJson.present) {
      map['contentJson'] = Variable<String>(contentJson.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (progress.present) {
      map['progress'] = Variable<double>(progress.value);
    }
    if (model.present) {
      map['model'] = Variable<String>(model.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<int>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updatedAt'] = Variable<int>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LessonForksCompanion(')
          ..write('id: $id, ')
          ..write('pdfId: $pdfId, ')
          ..write('pdfRemoteId: $pdfRemoteId, ')
          ..write('preset: $preset, ')
          ..write('title: $title, ')
          ..write('scopeType: $scopeType, ')
          ..write('scopeLabel: $scopeLabel, ')
          ..write('startPage: $startPage, ')
          ..write('endPage: $endPage, ')
          ..write('contentJson: $contentJson, ')
          ..write('status: $status, ')
          ..write('progress: $progress, ')
          ..write('model: $model, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FlashcardsTable extends Flashcards
    with TableInfo<$FlashcardsTable, Flashcard> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FlashcardsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _pdfIdMeta = const VerificationMeta('pdfId');
  @override
  late final GeneratedColumn<int> pdfId = GeneratedColumn<int>(
    'pdfId',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _questionMeta = const VerificationMeta(
    'question',
  );
  @override
  late final GeneratedColumn<String> question = GeneratedColumn<String>(
    'question',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _answerMeta = const VerificationMeta('answer');
  @override
  late final GeneratedColumn<String> answer = GeneratedColumn<String>(
    'answer',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _optionsMeta = const VerificationMeta(
    'options',
  );
  @override
  late final GeneratedColumn<String> options = GeneratedColumn<String>(
    'options',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _correctOptionIndexMeta =
      const VerificationMeta('correctOptionIndex');
  @override
  late final GeneratedColumn<int> correctOptionIndex = GeneratedColumn<int>(
    'correctOptionIndex',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _topicMeta = const VerificationMeta('topic');
  @override
  late final GeneratedColumn<String> topic = GeneratedColumn<String>(
    'topic',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _intervalDaysMeta = const VerificationMeta(
    'intervalDays',
  );
  @override
  late final GeneratedColumn<int> intervalDays = GeneratedColumn<int>(
    'intervalDays',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _easeFactorMeta = const VerificationMeta(
    'easeFactor',
  );
  @override
  late final GeneratedColumn<double> easeFactor = GeneratedColumn<double>(
    'easeFactor',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nextReviewAtMeta = const VerificationMeta(
    'nextReviewAt',
  );
  @override
  late final GeneratedColumn<int> nextReviewAt = GeneratedColumn<int>(
    'nextReviewAt',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _successiveCorrectMeta = const VerificationMeta(
    'successiveCorrect',
  );
  @override
  late final GeneratedColumn<int> successiveCorrect = GeneratedColumn<int>(
    'successiveCorrect',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _wrongCountMeta = const VerificationMeta(
    'wrongCount',
  );
  @override
  late final GeneratedColumn<int> wrongCount = GeneratedColumn<int>(
    'wrongCount',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sourceKeyMeta = const VerificationMeta(
    'sourceKey',
  );
  @override
  late final GeneratedColumn<String> sourceKey = GeneratedColumn<String>(
    'sourceKey',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    pdfId,
    question,
    answer,
    type,
    options,
    correctOptionIndex,
    topic,
    intervalDays,
    easeFactor,
    nextReviewAt,
    successiveCorrect,
    wrongCount,
    sourceKey,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'flashcards';
  @override
  VerificationContext validateIntegrity(
    Insertable<Flashcard> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('pdfId')) {
      context.handle(
        _pdfIdMeta,
        pdfId.isAcceptableOrUnknown(data['pdfId']!, _pdfIdMeta),
      );
    } else if (isInserting) {
      context.missing(_pdfIdMeta);
    }
    if (data.containsKey('question')) {
      context.handle(
        _questionMeta,
        question.isAcceptableOrUnknown(data['question']!, _questionMeta),
      );
    } else if (isInserting) {
      context.missing(_questionMeta);
    }
    if (data.containsKey('answer')) {
      context.handle(
        _answerMeta,
        answer.isAcceptableOrUnknown(data['answer']!, _answerMeta),
      );
    } else if (isInserting) {
      context.missing(_answerMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('options')) {
      context.handle(
        _optionsMeta,
        options.isAcceptableOrUnknown(data['options']!, _optionsMeta),
      );
    }
    if (data.containsKey('correctOptionIndex')) {
      context.handle(
        _correctOptionIndexMeta,
        correctOptionIndex.isAcceptableOrUnknown(
          data['correctOptionIndex']!,
          _correctOptionIndexMeta,
        ),
      );
    }
    if (data.containsKey('topic')) {
      context.handle(
        _topicMeta,
        topic.isAcceptableOrUnknown(data['topic']!, _topicMeta),
      );
    } else if (isInserting) {
      context.missing(_topicMeta);
    }
    if (data.containsKey('intervalDays')) {
      context.handle(
        _intervalDaysMeta,
        intervalDays.isAcceptableOrUnknown(
          data['intervalDays']!,
          _intervalDaysMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_intervalDaysMeta);
    }
    if (data.containsKey('easeFactor')) {
      context.handle(
        _easeFactorMeta,
        easeFactor.isAcceptableOrUnknown(data['easeFactor']!, _easeFactorMeta),
      );
    } else if (isInserting) {
      context.missing(_easeFactorMeta);
    }
    if (data.containsKey('nextReviewAt')) {
      context.handle(
        _nextReviewAtMeta,
        nextReviewAt.isAcceptableOrUnknown(
          data['nextReviewAt']!,
          _nextReviewAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_nextReviewAtMeta);
    }
    if (data.containsKey('successiveCorrect')) {
      context.handle(
        _successiveCorrectMeta,
        successiveCorrect.isAcceptableOrUnknown(
          data['successiveCorrect']!,
          _successiveCorrectMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_successiveCorrectMeta);
    }
    if (data.containsKey('wrongCount')) {
      context.handle(
        _wrongCountMeta,
        wrongCount.isAcceptableOrUnknown(data['wrongCount']!, _wrongCountMeta),
      );
    } else if (isInserting) {
      context.missing(_wrongCountMeta);
    }
    if (data.containsKey('sourceKey')) {
      context.handle(
        _sourceKeyMeta,
        sourceKey.isAcceptableOrUnknown(data['sourceKey']!, _sourceKeyMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Flashcard map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Flashcard(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      pdfId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pdfId'],
      )!,
      question: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}question'],
      )!,
      answer: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}answer'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      options: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}options'],
      ),
      correctOptionIndex: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}correctOptionIndex'],
      ),
      topic: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}topic'],
      )!,
      intervalDays: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}intervalDays'],
      )!,
      easeFactor: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}easeFactor'],
      )!,
      nextReviewAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}nextReviewAt'],
      )!,
      successiveCorrect: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}successiveCorrect'],
      )!,
      wrongCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}wrongCount'],
      )!,
      sourceKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sourceKey'],
      ),
    );
  }

  @override
  $FlashcardsTable createAlias(String alias) {
    return $FlashcardsTable(attachedDatabase, alias);
  }
}

class Flashcard extends DataClass implements Insertable<Flashcard> {
  final int id;
  final int pdfId;
  final String question;
  final String answer;
  final String type;
  final String? options;
  final int? correctOptionIndex;
  final String topic;
  final int intervalDays;
  final double easeFactor;
  final int nextReviewAt;
  final int successiveCorrect;
  final int wrongCount;
  final String? sourceKey;
  const Flashcard({
    required this.id,
    required this.pdfId,
    required this.question,
    required this.answer,
    required this.type,
    this.options,
    this.correctOptionIndex,
    required this.topic,
    required this.intervalDays,
    required this.easeFactor,
    required this.nextReviewAt,
    required this.successiveCorrect,
    required this.wrongCount,
    this.sourceKey,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['pdfId'] = Variable<int>(pdfId);
    map['question'] = Variable<String>(question);
    map['answer'] = Variable<String>(answer);
    map['type'] = Variable<String>(type);
    if (!nullToAbsent || options != null) {
      map['options'] = Variable<String>(options);
    }
    if (!nullToAbsent || correctOptionIndex != null) {
      map['correctOptionIndex'] = Variable<int>(correctOptionIndex);
    }
    map['topic'] = Variable<String>(topic);
    map['intervalDays'] = Variable<int>(intervalDays);
    map['easeFactor'] = Variable<double>(easeFactor);
    map['nextReviewAt'] = Variable<int>(nextReviewAt);
    map['successiveCorrect'] = Variable<int>(successiveCorrect);
    map['wrongCount'] = Variable<int>(wrongCount);
    if (!nullToAbsent || sourceKey != null) {
      map['sourceKey'] = Variable<String>(sourceKey);
    }
    return map;
  }

  FlashcardsCompanion toCompanion(bool nullToAbsent) {
    return FlashcardsCompanion(
      id: Value(id),
      pdfId: Value(pdfId),
      question: Value(question),
      answer: Value(answer),
      type: Value(type),
      options: options == null && nullToAbsent
          ? const Value.absent()
          : Value(options),
      correctOptionIndex: correctOptionIndex == null && nullToAbsent
          ? const Value.absent()
          : Value(correctOptionIndex),
      topic: Value(topic),
      intervalDays: Value(intervalDays),
      easeFactor: Value(easeFactor),
      nextReviewAt: Value(nextReviewAt),
      successiveCorrect: Value(successiveCorrect),
      wrongCount: Value(wrongCount),
      sourceKey: sourceKey == null && nullToAbsent
          ? const Value.absent()
          : Value(sourceKey),
    );
  }

  factory Flashcard.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Flashcard(
      id: serializer.fromJson<int>(json['id']),
      pdfId: serializer.fromJson<int>(json['pdfId']),
      question: serializer.fromJson<String>(json['question']),
      answer: serializer.fromJson<String>(json['answer']),
      type: serializer.fromJson<String>(json['type']),
      options: serializer.fromJson<String?>(json['options']),
      correctOptionIndex: serializer.fromJson<int?>(json['correctOptionIndex']),
      topic: serializer.fromJson<String>(json['topic']),
      intervalDays: serializer.fromJson<int>(json['intervalDays']),
      easeFactor: serializer.fromJson<double>(json['easeFactor']),
      nextReviewAt: serializer.fromJson<int>(json['nextReviewAt']),
      successiveCorrect: serializer.fromJson<int>(json['successiveCorrect']),
      wrongCount: serializer.fromJson<int>(json['wrongCount']),
      sourceKey: serializer.fromJson<String?>(json['sourceKey']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'pdfId': serializer.toJson<int>(pdfId),
      'question': serializer.toJson<String>(question),
      'answer': serializer.toJson<String>(answer),
      'type': serializer.toJson<String>(type),
      'options': serializer.toJson<String?>(options),
      'correctOptionIndex': serializer.toJson<int?>(correctOptionIndex),
      'topic': serializer.toJson<String>(topic),
      'intervalDays': serializer.toJson<int>(intervalDays),
      'easeFactor': serializer.toJson<double>(easeFactor),
      'nextReviewAt': serializer.toJson<int>(nextReviewAt),
      'successiveCorrect': serializer.toJson<int>(successiveCorrect),
      'wrongCount': serializer.toJson<int>(wrongCount),
      'sourceKey': serializer.toJson<String?>(sourceKey),
    };
  }

  Flashcard copyWith({
    int? id,
    int? pdfId,
    String? question,
    String? answer,
    String? type,
    Value<String?> options = const Value.absent(),
    Value<int?> correctOptionIndex = const Value.absent(),
    String? topic,
    int? intervalDays,
    double? easeFactor,
    int? nextReviewAt,
    int? successiveCorrect,
    int? wrongCount,
    Value<String?> sourceKey = const Value.absent(),
  }) => Flashcard(
    id: id ?? this.id,
    pdfId: pdfId ?? this.pdfId,
    question: question ?? this.question,
    answer: answer ?? this.answer,
    type: type ?? this.type,
    options: options.present ? options.value : this.options,
    correctOptionIndex: correctOptionIndex.present
        ? correctOptionIndex.value
        : this.correctOptionIndex,
    topic: topic ?? this.topic,
    intervalDays: intervalDays ?? this.intervalDays,
    easeFactor: easeFactor ?? this.easeFactor,
    nextReviewAt: nextReviewAt ?? this.nextReviewAt,
    successiveCorrect: successiveCorrect ?? this.successiveCorrect,
    wrongCount: wrongCount ?? this.wrongCount,
    sourceKey: sourceKey.present ? sourceKey.value : this.sourceKey,
  );
  Flashcard copyWithCompanion(FlashcardsCompanion data) {
    return Flashcard(
      id: data.id.present ? data.id.value : this.id,
      pdfId: data.pdfId.present ? data.pdfId.value : this.pdfId,
      question: data.question.present ? data.question.value : this.question,
      answer: data.answer.present ? data.answer.value : this.answer,
      type: data.type.present ? data.type.value : this.type,
      options: data.options.present ? data.options.value : this.options,
      correctOptionIndex: data.correctOptionIndex.present
          ? data.correctOptionIndex.value
          : this.correctOptionIndex,
      topic: data.topic.present ? data.topic.value : this.topic,
      intervalDays: data.intervalDays.present
          ? data.intervalDays.value
          : this.intervalDays,
      easeFactor: data.easeFactor.present
          ? data.easeFactor.value
          : this.easeFactor,
      nextReviewAt: data.nextReviewAt.present
          ? data.nextReviewAt.value
          : this.nextReviewAt,
      successiveCorrect: data.successiveCorrect.present
          ? data.successiveCorrect.value
          : this.successiveCorrect,
      wrongCount: data.wrongCount.present
          ? data.wrongCount.value
          : this.wrongCount,
      sourceKey: data.sourceKey.present ? data.sourceKey.value : this.sourceKey,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Flashcard(')
          ..write('id: $id, ')
          ..write('pdfId: $pdfId, ')
          ..write('question: $question, ')
          ..write('answer: $answer, ')
          ..write('type: $type, ')
          ..write('options: $options, ')
          ..write('correctOptionIndex: $correctOptionIndex, ')
          ..write('topic: $topic, ')
          ..write('intervalDays: $intervalDays, ')
          ..write('easeFactor: $easeFactor, ')
          ..write('nextReviewAt: $nextReviewAt, ')
          ..write('successiveCorrect: $successiveCorrect, ')
          ..write('wrongCount: $wrongCount, ')
          ..write('sourceKey: $sourceKey')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    pdfId,
    question,
    answer,
    type,
    options,
    correctOptionIndex,
    topic,
    intervalDays,
    easeFactor,
    nextReviewAt,
    successiveCorrect,
    wrongCount,
    sourceKey,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Flashcard &&
          other.id == this.id &&
          other.pdfId == this.pdfId &&
          other.question == this.question &&
          other.answer == this.answer &&
          other.type == this.type &&
          other.options == this.options &&
          other.correctOptionIndex == this.correctOptionIndex &&
          other.topic == this.topic &&
          other.intervalDays == this.intervalDays &&
          other.easeFactor == this.easeFactor &&
          other.nextReviewAt == this.nextReviewAt &&
          other.successiveCorrect == this.successiveCorrect &&
          other.wrongCount == this.wrongCount &&
          other.sourceKey == this.sourceKey);
}

class FlashcardsCompanion extends UpdateCompanion<Flashcard> {
  final Value<int> id;
  final Value<int> pdfId;
  final Value<String> question;
  final Value<String> answer;
  final Value<String> type;
  final Value<String?> options;
  final Value<int?> correctOptionIndex;
  final Value<String> topic;
  final Value<int> intervalDays;
  final Value<double> easeFactor;
  final Value<int> nextReviewAt;
  final Value<int> successiveCorrect;
  final Value<int> wrongCount;
  final Value<String?> sourceKey;
  const FlashcardsCompanion({
    this.id = const Value.absent(),
    this.pdfId = const Value.absent(),
    this.question = const Value.absent(),
    this.answer = const Value.absent(),
    this.type = const Value.absent(),
    this.options = const Value.absent(),
    this.correctOptionIndex = const Value.absent(),
    this.topic = const Value.absent(),
    this.intervalDays = const Value.absent(),
    this.easeFactor = const Value.absent(),
    this.nextReviewAt = const Value.absent(),
    this.successiveCorrect = const Value.absent(),
    this.wrongCount = const Value.absent(),
    this.sourceKey = const Value.absent(),
  });
  FlashcardsCompanion.insert({
    this.id = const Value.absent(),
    required int pdfId,
    required String question,
    required String answer,
    required String type,
    this.options = const Value.absent(),
    this.correctOptionIndex = const Value.absent(),
    required String topic,
    required int intervalDays,
    required double easeFactor,
    required int nextReviewAt,
    required int successiveCorrect,
    required int wrongCount,
    this.sourceKey = const Value.absent(),
  }) : pdfId = Value(pdfId),
       question = Value(question),
       answer = Value(answer),
       type = Value(type),
       topic = Value(topic),
       intervalDays = Value(intervalDays),
       easeFactor = Value(easeFactor),
       nextReviewAt = Value(nextReviewAt),
       successiveCorrect = Value(successiveCorrect),
       wrongCount = Value(wrongCount);
  static Insertable<Flashcard> custom({
    Expression<int>? id,
    Expression<int>? pdfId,
    Expression<String>? question,
    Expression<String>? answer,
    Expression<String>? type,
    Expression<String>? options,
    Expression<int>? correctOptionIndex,
    Expression<String>? topic,
    Expression<int>? intervalDays,
    Expression<double>? easeFactor,
    Expression<int>? nextReviewAt,
    Expression<int>? successiveCorrect,
    Expression<int>? wrongCount,
    Expression<String>? sourceKey,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (pdfId != null) 'pdfId': pdfId,
      if (question != null) 'question': question,
      if (answer != null) 'answer': answer,
      if (type != null) 'type': type,
      if (options != null) 'options': options,
      if (correctOptionIndex != null) 'correctOptionIndex': correctOptionIndex,
      if (topic != null) 'topic': topic,
      if (intervalDays != null) 'intervalDays': intervalDays,
      if (easeFactor != null) 'easeFactor': easeFactor,
      if (nextReviewAt != null) 'nextReviewAt': nextReviewAt,
      if (successiveCorrect != null) 'successiveCorrect': successiveCorrect,
      if (wrongCount != null) 'wrongCount': wrongCount,
      if (sourceKey != null) 'sourceKey': sourceKey,
    });
  }

  FlashcardsCompanion copyWith({
    Value<int>? id,
    Value<int>? pdfId,
    Value<String>? question,
    Value<String>? answer,
    Value<String>? type,
    Value<String?>? options,
    Value<int?>? correctOptionIndex,
    Value<String>? topic,
    Value<int>? intervalDays,
    Value<double>? easeFactor,
    Value<int>? nextReviewAt,
    Value<int>? successiveCorrect,
    Value<int>? wrongCount,
    Value<String?>? sourceKey,
  }) {
    return FlashcardsCompanion(
      id: id ?? this.id,
      pdfId: pdfId ?? this.pdfId,
      question: question ?? this.question,
      answer: answer ?? this.answer,
      type: type ?? this.type,
      options: options ?? this.options,
      correctOptionIndex: correctOptionIndex ?? this.correctOptionIndex,
      topic: topic ?? this.topic,
      intervalDays: intervalDays ?? this.intervalDays,
      easeFactor: easeFactor ?? this.easeFactor,
      nextReviewAt: nextReviewAt ?? this.nextReviewAt,
      successiveCorrect: successiveCorrect ?? this.successiveCorrect,
      wrongCount: wrongCount ?? this.wrongCount,
      sourceKey: sourceKey ?? this.sourceKey,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (pdfId.present) {
      map['pdfId'] = Variable<int>(pdfId.value);
    }
    if (question.present) {
      map['question'] = Variable<String>(question.value);
    }
    if (answer.present) {
      map['answer'] = Variable<String>(answer.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (options.present) {
      map['options'] = Variable<String>(options.value);
    }
    if (correctOptionIndex.present) {
      map['correctOptionIndex'] = Variable<int>(correctOptionIndex.value);
    }
    if (topic.present) {
      map['topic'] = Variable<String>(topic.value);
    }
    if (intervalDays.present) {
      map['intervalDays'] = Variable<int>(intervalDays.value);
    }
    if (easeFactor.present) {
      map['easeFactor'] = Variable<double>(easeFactor.value);
    }
    if (nextReviewAt.present) {
      map['nextReviewAt'] = Variable<int>(nextReviewAt.value);
    }
    if (successiveCorrect.present) {
      map['successiveCorrect'] = Variable<int>(successiveCorrect.value);
    }
    if (wrongCount.present) {
      map['wrongCount'] = Variable<int>(wrongCount.value);
    }
    if (sourceKey.present) {
      map['sourceKey'] = Variable<String>(sourceKey.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FlashcardsCompanion(')
          ..write('id: $id, ')
          ..write('pdfId: $pdfId, ')
          ..write('question: $question, ')
          ..write('answer: $answer, ')
          ..write('type: $type, ')
          ..write('options: $options, ')
          ..write('correctOptionIndex: $correctOptionIndex, ')
          ..write('topic: $topic, ')
          ..write('intervalDays: $intervalDays, ')
          ..write('easeFactor: $easeFactor, ')
          ..write('nextReviewAt: $nextReviewAt, ')
          ..write('successiveCorrect: $successiveCorrect, ')
          ..write('wrongCount: $wrongCount, ')
          ..write('sourceKey: $sourceKey')
          ..write(')'))
        .toString();
  }
}

class $StudyPlansTable extends StudyPlans
    with TableInfo<$StudyPlansTable, StudyPlan> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StudyPlansTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _dayMeta = const VerificationMeta('day');
  @override
  late final GeneratedColumn<int> day = GeneratedColumn<int>(
    'day',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pdfIdMeta = const VerificationMeta('pdfId');
  @override
  late final GeneratedColumn<int> pdfId = GeneratedColumn<int>(
    'pdfId',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pdfTitleMeta = const VerificationMeta(
    'pdfTitle',
  );
  @override
  late final GeneratedColumn<String> pdfTitle = GeneratedColumn<String>(
    'pdfTitle',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _topicMeta = const VerificationMeta('topic');
  @override
  late final GeneratedColumn<String> topic = GeneratedColumn<String>(
    'topic',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _timeframeMinutesMeta = const VerificationMeta(
    'timeframeMinutes',
  );
  @override
  late final GeneratedColumn<int> timeframeMinutes = GeneratedColumn<int>(
    'timeframeMinutes',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _startPageMeta = const VerificationMeta(
    'startPage',
  );
  @override
  late final GeneratedColumn<int> startPage = GeneratedColumn<int>(
    'startPage',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _endPageMeta = const VerificationMeta(
    'endPage',
  );
  @override
  late final GeneratedColumn<int> endPage = GeneratedColumn<int>(
    'endPage',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _completedMeta = const VerificationMeta(
    'completed',
  );
  @override
  late final GeneratedColumn<bool> completed = GeneratedColumn<bool>(
    'completed',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("completed" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _sourceMeta = const VerificationMeta('source');
  @override
  late final GeneratedColumn<String> source = GeneratedColumn<String>(
    'source',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('AI'),
  );
  static const VerificationMeta _sourceTypeMeta = const VerificationMeta(
    'sourceType',
  );
  @override
  late final GeneratedColumn<String> sourceType = GeneratedColumn<String>(
    'sourceType',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('PDF'),
  );
  static const VerificationMeta _chapterIdMeta = const VerificationMeta(
    'chapterId',
  );
  @override
  late final GeneratedColumn<String> chapterId = GeneratedColumn<String>(
    'chapterId',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _modeMeta = const VerificationMeta('mode');
  @override
  late final GeneratedColumn<String> mode = GeneratedColumn<String>(
    'mode',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _courseIdMeta = const VerificationMeta(
    'courseId',
  );
  @override
  late final GeneratedColumn<String> courseId = GeneratedColumn<String>(
    'courseId',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    day,
    pdfId,
    pdfTitle,
    topic,
    timeframeMinutes,
    startPage,
    endPage,
    completed,
    source,
    sourceType,
    chapterId,
    mode,
    courseId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'study_plans';
  @override
  VerificationContext validateIntegrity(
    Insertable<StudyPlan> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('day')) {
      context.handle(
        _dayMeta,
        day.isAcceptableOrUnknown(data['day']!, _dayMeta),
      );
    } else if (isInserting) {
      context.missing(_dayMeta);
    }
    if (data.containsKey('pdfId')) {
      context.handle(
        _pdfIdMeta,
        pdfId.isAcceptableOrUnknown(data['pdfId']!, _pdfIdMeta),
      );
    } else if (isInserting) {
      context.missing(_pdfIdMeta);
    }
    if (data.containsKey('pdfTitle')) {
      context.handle(
        _pdfTitleMeta,
        pdfTitle.isAcceptableOrUnknown(data['pdfTitle']!, _pdfTitleMeta),
      );
    } else if (isInserting) {
      context.missing(_pdfTitleMeta);
    }
    if (data.containsKey('topic')) {
      context.handle(
        _topicMeta,
        topic.isAcceptableOrUnknown(data['topic']!, _topicMeta),
      );
    } else if (isInserting) {
      context.missing(_topicMeta);
    }
    if (data.containsKey('timeframeMinutes')) {
      context.handle(
        _timeframeMinutesMeta,
        timeframeMinutes.isAcceptableOrUnknown(
          data['timeframeMinutes']!,
          _timeframeMinutesMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_timeframeMinutesMeta);
    }
    if (data.containsKey('startPage')) {
      context.handle(
        _startPageMeta,
        startPage.isAcceptableOrUnknown(data['startPage']!, _startPageMeta),
      );
    }
    if (data.containsKey('endPage')) {
      context.handle(
        _endPageMeta,
        endPage.isAcceptableOrUnknown(data['endPage']!, _endPageMeta),
      );
    }
    if (data.containsKey('completed')) {
      context.handle(
        _completedMeta,
        completed.isAcceptableOrUnknown(data['completed']!, _completedMeta),
      );
    }
    if (data.containsKey('source')) {
      context.handle(
        _sourceMeta,
        source.isAcceptableOrUnknown(data['source']!, _sourceMeta),
      );
    }
    if (data.containsKey('sourceType')) {
      context.handle(
        _sourceTypeMeta,
        sourceType.isAcceptableOrUnknown(data['sourceType']!, _sourceTypeMeta),
      );
    }
    if (data.containsKey('chapterId')) {
      context.handle(
        _chapterIdMeta,
        chapterId.isAcceptableOrUnknown(data['chapterId']!, _chapterIdMeta),
      );
    }
    if (data.containsKey('mode')) {
      context.handle(
        _modeMeta,
        mode.isAcceptableOrUnknown(data['mode']!, _modeMeta),
      );
    }
    if (data.containsKey('courseId')) {
      context.handle(
        _courseIdMeta,
        courseId.isAcceptableOrUnknown(data['courseId']!, _courseIdMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StudyPlan map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StudyPlan(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      day: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}day'],
      )!,
      pdfId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pdfId'],
      )!,
      pdfTitle: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}pdfTitle'],
      )!,
      topic: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}topic'],
      )!,
      timeframeMinutes: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}timeframeMinutes'],
      )!,
      startPage: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}startPage'],
      ),
      endPage: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}endPage'],
      ),
      completed: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}completed'],
      )!,
      source: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}source'],
      )!,
      sourceType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sourceType'],
      )!,
      chapterId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}chapterId'],
      ),
      mode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}mode'],
      ),
      courseId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}courseId'],
      ),
    );
  }

  @override
  $StudyPlansTable createAlias(String alias) {
    return $StudyPlansTable(attachedDatabase, alias);
  }
}

class StudyPlan extends DataClass implements Insertable<StudyPlan> {
  final int id;
  final int day;
  final int pdfId;
  final String pdfTitle;
  final String topic;
  final int timeframeMinutes;
  final int? startPage;
  final int? endPage;
  final bool completed;
  final String source;
  final String sourceType;
  final String? chapterId;
  final String? mode;
  final String? courseId;
  const StudyPlan({
    required this.id,
    required this.day,
    required this.pdfId,
    required this.pdfTitle,
    required this.topic,
    required this.timeframeMinutes,
    this.startPage,
    this.endPage,
    required this.completed,
    required this.source,
    required this.sourceType,
    this.chapterId,
    this.mode,
    this.courseId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['day'] = Variable<int>(day);
    map['pdfId'] = Variable<int>(pdfId);
    map['pdfTitle'] = Variable<String>(pdfTitle);
    map['topic'] = Variable<String>(topic);
    map['timeframeMinutes'] = Variable<int>(timeframeMinutes);
    if (!nullToAbsent || startPage != null) {
      map['startPage'] = Variable<int>(startPage);
    }
    if (!nullToAbsent || endPage != null) {
      map['endPage'] = Variable<int>(endPage);
    }
    map['completed'] = Variable<bool>(completed);
    map['source'] = Variable<String>(source);
    map['sourceType'] = Variable<String>(sourceType);
    if (!nullToAbsent || chapterId != null) {
      map['chapterId'] = Variable<String>(chapterId);
    }
    if (!nullToAbsent || mode != null) {
      map['mode'] = Variable<String>(mode);
    }
    if (!nullToAbsent || courseId != null) {
      map['courseId'] = Variable<String>(courseId);
    }
    return map;
  }

  StudyPlansCompanion toCompanion(bool nullToAbsent) {
    return StudyPlansCompanion(
      id: Value(id),
      day: Value(day),
      pdfId: Value(pdfId),
      pdfTitle: Value(pdfTitle),
      topic: Value(topic),
      timeframeMinutes: Value(timeframeMinutes),
      startPage: startPage == null && nullToAbsent
          ? const Value.absent()
          : Value(startPage),
      endPage: endPage == null && nullToAbsent
          ? const Value.absent()
          : Value(endPage),
      completed: Value(completed),
      source: Value(source),
      sourceType: Value(sourceType),
      chapterId: chapterId == null && nullToAbsent
          ? const Value.absent()
          : Value(chapterId),
      mode: mode == null && nullToAbsent ? const Value.absent() : Value(mode),
      courseId: courseId == null && nullToAbsent
          ? const Value.absent()
          : Value(courseId),
    );
  }

  factory StudyPlan.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StudyPlan(
      id: serializer.fromJson<int>(json['id']),
      day: serializer.fromJson<int>(json['day']),
      pdfId: serializer.fromJson<int>(json['pdfId']),
      pdfTitle: serializer.fromJson<String>(json['pdfTitle']),
      topic: serializer.fromJson<String>(json['topic']),
      timeframeMinutes: serializer.fromJson<int>(json['timeframeMinutes']),
      startPage: serializer.fromJson<int?>(json['startPage']),
      endPage: serializer.fromJson<int?>(json['endPage']),
      completed: serializer.fromJson<bool>(json['completed']),
      source: serializer.fromJson<String>(json['source']),
      sourceType: serializer.fromJson<String>(json['sourceType']),
      chapterId: serializer.fromJson<String?>(json['chapterId']),
      mode: serializer.fromJson<String?>(json['mode']),
      courseId: serializer.fromJson<String?>(json['courseId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'day': serializer.toJson<int>(day),
      'pdfId': serializer.toJson<int>(pdfId),
      'pdfTitle': serializer.toJson<String>(pdfTitle),
      'topic': serializer.toJson<String>(topic),
      'timeframeMinutes': serializer.toJson<int>(timeframeMinutes),
      'startPage': serializer.toJson<int?>(startPage),
      'endPage': serializer.toJson<int?>(endPage),
      'completed': serializer.toJson<bool>(completed),
      'source': serializer.toJson<String>(source),
      'sourceType': serializer.toJson<String>(sourceType),
      'chapterId': serializer.toJson<String?>(chapterId),
      'mode': serializer.toJson<String?>(mode),
      'courseId': serializer.toJson<String?>(courseId),
    };
  }

  StudyPlan copyWith({
    int? id,
    int? day,
    int? pdfId,
    String? pdfTitle,
    String? topic,
    int? timeframeMinutes,
    Value<int?> startPage = const Value.absent(),
    Value<int?> endPage = const Value.absent(),
    bool? completed,
    String? source,
    String? sourceType,
    Value<String?> chapterId = const Value.absent(),
    Value<String?> mode = const Value.absent(),
    Value<String?> courseId = const Value.absent(),
  }) => StudyPlan(
    id: id ?? this.id,
    day: day ?? this.day,
    pdfId: pdfId ?? this.pdfId,
    pdfTitle: pdfTitle ?? this.pdfTitle,
    topic: topic ?? this.topic,
    timeframeMinutes: timeframeMinutes ?? this.timeframeMinutes,
    startPage: startPage.present ? startPage.value : this.startPage,
    endPage: endPage.present ? endPage.value : this.endPage,
    completed: completed ?? this.completed,
    source: source ?? this.source,
    sourceType: sourceType ?? this.sourceType,
    chapterId: chapterId.present ? chapterId.value : this.chapterId,
    mode: mode.present ? mode.value : this.mode,
    courseId: courseId.present ? courseId.value : this.courseId,
  );
  StudyPlan copyWithCompanion(StudyPlansCompanion data) {
    return StudyPlan(
      id: data.id.present ? data.id.value : this.id,
      day: data.day.present ? data.day.value : this.day,
      pdfId: data.pdfId.present ? data.pdfId.value : this.pdfId,
      pdfTitle: data.pdfTitle.present ? data.pdfTitle.value : this.pdfTitle,
      topic: data.topic.present ? data.topic.value : this.topic,
      timeframeMinutes: data.timeframeMinutes.present
          ? data.timeframeMinutes.value
          : this.timeframeMinutes,
      startPage: data.startPage.present ? data.startPage.value : this.startPage,
      endPage: data.endPage.present ? data.endPage.value : this.endPage,
      completed: data.completed.present ? data.completed.value : this.completed,
      source: data.source.present ? data.source.value : this.source,
      sourceType: data.sourceType.present
          ? data.sourceType.value
          : this.sourceType,
      chapterId: data.chapterId.present ? data.chapterId.value : this.chapterId,
      mode: data.mode.present ? data.mode.value : this.mode,
      courseId: data.courseId.present ? data.courseId.value : this.courseId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('StudyPlan(')
          ..write('id: $id, ')
          ..write('day: $day, ')
          ..write('pdfId: $pdfId, ')
          ..write('pdfTitle: $pdfTitle, ')
          ..write('topic: $topic, ')
          ..write('timeframeMinutes: $timeframeMinutes, ')
          ..write('startPage: $startPage, ')
          ..write('endPage: $endPage, ')
          ..write('completed: $completed, ')
          ..write('source: $source, ')
          ..write('sourceType: $sourceType, ')
          ..write('chapterId: $chapterId, ')
          ..write('mode: $mode, ')
          ..write('courseId: $courseId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    day,
    pdfId,
    pdfTitle,
    topic,
    timeframeMinutes,
    startPage,
    endPage,
    completed,
    source,
    sourceType,
    chapterId,
    mode,
    courseId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StudyPlan &&
          other.id == this.id &&
          other.day == this.day &&
          other.pdfId == this.pdfId &&
          other.pdfTitle == this.pdfTitle &&
          other.topic == this.topic &&
          other.timeframeMinutes == this.timeframeMinutes &&
          other.startPage == this.startPage &&
          other.endPage == this.endPage &&
          other.completed == this.completed &&
          other.source == this.source &&
          other.sourceType == this.sourceType &&
          other.chapterId == this.chapterId &&
          other.mode == this.mode &&
          other.courseId == this.courseId);
}

class StudyPlansCompanion extends UpdateCompanion<StudyPlan> {
  final Value<int> id;
  final Value<int> day;
  final Value<int> pdfId;
  final Value<String> pdfTitle;
  final Value<String> topic;
  final Value<int> timeframeMinutes;
  final Value<int?> startPage;
  final Value<int?> endPage;
  final Value<bool> completed;
  final Value<String> source;
  final Value<String> sourceType;
  final Value<String?> chapterId;
  final Value<String?> mode;
  final Value<String?> courseId;
  const StudyPlansCompanion({
    this.id = const Value.absent(),
    this.day = const Value.absent(),
    this.pdfId = const Value.absent(),
    this.pdfTitle = const Value.absent(),
    this.topic = const Value.absent(),
    this.timeframeMinutes = const Value.absent(),
    this.startPage = const Value.absent(),
    this.endPage = const Value.absent(),
    this.completed = const Value.absent(),
    this.source = const Value.absent(),
    this.sourceType = const Value.absent(),
    this.chapterId = const Value.absent(),
    this.mode = const Value.absent(),
    this.courseId = const Value.absent(),
  });
  StudyPlansCompanion.insert({
    this.id = const Value.absent(),
    required int day,
    required int pdfId,
    required String pdfTitle,
    required String topic,
    required int timeframeMinutes,
    this.startPage = const Value.absent(),
    this.endPage = const Value.absent(),
    this.completed = const Value.absent(),
    this.source = const Value.absent(),
    this.sourceType = const Value.absent(),
    this.chapterId = const Value.absent(),
    this.mode = const Value.absent(),
    this.courseId = const Value.absent(),
  }) : day = Value(day),
       pdfId = Value(pdfId),
       pdfTitle = Value(pdfTitle),
       topic = Value(topic),
       timeframeMinutes = Value(timeframeMinutes);
  static Insertable<StudyPlan> custom({
    Expression<int>? id,
    Expression<int>? day,
    Expression<int>? pdfId,
    Expression<String>? pdfTitle,
    Expression<String>? topic,
    Expression<int>? timeframeMinutes,
    Expression<int>? startPage,
    Expression<int>? endPage,
    Expression<bool>? completed,
    Expression<String>? source,
    Expression<String>? sourceType,
    Expression<String>? chapterId,
    Expression<String>? mode,
    Expression<String>? courseId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (day != null) 'day': day,
      if (pdfId != null) 'pdfId': pdfId,
      if (pdfTitle != null) 'pdfTitle': pdfTitle,
      if (topic != null) 'topic': topic,
      if (timeframeMinutes != null) 'timeframeMinutes': timeframeMinutes,
      if (startPage != null) 'startPage': startPage,
      if (endPage != null) 'endPage': endPage,
      if (completed != null) 'completed': completed,
      if (source != null) 'source': source,
      if (sourceType != null) 'sourceType': sourceType,
      if (chapterId != null) 'chapterId': chapterId,
      if (mode != null) 'mode': mode,
      if (courseId != null) 'courseId': courseId,
    });
  }

  StudyPlansCompanion copyWith({
    Value<int>? id,
    Value<int>? day,
    Value<int>? pdfId,
    Value<String>? pdfTitle,
    Value<String>? topic,
    Value<int>? timeframeMinutes,
    Value<int?>? startPage,
    Value<int?>? endPage,
    Value<bool>? completed,
    Value<String>? source,
    Value<String>? sourceType,
    Value<String?>? chapterId,
    Value<String?>? mode,
    Value<String?>? courseId,
  }) {
    return StudyPlansCompanion(
      id: id ?? this.id,
      day: day ?? this.day,
      pdfId: pdfId ?? this.pdfId,
      pdfTitle: pdfTitle ?? this.pdfTitle,
      topic: topic ?? this.topic,
      timeframeMinutes: timeframeMinutes ?? this.timeframeMinutes,
      startPage: startPage ?? this.startPage,
      endPage: endPage ?? this.endPage,
      completed: completed ?? this.completed,
      source: source ?? this.source,
      sourceType: sourceType ?? this.sourceType,
      chapterId: chapterId ?? this.chapterId,
      mode: mode ?? this.mode,
      courseId: courseId ?? this.courseId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (day.present) {
      map['day'] = Variable<int>(day.value);
    }
    if (pdfId.present) {
      map['pdfId'] = Variable<int>(pdfId.value);
    }
    if (pdfTitle.present) {
      map['pdfTitle'] = Variable<String>(pdfTitle.value);
    }
    if (topic.present) {
      map['topic'] = Variable<String>(topic.value);
    }
    if (timeframeMinutes.present) {
      map['timeframeMinutes'] = Variable<int>(timeframeMinutes.value);
    }
    if (startPage.present) {
      map['startPage'] = Variable<int>(startPage.value);
    }
    if (endPage.present) {
      map['endPage'] = Variable<int>(endPage.value);
    }
    if (completed.present) {
      map['completed'] = Variable<bool>(completed.value);
    }
    if (source.present) {
      map['source'] = Variable<String>(source.value);
    }
    if (sourceType.present) {
      map['sourceType'] = Variable<String>(sourceType.value);
    }
    if (chapterId.present) {
      map['chapterId'] = Variable<String>(chapterId.value);
    }
    if (mode.present) {
      map['mode'] = Variable<String>(mode.value);
    }
    if (courseId.present) {
      map['courseId'] = Variable<String>(courseId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StudyPlansCompanion(')
          ..write('id: $id, ')
          ..write('day: $day, ')
          ..write('pdfId: $pdfId, ')
          ..write('pdfTitle: $pdfTitle, ')
          ..write('topic: $topic, ')
          ..write('timeframeMinutes: $timeframeMinutes, ')
          ..write('startPage: $startPage, ')
          ..write('endPage: $endPage, ')
          ..write('completed: $completed, ')
          ..write('source: $source, ')
          ..write('sourceType: $sourceType, ')
          ..write('chapterId: $chapterId, ')
          ..write('mode: $mode, ')
          ..write('courseId: $courseId')
          ..write(')'))
        .toString();
  }
}

class $ChatMessagesTable extends ChatMessages
    with TableInfo<$ChatMessagesTable, ChatMessage> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ChatMessagesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _pdfIdMeta = const VerificationMeta('pdfId');
  @override
  late final GeneratedColumn<int> pdfId = GeneratedColumn<int>(
    'pdfId',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _roleMeta = const VerificationMeta('role');
  @override
  late final GeneratedColumn<String> role = GeneratedColumn<String>(
    'role',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _textValueMeta = const VerificationMeta(
    'textValue',
  );
  @override
  late final GeneratedColumn<String> textValue = GeneratedColumn<String>(
    'text',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isAudioMeta = const VerificationMeta(
    'isAudio',
  );
  @override
  late final GeneratedColumn<bool> isAudio = GeneratedColumn<bool>(
    'isAudio',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("isAudio" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _audioDataMeta = const VerificationMeta(
    'audioData',
  );
  @override
  late final GeneratedColumn<String> audioData = GeneratedColumn<String>(
    'audioData',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
    'createdAt',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    pdfId,
    role,
    textValue,
    isAudio,
    audioData,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'chat_messages';
  @override
  VerificationContext validateIntegrity(
    Insertable<ChatMessage> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('pdfId')) {
      context.handle(
        _pdfIdMeta,
        pdfId.isAcceptableOrUnknown(data['pdfId']!, _pdfIdMeta),
      );
    } else if (isInserting) {
      context.missing(_pdfIdMeta);
    }
    if (data.containsKey('role')) {
      context.handle(
        _roleMeta,
        role.isAcceptableOrUnknown(data['role']!, _roleMeta),
      );
    } else if (isInserting) {
      context.missing(_roleMeta);
    }
    if (data.containsKey('text')) {
      context.handle(
        _textValueMeta,
        textValue.isAcceptableOrUnknown(data['text']!, _textValueMeta),
      );
    } else if (isInserting) {
      context.missing(_textValueMeta);
    }
    if (data.containsKey('isAudio')) {
      context.handle(
        _isAudioMeta,
        isAudio.isAcceptableOrUnknown(data['isAudio']!, _isAudioMeta),
      );
    }
    if (data.containsKey('audioData')) {
      context.handle(
        _audioDataMeta,
        audioData.isAcceptableOrUnknown(data['audioData']!, _audioDataMeta),
      );
    }
    if (data.containsKey('createdAt')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ChatMessage map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ChatMessage(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      pdfId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pdfId'],
      )!,
      role: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}role'],
      )!,
      textValue: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}text'],
      )!,
      isAudio: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}isAudio'],
      )!,
      audioData: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}audioData'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}createdAt'],
      )!,
    );
  }

  @override
  $ChatMessagesTable createAlias(String alias) {
    return $ChatMessagesTable(attachedDatabase, alias);
  }
}

class ChatMessage extends DataClass implements Insertable<ChatMessage> {
  final int id;
  final int pdfId;
  final String role;
  final String textValue;
  final bool isAudio;
  final String? audioData;
  final int createdAt;
  const ChatMessage({
    required this.id,
    required this.pdfId,
    required this.role,
    required this.textValue,
    required this.isAudio,
    this.audioData,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['pdfId'] = Variable<int>(pdfId);
    map['role'] = Variable<String>(role);
    map['text'] = Variable<String>(textValue);
    map['isAudio'] = Variable<bool>(isAudio);
    if (!nullToAbsent || audioData != null) {
      map['audioData'] = Variable<String>(audioData);
    }
    map['createdAt'] = Variable<int>(createdAt);
    return map;
  }

  ChatMessagesCompanion toCompanion(bool nullToAbsent) {
    return ChatMessagesCompanion(
      id: Value(id),
      pdfId: Value(pdfId),
      role: Value(role),
      textValue: Value(textValue),
      isAudio: Value(isAudio),
      audioData: audioData == null && nullToAbsent
          ? const Value.absent()
          : Value(audioData),
      createdAt: Value(createdAt),
    );
  }

  factory ChatMessage.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ChatMessage(
      id: serializer.fromJson<int>(json['id']),
      pdfId: serializer.fromJson<int>(json['pdfId']),
      role: serializer.fromJson<String>(json['role']),
      textValue: serializer.fromJson<String>(json['textValue']),
      isAudio: serializer.fromJson<bool>(json['isAudio']),
      audioData: serializer.fromJson<String?>(json['audioData']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'pdfId': serializer.toJson<int>(pdfId),
      'role': serializer.toJson<String>(role),
      'textValue': serializer.toJson<String>(textValue),
      'isAudio': serializer.toJson<bool>(isAudio),
      'audioData': serializer.toJson<String?>(audioData),
      'createdAt': serializer.toJson<int>(createdAt),
    };
  }

  ChatMessage copyWith({
    int? id,
    int? pdfId,
    String? role,
    String? textValue,
    bool? isAudio,
    Value<String?> audioData = const Value.absent(),
    int? createdAt,
  }) => ChatMessage(
    id: id ?? this.id,
    pdfId: pdfId ?? this.pdfId,
    role: role ?? this.role,
    textValue: textValue ?? this.textValue,
    isAudio: isAudio ?? this.isAudio,
    audioData: audioData.present ? audioData.value : this.audioData,
    createdAt: createdAt ?? this.createdAt,
  );
  ChatMessage copyWithCompanion(ChatMessagesCompanion data) {
    return ChatMessage(
      id: data.id.present ? data.id.value : this.id,
      pdfId: data.pdfId.present ? data.pdfId.value : this.pdfId,
      role: data.role.present ? data.role.value : this.role,
      textValue: data.textValue.present ? data.textValue.value : this.textValue,
      isAudio: data.isAudio.present ? data.isAudio.value : this.isAudio,
      audioData: data.audioData.present ? data.audioData.value : this.audioData,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ChatMessage(')
          ..write('id: $id, ')
          ..write('pdfId: $pdfId, ')
          ..write('role: $role, ')
          ..write('textValue: $textValue, ')
          ..write('isAudio: $isAudio, ')
          ..write('audioData: $audioData, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, pdfId, role, textValue, isAudio, audioData, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ChatMessage &&
          other.id == this.id &&
          other.pdfId == this.pdfId &&
          other.role == this.role &&
          other.textValue == this.textValue &&
          other.isAudio == this.isAudio &&
          other.audioData == this.audioData &&
          other.createdAt == this.createdAt);
}

class ChatMessagesCompanion extends UpdateCompanion<ChatMessage> {
  final Value<int> id;
  final Value<int> pdfId;
  final Value<String> role;
  final Value<String> textValue;
  final Value<bool> isAudio;
  final Value<String?> audioData;
  final Value<int> createdAt;
  const ChatMessagesCompanion({
    this.id = const Value.absent(),
    this.pdfId = const Value.absent(),
    this.role = const Value.absent(),
    this.textValue = const Value.absent(),
    this.isAudio = const Value.absent(),
    this.audioData = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  ChatMessagesCompanion.insert({
    this.id = const Value.absent(),
    required int pdfId,
    required String role,
    required String textValue,
    this.isAudio = const Value.absent(),
    this.audioData = const Value.absent(),
    required int createdAt,
  }) : pdfId = Value(pdfId),
       role = Value(role),
       textValue = Value(textValue),
       createdAt = Value(createdAt);
  static Insertable<ChatMessage> custom({
    Expression<int>? id,
    Expression<int>? pdfId,
    Expression<String>? role,
    Expression<String>? textValue,
    Expression<bool>? isAudio,
    Expression<String>? audioData,
    Expression<int>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (pdfId != null) 'pdfId': pdfId,
      if (role != null) 'role': role,
      if (textValue != null) 'text': textValue,
      if (isAudio != null) 'isAudio': isAudio,
      if (audioData != null) 'audioData': audioData,
      if (createdAt != null) 'createdAt': createdAt,
    });
  }

  ChatMessagesCompanion copyWith({
    Value<int>? id,
    Value<int>? pdfId,
    Value<String>? role,
    Value<String>? textValue,
    Value<bool>? isAudio,
    Value<String?>? audioData,
    Value<int>? createdAt,
  }) {
    return ChatMessagesCompanion(
      id: id ?? this.id,
      pdfId: pdfId ?? this.pdfId,
      role: role ?? this.role,
      textValue: textValue ?? this.textValue,
      isAudio: isAudio ?? this.isAudio,
      audioData: audioData ?? this.audioData,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (pdfId.present) {
      map['pdfId'] = Variable<int>(pdfId.value);
    }
    if (role.present) {
      map['role'] = Variable<String>(role.value);
    }
    if (textValue.present) {
      map['text'] = Variable<String>(textValue.value);
    }
    if (isAudio.present) {
      map['isAudio'] = Variable<bool>(isAudio.value);
    }
    if (audioData.present) {
      map['audioData'] = Variable<String>(audioData.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<int>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ChatMessagesCompanion(')
          ..write('id: $id, ')
          ..write('pdfId: $pdfId, ')
          ..write('role: $role, ')
          ..write('textValue: $textValue, ')
          ..write('isAudio: $isAudio, ')
          ..write('audioData: $audioData, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $SmartNotesTable extends SmartNotes
    with TableInfo<$SmartNotesTable, SmartNote> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SmartNotesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _pdfIdMeta = const VerificationMeta('pdfId');
  @override
  late final GeneratedColumn<int> pdfId = GeneratedColumn<int>(
    'pdfId',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pageNumberMeta = const VerificationMeta(
    'pageNumber',
  );
  @override
  late final GeneratedColumn<int> pageNumber = GeneratedColumn<int>(
    'pageNumber',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _termMeta = const VerificationMeta('term');
  @override
  late final GeneratedColumn<String> term = GeneratedColumn<String>(
    'term',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _explanationMeta = const VerificationMeta(
    'explanation',
  );
  @override
  late final GeneratedColumn<String> explanation = GeneratedColumn<String>(
    'explanation',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _xMeta = const VerificationMeta('x');
  @override
  late final GeneratedColumn<double> x = GeneratedColumn<double>(
    'x',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _yMeta = const VerificationMeta('y');
  @override
  late final GeneratedColumn<double> y = GeneratedColumn<double>(
    'y',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _colorHexMeta = const VerificationMeta(
    'colorHex',
  );
  @override
  late final GeneratedColumn<String> colorHex = GeneratedColumn<String>(
    'colorHex',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _pinnedMeta = const VerificationMeta('pinned');
  @override
  late final GeneratedColumn<bool> pinned = GeneratedColumn<bool>(
    'pinned',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("pinned" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    pdfId,
    pageNumber,
    term,
    explanation,
    x,
    y,
    colorHex,
    pinned,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'smart_notes';
  @override
  VerificationContext validateIntegrity(
    Insertable<SmartNote> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('pdfId')) {
      context.handle(
        _pdfIdMeta,
        pdfId.isAcceptableOrUnknown(data['pdfId']!, _pdfIdMeta),
      );
    } else if (isInserting) {
      context.missing(_pdfIdMeta);
    }
    if (data.containsKey('pageNumber')) {
      context.handle(
        _pageNumberMeta,
        pageNumber.isAcceptableOrUnknown(data['pageNumber']!, _pageNumberMeta),
      );
    } else if (isInserting) {
      context.missing(_pageNumberMeta);
    }
    if (data.containsKey('term')) {
      context.handle(
        _termMeta,
        term.isAcceptableOrUnknown(data['term']!, _termMeta),
      );
    } else if (isInserting) {
      context.missing(_termMeta);
    }
    if (data.containsKey('explanation')) {
      context.handle(
        _explanationMeta,
        explanation.isAcceptableOrUnknown(
          data['explanation']!,
          _explanationMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_explanationMeta);
    }
    if (data.containsKey('x')) {
      context.handle(_xMeta, x.isAcceptableOrUnknown(data['x']!, _xMeta));
    }
    if (data.containsKey('y')) {
      context.handle(_yMeta, y.isAcceptableOrUnknown(data['y']!, _yMeta));
    }
    if (data.containsKey('colorHex')) {
      context.handle(
        _colorHexMeta,
        colorHex.isAcceptableOrUnknown(data['colorHex']!, _colorHexMeta),
      );
    }
    if (data.containsKey('pinned')) {
      context.handle(
        _pinnedMeta,
        pinned.isAcceptableOrUnknown(data['pinned']!, _pinnedMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SmartNote map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SmartNote(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      pdfId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pdfId'],
      )!,
      pageNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pageNumber'],
      )!,
      term: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}term'],
      )!,
      explanation: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}explanation'],
      )!,
      x: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}x'],
      )!,
      y: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}y'],
      )!,
      colorHex: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}colorHex'],
      ),
      pinned: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}pinned'],
      )!,
    );
  }

  @override
  $SmartNotesTable createAlias(String alias) {
    return $SmartNotesTable(attachedDatabase, alias);
  }
}

class SmartNote extends DataClass implements Insertable<SmartNote> {
  final int id;
  final int pdfId;
  final int pageNumber;
  final String term;
  final String explanation;
  final double x;
  final double y;
  final String? colorHex;
  final bool pinned;
  const SmartNote({
    required this.id,
    required this.pdfId,
    required this.pageNumber,
    required this.term,
    required this.explanation,
    required this.x,
    required this.y,
    this.colorHex,
    required this.pinned,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['pdfId'] = Variable<int>(pdfId);
    map['pageNumber'] = Variable<int>(pageNumber);
    map['term'] = Variable<String>(term);
    map['explanation'] = Variable<String>(explanation);
    map['x'] = Variable<double>(x);
    map['y'] = Variable<double>(y);
    if (!nullToAbsent || colorHex != null) {
      map['colorHex'] = Variable<String>(colorHex);
    }
    map['pinned'] = Variable<bool>(pinned);
    return map;
  }

  SmartNotesCompanion toCompanion(bool nullToAbsent) {
    return SmartNotesCompanion(
      id: Value(id),
      pdfId: Value(pdfId),
      pageNumber: Value(pageNumber),
      term: Value(term),
      explanation: Value(explanation),
      x: Value(x),
      y: Value(y),
      colorHex: colorHex == null && nullToAbsent
          ? const Value.absent()
          : Value(colorHex),
      pinned: Value(pinned),
    );
  }

  factory SmartNote.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SmartNote(
      id: serializer.fromJson<int>(json['id']),
      pdfId: serializer.fromJson<int>(json['pdfId']),
      pageNumber: serializer.fromJson<int>(json['pageNumber']),
      term: serializer.fromJson<String>(json['term']),
      explanation: serializer.fromJson<String>(json['explanation']),
      x: serializer.fromJson<double>(json['x']),
      y: serializer.fromJson<double>(json['y']),
      colorHex: serializer.fromJson<String?>(json['colorHex']),
      pinned: serializer.fromJson<bool>(json['pinned']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'pdfId': serializer.toJson<int>(pdfId),
      'pageNumber': serializer.toJson<int>(pageNumber),
      'term': serializer.toJson<String>(term),
      'explanation': serializer.toJson<String>(explanation),
      'x': serializer.toJson<double>(x),
      'y': serializer.toJson<double>(y),
      'colorHex': serializer.toJson<String?>(colorHex),
      'pinned': serializer.toJson<bool>(pinned),
    };
  }

  SmartNote copyWith({
    int? id,
    int? pdfId,
    int? pageNumber,
    String? term,
    String? explanation,
    double? x,
    double? y,
    Value<String?> colorHex = const Value.absent(),
    bool? pinned,
  }) => SmartNote(
    id: id ?? this.id,
    pdfId: pdfId ?? this.pdfId,
    pageNumber: pageNumber ?? this.pageNumber,
    term: term ?? this.term,
    explanation: explanation ?? this.explanation,
    x: x ?? this.x,
    y: y ?? this.y,
    colorHex: colorHex.present ? colorHex.value : this.colorHex,
    pinned: pinned ?? this.pinned,
  );
  SmartNote copyWithCompanion(SmartNotesCompanion data) {
    return SmartNote(
      id: data.id.present ? data.id.value : this.id,
      pdfId: data.pdfId.present ? data.pdfId.value : this.pdfId,
      pageNumber: data.pageNumber.present
          ? data.pageNumber.value
          : this.pageNumber,
      term: data.term.present ? data.term.value : this.term,
      explanation: data.explanation.present
          ? data.explanation.value
          : this.explanation,
      x: data.x.present ? data.x.value : this.x,
      y: data.y.present ? data.y.value : this.y,
      colorHex: data.colorHex.present ? data.colorHex.value : this.colorHex,
      pinned: data.pinned.present ? data.pinned.value : this.pinned,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SmartNote(')
          ..write('id: $id, ')
          ..write('pdfId: $pdfId, ')
          ..write('pageNumber: $pageNumber, ')
          ..write('term: $term, ')
          ..write('explanation: $explanation, ')
          ..write('x: $x, ')
          ..write('y: $y, ')
          ..write('colorHex: $colorHex, ')
          ..write('pinned: $pinned')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    pdfId,
    pageNumber,
    term,
    explanation,
    x,
    y,
    colorHex,
    pinned,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SmartNote &&
          other.id == this.id &&
          other.pdfId == this.pdfId &&
          other.pageNumber == this.pageNumber &&
          other.term == this.term &&
          other.explanation == this.explanation &&
          other.x == this.x &&
          other.y == this.y &&
          other.colorHex == this.colorHex &&
          other.pinned == this.pinned);
}

class SmartNotesCompanion extends UpdateCompanion<SmartNote> {
  final Value<int> id;
  final Value<int> pdfId;
  final Value<int> pageNumber;
  final Value<String> term;
  final Value<String> explanation;
  final Value<double> x;
  final Value<double> y;
  final Value<String?> colorHex;
  final Value<bool> pinned;
  const SmartNotesCompanion({
    this.id = const Value.absent(),
    this.pdfId = const Value.absent(),
    this.pageNumber = const Value.absent(),
    this.term = const Value.absent(),
    this.explanation = const Value.absent(),
    this.x = const Value.absent(),
    this.y = const Value.absent(),
    this.colorHex = const Value.absent(),
    this.pinned = const Value.absent(),
  });
  SmartNotesCompanion.insert({
    this.id = const Value.absent(),
    required int pdfId,
    required int pageNumber,
    required String term,
    required String explanation,
    this.x = const Value.absent(),
    this.y = const Value.absent(),
    this.colorHex = const Value.absent(),
    this.pinned = const Value.absent(),
  }) : pdfId = Value(pdfId),
       pageNumber = Value(pageNumber),
       term = Value(term),
       explanation = Value(explanation);
  static Insertable<SmartNote> custom({
    Expression<int>? id,
    Expression<int>? pdfId,
    Expression<int>? pageNumber,
    Expression<String>? term,
    Expression<String>? explanation,
    Expression<double>? x,
    Expression<double>? y,
    Expression<String>? colorHex,
    Expression<bool>? pinned,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (pdfId != null) 'pdfId': pdfId,
      if (pageNumber != null) 'pageNumber': pageNumber,
      if (term != null) 'term': term,
      if (explanation != null) 'explanation': explanation,
      if (x != null) 'x': x,
      if (y != null) 'y': y,
      if (colorHex != null) 'colorHex': colorHex,
      if (pinned != null) 'pinned': pinned,
    });
  }

  SmartNotesCompanion copyWith({
    Value<int>? id,
    Value<int>? pdfId,
    Value<int>? pageNumber,
    Value<String>? term,
    Value<String>? explanation,
    Value<double>? x,
    Value<double>? y,
    Value<String?>? colorHex,
    Value<bool>? pinned,
  }) {
    return SmartNotesCompanion(
      id: id ?? this.id,
      pdfId: pdfId ?? this.pdfId,
      pageNumber: pageNumber ?? this.pageNumber,
      term: term ?? this.term,
      explanation: explanation ?? this.explanation,
      x: x ?? this.x,
      y: y ?? this.y,
      colorHex: colorHex ?? this.colorHex,
      pinned: pinned ?? this.pinned,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (pdfId.present) {
      map['pdfId'] = Variable<int>(pdfId.value);
    }
    if (pageNumber.present) {
      map['pageNumber'] = Variable<int>(pageNumber.value);
    }
    if (term.present) {
      map['term'] = Variable<String>(term.value);
    }
    if (explanation.present) {
      map['explanation'] = Variable<String>(explanation.value);
    }
    if (x.present) {
      map['x'] = Variable<double>(x.value);
    }
    if (y.present) {
      map['y'] = Variable<double>(y.value);
    }
    if (colorHex.present) {
      map['colorHex'] = Variable<String>(colorHex.value);
    }
    if (pinned.present) {
      map['pinned'] = Variable<bool>(pinned.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SmartNotesCompanion(')
          ..write('id: $id, ')
          ..write('pdfId: $pdfId, ')
          ..write('pageNumber: $pageNumber, ')
          ..write('term: $term, ')
          ..write('explanation: $explanation, ')
          ..write('x: $x, ')
          ..write('y: $y, ')
          ..write('colorHex: $colorHex, ')
          ..write('pinned: $pinned')
          ..write(')'))
        .toString();
  }
}

class $TtsCacheTable extends TtsCache
    with TableInfo<$TtsCacheTable, TtsCacheData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TtsCacheTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _textHashMeta = const VerificationMeta(
    'textHash',
  );
  @override
  late final GeneratedColumn<String> textHash = GeneratedColumn<String>(
    'textHash',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _textValueMeta = const VerificationMeta(
    'textValue',
  );
  @override
  late final GeneratedColumn<String> textValue = GeneratedColumn<String>(
    'text',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _audioBase64Meta = const VerificationMeta(
    'audioBase64',
  );
  @override
  late final GeneratedColumn<String> audioBase64 = GeneratedColumn<String>(
    'audioBase64',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
    'createdAt',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    textHash,
    textValue,
    audioBase64,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tts_cache';
  @override
  VerificationContext validateIntegrity(
    Insertable<TtsCacheData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('textHash')) {
      context.handle(
        _textHashMeta,
        textHash.isAcceptableOrUnknown(data['textHash']!, _textHashMeta),
      );
    } else if (isInserting) {
      context.missing(_textHashMeta);
    }
    if (data.containsKey('text')) {
      context.handle(
        _textValueMeta,
        textValue.isAcceptableOrUnknown(data['text']!, _textValueMeta),
      );
    } else if (isInserting) {
      context.missing(_textValueMeta);
    }
    if (data.containsKey('audioBase64')) {
      context.handle(
        _audioBase64Meta,
        audioBase64.isAcceptableOrUnknown(
          data['audioBase64']!,
          _audioBase64Meta,
        ),
      );
    } else if (isInserting) {
      context.missing(_audioBase64Meta);
    }
    if (data.containsKey('createdAt')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {textHash};
  @override
  TtsCacheData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TtsCacheData(
      textHash: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}textHash'],
      )!,
      textValue: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}text'],
      )!,
      audioBase64: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}audioBase64'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}createdAt'],
      )!,
    );
  }

  @override
  $TtsCacheTable createAlias(String alias) {
    return $TtsCacheTable(attachedDatabase, alias);
  }
}

class TtsCacheData extends DataClass implements Insertable<TtsCacheData> {
  final String textHash;
  final String textValue;
  final String audioBase64;
  final int createdAt;
  const TtsCacheData({
    required this.textHash,
    required this.textValue,
    required this.audioBase64,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['textHash'] = Variable<String>(textHash);
    map['text'] = Variable<String>(textValue);
    map['audioBase64'] = Variable<String>(audioBase64);
    map['createdAt'] = Variable<int>(createdAt);
    return map;
  }

  TtsCacheCompanion toCompanion(bool nullToAbsent) {
    return TtsCacheCompanion(
      textHash: Value(textHash),
      textValue: Value(textValue),
      audioBase64: Value(audioBase64),
      createdAt: Value(createdAt),
    );
  }

  factory TtsCacheData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TtsCacheData(
      textHash: serializer.fromJson<String>(json['textHash']),
      textValue: serializer.fromJson<String>(json['textValue']),
      audioBase64: serializer.fromJson<String>(json['audioBase64']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'textHash': serializer.toJson<String>(textHash),
      'textValue': serializer.toJson<String>(textValue),
      'audioBase64': serializer.toJson<String>(audioBase64),
      'createdAt': serializer.toJson<int>(createdAt),
    };
  }

  TtsCacheData copyWith({
    String? textHash,
    String? textValue,
    String? audioBase64,
    int? createdAt,
  }) => TtsCacheData(
    textHash: textHash ?? this.textHash,
    textValue: textValue ?? this.textValue,
    audioBase64: audioBase64 ?? this.audioBase64,
    createdAt: createdAt ?? this.createdAt,
  );
  TtsCacheData copyWithCompanion(TtsCacheCompanion data) {
    return TtsCacheData(
      textHash: data.textHash.present ? data.textHash.value : this.textHash,
      textValue: data.textValue.present ? data.textValue.value : this.textValue,
      audioBase64: data.audioBase64.present
          ? data.audioBase64.value
          : this.audioBase64,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TtsCacheData(')
          ..write('textHash: $textHash, ')
          ..write('textValue: $textValue, ')
          ..write('audioBase64: $audioBase64, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(textHash, textValue, audioBase64, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TtsCacheData &&
          other.textHash == this.textHash &&
          other.textValue == this.textValue &&
          other.audioBase64 == this.audioBase64 &&
          other.createdAt == this.createdAt);
}

class TtsCacheCompanion extends UpdateCompanion<TtsCacheData> {
  final Value<String> textHash;
  final Value<String> textValue;
  final Value<String> audioBase64;
  final Value<int> createdAt;
  final Value<int> rowid;
  const TtsCacheCompanion({
    this.textHash = const Value.absent(),
    this.textValue = const Value.absent(),
    this.audioBase64 = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TtsCacheCompanion.insert({
    required String textHash,
    required String textValue,
    required String audioBase64,
    required int createdAt,
    this.rowid = const Value.absent(),
  }) : textHash = Value(textHash),
       textValue = Value(textValue),
       audioBase64 = Value(audioBase64),
       createdAt = Value(createdAt);
  static Insertable<TtsCacheData> custom({
    Expression<String>? textHash,
    Expression<String>? textValue,
    Expression<String>? audioBase64,
    Expression<int>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (textHash != null) 'textHash': textHash,
      if (textValue != null) 'text': textValue,
      if (audioBase64 != null) 'audioBase64': audioBase64,
      if (createdAt != null) 'createdAt': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TtsCacheCompanion copyWith({
    Value<String>? textHash,
    Value<String>? textValue,
    Value<String>? audioBase64,
    Value<int>? createdAt,
    Value<int>? rowid,
  }) {
    return TtsCacheCompanion(
      textHash: textHash ?? this.textHash,
      textValue: textValue ?? this.textValue,
      audioBase64: audioBase64 ?? this.audioBase64,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (textHash.present) {
      map['textHash'] = Variable<String>(textHash.value);
    }
    if (textValue.present) {
      map['text'] = Variable<String>(textValue.value);
    }
    if (audioBase64.present) {
      map['audioBase64'] = Variable<String>(audioBase64.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<int>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TtsCacheCompanion(')
          ..write('textHash: $textHash, ')
          ..write('textValue: $textValue, ')
          ..write('audioBase64: $audioBase64, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $StudyActivityTable extends StudyActivity
    with TableInfo<$StudyActivityTable, StudyActivityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StudyActivityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<String> date = GeneratedColumn<String>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _minutesStudiedMeta = const VerificationMeta(
    'minutesStudied',
  );
  @override
  late final GeneratedColumn<int> minutesStudied = GeneratedColumn<int>(
    'minutesStudied',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _pagesReadMeta = const VerificationMeta(
    'pagesRead',
  );
  @override
  late final GeneratedColumn<int> pagesRead = GeneratedColumn<int>(
    'pagesRead',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _cardsReviewedMeta = const VerificationMeta(
    'cardsReviewed',
  );
  @override
  late final GeneratedColumn<int> cardsReviewed = GeneratedColumn<int>(
    'cardsReviewed',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    date,
    minutesStudied,
    pagesRead,
    cardsReviewed,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'study_activity';
  @override
  VerificationContext validateIntegrity(
    Insertable<StudyActivityData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('minutesStudied')) {
      context.handle(
        _minutesStudiedMeta,
        minutesStudied.isAcceptableOrUnknown(
          data['minutesStudied']!,
          _minutesStudiedMeta,
        ),
      );
    }
    if (data.containsKey('pagesRead')) {
      context.handle(
        _pagesReadMeta,
        pagesRead.isAcceptableOrUnknown(data['pagesRead']!, _pagesReadMeta),
      );
    }
    if (data.containsKey('cardsReviewed')) {
      context.handle(
        _cardsReviewedMeta,
        cardsReviewed.isAcceptableOrUnknown(
          data['cardsReviewed']!,
          _cardsReviewedMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {date};
  @override
  StudyActivityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StudyActivityData(
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}date'],
      )!,
      minutesStudied: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}minutesStudied'],
      )!,
      pagesRead: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pagesRead'],
      )!,
      cardsReviewed: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}cardsReviewed'],
      )!,
    );
  }

  @override
  $StudyActivityTable createAlias(String alias) {
    return $StudyActivityTable(attachedDatabase, alias);
  }
}

class StudyActivityData extends DataClass
    implements Insertable<StudyActivityData> {
  final String date;
  final int minutesStudied;
  final int pagesRead;
  final int cardsReviewed;
  const StudyActivityData({
    required this.date,
    required this.minutesStudied,
    required this.pagesRead,
    required this.cardsReviewed,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['date'] = Variable<String>(date);
    map['minutesStudied'] = Variable<int>(minutesStudied);
    map['pagesRead'] = Variable<int>(pagesRead);
    map['cardsReviewed'] = Variable<int>(cardsReviewed);
    return map;
  }

  StudyActivityCompanion toCompanion(bool nullToAbsent) {
    return StudyActivityCompanion(
      date: Value(date),
      minutesStudied: Value(minutesStudied),
      pagesRead: Value(pagesRead),
      cardsReviewed: Value(cardsReviewed),
    );
  }

  factory StudyActivityData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StudyActivityData(
      date: serializer.fromJson<String>(json['date']),
      minutesStudied: serializer.fromJson<int>(json['minutesStudied']),
      pagesRead: serializer.fromJson<int>(json['pagesRead']),
      cardsReviewed: serializer.fromJson<int>(json['cardsReviewed']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'date': serializer.toJson<String>(date),
      'minutesStudied': serializer.toJson<int>(minutesStudied),
      'pagesRead': serializer.toJson<int>(pagesRead),
      'cardsReviewed': serializer.toJson<int>(cardsReviewed),
    };
  }

  StudyActivityData copyWith({
    String? date,
    int? minutesStudied,
    int? pagesRead,
    int? cardsReviewed,
  }) => StudyActivityData(
    date: date ?? this.date,
    minutesStudied: minutesStudied ?? this.minutesStudied,
    pagesRead: pagesRead ?? this.pagesRead,
    cardsReviewed: cardsReviewed ?? this.cardsReviewed,
  );
  StudyActivityData copyWithCompanion(StudyActivityCompanion data) {
    return StudyActivityData(
      date: data.date.present ? data.date.value : this.date,
      minutesStudied: data.minutesStudied.present
          ? data.minutesStudied.value
          : this.minutesStudied,
      pagesRead: data.pagesRead.present ? data.pagesRead.value : this.pagesRead,
      cardsReviewed: data.cardsReviewed.present
          ? data.cardsReviewed.value
          : this.cardsReviewed,
    );
  }

  @override
  String toString() {
    return (StringBuffer('StudyActivityData(')
          ..write('date: $date, ')
          ..write('minutesStudied: $minutesStudied, ')
          ..write('pagesRead: $pagesRead, ')
          ..write('cardsReviewed: $cardsReviewed')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(date, minutesStudied, pagesRead, cardsReviewed);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StudyActivityData &&
          other.date == this.date &&
          other.minutesStudied == this.minutesStudied &&
          other.pagesRead == this.pagesRead &&
          other.cardsReviewed == this.cardsReviewed);
}

class StudyActivityCompanion extends UpdateCompanion<StudyActivityData> {
  final Value<String> date;
  final Value<int> minutesStudied;
  final Value<int> pagesRead;
  final Value<int> cardsReviewed;
  final Value<int> rowid;
  const StudyActivityCompanion({
    this.date = const Value.absent(),
    this.minutesStudied = const Value.absent(),
    this.pagesRead = const Value.absent(),
    this.cardsReviewed = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  StudyActivityCompanion.insert({
    required String date,
    this.minutesStudied = const Value.absent(),
    this.pagesRead = const Value.absent(),
    this.cardsReviewed = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : date = Value(date);
  static Insertable<StudyActivityData> custom({
    Expression<String>? date,
    Expression<int>? minutesStudied,
    Expression<int>? pagesRead,
    Expression<int>? cardsReviewed,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (date != null) 'date': date,
      if (minutesStudied != null) 'minutesStudied': minutesStudied,
      if (pagesRead != null) 'pagesRead': pagesRead,
      if (cardsReviewed != null) 'cardsReviewed': cardsReviewed,
      if (rowid != null) 'rowid': rowid,
    });
  }

  StudyActivityCompanion copyWith({
    Value<String>? date,
    Value<int>? minutesStudied,
    Value<int>? pagesRead,
    Value<int>? cardsReviewed,
    Value<int>? rowid,
  }) {
    return StudyActivityCompanion(
      date: date ?? this.date,
      minutesStudied: minutesStudied ?? this.minutesStudied,
      pagesRead: pagesRead ?? this.pagesRead,
      cardsReviewed: cardsReviewed ?? this.cardsReviewed,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (date.present) {
      map['date'] = Variable<String>(date.value);
    }
    if (minutesStudied.present) {
      map['minutesStudied'] = Variable<int>(minutesStudied.value);
    }
    if (pagesRead.present) {
      map['pagesRead'] = Variable<int>(pagesRead.value);
    }
    if (cardsReviewed.present) {
      map['cardsReviewed'] = Variable<int>(cardsReviewed.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StudyActivityCompanion(')
          ..write('date: $date, ')
          ..write('minutesStudied: $minutesStudied, ')
          ..write('pagesRead: $pagesRead, ')
          ..write('cardsReviewed: $cardsReviewed, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $BookmarksTable extends Bookmarks
    with TableInfo<$BookmarksTable, Bookmark> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BookmarksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _pdfIdMeta = const VerificationMeta('pdfId');
  @override
  late final GeneratedColumn<int> pdfId = GeneratedColumn<int>(
    'pdfId',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pageNumberMeta = const VerificationMeta(
    'pageNumber',
  );
  @override
  late final GeneratedColumn<int> pageNumber = GeneratedColumn<int>(
    'pageNumber',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
    'createdAt',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _colorHexMeta = const VerificationMeta(
    'colorHex',
  );
  @override
  late final GeneratedColumn<String> colorHex = GeneratedColumn<String>(
    'colorHex',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    pdfId,
    pageNumber,
    title,
    createdAt,
    colorHex,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'bookmarks';
  @override
  VerificationContext validateIntegrity(
    Insertable<Bookmark> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('pdfId')) {
      context.handle(
        _pdfIdMeta,
        pdfId.isAcceptableOrUnknown(data['pdfId']!, _pdfIdMeta),
      );
    } else if (isInserting) {
      context.missing(_pdfIdMeta);
    }
    if (data.containsKey('pageNumber')) {
      context.handle(
        _pageNumberMeta,
        pageNumber.isAcceptableOrUnknown(data['pageNumber']!, _pageNumberMeta),
      );
    } else if (isInserting) {
      context.missing(_pageNumberMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('createdAt')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('colorHex')) {
      context.handle(
        _colorHexMeta,
        colorHex.isAcceptableOrUnknown(data['colorHex']!, _colorHexMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Bookmark map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Bookmark(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      pdfId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pdfId'],
      )!,
      pageNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pageNumber'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}createdAt'],
      )!,
      colorHex: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}colorHex'],
      ),
    );
  }

  @override
  $BookmarksTable createAlias(String alias) {
    return $BookmarksTable(attachedDatabase, alias);
  }
}

class Bookmark extends DataClass implements Insertable<Bookmark> {
  final int id;
  final int pdfId;
  final int pageNumber;
  final String title;
  final int createdAt;
  final String? colorHex;
  const Bookmark({
    required this.id,
    required this.pdfId,
    required this.pageNumber,
    required this.title,
    required this.createdAt,
    this.colorHex,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['pdfId'] = Variable<int>(pdfId);
    map['pageNumber'] = Variable<int>(pageNumber);
    map['title'] = Variable<String>(title);
    map['createdAt'] = Variable<int>(createdAt);
    if (!nullToAbsent || colorHex != null) {
      map['colorHex'] = Variable<String>(colorHex);
    }
    return map;
  }

  BookmarksCompanion toCompanion(bool nullToAbsent) {
    return BookmarksCompanion(
      id: Value(id),
      pdfId: Value(pdfId),
      pageNumber: Value(pageNumber),
      title: Value(title),
      createdAt: Value(createdAt),
      colorHex: colorHex == null && nullToAbsent
          ? const Value.absent()
          : Value(colorHex),
    );
  }

  factory Bookmark.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Bookmark(
      id: serializer.fromJson<int>(json['id']),
      pdfId: serializer.fromJson<int>(json['pdfId']),
      pageNumber: serializer.fromJson<int>(json['pageNumber']),
      title: serializer.fromJson<String>(json['title']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
      colorHex: serializer.fromJson<String?>(json['colorHex']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'pdfId': serializer.toJson<int>(pdfId),
      'pageNumber': serializer.toJson<int>(pageNumber),
      'title': serializer.toJson<String>(title),
      'createdAt': serializer.toJson<int>(createdAt),
      'colorHex': serializer.toJson<String?>(colorHex),
    };
  }

  Bookmark copyWith({
    int? id,
    int? pdfId,
    int? pageNumber,
    String? title,
    int? createdAt,
    Value<String?> colorHex = const Value.absent(),
  }) => Bookmark(
    id: id ?? this.id,
    pdfId: pdfId ?? this.pdfId,
    pageNumber: pageNumber ?? this.pageNumber,
    title: title ?? this.title,
    createdAt: createdAt ?? this.createdAt,
    colorHex: colorHex.present ? colorHex.value : this.colorHex,
  );
  Bookmark copyWithCompanion(BookmarksCompanion data) {
    return Bookmark(
      id: data.id.present ? data.id.value : this.id,
      pdfId: data.pdfId.present ? data.pdfId.value : this.pdfId,
      pageNumber: data.pageNumber.present
          ? data.pageNumber.value
          : this.pageNumber,
      title: data.title.present ? data.title.value : this.title,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      colorHex: data.colorHex.present ? data.colorHex.value : this.colorHex,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Bookmark(')
          ..write('id: $id, ')
          ..write('pdfId: $pdfId, ')
          ..write('pageNumber: $pageNumber, ')
          ..write('title: $title, ')
          ..write('createdAt: $createdAt, ')
          ..write('colorHex: $colorHex')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, pdfId, pageNumber, title, createdAt, colorHex);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Bookmark &&
          other.id == this.id &&
          other.pdfId == this.pdfId &&
          other.pageNumber == this.pageNumber &&
          other.title == this.title &&
          other.createdAt == this.createdAt &&
          other.colorHex == this.colorHex);
}

class BookmarksCompanion extends UpdateCompanion<Bookmark> {
  final Value<int> id;
  final Value<int> pdfId;
  final Value<int> pageNumber;
  final Value<String> title;
  final Value<int> createdAt;
  final Value<String?> colorHex;
  const BookmarksCompanion({
    this.id = const Value.absent(),
    this.pdfId = const Value.absent(),
    this.pageNumber = const Value.absent(),
    this.title = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.colorHex = const Value.absent(),
  });
  BookmarksCompanion.insert({
    this.id = const Value.absent(),
    required int pdfId,
    required int pageNumber,
    required String title,
    required int createdAt,
    this.colorHex = const Value.absent(),
  }) : pdfId = Value(pdfId),
       pageNumber = Value(pageNumber),
       title = Value(title),
       createdAt = Value(createdAt);
  static Insertable<Bookmark> custom({
    Expression<int>? id,
    Expression<int>? pdfId,
    Expression<int>? pageNumber,
    Expression<String>? title,
    Expression<int>? createdAt,
    Expression<String>? colorHex,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (pdfId != null) 'pdfId': pdfId,
      if (pageNumber != null) 'pageNumber': pageNumber,
      if (title != null) 'title': title,
      if (createdAt != null) 'createdAt': createdAt,
      if (colorHex != null) 'colorHex': colorHex,
    });
  }

  BookmarksCompanion copyWith({
    Value<int>? id,
    Value<int>? pdfId,
    Value<int>? pageNumber,
    Value<String>? title,
    Value<int>? createdAt,
    Value<String?>? colorHex,
  }) {
    return BookmarksCompanion(
      id: id ?? this.id,
      pdfId: pdfId ?? this.pdfId,
      pageNumber: pageNumber ?? this.pageNumber,
      title: title ?? this.title,
      createdAt: createdAt ?? this.createdAt,
      colorHex: colorHex ?? this.colorHex,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (pdfId.present) {
      map['pdfId'] = Variable<int>(pdfId.value);
    }
    if (pageNumber.present) {
      map['pageNumber'] = Variable<int>(pageNumber.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<int>(createdAt.value);
    }
    if (colorHex.present) {
      map['colorHex'] = Variable<String>(colorHex.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BookmarksCompanion(')
          ..write('id: $id, ')
          ..write('pdfId: $pdfId, ')
          ..write('pageNumber: $pageNumber, ')
          ..write('title: $title, ')
          ..write('createdAt: $createdAt, ')
          ..write('colorHex: $colorHex')
          ..write(')'))
        .toString();
  }
}

class $AnnotationsTable extends Annotations
    with TableInfo<$AnnotationsTable, Annotation> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AnnotationsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _pdfIdMeta = const VerificationMeta('pdfId');
  @override
  late final GeneratedColumn<int> pdfId = GeneratedColumn<int>(
    'pdfId',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pageNumberMeta = const VerificationMeta(
    'pageNumber',
  );
  @override
  late final GeneratedColumn<int> pageNumber = GeneratedColumn<int>(
    'pageNumber',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pathDataJsonMeta = const VerificationMeta(
    'pathDataJson',
  );
  @override
  late final GeneratedColumn<String> pathDataJson = GeneratedColumn<String>(
    'pathDataJson',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _colorHexMeta = const VerificationMeta(
    'colorHex',
  );
  @override
  late final GeneratedColumn<String> colorHex = GeneratedColumn<String>(
    'colorHex',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _strokeWidthMeta = const VerificationMeta(
    'strokeWidth',
  );
  @override
  late final GeneratedColumn<double> strokeWidth = GeneratedColumn<double>(
    'strokeWidth',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
    'createdAt',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    pdfId,
    pageNumber,
    pathDataJson,
    colorHex,
    strokeWidth,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'annotations';
  @override
  VerificationContext validateIntegrity(
    Insertable<Annotation> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('pdfId')) {
      context.handle(
        _pdfIdMeta,
        pdfId.isAcceptableOrUnknown(data['pdfId']!, _pdfIdMeta),
      );
    } else if (isInserting) {
      context.missing(_pdfIdMeta);
    }
    if (data.containsKey('pageNumber')) {
      context.handle(
        _pageNumberMeta,
        pageNumber.isAcceptableOrUnknown(data['pageNumber']!, _pageNumberMeta),
      );
    } else if (isInserting) {
      context.missing(_pageNumberMeta);
    }
    if (data.containsKey('pathDataJson')) {
      context.handle(
        _pathDataJsonMeta,
        pathDataJson.isAcceptableOrUnknown(
          data['pathDataJson']!,
          _pathDataJsonMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_pathDataJsonMeta);
    }
    if (data.containsKey('colorHex')) {
      context.handle(
        _colorHexMeta,
        colorHex.isAcceptableOrUnknown(data['colorHex']!, _colorHexMeta),
      );
    } else if (isInserting) {
      context.missing(_colorHexMeta);
    }
    if (data.containsKey('strokeWidth')) {
      context.handle(
        _strokeWidthMeta,
        strokeWidth.isAcceptableOrUnknown(
          data['strokeWidth']!,
          _strokeWidthMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_strokeWidthMeta);
    }
    if (data.containsKey('createdAt')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Annotation map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Annotation(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      pdfId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pdfId'],
      )!,
      pageNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pageNumber'],
      )!,
      pathDataJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}pathDataJson'],
      )!,
      colorHex: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}colorHex'],
      )!,
      strokeWidth: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}strokeWidth'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}createdAt'],
      )!,
    );
  }

  @override
  $AnnotationsTable createAlias(String alias) {
    return $AnnotationsTable(attachedDatabase, alias);
  }
}

class Annotation extends DataClass implements Insertable<Annotation> {
  final int id;
  final int pdfId;
  final int pageNumber;
  final String pathDataJson;
  final String colorHex;
  final double strokeWidth;
  final int createdAt;
  const Annotation({
    required this.id,
    required this.pdfId,
    required this.pageNumber,
    required this.pathDataJson,
    required this.colorHex,
    required this.strokeWidth,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['pdfId'] = Variable<int>(pdfId);
    map['pageNumber'] = Variable<int>(pageNumber);
    map['pathDataJson'] = Variable<String>(pathDataJson);
    map['colorHex'] = Variable<String>(colorHex);
    map['strokeWidth'] = Variable<double>(strokeWidth);
    map['createdAt'] = Variable<int>(createdAt);
    return map;
  }

  AnnotationsCompanion toCompanion(bool nullToAbsent) {
    return AnnotationsCompanion(
      id: Value(id),
      pdfId: Value(pdfId),
      pageNumber: Value(pageNumber),
      pathDataJson: Value(pathDataJson),
      colorHex: Value(colorHex),
      strokeWidth: Value(strokeWidth),
      createdAt: Value(createdAt),
    );
  }

  factory Annotation.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Annotation(
      id: serializer.fromJson<int>(json['id']),
      pdfId: serializer.fromJson<int>(json['pdfId']),
      pageNumber: serializer.fromJson<int>(json['pageNumber']),
      pathDataJson: serializer.fromJson<String>(json['pathDataJson']),
      colorHex: serializer.fromJson<String>(json['colorHex']),
      strokeWidth: serializer.fromJson<double>(json['strokeWidth']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'pdfId': serializer.toJson<int>(pdfId),
      'pageNumber': serializer.toJson<int>(pageNumber),
      'pathDataJson': serializer.toJson<String>(pathDataJson),
      'colorHex': serializer.toJson<String>(colorHex),
      'strokeWidth': serializer.toJson<double>(strokeWidth),
      'createdAt': serializer.toJson<int>(createdAt),
    };
  }

  Annotation copyWith({
    int? id,
    int? pdfId,
    int? pageNumber,
    String? pathDataJson,
    String? colorHex,
    double? strokeWidth,
    int? createdAt,
  }) => Annotation(
    id: id ?? this.id,
    pdfId: pdfId ?? this.pdfId,
    pageNumber: pageNumber ?? this.pageNumber,
    pathDataJson: pathDataJson ?? this.pathDataJson,
    colorHex: colorHex ?? this.colorHex,
    strokeWidth: strokeWidth ?? this.strokeWidth,
    createdAt: createdAt ?? this.createdAt,
  );
  Annotation copyWithCompanion(AnnotationsCompanion data) {
    return Annotation(
      id: data.id.present ? data.id.value : this.id,
      pdfId: data.pdfId.present ? data.pdfId.value : this.pdfId,
      pageNumber: data.pageNumber.present
          ? data.pageNumber.value
          : this.pageNumber,
      pathDataJson: data.pathDataJson.present
          ? data.pathDataJson.value
          : this.pathDataJson,
      colorHex: data.colorHex.present ? data.colorHex.value : this.colorHex,
      strokeWidth: data.strokeWidth.present
          ? data.strokeWidth.value
          : this.strokeWidth,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Annotation(')
          ..write('id: $id, ')
          ..write('pdfId: $pdfId, ')
          ..write('pageNumber: $pageNumber, ')
          ..write('pathDataJson: $pathDataJson, ')
          ..write('colorHex: $colorHex, ')
          ..write('strokeWidth: $strokeWidth, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    pdfId,
    pageNumber,
    pathDataJson,
    colorHex,
    strokeWidth,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Annotation &&
          other.id == this.id &&
          other.pdfId == this.pdfId &&
          other.pageNumber == this.pageNumber &&
          other.pathDataJson == this.pathDataJson &&
          other.colorHex == this.colorHex &&
          other.strokeWidth == this.strokeWidth &&
          other.createdAt == this.createdAt);
}

class AnnotationsCompanion extends UpdateCompanion<Annotation> {
  final Value<int> id;
  final Value<int> pdfId;
  final Value<int> pageNumber;
  final Value<String> pathDataJson;
  final Value<String> colorHex;
  final Value<double> strokeWidth;
  final Value<int> createdAt;
  const AnnotationsCompanion({
    this.id = const Value.absent(),
    this.pdfId = const Value.absent(),
    this.pageNumber = const Value.absent(),
    this.pathDataJson = const Value.absent(),
    this.colorHex = const Value.absent(),
    this.strokeWidth = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  AnnotationsCompanion.insert({
    this.id = const Value.absent(),
    required int pdfId,
    required int pageNumber,
    required String pathDataJson,
    required String colorHex,
    required double strokeWidth,
    required int createdAt,
  }) : pdfId = Value(pdfId),
       pageNumber = Value(pageNumber),
       pathDataJson = Value(pathDataJson),
       colorHex = Value(colorHex),
       strokeWidth = Value(strokeWidth),
       createdAt = Value(createdAt);
  static Insertable<Annotation> custom({
    Expression<int>? id,
    Expression<int>? pdfId,
    Expression<int>? pageNumber,
    Expression<String>? pathDataJson,
    Expression<String>? colorHex,
    Expression<double>? strokeWidth,
    Expression<int>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (pdfId != null) 'pdfId': pdfId,
      if (pageNumber != null) 'pageNumber': pageNumber,
      if (pathDataJson != null) 'pathDataJson': pathDataJson,
      if (colorHex != null) 'colorHex': colorHex,
      if (strokeWidth != null) 'strokeWidth': strokeWidth,
      if (createdAt != null) 'createdAt': createdAt,
    });
  }

  AnnotationsCompanion copyWith({
    Value<int>? id,
    Value<int>? pdfId,
    Value<int>? pageNumber,
    Value<String>? pathDataJson,
    Value<String>? colorHex,
    Value<double>? strokeWidth,
    Value<int>? createdAt,
  }) {
    return AnnotationsCompanion(
      id: id ?? this.id,
      pdfId: pdfId ?? this.pdfId,
      pageNumber: pageNumber ?? this.pageNumber,
      pathDataJson: pathDataJson ?? this.pathDataJson,
      colorHex: colorHex ?? this.colorHex,
      strokeWidth: strokeWidth ?? this.strokeWidth,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (pdfId.present) {
      map['pdfId'] = Variable<int>(pdfId.value);
    }
    if (pageNumber.present) {
      map['pageNumber'] = Variable<int>(pageNumber.value);
    }
    if (pathDataJson.present) {
      map['pathDataJson'] = Variable<String>(pathDataJson.value);
    }
    if (colorHex.present) {
      map['colorHex'] = Variable<String>(colorHex.value);
    }
    if (strokeWidth.present) {
      map['strokeWidth'] = Variable<double>(strokeWidth.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<int>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AnnotationsCompanion(')
          ..write('id: $id, ')
          ..write('pdfId: $pdfId, ')
          ..write('pageNumber: $pageNumber, ')
          ..write('pathDataJson: $pathDataJson, ')
          ..write('colorHex: $colorHex, ')
          ..write('strokeWidth: $strokeWidth, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $LessonAnnotationsTable extends LessonAnnotations
    with TableInfo<$LessonAnnotationsTable, LessonAnnotation> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LessonAnnotationsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _chapterIdMeta = const VerificationMeta(
    'chapterId',
  );
  @override
  late final GeneratedColumn<String> chapterId = GeneratedColumn<String>(
    'chapterId',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _modeMeta = const VerificationMeta('mode');
  @override
  late final GeneratedColumn<String> mode = GeneratedColumn<String>(
    'mode',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pathDataJsonMeta = const VerificationMeta(
    'pathDataJson',
  );
  @override
  late final GeneratedColumn<String> pathDataJson = GeneratedColumn<String>(
    'pathDataJson',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _colorHexMeta = const VerificationMeta(
    'colorHex',
  );
  @override
  late final GeneratedColumn<String> colorHex = GeneratedColumn<String>(
    'colorHex',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _strokeWidthMeta = const VerificationMeta(
    'strokeWidth',
  );
  @override
  late final GeneratedColumn<double> strokeWidth = GeneratedColumn<double>(
    'strokeWidth',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
    'createdAt',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    chapterId,
    mode,
    pathDataJson,
    colorHex,
    strokeWidth,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'lesson_annotations';
  @override
  VerificationContext validateIntegrity(
    Insertable<LessonAnnotation> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('chapterId')) {
      context.handle(
        _chapterIdMeta,
        chapterId.isAcceptableOrUnknown(data['chapterId']!, _chapterIdMeta),
      );
    } else if (isInserting) {
      context.missing(_chapterIdMeta);
    }
    if (data.containsKey('mode')) {
      context.handle(
        _modeMeta,
        mode.isAcceptableOrUnknown(data['mode']!, _modeMeta),
      );
    } else if (isInserting) {
      context.missing(_modeMeta);
    }
    if (data.containsKey('pathDataJson')) {
      context.handle(
        _pathDataJsonMeta,
        pathDataJson.isAcceptableOrUnknown(
          data['pathDataJson']!,
          _pathDataJsonMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_pathDataJsonMeta);
    }
    if (data.containsKey('colorHex')) {
      context.handle(
        _colorHexMeta,
        colorHex.isAcceptableOrUnknown(data['colorHex']!, _colorHexMeta),
      );
    } else if (isInserting) {
      context.missing(_colorHexMeta);
    }
    if (data.containsKey('strokeWidth')) {
      context.handle(
        _strokeWidthMeta,
        strokeWidth.isAcceptableOrUnknown(
          data['strokeWidth']!,
          _strokeWidthMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_strokeWidthMeta);
    }
    if (data.containsKey('createdAt')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LessonAnnotation map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LessonAnnotation(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      chapterId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}chapterId'],
      )!,
      mode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}mode'],
      )!,
      pathDataJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}pathDataJson'],
      )!,
      colorHex: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}colorHex'],
      )!,
      strokeWidth: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}strokeWidth'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}createdAt'],
      )!,
    );
  }

  @override
  $LessonAnnotationsTable createAlias(String alias) {
    return $LessonAnnotationsTable(attachedDatabase, alias);
  }
}

class LessonAnnotation extends DataClass
    implements Insertable<LessonAnnotation> {
  final int id;
  final String chapterId;
  final String mode;
  final String pathDataJson;
  final String colorHex;
  final double strokeWidth;
  final int createdAt;
  const LessonAnnotation({
    required this.id,
    required this.chapterId,
    required this.mode,
    required this.pathDataJson,
    required this.colorHex,
    required this.strokeWidth,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['chapterId'] = Variable<String>(chapterId);
    map['mode'] = Variable<String>(mode);
    map['pathDataJson'] = Variable<String>(pathDataJson);
    map['colorHex'] = Variable<String>(colorHex);
    map['strokeWidth'] = Variable<double>(strokeWidth);
    map['createdAt'] = Variable<int>(createdAt);
    return map;
  }

  LessonAnnotationsCompanion toCompanion(bool nullToAbsent) {
    return LessonAnnotationsCompanion(
      id: Value(id),
      chapterId: Value(chapterId),
      mode: Value(mode),
      pathDataJson: Value(pathDataJson),
      colorHex: Value(colorHex),
      strokeWidth: Value(strokeWidth),
      createdAt: Value(createdAt),
    );
  }

  factory LessonAnnotation.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LessonAnnotation(
      id: serializer.fromJson<int>(json['id']),
      chapterId: serializer.fromJson<String>(json['chapterId']),
      mode: serializer.fromJson<String>(json['mode']),
      pathDataJson: serializer.fromJson<String>(json['pathDataJson']),
      colorHex: serializer.fromJson<String>(json['colorHex']),
      strokeWidth: serializer.fromJson<double>(json['strokeWidth']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'chapterId': serializer.toJson<String>(chapterId),
      'mode': serializer.toJson<String>(mode),
      'pathDataJson': serializer.toJson<String>(pathDataJson),
      'colorHex': serializer.toJson<String>(colorHex),
      'strokeWidth': serializer.toJson<double>(strokeWidth),
      'createdAt': serializer.toJson<int>(createdAt),
    };
  }

  LessonAnnotation copyWith({
    int? id,
    String? chapterId,
    String? mode,
    String? pathDataJson,
    String? colorHex,
    double? strokeWidth,
    int? createdAt,
  }) => LessonAnnotation(
    id: id ?? this.id,
    chapterId: chapterId ?? this.chapterId,
    mode: mode ?? this.mode,
    pathDataJson: pathDataJson ?? this.pathDataJson,
    colorHex: colorHex ?? this.colorHex,
    strokeWidth: strokeWidth ?? this.strokeWidth,
    createdAt: createdAt ?? this.createdAt,
  );
  LessonAnnotation copyWithCompanion(LessonAnnotationsCompanion data) {
    return LessonAnnotation(
      id: data.id.present ? data.id.value : this.id,
      chapterId: data.chapterId.present ? data.chapterId.value : this.chapterId,
      mode: data.mode.present ? data.mode.value : this.mode,
      pathDataJson: data.pathDataJson.present
          ? data.pathDataJson.value
          : this.pathDataJson,
      colorHex: data.colorHex.present ? data.colorHex.value : this.colorHex,
      strokeWidth: data.strokeWidth.present
          ? data.strokeWidth.value
          : this.strokeWidth,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LessonAnnotation(')
          ..write('id: $id, ')
          ..write('chapterId: $chapterId, ')
          ..write('mode: $mode, ')
          ..write('pathDataJson: $pathDataJson, ')
          ..write('colorHex: $colorHex, ')
          ..write('strokeWidth: $strokeWidth, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    chapterId,
    mode,
    pathDataJson,
    colorHex,
    strokeWidth,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LessonAnnotation &&
          other.id == this.id &&
          other.chapterId == this.chapterId &&
          other.mode == this.mode &&
          other.pathDataJson == this.pathDataJson &&
          other.colorHex == this.colorHex &&
          other.strokeWidth == this.strokeWidth &&
          other.createdAt == this.createdAt);
}

class LessonAnnotationsCompanion extends UpdateCompanion<LessonAnnotation> {
  final Value<int> id;
  final Value<String> chapterId;
  final Value<String> mode;
  final Value<String> pathDataJson;
  final Value<String> colorHex;
  final Value<double> strokeWidth;
  final Value<int> createdAt;
  const LessonAnnotationsCompanion({
    this.id = const Value.absent(),
    this.chapterId = const Value.absent(),
    this.mode = const Value.absent(),
    this.pathDataJson = const Value.absent(),
    this.colorHex = const Value.absent(),
    this.strokeWidth = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  LessonAnnotationsCompanion.insert({
    this.id = const Value.absent(),
    required String chapterId,
    required String mode,
    required String pathDataJson,
    required String colorHex,
    required double strokeWidth,
    required int createdAt,
  }) : chapterId = Value(chapterId),
       mode = Value(mode),
       pathDataJson = Value(pathDataJson),
       colorHex = Value(colorHex),
       strokeWidth = Value(strokeWidth),
       createdAt = Value(createdAt);
  static Insertable<LessonAnnotation> custom({
    Expression<int>? id,
    Expression<String>? chapterId,
    Expression<String>? mode,
    Expression<String>? pathDataJson,
    Expression<String>? colorHex,
    Expression<double>? strokeWidth,
    Expression<int>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (chapterId != null) 'chapterId': chapterId,
      if (mode != null) 'mode': mode,
      if (pathDataJson != null) 'pathDataJson': pathDataJson,
      if (colorHex != null) 'colorHex': colorHex,
      if (strokeWidth != null) 'strokeWidth': strokeWidth,
      if (createdAt != null) 'createdAt': createdAt,
    });
  }

  LessonAnnotationsCompanion copyWith({
    Value<int>? id,
    Value<String>? chapterId,
    Value<String>? mode,
    Value<String>? pathDataJson,
    Value<String>? colorHex,
    Value<double>? strokeWidth,
    Value<int>? createdAt,
  }) {
    return LessonAnnotationsCompanion(
      id: id ?? this.id,
      chapterId: chapterId ?? this.chapterId,
      mode: mode ?? this.mode,
      pathDataJson: pathDataJson ?? this.pathDataJson,
      colorHex: colorHex ?? this.colorHex,
      strokeWidth: strokeWidth ?? this.strokeWidth,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (chapterId.present) {
      map['chapterId'] = Variable<String>(chapterId.value);
    }
    if (mode.present) {
      map['mode'] = Variable<String>(mode.value);
    }
    if (pathDataJson.present) {
      map['pathDataJson'] = Variable<String>(pathDataJson.value);
    }
    if (colorHex.present) {
      map['colorHex'] = Variable<String>(colorHex.value);
    }
    if (strokeWidth.present) {
      map['strokeWidth'] = Variable<double>(strokeWidth.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<int>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LessonAnnotationsCompanion(')
          ..write('id: $id, ')
          ..write('chapterId: $chapterId, ')
          ..write('mode: $mode, ')
          ..write('pathDataJson: $pathDataJson, ')
          ..write('colorHex: $colorHex, ')
          ..write('strokeWidth: $strokeWidth, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $TagsTable extends Tags with TableInfo<$TagsTable, Tag> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TagsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _colorHexMeta = const VerificationMeta(
    'colorHex',
  );
  @override
  late final GeneratedColumn<String> colorHex = GeneratedColumn<String>(
    'colorHex',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, colorHex];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tags';
  @override
  VerificationContext validateIntegrity(
    Insertable<Tag> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('colorHex')) {
      context.handle(
        _colorHexMeta,
        colorHex.isAcceptableOrUnknown(data['colorHex']!, _colorHexMeta),
      );
    } else if (isInserting) {
      context.missing(_colorHexMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Tag map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Tag(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      colorHex: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}colorHex'],
      )!,
    );
  }

  @override
  $TagsTable createAlias(String alias) {
    return $TagsTable(attachedDatabase, alias);
  }
}

class Tag extends DataClass implements Insertable<Tag> {
  final int id;
  final String name;
  final String colorHex;
  const Tag({required this.id, required this.name, required this.colorHex});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['colorHex'] = Variable<String>(colorHex);
    return map;
  }

  TagsCompanion toCompanion(bool nullToAbsent) {
    return TagsCompanion(
      id: Value(id),
      name: Value(name),
      colorHex: Value(colorHex),
    );
  }

  factory Tag.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Tag(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      colorHex: serializer.fromJson<String>(json['colorHex']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'colorHex': serializer.toJson<String>(colorHex),
    };
  }

  Tag copyWith({int? id, String? name, String? colorHex}) => Tag(
    id: id ?? this.id,
    name: name ?? this.name,
    colorHex: colorHex ?? this.colorHex,
  );
  Tag copyWithCompanion(TagsCompanion data) {
    return Tag(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      colorHex: data.colorHex.present ? data.colorHex.value : this.colorHex,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Tag(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('colorHex: $colorHex')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, colorHex);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tag &&
          other.id == this.id &&
          other.name == this.name &&
          other.colorHex == this.colorHex);
}

class TagsCompanion extends UpdateCompanion<Tag> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> colorHex;
  const TagsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.colorHex = const Value.absent(),
  });
  TagsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String colorHex,
  }) : name = Value(name),
       colorHex = Value(colorHex);
  static Insertable<Tag> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? colorHex,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (colorHex != null) 'colorHex': colorHex,
    });
  }

  TagsCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String>? colorHex,
  }) {
    return TagsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      colorHex: colorHex ?? this.colorHex,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (colorHex.present) {
      map['colorHex'] = Variable<String>(colorHex.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TagsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('colorHex: $colorHex')
          ..write(')'))
        .toString();
  }
}

class $PdfTagCrossRefsTable extends PdfTagCrossRefs
    with TableInfo<$PdfTagCrossRefsTable, PdfTagCrossRef> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PdfTagCrossRefsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _pdfIdMeta = const VerificationMeta('pdfId');
  @override
  late final GeneratedColumn<int> pdfId = GeneratedColumn<int>(
    'pdfId',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _tagIdMeta = const VerificationMeta('tagId');
  @override
  late final GeneratedColumn<int> tagId = GeneratedColumn<int>(
    'tagId',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [pdfId, tagId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pdf_tag_cross_ref';
  @override
  VerificationContext validateIntegrity(
    Insertable<PdfTagCrossRef> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('pdfId')) {
      context.handle(
        _pdfIdMeta,
        pdfId.isAcceptableOrUnknown(data['pdfId']!, _pdfIdMeta),
      );
    } else if (isInserting) {
      context.missing(_pdfIdMeta);
    }
    if (data.containsKey('tagId')) {
      context.handle(
        _tagIdMeta,
        tagId.isAcceptableOrUnknown(data['tagId']!, _tagIdMeta),
      );
    } else if (isInserting) {
      context.missing(_tagIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {pdfId, tagId};
  @override
  PdfTagCrossRef map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PdfTagCrossRef(
      pdfId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pdfId'],
      )!,
      tagId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}tagId'],
      )!,
    );
  }

  @override
  $PdfTagCrossRefsTable createAlias(String alias) {
    return $PdfTagCrossRefsTable(attachedDatabase, alias);
  }
}

class PdfTagCrossRef extends DataClass implements Insertable<PdfTagCrossRef> {
  final int pdfId;
  final int tagId;
  const PdfTagCrossRef({required this.pdfId, required this.tagId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['pdfId'] = Variable<int>(pdfId);
    map['tagId'] = Variable<int>(tagId);
    return map;
  }

  PdfTagCrossRefsCompanion toCompanion(bool nullToAbsent) {
    return PdfTagCrossRefsCompanion(pdfId: Value(pdfId), tagId: Value(tagId));
  }

  factory PdfTagCrossRef.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PdfTagCrossRef(
      pdfId: serializer.fromJson<int>(json['pdfId']),
      tagId: serializer.fromJson<int>(json['tagId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'pdfId': serializer.toJson<int>(pdfId),
      'tagId': serializer.toJson<int>(tagId),
    };
  }

  PdfTagCrossRef copyWith({int? pdfId, int? tagId}) =>
      PdfTagCrossRef(pdfId: pdfId ?? this.pdfId, tagId: tagId ?? this.tagId);
  PdfTagCrossRef copyWithCompanion(PdfTagCrossRefsCompanion data) {
    return PdfTagCrossRef(
      pdfId: data.pdfId.present ? data.pdfId.value : this.pdfId,
      tagId: data.tagId.present ? data.tagId.value : this.tagId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PdfTagCrossRef(')
          ..write('pdfId: $pdfId, ')
          ..write('tagId: $tagId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(pdfId, tagId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PdfTagCrossRef &&
          other.pdfId == this.pdfId &&
          other.tagId == this.tagId);
}

class PdfTagCrossRefsCompanion extends UpdateCompanion<PdfTagCrossRef> {
  final Value<int> pdfId;
  final Value<int> tagId;
  final Value<int> rowid;
  const PdfTagCrossRefsCompanion({
    this.pdfId = const Value.absent(),
    this.tagId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PdfTagCrossRefsCompanion.insert({
    required int pdfId,
    required int tagId,
    this.rowid = const Value.absent(),
  }) : pdfId = Value(pdfId),
       tagId = Value(tagId);
  static Insertable<PdfTagCrossRef> custom({
    Expression<int>? pdfId,
    Expression<int>? tagId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (pdfId != null) 'pdfId': pdfId,
      if (tagId != null) 'tagId': tagId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PdfTagCrossRefsCompanion copyWith({
    Value<int>? pdfId,
    Value<int>? tagId,
    Value<int>? rowid,
  }) {
    return PdfTagCrossRefsCompanion(
      pdfId: pdfId ?? this.pdfId,
      tagId: tagId ?? this.tagId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (pdfId.present) {
      map['pdfId'] = Variable<int>(pdfId.value);
    }
    if (tagId.present) {
      map['tagId'] = Variable<int>(tagId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PdfTagCrossRefsCompanion(')
          ..write('pdfId: $pdfId, ')
          ..write('tagId: $tagId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AchievementsTable extends Achievements
    with TableInfo<$AchievementsTable, Achievement> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AchievementsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _unlockedAtMeta = const VerificationMeta(
    'unlockedAt',
  );
  @override
  late final GeneratedColumn<int> unlockedAt = GeneratedColumn<int>(
    'unlockedAt',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, title, description, unlockedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'achievements';
  @override
  VerificationContext validateIntegrity(
    Insertable<Achievement> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('unlockedAt')) {
      context.handle(
        _unlockedAtMeta,
        unlockedAt.isAcceptableOrUnknown(data['unlockedAt']!, _unlockedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Achievement map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Achievement(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      unlockedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}unlockedAt'],
      ),
    );
  }

  @override
  $AchievementsTable createAlias(String alias) {
    return $AchievementsTable(attachedDatabase, alias);
  }
}

class Achievement extends DataClass implements Insertable<Achievement> {
  final String id;
  final String title;
  final String description;
  final int? unlockedAt;
  const Achievement({
    required this.id,
    required this.title,
    required this.description,
    this.unlockedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    if (!nullToAbsent || unlockedAt != null) {
      map['unlockedAt'] = Variable<int>(unlockedAt);
    }
    return map;
  }

  AchievementsCompanion toCompanion(bool nullToAbsent) {
    return AchievementsCompanion(
      id: Value(id),
      title: Value(title),
      description: Value(description),
      unlockedAt: unlockedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(unlockedAt),
    );
  }

  factory Achievement.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Achievement(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      unlockedAt: serializer.fromJson<int?>(json['unlockedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'unlockedAt': serializer.toJson<int?>(unlockedAt),
    };
  }

  Achievement copyWith({
    String? id,
    String? title,
    String? description,
    Value<int?> unlockedAt = const Value.absent(),
  }) => Achievement(
    id: id ?? this.id,
    title: title ?? this.title,
    description: description ?? this.description,
    unlockedAt: unlockedAt.present ? unlockedAt.value : this.unlockedAt,
  );
  Achievement copyWithCompanion(AchievementsCompanion data) {
    return Achievement(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      description: data.description.present
          ? data.description.value
          : this.description,
      unlockedAt: data.unlockedAt.present
          ? data.unlockedAt.value
          : this.unlockedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Achievement(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('unlockedAt: $unlockedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, description, unlockedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Achievement &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.unlockedAt == this.unlockedAt);
}

class AchievementsCompanion extends UpdateCompanion<Achievement> {
  final Value<String> id;
  final Value<String> title;
  final Value<String> description;
  final Value<int?> unlockedAt;
  final Value<int> rowid;
  const AchievementsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.unlockedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AchievementsCompanion.insert({
    required String id,
    required String title,
    required String description,
    this.unlockedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       title = Value(title),
       description = Value(description);
  static Insertable<Achievement> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<int>? unlockedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (unlockedAt != null) 'unlockedAt': unlockedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AchievementsCompanion copyWith({
    Value<String>? id,
    Value<String>? title,
    Value<String>? description,
    Value<int?>? unlockedAt,
    Value<int>? rowid,
  }) {
    return AchievementsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      unlockedAt: unlockedAt ?? this.unlockedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (unlockedAt.present) {
      map['unlockedAt'] = Variable<int>(unlockedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AchievementsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('unlockedAt: $unlockedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AiJobsTable extends AiJobs with TableInfo<$AiJobsTable, AiJob> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AiJobsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _payloadJsonMeta = const VerificationMeta(
    'payloadJson',
  );
  @override
  late final GeneratedColumn<String> payloadJson = GeneratedColumn<String>(
    'payloadJson',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _retriesMeta = const VerificationMeta(
    'retries',
  );
  @override
  late final GeneratedColumn<int> retries = GeneratedColumn<int>(
    'retries',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
    'createdAt',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<int> updatedAt = GeneratedColumn<int>(
    'updatedAt',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    type,
    payloadJson,
    status,
    retries,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'ai_jobs';
  @override
  VerificationContext validateIntegrity(
    Insertable<AiJob> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('payloadJson')) {
      context.handle(
        _payloadJsonMeta,
        payloadJson.isAcceptableOrUnknown(
          data['payloadJson']!,
          _payloadJsonMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_payloadJsonMeta);
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('retries')) {
      context.handle(
        _retriesMeta,
        retries.isAcceptableOrUnknown(data['retries']!, _retriesMeta),
      );
    }
    if (data.containsKey('createdAt')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['createdAt']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updatedAt')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updatedAt']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AiJob map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AiJob(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      payloadJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}payloadJson'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      retries: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}retries'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}createdAt'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}updatedAt'],
      )!,
    );
  }

  @override
  $AiJobsTable createAlias(String alias) {
    return $AiJobsTable(attachedDatabase, alias);
  }
}

class AiJob extends DataClass implements Insertable<AiJob> {
  final int id;
  final String type;
  final String payloadJson;
  final String status;
  final int retries;
  final int createdAt;
  final int updatedAt;
  const AiJob({
    required this.id,
    required this.type,
    required this.payloadJson,
    required this.status,
    required this.retries,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['type'] = Variable<String>(type);
    map['payloadJson'] = Variable<String>(payloadJson);
    map['status'] = Variable<String>(status);
    map['retries'] = Variable<int>(retries);
    map['createdAt'] = Variable<int>(createdAt);
    map['updatedAt'] = Variable<int>(updatedAt);
    return map;
  }

  AiJobsCompanion toCompanion(bool nullToAbsent) {
    return AiJobsCompanion(
      id: Value(id),
      type: Value(type),
      payloadJson: Value(payloadJson),
      status: Value(status),
      retries: Value(retries),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory AiJob.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AiJob(
      id: serializer.fromJson<int>(json['id']),
      type: serializer.fromJson<String>(json['type']),
      payloadJson: serializer.fromJson<String>(json['payloadJson']),
      status: serializer.fromJson<String>(json['status']),
      retries: serializer.fromJson<int>(json['retries']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
      updatedAt: serializer.fromJson<int>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'type': serializer.toJson<String>(type),
      'payloadJson': serializer.toJson<String>(payloadJson),
      'status': serializer.toJson<String>(status),
      'retries': serializer.toJson<int>(retries),
      'createdAt': serializer.toJson<int>(createdAt),
      'updatedAt': serializer.toJson<int>(updatedAt),
    };
  }

  AiJob copyWith({
    int? id,
    String? type,
    String? payloadJson,
    String? status,
    int? retries,
    int? createdAt,
    int? updatedAt,
  }) => AiJob(
    id: id ?? this.id,
    type: type ?? this.type,
    payloadJson: payloadJson ?? this.payloadJson,
    status: status ?? this.status,
    retries: retries ?? this.retries,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  AiJob copyWithCompanion(AiJobsCompanion data) {
    return AiJob(
      id: data.id.present ? data.id.value : this.id,
      type: data.type.present ? data.type.value : this.type,
      payloadJson: data.payloadJson.present
          ? data.payloadJson.value
          : this.payloadJson,
      status: data.status.present ? data.status.value : this.status,
      retries: data.retries.present ? data.retries.value : this.retries,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AiJob(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('payloadJson: $payloadJson, ')
          ..write('status: $status, ')
          ..write('retries: $retries, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, type, payloadJson, status, retries, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AiJob &&
          other.id == this.id &&
          other.type == this.type &&
          other.payloadJson == this.payloadJson &&
          other.status == this.status &&
          other.retries == this.retries &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class AiJobsCompanion extends UpdateCompanion<AiJob> {
  final Value<int> id;
  final Value<String> type;
  final Value<String> payloadJson;
  final Value<String> status;
  final Value<int> retries;
  final Value<int> createdAt;
  final Value<int> updatedAt;
  const AiJobsCompanion({
    this.id = const Value.absent(),
    this.type = const Value.absent(),
    this.payloadJson = const Value.absent(),
    this.status = const Value.absent(),
    this.retries = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  AiJobsCompanion.insert({
    this.id = const Value.absent(),
    required String type,
    required String payloadJson,
    required String status,
    this.retries = const Value.absent(),
    required int createdAt,
    required int updatedAt,
  }) : type = Value(type),
       payloadJson = Value(payloadJson),
       status = Value(status),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<AiJob> custom({
    Expression<int>? id,
    Expression<String>? type,
    Expression<String>? payloadJson,
    Expression<String>? status,
    Expression<int>? retries,
    Expression<int>? createdAt,
    Expression<int>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (payloadJson != null) 'payloadJson': payloadJson,
      if (status != null) 'status': status,
      if (retries != null) 'retries': retries,
      if (createdAt != null) 'createdAt': createdAt,
      if (updatedAt != null) 'updatedAt': updatedAt,
    });
  }

  AiJobsCompanion copyWith({
    Value<int>? id,
    Value<String>? type,
    Value<String>? payloadJson,
    Value<String>? status,
    Value<int>? retries,
    Value<int>? createdAt,
    Value<int>? updatedAt,
  }) {
    return AiJobsCompanion(
      id: id ?? this.id,
      type: type ?? this.type,
      payloadJson: payloadJson ?? this.payloadJson,
      status: status ?? this.status,
      retries: retries ?? this.retries,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (payloadJson.present) {
      map['payloadJson'] = Variable<String>(payloadJson.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (retries.present) {
      map['retries'] = Variable<int>(retries.value);
    }
    if (createdAt.present) {
      map['createdAt'] = Variable<int>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updatedAt'] = Variable<int>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AiJobsCompanion(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('payloadJson: $payloadJson, ')
          ..write('status: $status, ')
          ..write('retries: $retries, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $CourseCacheTable extends CourseCache
    with TableInfo<$CourseCacheTable, CourseCacheData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CourseCacheTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleEnMeta = const VerificationMeta(
    'titleEn',
  );
  @override
  late final GeneratedColumn<String> titleEn = GeneratedColumn<String>(
    'titleEn',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String> color = GeneratedColumn<String>(
    'color',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _iconMeta = const VerificationMeta('icon');
  @override
  late final GeneratedColumn<String> icon = GeneratedColumn<String>(
    'icon',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _modeMeta = const VerificationMeta('mode');
  @override
  late final GeneratedColumn<String> mode = GeneratedColumn<String>(
    'mode',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _rootMeta = const VerificationMeta('root');
  @override
  late final GeneratedColumn<String> root = GeneratedColumn<String>(
    'root',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sortOrderMeta = const VerificationMeta(
    'sortOrder',
  );
  @override
  late final GeneratedColumn<int> sortOrder = GeneratedColumn<int>(
    'sortOrder',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isReadyMeta = const VerificationMeta(
    'isReady',
  );
  @override
  late final GeneratedColumn<bool> isReady = GeneratedColumn<bool>(
    'isReady',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("isReady" IN (0, 1))',
    ),
  );
  static const VerificationMeta _chapterCountMeta = const VerificationMeta(
    'chapterCount',
  );
  @override
  late final GeneratedColumn<int> chapterCount = GeneratedColumn<int>(
    'chapterCount',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lessonCountMeta = const VerificationMeta(
    'lessonCount',
  );
  @override
  late final GeneratedColumn<int> lessonCount = GeneratedColumn<int>(
    'lessonCount',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _structureJsonMeta = const VerificationMeta(
    'structureJson',
  );
  @override
  late final GeneratedColumn<String> structureJson = GeneratedColumn<String>(
    'structureJson',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _chaptersJsonMeta = const VerificationMeta(
    'chaptersJson',
  );
  @override
  late final GeneratedColumn<String> chaptersJson = GeneratedColumn<String>(
    'chaptersJson',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _contentHashMeta = const VerificationMeta(
    'contentHash',
  );
  @override
  late final GeneratedColumn<String> contentHash = GeneratedColumn<String>(
    'contentHash',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _cachedAtMeta = const VerificationMeta(
    'cachedAt',
  );
  @override
  late final GeneratedColumn<int> cachedAt = GeneratedColumn<int>(
    'cachedAt',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    titleEn,
    color,
    icon,
    mode,
    root,
    sortOrder,
    isReady,
    chapterCount,
    lessonCount,
    structureJson,
    chaptersJson,
    contentHash,
    cachedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'course_cache';
  @override
  VerificationContext validateIntegrity(
    Insertable<CourseCacheData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('titleEn')) {
      context.handle(
        _titleEnMeta,
        titleEn.isAcceptableOrUnknown(data['titleEn']!, _titleEnMeta),
      );
    } else if (isInserting) {
      context.missing(_titleEnMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
        _colorMeta,
        color.isAcceptableOrUnknown(data['color']!, _colorMeta),
      );
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    if (data.containsKey('icon')) {
      context.handle(
        _iconMeta,
        icon.isAcceptableOrUnknown(data['icon']!, _iconMeta),
      );
    }
    if (data.containsKey('mode')) {
      context.handle(
        _modeMeta,
        mode.isAcceptableOrUnknown(data['mode']!, _modeMeta),
      );
    } else if (isInserting) {
      context.missing(_modeMeta);
    }
    if (data.containsKey('root')) {
      context.handle(
        _rootMeta,
        root.isAcceptableOrUnknown(data['root']!, _rootMeta),
      );
    }
    if (data.containsKey('sortOrder')) {
      context.handle(
        _sortOrderMeta,
        sortOrder.isAcceptableOrUnknown(data['sortOrder']!, _sortOrderMeta),
      );
    } else if (isInserting) {
      context.missing(_sortOrderMeta);
    }
    if (data.containsKey('isReady')) {
      context.handle(
        _isReadyMeta,
        isReady.isAcceptableOrUnknown(data['isReady']!, _isReadyMeta),
      );
    } else if (isInserting) {
      context.missing(_isReadyMeta);
    }
    if (data.containsKey('chapterCount')) {
      context.handle(
        _chapterCountMeta,
        chapterCount.isAcceptableOrUnknown(
          data['chapterCount']!,
          _chapterCountMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_chapterCountMeta);
    }
    if (data.containsKey('lessonCount')) {
      context.handle(
        _lessonCountMeta,
        lessonCount.isAcceptableOrUnknown(
          data['lessonCount']!,
          _lessonCountMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_lessonCountMeta);
    }
    if (data.containsKey('structureJson')) {
      context.handle(
        _structureJsonMeta,
        structureJson.isAcceptableOrUnknown(
          data['structureJson']!,
          _structureJsonMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_structureJsonMeta);
    }
    if (data.containsKey('chaptersJson')) {
      context.handle(
        _chaptersJsonMeta,
        chaptersJson.isAcceptableOrUnknown(
          data['chaptersJson']!,
          _chaptersJsonMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_chaptersJsonMeta);
    }
    if (data.containsKey('contentHash')) {
      context.handle(
        _contentHashMeta,
        contentHash.isAcceptableOrUnknown(
          data['contentHash']!,
          _contentHashMeta,
        ),
      );
    }
    if (data.containsKey('cachedAt')) {
      context.handle(
        _cachedAtMeta,
        cachedAt.isAcceptableOrUnknown(data['cachedAt']!, _cachedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_cachedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CourseCacheData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CourseCacheData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      titleEn: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}titleEn'],
      )!,
      color: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}color'],
      )!,
      icon: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}icon'],
      ),
      mode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}mode'],
      )!,
      root: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}root'],
      ),
      sortOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sortOrder'],
      )!,
      isReady: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}isReady'],
      )!,
      chapterCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}chapterCount'],
      )!,
      lessonCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}lessonCount'],
      )!,
      structureJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}structureJson'],
      )!,
      chaptersJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}chaptersJson'],
      )!,
      contentHash: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}contentHash'],
      ),
      cachedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}cachedAt'],
      )!,
    );
  }

  @override
  $CourseCacheTable createAlias(String alias) {
    return $CourseCacheTable(attachedDatabase, alias);
  }
}

class CourseCacheData extends DataClass implements Insertable<CourseCacheData> {
  final String id;
  final String title;
  final String titleEn;
  final String color;
  final String? icon;
  final String mode;
  final String? root;
  final int sortOrder;
  final bool isReady;
  final int chapterCount;
  final int lessonCount;
  final String structureJson;
  final String chaptersJson;
  final String? contentHash;
  final int cachedAt;
  const CourseCacheData({
    required this.id,
    required this.title,
    required this.titleEn,
    required this.color,
    this.icon,
    required this.mode,
    this.root,
    required this.sortOrder,
    required this.isReady,
    required this.chapterCount,
    required this.lessonCount,
    required this.structureJson,
    required this.chaptersJson,
    this.contentHash,
    required this.cachedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['titleEn'] = Variable<String>(titleEn);
    map['color'] = Variable<String>(color);
    if (!nullToAbsent || icon != null) {
      map['icon'] = Variable<String>(icon);
    }
    map['mode'] = Variable<String>(mode);
    if (!nullToAbsent || root != null) {
      map['root'] = Variable<String>(root);
    }
    map['sortOrder'] = Variable<int>(sortOrder);
    map['isReady'] = Variable<bool>(isReady);
    map['chapterCount'] = Variable<int>(chapterCount);
    map['lessonCount'] = Variable<int>(lessonCount);
    map['structureJson'] = Variable<String>(structureJson);
    map['chaptersJson'] = Variable<String>(chaptersJson);
    if (!nullToAbsent || contentHash != null) {
      map['contentHash'] = Variable<String>(contentHash);
    }
    map['cachedAt'] = Variable<int>(cachedAt);
    return map;
  }

  CourseCacheCompanion toCompanion(bool nullToAbsent) {
    return CourseCacheCompanion(
      id: Value(id),
      title: Value(title),
      titleEn: Value(titleEn),
      color: Value(color),
      icon: icon == null && nullToAbsent ? const Value.absent() : Value(icon),
      mode: Value(mode),
      root: root == null && nullToAbsent ? const Value.absent() : Value(root),
      sortOrder: Value(sortOrder),
      isReady: Value(isReady),
      chapterCount: Value(chapterCount),
      lessonCount: Value(lessonCount),
      structureJson: Value(structureJson),
      chaptersJson: Value(chaptersJson),
      contentHash: contentHash == null && nullToAbsent
          ? const Value.absent()
          : Value(contentHash),
      cachedAt: Value(cachedAt),
    );
  }

  factory CourseCacheData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CourseCacheData(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      titleEn: serializer.fromJson<String>(json['titleEn']),
      color: serializer.fromJson<String>(json['color']),
      icon: serializer.fromJson<String?>(json['icon']),
      mode: serializer.fromJson<String>(json['mode']),
      root: serializer.fromJson<String?>(json['root']),
      sortOrder: serializer.fromJson<int>(json['sortOrder']),
      isReady: serializer.fromJson<bool>(json['isReady']),
      chapterCount: serializer.fromJson<int>(json['chapterCount']),
      lessonCount: serializer.fromJson<int>(json['lessonCount']),
      structureJson: serializer.fromJson<String>(json['structureJson']),
      chaptersJson: serializer.fromJson<String>(json['chaptersJson']),
      contentHash: serializer.fromJson<String?>(json['contentHash']),
      cachedAt: serializer.fromJson<int>(json['cachedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'titleEn': serializer.toJson<String>(titleEn),
      'color': serializer.toJson<String>(color),
      'icon': serializer.toJson<String?>(icon),
      'mode': serializer.toJson<String>(mode),
      'root': serializer.toJson<String?>(root),
      'sortOrder': serializer.toJson<int>(sortOrder),
      'isReady': serializer.toJson<bool>(isReady),
      'chapterCount': serializer.toJson<int>(chapterCount),
      'lessonCount': serializer.toJson<int>(lessonCount),
      'structureJson': serializer.toJson<String>(structureJson),
      'chaptersJson': serializer.toJson<String>(chaptersJson),
      'contentHash': serializer.toJson<String?>(contentHash),
      'cachedAt': serializer.toJson<int>(cachedAt),
    };
  }

  CourseCacheData copyWith({
    String? id,
    String? title,
    String? titleEn,
    String? color,
    Value<String?> icon = const Value.absent(),
    String? mode,
    Value<String?> root = const Value.absent(),
    int? sortOrder,
    bool? isReady,
    int? chapterCount,
    int? lessonCount,
    String? structureJson,
    String? chaptersJson,
    Value<String?> contentHash = const Value.absent(),
    int? cachedAt,
  }) => CourseCacheData(
    id: id ?? this.id,
    title: title ?? this.title,
    titleEn: titleEn ?? this.titleEn,
    color: color ?? this.color,
    icon: icon.present ? icon.value : this.icon,
    mode: mode ?? this.mode,
    root: root.present ? root.value : this.root,
    sortOrder: sortOrder ?? this.sortOrder,
    isReady: isReady ?? this.isReady,
    chapterCount: chapterCount ?? this.chapterCount,
    lessonCount: lessonCount ?? this.lessonCount,
    structureJson: structureJson ?? this.structureJson,
    chaptersJson: chaptersJson ?? this.chaptersJson,
    contentHash: contentHash.present ? contentHash.value : this.contentHash,
    cachedAt: cachedAt ?? this.cachedAt,
  );
  CourseCacheData copyWithCompanion(CourseCacheCompanion data) {
    return CourseCacheData(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      titleEn: data.titleEn.present ? data.titleEn.value : this.titleEn,
      color: data.color.present ? data.color.value : this.color,
      icon: data.icon.present ? data.icon.value : this.icon,
      mode: data.mode.present ? data.mode.value : this.mode,
      root: data.root.present ? data.root.value : this.root,
      sortOrder: data.sortOrder.present ? data.sortOrder.value : this.sortOrder,
      isReady: data.isReady.present ? data.isReady.value : this.isReady,
      chapterCount: data.chapterCount.present
          ? data.chapterCount.value
          : this.chapterCount,
      lessonCount: data.lessonCount.present
          ? data.lessonCount.value
          : this.lessonCount,
      structureJson: data.structureJson.present
          ? data.structureJson.value
          : this.structureJson,
      chaptersJson: data.chaptersJson.present
          ? data.chaptersJson.value
          : this.chaptersJson,
      contentHash: data.contentHash.present
          ? data.contentHash.value
          : this.contentHash,
      cachedAt: data.cachedAt.present ? data.cachedAt.value : this.cachedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CourseCacheData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('titleEn: $titleEn, ')
          ..write('color: $color, ')
          ..write('icon: $icon, ')
          ..write('mode: $mode, ')
          ..write('root: $root, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('isReady: $isReady, ')
          ..write('chapterCount: $chapterCount, ')
          ..write('lessonCount: $lessonCount, ')
          ..write('structureJson: $structureJson, ')
          ..write('chaptersJson: $chaptersJson, ')
          ..write('contentHash: $contentHash, ')
          ..write('cachedAt: $cachedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    title,
    titleEn,
    color,
    icon,
    mode,
    root,
    sortOrder,
    isReady,
    chapterCount,
    lessonCount,
    structureJson,
    chaptersJson,
    contentHash,
    cachedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CourseCacheData &&
          other.id == this.id &&
          other.title == this.title &&
          other.titleEn == this.titleEn &&
          other.color == this.color &&
          other.icon == this.icon &&
          other.mode == this.mode &&
          other.root == this.root &&
          other.sortOrder == this.sortOrder &&
          other.isReady == this.isReady &&
          other.chapterCount == this.chapterCount &&
          other.lessonCount == this.lessonCount &&
          other.structureJson == this.structureJson &&
          other.chaptersJson == this.chaptersJson &&
          other.contentHash == this.contentHash &&
          other.cachedAt == this.cachedAt);
}

class CourseCacheCompanion extends UpdateCompanion<CourseCacheData> {
  final Value<String> id;
  final Value<String> title;
  final Value<String> titleEn;
  final Value<String> color;
  final Value<String?> icon;
  final Value<String> mode;
  final Value<String?> root;
  final Value<int> sortOrder;
  final Value<bool> isReady;
  final Value<int> chapterCount;
  final Value<int> lessonCount;
  final Value<String> structureJson;
  final Value<String> chaptersJson;
  final Value<String?> contentHash;
  final Value<int> cachedAt;
  final Value<int> rowid;
  const CourseCacheCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.titleEn = const Value.absent(),
    this.color = const Value.absent(),
    this.icon = const Value.absent(),
    this.mode = const Value.absent(),
    this.root = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.isReady = const Value.absent(),
    this.chapterCount = const Value.absent(),
    this.lessonCount = const Value.absent(),
    this.structureJson = const Value.absent(),
    this.chaptersJson = const Value.absent(),
    this.contentHash = const Value.absent(),
    this.cachedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CourseCacheCompanion.insert({
    required String id,
    required String title,
    required String titleEn,
    required String color,
    this.icon = const Value.absent(),
    required String mode,
    this.root = const Value.absent(),
    required int sortOrder,
    required bool isReady,
    required int chapterCount,
    required int lessonCount,
    required String structureJson,
    required String chaptersJson,
    this.contentHash = const Value.absent(),
    required int cachedAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       title = Value(title),
       titleEn = Value(titleEn),
       color = Value(color),
       mode = Value(mode),
       sortOrder = Value(sortOrder),
       isReady = Value(isReady),
       chapterCount = Value(chapterCount),
       lessonCount = Value(lessonCount),
       structureJson = Value(structureJson),
       chaptersJson = Value(chaptersJson),
       cachedAt = Value(cachedAt);
  static Insertable<CourseCacheData> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? titleEn,
    Expression<String>? color,
    Expression<String>? icon,
    Expression<String>? mode,
    Expression<String>? root,
    Expression<int>? sortOrder,
    Expression<bool>? isReady,
    Expression<int>? chapterCount,
    Expression<int>? lessonCount,
    Expression<String>? structureJson,
    Expression<String>? chaptersJson,
    Expression<String>? contentHash,
    Expression<int>? cachedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (titleEn != null) 'titleEn': titleEn,
      if (color != null) 'color': color,
      if (icon != null) 'icon': icon,
      if (mode != null) 'mode': mode,
      if (root != null) 'root': root,
      if (sortOrder != null) 'sortOrder': sortOrder,
      if (isReady != null) 'isReady': isReady,
      if (chapterCount != null) 'chapterCount': chapterCount,
      if (lessonCount != null) 'lessonCount': lessonCount,
      if (structureJson != null) 'structureJson': structureJson,
      if (chaptersJson != null) 'chaptersJson': chaptersJson,
      if (contentHash != null) 'contentHash': contentHash,
      if (cachedAt != null) 'cachedAt': cachedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CourseCacheCompanion copyWith({
    Value<String>? id,
    Value<String>? title,
    Value<String>? titleEn,
    Value<String>? color,
    Value<String?>? icon,
    Value<String>? mode,
    Value<String?>? root,
    Value<int>? sortOrder,
    Value<bool>? isReady,
    Value<int>? chapterCount,
    Value<int>? lessonCount,
    Value<String>? structureJson,
    Value<String>? chaptersJson,
    Value<String?>? contentHash,
    Value<int>? cachedAt,
    Value<int>? rowid,
  }) {
    return CourseCacheCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      titleEn: titleEn ?? this.titleEn,
      color: color ?? this.color,
      icon: icon ?? this.icon,
      mode: mode ?? this.mode,
      root: root ?? this.root,
      sortOrder: sortOrder ?? this.sortOrder,
      isReady: isReady ?? this.isReady,
      chapterCount: chapterCount ?? this.chapterCount,
      lessonCount: lessonCount ?? this.lessonCount,
      structureJson: structureJson ?? this.structureJson,
      chaptersJson: chaptersJson ?? this.chaptersJson,
      contentHash: contentHash ?? this.contentHash,
      cachedAt: cachedAt ?? this.cachedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (titleEn.present) {
      map['titleEn'] = Variable<String>(titleEn.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (icon.present) {
      map['icon'] = Variable<String>(icon.value);
    }
    if (mode.present) {
      map['mode'] = Variable<String>(mode.value);
    }
    if (root.present) {
      map['root'] = Variable<String>(root.value);
    }
    if (sortOrder.present) {
      map['sortOrder'] = Variable<int>(sortOrder.value);
    }
    if (isReady.present) {
      map['isReady'] = Variable<bool>(isReady.value);
    }
    if (chapterCount.present) {
      map['chapterCount'] = Variable<int>(chapterCount.value);
    }
    if (lessonCount.present) {
      map['lessonCount'] = Variable<int>(lessonCount.value);
    }
    if (structureJson.present) {
      map['structureJson'] = Variable<String>(structureJson.value);
    }
    if (chaptersJson.present) {
      map['chaptersJson'] = Variable<String>(chaptersJson.value);
    }
    if (contentHash.present) {
      map['contentHash'] = Variable<String>(contentHash.value);
    }
    if (cachedAt.present) {
      map['cachedAt'] = Variable<int>(cachedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CourseCacheCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('titleEn: $titleEn, ')
          ..write('color: $color, ')
          ..write('icon: $icon, ')
          ..write('mode: $mode, ')
          ..write('root: $root, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('isReady: $isReady, ')
          ..write('chapterCount: $chapterCount, ')
          ..write('lessonCount: $lessonCount, ')
          ..write('structureJson: $structureJson, ')
          ..write('chaptersJson: $chaptersJson, ')
          ..write('contentHash: $contentHash, ')
          ..write('cachedAt: $cachedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LessonCacheTable extends LessonCache
    with TableInfo<$LessonCacheTable, LessonCacheData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LessonCacheTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _chapterIdMeta = const VerificationMeta(
    'chapterId',
  );
  @override
  late final GeneratedColumn<String> chapterId = GeneratedColumn<String>(
    'chapterId',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _modeMeta = const VerificationMeta('mode');
  @override
  late final GeneratedColumn<String> mode = GeneratedColumn<String>(
    'mode',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _courseIdMeta = const VerificationMeta(
    'courseId',
  );
  @override
  late final GeneratedColumn<String> courseId = GeneratedColumn<String>(
    'courseId',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _contentJsonMeta = const VerificationMeta(
    'contentJson',
  );
  @override
  late final GeneratedColumn<String> contentJson = GeneratedColumn<String>(
    'contentJson',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _contentHashMeta = const VerificationMeta(
    'contentHash',
  );
  @override
  late final GeneratedColumn<String> contentHash = GeneratedColumn<String>(
    'contentHash',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _cachedAtMeta = const VerificationMeta(
    'cachedAt',
  );
  @override
  late final GeneratedColumn<int> cachedAt = GeneratedColumn<int>(
    'cachedAt',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    chapterId,
    mode,
    courseId,
    title,
    contentJson,
    contentHash,
    cachedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'lesson_cache';
  @override
  VerificationContext validateIntegrity(
    Insertable<LessonCacheData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('chapterId')) {
      context.handle(
        _chapterIdMeta,
        chapterId.isAcceptableOrUnknown(data['chapterId']!, _chapterIdMeta),
      );
    } else if (isInserting) {
      context.missing(_chapterIdMeta);
    }
    if (data.containsKey('mode')) {
      context.handle(
        _modeMeta,
        mode.isAcceptableOrUnknown(data['mode']!, _modeMeta),
      );
    } else if (isInserting) {
      context.missing(_modeMeta);
    }
    if (data.containsKey('courseId')) {
      context.handle(
        _courseIdMeta,
        courseId.isAcceptableOrUnknown(data['courseId']!, _courseIdMeta),
      );
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    }
    if (data.containsKey('contentJson')) {
      context.handle(
        _contentJsonMeta,
        contentJson.isAcceptableOrUnknown(
          data['contentJson']!,
          _contentJsonMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_contentJsonMeta);
    }
    if (data.containsKey('contentHash')) {
      context.handle(
        _contentHashMeta,
        contentHash.isAcceptableOrUnknown(
          data['contentHash']!,
          _contentHashMeta,
        ),
      );
    }
    if (data.containsKey('cachedAt')) {
      context.handle(
        _cachedAtMeta,
        cachedAt.isAcceptableOrUnknown(data['cachedAt']!, _cachedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_cachedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {chapterId, mode};
  @override
  LessonCacheData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LessonCacheData(
      chapterId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}chapterId'],
      )!,
      mode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}mode'],
      )!,
      courseId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}courseId'],
      ),
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      ),
      contentJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}contentJson'],
      )!,
      contentHash: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}contentHash'],
      ),
      cachedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}cachedAt'],
      )!,
    );
  }

  @override
  $LessonCacheTable createAlias(String alias) {
    return $LessonCacheTable(attachedDatabase, alias);
  }
}

class LessonCacheData extends DataClass implements Insertable<LessonCacheData> {
  final String chapterId;
  final String mode;
  final String? courseId;
  final String? title;
  final String contentJson;
  final String? contentHash;
  final int cachedAt;
  const LessonCacheData({
    required this.chapterId,
    required this.mode,
    this.courseId,
    this.title,
    required this.contentJson,
    this.contentHash,
    required this.cachedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['chapterId'] = Variable<String>(chapterId);
    map['mode'] = Variable<String>(mode);
    if (!nullToAbsent || courseId != null) {
      map['courseId'] = Variable<String>(courseId);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    map['contentJson'] = Variable<String>(contentJson);
    if (!nullToAbsent || contentHash != null) {
      map['contentHash'] = Variable<String>(contentHash);
    }
    map['cachedAt'] = Variable<int>(cachedAt);
    return map;
  }

  LessonCacheCompanion toCompanion(bool nullToAbsent) {
    return LessonCacheCompanion(
      chapterId: Value(chapterId),
      mode: Value(mode),
      courseId: courseId == null && nullToAbsent
          ? const Value.absent()
          : Value(courseId),
      title: title == null && nullToAbsent
          ? const Value.absent()
          : Value(title),
      contentJson: Value(contentJson),
      contentHash: contentHash == null && nullToAbsent
          ? const Value.absent()
          : Value(contentHash),
      cachedAt: Value(cachedAt),
    );
  }

  factory LessonCacheData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LessonCacheData(
      chapterId: serializer.fromJson<String>(json['chapterId']),
      mode: serializer.fromJson<String>(json['mode']),
      courseId: serializer.fromJson<String?>(json['courseId']),
      title: serializer.fromJson<String?>(json['title']),
      contentJson: serializer.fromJson<String>(json['contentJson']),
      contentHash: serializer.fromJson<String?>(json['contentHash']),
      cachedAt: serializer.fromJson<int>(json['cachedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'chapterId': serializer.toJson<String>(chapterId),
      'mode': serializer.toJson<String>(mode),
      'courseId': serializer.toJson<String?>(courseId),
      'title': serializer.toJson<String?>(title),
      'contentJson': serializer.toJson<String>(contentJson),
      'contentHash': serializer.toJson<String?>(contentHash),
      'cachedAt': serializer.toJson<int>(cachedAt),
    };
  }

  LessonCacheData copyWith({
    String? chapterId,
    String? mode,
    Value<String?> courseId = const Value.absent(),
    Value<String?> title = const Value.absent(),
    String? contentJson,
    Value<String?> contentHash = const Value.absent(),
    int? cachedAt,
  }) => LessonCacheData(
    chapterId: chapterId ?? this.chapterId,
    mode: mode ?? this.mode,
    courseId: courseId.present ? courseId.value : this.courseId,
    title: title.present ? title.value : this.title,
    contentJson: contentJson ?? this.contentJson,
    contentHash: contentHash.present ? contentHash.value : this.contentHash,
    cachedAt: cachedAt ?? this.cachedAt,
  );
  LessonCacheData copyWithCompanion(LessonCacheCompanion data) {
    return LessonCacheData(
      chapterId: data.chapterId.present ? data.chapterId.value : this.chapterId,
      mode: data.mode.present ? data.mode.value : this.mode,
      courseId: data.courseId.present ? data.courseId.value : this.courseId,
      title: data.title.present ? data.title.value : this.title,
      contentJson: data.contentJson.present
          ? data.contentJson.value
          : this.contentJson,
      contentHash: data.contentHash.present
          ? data.contentHash.value
          : this.contentHash,
      cachedAt: data.cachedAt.present ? data.cachedAt.value : this.cachedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LessonCacheData(')
          ..write('chapterId: $chapterId, ')
          ..write('mode: $mode, ')
          ..write('courseId: $courseId, ')
          ..write('title: $title, ')
          ..write('contentJson: $contentJson, ')
          ..write('contentHash: $contentHash, ')
          ..write('cachedAt: $cachedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    chapterId,
    mode,
    courseId,
    title,
    contentJson,
    contentHash,
    cachedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LessonCacheData &&
          other.chapterId == this.chapterId &&
          other.mode == this.mode &&
          other.courseId == this.courseId &&
          other.title == this.title &&
          other.contentJson == this.contentJson &&
          other.contentHash == this.contentHash &&
          other.cachedAt == this.cachedAt);
}

class LessonCacheCompanion extends UpdateCompanion<LessonCacheData> {
  final Value<String> chapterId;
  final Value<String> mode;
  final Value<String?> courseId;
  final Value<String?> title;
  final Value<String> contentJson;
  final Value<String?> contentHash;
  final Value<int> cachedAt;
  final Value<int> rowid;
  const LessonCacheCompanion({
    this.chapterId = const Value.absent(),
    this.mode = const Value.absent(),
    this.courseId = const Value.absent(),
    this.title = const Value.absent(),
    this.contentJson = const Value.absent(),
    this.contentHash = const Value.absent(),
    this.cachedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LessonCacheCompanion.insert({
    required String chapterId,
    required String mode,
    this.courseId = const Value.absent(),
    this.title = const Value.absent(),
    required String contentJson,
    this.contentHash = const Value.absent(),
    required int cachedAt,
    this.rowid = const Value.absent(),
  }) : chapterId = Value(chapterId),
       mode = Value(mode),
       contentJson = Value(contentJson),
       cachedAt = Value(cachedAt);
  static Insertable<LessonCacheData> custom({
    Expression<String>? chapterId,
    Expression<String>? mode,
    Expression<String>? courseId,
    Expression<String>? title,
    Expression<String>? contentJson,
    Expression<String>? contentHash,
    Expression<int>? cachedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (chapterId != null) 'chapterId': chapterId,
      if (mode != null) 'mode': mode,
      if (courseId != null) 'courseId': courseId,
      if (title != null) 'title': title,
      if (contentJson != null) 'contentJson': contentJson,
      if (contentHash != null) 'contentHash': contentHash,
      if (cachedAt != null) 'cachedAt': cachedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LessonCacheCompanion copyWith({
    Value<String>? chapterId,
    Value<String>? mode,
    Value<String?>? courseId,
    Value<String?>? title,
    Value<String>? contentJson,
    Value<String?>? contentHash,
    Value<int>? cachedAt,
    Value<int>? rowid,
  }) {
    return LessonCacheCompanion(
      chapterId: chapterId ?? this.chapterId,
      mode: mode ?? this.mode,
      courseId: courseId ?? this.courseId,
      title: title ?? this.title,
      contentJson: contentJson ?? this.contentJson,
      contentHash: contentHash ?? this.contentHash,
      cachedAt: cachedAt ?? this.cachedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (chapterId.present) {
      map['chapterId'] = Variable<String>(chapterId.value);
    }
    if (mode.present) {
      map['mode'] = Variable<String>(mode.value);
    }
    if (courseId.present) {
      map['courseId'] = Variable<String>(courseId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (contentJson.present) {
      map['contentJson'] = Variable<String>(contentJson.value);
    }
    if (contentHash.present) {
      map['contentHash'] = Variable<String>(contentHash.value);
    }
    if (cachedAt.present) {
      map['cachedAt'] = Variable<int>(cachedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LessonCacheCompanion(')
          ..write('chapterId: $chapterId, ')
          ..write('mode: $mode, ')
          ..write('courseId: $courseId, ')
          ..write('title: $title, ')
          ..write('contentJson: $contentJson, ')
          ..write('contentHash: $contentHash, ')
          ..write('cachedAt: $cachedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ContentReadingPositionsTable extends ContentReadingPositions
    with TableInfo<$ContentReadingPositionsTable, ContentReadingPosition> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ContentReadingPositionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _chapterIdMeta = const VerificationMeta(
    'chapterId',
  );
  @override
  late final GeneratedColumn<String> chapterId = GeneratedColumn<String>(
    'chapterId',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _modeMeta = const VerificationMeta('mode');
  @override
  late final GeneratedColumn<String> mode = GeneratedColumn<String>(
    'mode',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _courseIdMeta = const VerificationMeta(
    'courseId',
  );
  @override
  late final GeneratedColumn<String> courseId = GeneratedColumn<String>(
    'courseId',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _chapterTitleMeta = const VerificationMeta(
    'chapterTitle',
  );
  @override
  late final GeneratedColumn<String> chapterTitle = GeneratedColumn<String>(
    'chapterTitle',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sectionIndexMeta = const VerificationMeta(
    'sectionIndex',
  );
  @override
  late final GeneratedColumn<int> sectionIndex = GeneratedColumn<int>(
    'sectionIndex',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<int> updatedAt = GeneratedColumn<int>(
    'updatedAt',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    chapterId,
    mode,
    courseId,
    chapterTitle,
    sectionIndex,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'content_reading_position';
  @override
  VerificationContext validateIntegrity(
    Insertable<ContentReadingPosition> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('chapterId')) {
      context.handle(
        _chapterIdMeta,
        chapterId.isAcceptableOrUnknown(data['chapterId']!, _chapterIdMeta),
      );
    } else if (isInserting) {
      context.missing(_chapterIdMeta);
    }
    if (data.containsKey('mode')) {
      context.handle(
        _modeMeta,
        mode.isAcceptableOrUnknown(data['mode']!, _modeMeta),
      );
    } else if (isInserting) {
      context.missing(_modeMeta);
    }
    if (data.containsKey('courseId')) {
      context.handle(
        _courseIdMeta,
        courseId.isAcceptableOrUnknown(data['courseId']!, _courseIdMeta),
      );
    } else if (isInserting) {
      context.missing(_courseIdMeta);
    }
    if (data.containsKey('chapterTitle')) {
      context.handle(
        _chapterTitleMeta,
        chapterTitle.isAcceptableOrUnknown(
          data['chapterTitle']!,
          _chapterTitleMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_chapterTitleMeta);
    }
    if (data.containsKey('sectionIndex')) {
      context.handle(
        _sectionIndexMeta,
        sectionIndex.isAcceptableOrUnknown(
          data['sectionIndex']!,
          _sectionIndexMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_sectionIndexMeta);
    }
    if (data.containsKey('updatedAt')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updatedAt']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {chapterId, mode};
  @override
  ContentReadingPosition map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ContentReadingPosition(
      chapterId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}chapterId'],
      )!,
      mode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}mode'],
      )!,
      courseId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}courseId'],
      )!,
      chapterTitle: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}chapterTitle'],
      )!,
      sectionIndex: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sectionIndex'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}updatedAt'],
      )!,
    );
  }

  @override
  $ContentReadingPositionsTable createAlias(String alias) {
    return $ContentReadingPositionsTable(attachedDatabase, alias);
  }
}

class ContentReadingPosition extends DataClass
    implements Insertable<ContentReadingPosition> {
  final String chapterId;
  final String mode;
  final String courseId;
  final String chapterTitle;
  final int sectionIndex;
  final int updatedAt;
  const ContentReadingPosition({
    required this.chapterId,
    required this.mode,
    required this.courseId,
    required this.chapterTitle,
    required this.sectionIndex,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['chapterId'] = Variable<String>(chapterId);
    map['mode'] = Variable<String>(mode);
    map['courseId'] = Variable<String>(courseId);
    map['chapterTitle'] = Variable<String>(chapterTitle);
    map['sectionIndex'] = Variable<int>(sectionIndex);
    map['updatedAt'] = Variable<int>(updatedAt);
    return map;
  }

  ContentReadingPositionsCompanion toCompanion(bool nullToAbsent) {
    return ContentReadingPositionsCompanion(
      chapterId: Value(chapterId),
      mode: Value(mode),
      courseId: Value(courseId),
      chapterTitle: Value(chapterTitle),
      sectionIndex: Value(sectionIndex),
      updatedAt: Value(updatedAt),
    );
  }

  factory ContentReadingPosition.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ContentReadingPosition(
      chapterId: serializer.fromJson<String>(json['chapterId']),
      mode: serializer.fromJson<String>(json['mode']),
      courseId: serializer.fromJson<String>(json['courseId']),
      chapterTitle: serializer.fromJson<String>(json['chapterTitle']),
      sectionIndex: serializer.fromJson<int>(json['sectionIndex']),
      updatedAt: serializer.fromJson<int>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'chapterId': serializer.toJson<String>(chapterId),
      'mode': serializer.toJson<String>(mode),
      'courseId': serializer.toJson<String>(courseId),
      'chapterTitle': serializer.toJson<String>(chapterTitle),
      'sectionIndex': serializer.toJson<int>(sectionIndex),
      'updatedAt': serializer.toJson<int>(updatedAt),
    };
  }

  ContentReadingPosition copyWith({
    String? chapterId,
    String? mode,
    String? courseId,
    String? chapterTitle,
    int? sectionIndex,
    int? updatedAt,
  }) => ContentReadingPosition(
    chapterId: chapterId ?? this.chapterId,
    mode: mode ?? this.mode,
    courseId: courseId ?? this.courseId,
    chapterTitle: chapterTitle ?? this.chapterTitle,
    sectionIndex: sectionIndex ?? this.sectionIndex,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  ContentReadingPosition copyWithCompanion(
    ContentReadingPositionsCompanion data,
  ) {
    return ContentReadingPosition(
      chapterId: data.chapterId.present ? data.chapterId.value : this.chapterId,
      mode: data.mode.present ? data.mode.value : this.mode,
      courseId: data.courseId.present ? data.courseId.value : this.courseId,
      chapterTitle: data.chapterTitle.present
          ? data.chapterTitle.value
          : this.chapterTitle,
      sectionIndex: data.sectionIndex.present
          ? data.sectionIndex.value
          : this.sectionIndex,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ContentReadingPosition(')
          ..write('chapterId: $chapterId, ')
          ..write('mode: $mode, ')
          ..write('courseId: $courseId, ')
          ..write('chapterTitle: $chapterTitle, ')
          ..write('sectionIndex: $sectionIndex, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    chapterId,
    mode,
    courseId,
    chapterTitle,
    sectionIndex,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ContentReadingPosition &&
          other.chapterId == this.chapterId &&
          other.mode == this.mode &&
          other.courseId == this.courseId &&
          other.chapterTitle == this.chapterTitle &&
          other.sectionIndex == this.sectionIndex &&
          other.updatedAt == this.updatedAt);
}

class ContentReadingPositionsCompanion
    extends UpdateCompanion<ContentReadingPosition> {
  final Value<String> chapterId;
  final Value<String> mode;
  final Value<String> courseId;
  final Value<String> chapterTitle;
  final Value<int> sectionIndex;
  final Value<int> updatedAt;
  final Value<int> rowid;
  const ContentReadingPositionsCompanion({
    this.chapterId = const Value.absent(),
    this.mode = const Value.absent(),
    this.courseId = const Value.absent(),
    this.chapterTitle = const Value.absent(),
    this.sectionIndex = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ContentReadingPositionsCompanion.insert({
    required String chapterId,
    required String mode,
    required String courseId,
    required String chapterTitle,
    required int sectionIndex,
    required int updatedAt,
    this.rowid = const Value.absent(),
  }) : chapterId = Value(chapterId),
       mode = Value(mode),
       courseId = Value(courseId),
       chapterTitle = Value(chapterTitle),
       sectionIndex = Value(sectionIndex),
       updatedAt = Value(updatedAt);
  static Insertable<ContentReadingPosition> custom({
    Expression<String>? chapterId,
    Expression<String>? mode,
    Expression<String>? courseId,
    Expression<String>? chapterTitle,
    Expression<int>? sectionIndex,
    Expression<int>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (chapterId != null) 'chapterId': chapterId,
      if (mode != null) 'mode': mode,
      if (courseId != null) 'courseId': courseId,
      if (chapterTitle != null) 'chapterTitle': chapterTitle,
      if (sectionIndex != null) 'sectionIndex': sectionIndex,
      if (updatedAt != null) 'updatedAt': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ContentReadingPositionsCompanion copyWith({
    Value<String>? chapterId,
    Value<String>? mode,
    Value<String>? courseId,
    Value<String>? chapterTitle,
    Value<int>? sectionIndex,
    Value<int>? updatedAt,
    Value<int>? rowid,
  }) {
    return ContentReadingPositionsCompanion(
      chapterId: chapterId ?? this.chapterId,
      mode: mode ?? this.mode,
      courseId: courseId ?? this.courseId,
      chapterTitle: chapterTitle ?? this.chapterTitle,
      sectionIndex: sectionIndex ?? this.sectionIndex,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (chapterId.present) {
      map['chapterId'] = Variable<String>(chapterId.value);
    }
    if (mode.present) {
      map['mode'] = Variable<String>(mode.value);
    }
    if (courseId.present) {
      map['courseId'] = Variable<String>(courseId.value);
    }
    if (chapterTitle.present) {
      map['chapterTitle'] = Variable<String>(chapterTitle.value);
    }
    if (sectionIndex.present) {
      map['sectionIndex'] = Variable<int>(sectionIndex.value);
    }
    if (updatedAt.present) {
      map['updatedAt'] = Variable<int>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ContentReadingPositionsCompanion(')
          ..write('chapterId: $chapterId, ')
          ..write('mode: $mode, ')
          ..write('courseId: $courseId, ')
          ..write('chapterTitle: $chapterTitle, ')
          ..write('sectionIndex: $sectionIndex, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ContentLessonStatesTable extends ContentLessonStates
    with TableInfo<$ContentLessonStatesTable, ContentLessonState> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ContentLessonStatesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _chapterIdMeta = const VerificationMeta(
    'chapterId',
  );
  @override
  late final GeneratedColumn<String> chapterId = GeneratedColumn<String>(
    'chapterId',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _bookmarkedMeta = const VerificationMeta(
    'bookmarked',
  );
  @override
  late final GeneratedColumn<bool> bookmarked = GeneratedColumn<bool>(
    'bookmarked',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("bookmarked" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<int> updatedAt = GeneratedColumn<int>(
    'updatedAt',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    chapterId,
    status,
    bookmarked,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'content_lesson_state';
  @override
  VerificationContext validateIntegrity(
    Insertable<ContentLessonState> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('chapterId')) {
      context.handle(
        _chapterIdMeta,
        chapterId.isAcceptableOrUnknown(data['chapterId']!, _chapterIdMeta),
      );
    } else if (isInserting) {
      context.missing(_chapterIdMeta);
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    if (data.containsKey('bookmarked')) {
      context.handle(
        _bookmarkedMeta,
        bookmarked.isAcceptableOrUnknown(data['bookmarked']!, _bookmarkedMeta),
      );
    }
    if (data.containsKey('updatedAt')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updatedAt']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {chapterId};
  @override
  ContentLessonState map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ContentLessonState(
      chapterId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}chapterId'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      ),
      bookmarked: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}bookmarked'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}updatedAt'],
      )!,
    );
  }

  @override
  $ContentLessonStatesTable createAlias(String alias) {
    return $ContentLessonStatesTable(attachedDatabase, alias);
  }
}

class ContentLessonState extends DataClass
    implements Insertable<ContentLessonState> {
  final String chapterId;
  final String? status;
  final bool bookmarked;
  final int updatedAt;
  const ContentLessonState({
    required this.chapterId,
    this.status,
    required this.bookmarked,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['chapterId'] = Variable<String>(chapterId);
    if (!nullToAbsent || status != null) {
      map['status'] = Variable<String>(status);
    }
    map['bookmarked'] = Variable<bool>(bookmarked);
    map['updatedAt'] = Variable<int>(updatedAt);
    return map;
  }

  ContentLessonStatesCompanion toCompanion(bool nullToAbsent) {
    return ContentLessonStatesCompanion(
      chapterId: Value(chapterId),
      status: status == null && nullToAbsent
          ? const Value.absent()
          : Value(status),
      bookmarked: Value(bookmarked),
      updatedAt: Value(updatedAt),
    );
  }

  factory ContentLessonState.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ContentLessonState(
      chapterId: serializer.fromJson<String>(json['chapterId']),
      status: serializer.fromJson<String?>(json['status']),
      bookmarked: serializer.fromJson<bool>(json['bookmarked']),
      updatedAt: serializer.fromJson<int>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'chapterId': serializer.toJson<String>(chapterId),
      'status': serializer.toJson<String?>(status),
      'bookmarked': serializer.toJson<bool>(bookmarked),
      'updatedAt': serializer.toJson<int>(updatedAt),
    };
  }

  ContentLessonState copyWith({
    String? chapterId,
    Value<String?> status = const Value.absent(),
    bool? bookmarked,
    int? updatedAt,
  }) => ContentLessonState(
    chapterId: chapterId ?? this.chapterId,
    status: status.present ? status.value : this.status,
    bookmarked: bookmarked ?? this.bookmarked,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  ContentLessonState copyWithCompanion(ContentLessonStatesCompanion data) {
    return ContentLessonState(
      chapterId: data.chapterId.present ? data.chapterId.value : this.chapterId,
      status: data.status.present ? data.status.value : this.status,
      bookmarked: data.bookmarked.present
          ? data.bookmarked.value
          : this.bookmarked,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ContentLessonState(')
          ..write('chapterId: $chapterId, ')
          ..write('status: $status, ')
          ..write('bookmarked: $bookmarked, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(chapterId, status, bookmarked, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ContentLessonState &&
          other.chapterId == this.chapterId &&
          other.status == this.status &&
          other.bookmarked == this.bookmarked &&
          other.updatedAt == this.updatedAt);
}

class ContentLessonStatesCompanion extends UpdateCompanion<ContentLessonState> {
  final Value<String> chapterId;
  final Value<String?> status;
  final Value<bool> bookmarked;
  final Value<int> updatedAt;
  final Value<int> rowid;
  const ContentLessonStatesCompanion({
    this.chapterId = const Value.absent(),
    this.status = const Value.absent(),
    this.bookmarked = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ContentLessonStatesCompanion.insert({
    required String chapterId,
    this.status = const Value.absent(),
    this.bookmarked = const Value.absent(),
    required int updatedAt,
    this.rowid = const Value.absent(),
  }) : chapterId = Value(chapterId),
       updatedAt = Value(updatedAt);
  static Insertable<ContentLessonState> custom({
    Expression<String>? chapterId,
    Expression<String>? status,
    Expression<bool>? bookmarked,
    Expression<int>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (chapterId != null) 'chapterId': chapterId,
      if (status != null) 'status': status,
      if (bookmarked != null) 'bookmarked': bookmarked,
      if (updatedAt != null) 'updatedAt': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ContentLessonStatesCompanion copyWith({
    Value<String>? chapterId,
    Value<String?>? status,
    Value<bool>? bookmarked,
    Value<int>? updatedAt,
    Value<int>? rowid,
  }) {
    return ContentLessonStatesCompanion(
      chapterId: chapterId ?? this.chapterId,
      status: status ?? this.status,
      bookmarked: bookmarked ?? this.bookmarked,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (chapterId.present) {
      map['chapterId'] = Variable<String>(chapterId.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (bookmarked.present) {
      map['bookmarked'] = Variable<bool>(bookmarked.value);
    }
    if (updatedAt.present) {
      map['updatedAt'] = Variable<int>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ContentLessonStatesCompanion(')
          ..write('chapterId: $chapterId, ')
          ..write('status: $status, ')
          ..write('bookmarked: $bookmarked, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $PdfsTable pdfs = $PdfsTable(this);
  late final $LessonForksTable lessonForks = $LessonForksTable(this);
  late final $FlashcardsTable flashcards = $FlashcardsTable(this);
  late final $StudyPlansTable studyPlans = $StudyPlansTable(this);
  late final $ChatMessagesTable chatMessages = $ChatMessagesTable(this);
  late final $SmartNotesTable smartNotes = $SmartNotesTable(this);
  late final $TtsCacheTable ttsCache = $TtsCacheTable(this);
  late final $StudyActivityTable studyActivity = $StudyActivityTable(this);
  late final $BookmarksTable bookmarks = $BookmarksTable(this);
  late final $AnnotationsTable annotations = $AnnotationsTable(this);
  late final $LessonAnnotationsTable lessonAnnotations =
      $LessonAnnotationsTable(this);
  late final $TagsTable tags = $TagsTable(this);
  late final $PdfTagCrossRefsTable pdfTagCrossRefs = $PdfTagCrossRefsTable(
    this,
  );
  late final $AchievementsTable achievements = $AchievementsTable(this);
  late final $AiJobsTable aiJobs = $AiJobsTable(this);
  late final $CourseCacheTable courseCache = $CourseCacheTable(this);
  late final $LessonCacheTable lessonCache = $LessonCacheTable(this);
  late final $ContentReadingPositionsTable contentReadingPositions =
      $ContentReadingPositionsTable(this);
  late final $ContentLessonStatesTable contentLessonStates =
      $ContentLessonStatesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    pdfs,
    lessonForks,
    flashcards,
    studyPlans,
    chatMessages,
    smartNotes,
    ttsCache,
    studyActivity,
    bookmarks,
    annotations,
    lessonAnnotations,
    tags,
    pdfTagCrossRefs,
    achievements,
    aiJobs,
    courseCache,
    lessonCache,
    contentReadingPositions,
    contentLessonStates,
  ];
}

typedef $$PdfsTableCreateCompanionBuilder =
    PdfsCompanion Function({
      Value<int> id,
      required String title,
      Value<int?> pageCount,
      required String processingStatus,
      Value<String?> subjects,
      Value<String?> difficultyLevel,
      Value<String?> contentFormat,
      Value<int> progression,
      Value<String?> outline,
      required int createdAt,
      Value<int?> lastOpenedAt,
      Value<String?> coverColor,
      Value<int?> targetDays,
      Value<String?> thumbnailBase64,
      Value<String?> localFileName,
      Value<String?> thumbnailPath,
      Value<String?> remoteId,
    });
typedef $$PdfsTableUpdateCompanionBuilder =
    PdfsCompanion Function({
      Value<int> id,
      Value<String> title,
      Value<int?> pageCount,
      Value<String> processingStatus,
      Value<String?> subjects,
      Value<String?> difficultyLevel,
      Value<String?> contentFormat,
      Value<int> progression,
      Value<String?> outline,
      Value<int> createdAt,
      Value<int?> lastOpenedAt,
      Value<String?> coverColor,
      Value<int?> targetDays,
      Value<String?> thumbnailBase64,
      Value<String?> localFileName,
      Value<String?> thumbnailPath,
      Value<String?> remoteId,
    });

class $$PdfsTableFilterComposer extends Composer<_$AppDatabase, $PdfsTable> {
  $$PdfsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get pageCount => $composableBuilder(
    column: $table.pageCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get processingStatus => $composableBuilder(
    column: $table.processingStatus,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get subjects => $composableBuilder(
    column: $table.subjects,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get difficultyLevel => $composableBuilder(
    column: $table.difficultyLevel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get contentFormat => $composableBuilder(
    column: $table.contentFormat,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get progression => $composableBuilder(
    column: $table.progression,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get outline => $composableBuilder(
    column: $table.outline,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get lastOpenedAt => $composableBuilder(
    column: $table.lastOpenedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get coverColor => $composableBuilder(
    column: $table.coverColor,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get targetDays => $composableBuilder(
    column: $table.targetDays,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get thumbnailBase64 => $composableBuilder(
    column: $table.thumbnailBase64,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get localFileName => $composableBuilder(
    column: $table.localFileName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get thumbnailPath => $composableBuilder(
    column: $table.thumbnailPath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get remoteId => $composableBuilder(
    column: $table.remoteId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$PdfsTableOrderingComposer extends Composer<_$AppDatabase, $PdfsTable> {
  $$PdfsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get pageCount => $composableBuilder(
    column: $table.pageCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get processingStatus => $composableBuilder(
    column: $table.processingStatus,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get subjects => $composableBuilder(
    column: $table.subjects,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get difficultyLevel => $composableBuilder(
    column: $table.difficultyLevel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get contentFormat => $composableBuilder(
    column: $table.contentFormat,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get progression => $composableBuilder(
    column: $table.progression,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get outline => $composableBuilder(
    column: $table.outline,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get lastOpenedAt => $composableBuilder(
    column: $table.lastOpenedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get coverColor => $composableBuilder(
    column: $table.coverColor,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get targetDays => $composableBuilder(
    column: $table.targetDays,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get thumbnailBase64 => $composableBuilder(
    column: $table.thumbnailBase64,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get localFileName => $composableBuilder(
    column: $table.localFileName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get thumbnailPath => $composableBuilder(
    column: $table.thumbnailPath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get remoteId => $composableBuilder(
    column: $table.remoteId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PdfsTableAnnotationComposer
    extends Composer<_$AppDatabase, $PdfsTable> {
  $$PdfsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<int> get pageCount =>
      $composableBuilder(column: $table.pageCount, builder: (column) => column);

  GeneratedColumn<String> get processingStatus => $composableBuilder(
    column: $table.processingStatus,
    builder: (column) => column,
  );

  GeneratedColumn<String> get subjects =>
      $composableBuilder(column: $table.subjects, builder: (column) => column);

  GeneratedColumn<String> get difficultyLevel => $composableBuilder(
    column: $table.difficultyLevel,
    builder: (column) => column,
  );

  GeneratedColumn<String> get contentFormat => $composableBuilder(
    column: $table.contentFormat,
    builder: (column) => column,
  );

  GeneratedColumn<int> get progression => $composableBuilder(
    column: $table.progression,
    builder: (column) => column,
  );

  GeneratedColumn<String> get outline =>
      $composableBuilder(column: $table.outline, builder: (column) => column);

  GeneratedColumn<int> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<int> get lastOpenedAt => $composableBuilder(
    column: $table.lastOpenedAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get coverColor => $composableBuilder(
    column: $table.coverColor,
    builder: (column) => column,
  );

  GeneratedColumn<int> get targetDays => $composableBuilder(
    column: $table.targetDays,
    builder: (column) => column,
  );

  GeneratedColumn<String> get thumbnailBase64 => $composableBuilder(
    column: $table.thumbnailBase64,
    builder: (column) => column,
  );

  GeneratedColumn<String> get localFileName => $composableBuilder(
    column: $table.localFileName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get thumbnailPath => $composableBuilder(
    column: $table.thumbnailPath,
    builder: (column) => column,
  );

  GeneratedColumn<String> get remoteId =>
      $composableBuilder(column: $table.remoteId, builder: (column) => column);
}

class $$PdfsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PdfsTable,
          Pdf,
          $$PdfsTableFilterComposer,
          $$PdfsTableOrderingComposer,
          $$PdfsTableAnnotationComposer,
          $$PdfsTableCreateCompanionBuilder,
          $$PdfsTableUpdateCompanionBuilder,
          (Pdf, BaseReferences<_$AppDatabase, $PdfsTable, Pdf>),
          Pdf,
          PrefetchHooks Function()
        > {
  $$PdfsTableTableManager(_$AppDatabase db, $PdfsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PdfsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PdfsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PdfsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<int?> pageCount = const Value.absent(),
                Value<String> processingStatus = const Value.absent(),
                Value<String?> subjects = const Value.absent(),
                Value<String?> difficultyLevel = const Value.absent(),
                Value<String?> contentFormat = const Value.absent(),
                Value<int> progression = const Value.absent(),
                Value<String?> outline = const Value.absent(),
                Value<int> createdAt = const Value.absent(),
                Value<int?> lastOpenedAt = const Value.absent(),
                Value<String?> coverColor = const Value.absent(),
                Value<int?> targetDays = const Value.absent(),
                Value<String?> thumbnailBase64 = const Value.absent(),
                Value<String?> localFileName = const Value.absent(),
                Value<String?> thumbnailPath = const Value.absent(),
                Value<String?> remoteId = const Value.absent(),
              }) => PdfsCompanion(
                id: id,
                title: title,
                pageCount: pageCount,
                processingStatus: processingStatus,
                subjects: subjects,
                difficultyLevel: difficultyLevel,
                contentFormat: contentFormat,
                progression: progression,
                outline: outline,
                createdAt: createdAt,
                lastOpenedAt: lastOpenedAt,
                coverColor: coverColor,
                targetDays: targetDays,
                thumbnailBase64: thumbnailBase64,
                localFileName: localFileName,
                thumbnailPath: thumbnailPath,
                remoteId: remoteId,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String title,
                Value<int?> pageCount = const Value.absent(),
                required String processingStatus,
                Value<String?> subjects = const Value.absent(),
                Value<String?> difficultyLevel = const Value.absent(),
                Value<String?> contentFormat = const Value.absent(),
                Value<int> progression = const Value.absent(),
                Value<String?> outline = const Value.absent(),
                required int createdAt,
                Value<int?> lastOpenedAt = const Value.absent(),
                Value<String?> coverColor = const Value.absent(),
                Value<int?> targetDays = const Value.absent(),
                Value<String?> thumbnailBase64 = const Value.absent(),
                Value<String?> localFileName = const Value.absent(),
                Value<String?> thumbnailPath = const Value.absent(),
                Value<String?> remoteId = const Value.absent(),
              }) => PdfsCompanion.insert(
                id: id,
                title: title,
                pageCount: pageCount,
                processingStatus: processingStatus,
                subjects: subjects,
                difficultyLevel: difficultyLevel,
                contentFormat: contentFormat,
                progression: progression,
                outline: outline,
                createdAt: createdAt,
                lastOpenedAt: lastOpenedAt,
                coverColor: coverColor,
                targetDays: targetDays,
                thumbnailBase64: thumbnailBase64,
                localFileName: localFileName,
                thumbnailPath: thumbnailPath,
                remoteId: remoteId,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$PdfsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PdfsTable,
      Pdf,
      $$PdfsTableFilterComposer,
      $$PdfsTableOrderingComposer,
      $$PdfsTableAnnotationComposer,
      $$PdfsTableCreateCompanionBuilder,
      $$PdfsTableUpdateCompanionBuilder,
      (Pdf, BaseReferences<_$AppDatabase, $PdfsTable, Pdf>),
      Pdf,
      PrefetchHooks Function()
    >;
typedef $$LessonForksTableCreateCompanionBuilder =
    LessonForksCompanion Function({
      required String id,
      required int pdfId,
      Value<String?> pdfRemoteId,
      required String preset,
      required String title,
      required String scopeType,
      required String scopeLabel,
      Value<int?> startPage,
      Value<int?> endPage,
      Value<String> contentJson,
      required String status,
      Value<double> progress,
      Value<String> model,
      required int createdAt,
      required int updatedAt,
      Value<int> rowid,
    });
typedef $$LessonForksTableUpdateCompanionBuilder =
    LessonForksCompanion Function({
      Value<String> id,
      Value<int> pdfId,
      Value<String?> pdfRemoteId,
      Value<String> preset,
      Value<String> title,
      Value<String> scopeType,
      Value<String> scopeLabel,
      Value<int?> startPage,
      Value<int?> endPage,
      Value<String> contentJson,
      Value<String> status,
      Value<double> progress,
      Value<String> model,
      Value<int> createdAt,
      Value<int> updatedAt,
      Value<int> rowid,
    });

class $$LessonForksTableFilterComposer
    extends Composer<_$AppDatabase, $LessonForksTable> {
  $$LessonForksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get pdfId => $composableBuilder(
    column: $table.pdfId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get pdfRemoteId => $composableBuilder(
    column: $table.pdfRemoteId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get preset => $composableBuilder(
    column: $table.preset,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get scopeType => $composableBuilder(
    column: $table.scopeType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get scopeLabel => $composableBuilder(
    column: $table.scopeLabel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get startPage => $composableBuilder(
    column: $table.startPage,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get endPage => $composableBuilder(
    column: $table.endPage,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get contentJson => $composableBuilder(
    column: $table.contentJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get progress => $composableBuilder(
    column: $table.progress,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get model => $composableBuilder(
    column: $table.model,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$LessonForksTableOrderingComposer
    extends Composer<_$AppDatabase, $LessonForksTable> {
  $$LessonForksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get pdfId => $composableBuilder(
    column: $table.pdfId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get pdfRemoteId => $composableBuilder(
    column: $table.pdfRemoteId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get preset => $composableBuilder(
    column: $table.preset,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get scopeType => $composableBuilder(
    column: $table.scopeType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get scopeLabel => $composableBuilder(
    column: $table.scopeLabel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get startPage => $composableBuilder(
    column: $table.startPage,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get endPage => $composableBuilder(
    column: $table.endPage,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get contentJson => $composableBuilder(
    column: $table.contentJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get progress => $composableBuilder(
    column: $table.progress,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get model => $composableBuilder(
    column: $table.model,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$LessonForksTableAnnotationComposer
    extends Composer<_$AppDatabase, $LessonForksTable> {
  $$LessonForksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get pdfId =>
      $composableBuilder(column: $table.pdfId, builder: (column) => column);

  GeneratedColumn<String> get pdfRemoteId => $composableBuilder(
    column: $table.pdfRemoteId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get preset =>
      $composableBuilder(column: $table.preset, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get scopeType =>
      $composableBuilder(column: $table.scopeType, builder: (column) => column);

  GeneratedColumn<String> get scopeLabel => $composableBuilder(
    column: $table.scopeLabel,
    builder: (column) => column,
  );

  GeneratedColumn<int> get startPage =>
      $composableBuilder(column: $table.startPage, builder: (column) => column);

  GeneratedColumn<int> get endPage =>
      $composableBuilder(column: $table.endPage, builder: (column) => column);

  GeneratedColumn<String> get contentJson => $composableBuilder(
    column: $table.contentJson,
    builder: (column) => column,
  );

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<double> get progress =>
      $composableBuilder(column: $table.progress, builder: (column) => column);

  GeneratedColumn<String> get model =>
      $composableBuilder(column: $table.model, builder: (column) => column);

  GeneratedColumn<int> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<int> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$LessonForksTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LessonForksTable,
          LessonFork,
          $$LessonForksTableFilterComposer,
          $$LessonForksTableOrderingComposer,
          $$LessonForksTableAnnotationComposer,
          $$LessonForksTableCreateCompanionBuilder,
          $$LessonForksTableUpdateCompanionBuilder,
          (
            LessonFork,
            BaseReferences<_$AppDatabase, $LessonForksTable, LessonFork>,
          ),
          LessonFork,
          PrefetchHooks Function()
        > {
  $$LessonForksTableTableManager(_$AppDatabase db, $LessonForksTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LessonForksTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LessonForksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LessonForksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<int> pdfId = const Value.absent(),
                Value<String?> pdfRemoteId = const Value.absent(),
                Value<String> preset = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> scopeType = const Value.absent(),
                Value<String> scopeLabel = const Value.absent(),
                Value<int?> startPage = const Value.absent(),
                Value<int?> endPage = const Value.absent(),
                Value<String> contentJson = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<double> progress = const Value.absent(),
                Value<String> model = const Value.absent(),
                Value<int> createdAt = const Value.absent(),
                Value<int> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LessonForksCompanion(
                id: id,
                pdfId: pdfId,
                pdfRemoteId: pdfRemoteId,
                preset: preset,
                title: title,
                scopeType: scopeType,
                scopeLabel: scopeLabel,
                startPage: startPage,
                endPage: endPage,
                contentJson: contentJson,
                status: status,
                progress: progress,
                model: model,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required int pdfId,
                Value<String?> pdfRemoteId = const Value.absent(),
                required String preset,
                required String title,
                required String scopeType,
                required String scopeLabel,
                Value<int?> startPage = const Value.absent(),
                Value<int?> endPage = const Value.absent(),
                Value<String> contentJson = const Value.absent(),
                required String status,
                Value<double> progress = const Value.absent(),
                Value<String> model = const Value.absent(),
                required int createdAt,
                required int updatedAt,
                Value<int> rowid = const Value.absent(),
              }) => LessonForksCompanion.insert(
                id: id,
                pdfId: pdfId,
                pdfRemoteId: pdfRemoteId,
                preset: preset,
                title: title,
                scopeType: scopeType,
                scopeLabel: scopeLabel,
                startPage: startPage,
                endPage: endPage,
                contentJson: contentJson,
                status: status,
                progress: progress,
                model: model,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$LessonForksTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LessonForksTable,
      LessonFork,
      $$LessonForksTableFilterComposer,
      $$LessonForksTableOrderingComposer,
      $$LessonForksTableAnnotationComposer,
      $$LessonForksTableCreateCompanionBuilder,
      $$LessonForksTableUpdateCompanionBuilder,
      (
        LessonFork,
        BaseReferences<_$AppDatabase, $LessonForksTable, LessonFork>,
      ),
      LessonFork,
      PrefetchHooks Function()
    >;
typedef $$FlashcardsTableCreateCompanionBuilder =
    FlashcardsCompanion Function({
      Value<int> id,
      required int pdfId,
      required String question,
      required String answer,
      required String type,
      Value<String?> options,
      Value<int?> correctOptionIndex,
      required String topic,
      required int intervalDays,
      required double easeFactor,
      required int nextReviewAt,
      required int successiveCorrect,
      required int wrongCount,
      Value<String?> sourceKey,
    });
typedef $$FlashcardsTableUpdateCompanionBuilder =
    FlashcardsCompanion Function({
      Value<int> id,
      Value<int> pdfId,
      Value<String> question,
      Value<String> answer,
      Value<String> type,
      Value<String?> options,
      Value<int?> correctOptionIndex,
      Value<String> topic,
      Value<int> intervalDays,
      Value<double> easeFactor,
      Value<int> nextReviewAt,
      Value<int> successiveCorrect,
      Value<int> wrongCount,
      Value<String?> sourceKey,
    });

class $$FlashcardsTableFilterComposer
    extends Composer<_$AppDatabase, $FlashcardsTable> {
  $$FlashcardsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get pdfId => $composableBuilder(
    column: $table.pdfId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get question => $composableBuilder(
    column: $table.question,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get answer => $composableBuilder(
    column: $table.answer,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get options => $composableBuilder(
    column: $table.options,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get correctOptionIndex => $composableBuilder(
    column: $table.correctOptionIndex,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get topic => $composableBuilder(
    column: $table.topic,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get intervalDays => $composableBuilder(
    column: $table.intervalDays,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get easeFactor => $composableBuilder(
    column: $table.easeFactor,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get nextReviewAt => $composableBuilder(
    column: $table.nextReviewAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get successiveCorrect => $composableBuilder(
    column: $table.successiveCorrect,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get wrongCount => $composableBuilder(
    column: $table.wrongCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sourceKey => $composableBuilder(
    column: $table.sourceKey,
    builder: (column) => ColumnFilters(column),
  );
}

class $$FlashcardsTableOrderingComposer
    extends Composer<_$AppDatabase, $FlashcardsTable> {
  $$FlashcardsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get pdfId => $composableBuilder(
    column: $table.pdfId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get question => $composableBuilder(
    column: $table.question,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get answer => $composableBuilder(
    column: $table.answer,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get options => $composableBuilder(
    column: $table.options,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get correctOptionIndex => $composableBuilder(
    column: $table.correctOptionIndex,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get topic => $composableBuilder(
    column: $table.topic,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get intervalDays => $composableBuilder(
    column: $table.intervalDays,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get easeFactor => $composableBuilder(
    column: $table.easeFactor,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get nextReviewAt => $composableBuilder(
    column: $table.nextReviewAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get successiveCorrect => $composableBuilder(
    column: $table.successiveCorrect,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get wrongCount => $composableBuilder(
    column: $table.wrongCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sourceKey => $composableBuilder(
    column: $table.sourceKey,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$FlashcardsTableAnnotationComposer
    extends Composer<_$AppDatabase, $FlashcardsTable> {
  $$FlashcardsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get pdfId =>
      $composableBuilder(column: $table.pdfId, builder: (column) => column);

  GeneratedColumn<String> get question =>
      $composableBuilder(column: $table.question, builder: (column) => column);

  GeneratedColumn<String> get answer =>
      $composableBuilder(column: $table.answer, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get options =>
      $composableBuilder(column: $table.options, builder: (column) => column);

  GeneratedColumn<int> get correctOptionIndex => $composableBuilder(
    column: $table.correctOptionIndex,
    builder: (column) => column,
  );

  GeneratedColumn<String> get topic =>
      $composableBuilder(column: $table.topic, builder: (column) => column);

  GeneratedColumn<int> get intervalDays => $composableBuilder(
    column: $table.intervalDays,
    builder: (column) => column,
  );

  GeneratedColumn<double> get easeFactor => $composableBuilder(
    column: $table.easeFactor,
    builder: (column) => column,
  );

  GeneratedColumn<int> get nextReviewAt => $composableBuilder(
    column: $table.nextReviewAt,
    builder: (column) => column,
  );

  GeneratedColumn<int> get successiveCorrect => $composableBuilder(
    column: $table.successiveCorrect,
    builder: (column) => column,
  );

  GeneratedColumn<int> get wrongCount => $composableBuilder(
    column: $table.wrongCount,
    builder: (column) => column,
  );

  GeneratedColumn<String> get sourceKey =>
      $composableBuilder(column: $table.sourceKey, builder: (column) => column);
}

class $$FlashcardsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FlashcardsTable,
          Flashcard,
          $$FlashcardsTableFilterComposer,
          $$FlashcardsTableOrderingComposer,
          $$FlashcardsTableAnnotationComposer,
          $$FlashcardsTableCreateCompanionBuilder,
          $$FlashcardsTableUpdateCompanionBuilder,
          (
            Flashcard,
            BaseReferences<_$AppDatabase, $FlashcardsTable, Flashcard>,
          ),
          Flashcard,
          PrefetchHooks Function()
        > {
  $$FlashcardsTableTableManager(_$AppDatabase db, $FlashcardsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FlashcardsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FlashcardsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FlashcardsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> pdfId = const Value.absent(),
                Value<String> question = const Value.absent(),
                Value<String> answer = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<String?> options = const Value.absent(),
                Value<int?> correctOptionIndex = const Value.absent(),
                Value<String> topic = const Value.absent(),
                Value<int> intervalDays = const Value.absent(),
                Value<double> easeFactor = const Value.absent(),
                Value<int> nextReviewAt = const Value.absent(),
                Value<int> successiveCorrect = const Value.absent(),
                Value<int> wrongCount = const Value.absent(),
                Value<String?> sourceKey = const Value.absent(),
              }) => FlashcardsCompanion(
                id: id,
                pdfId: pdfId,
                question: question,
                answer: answer,
                type: type,
                options: options,
                correctOptionIndex: correctOptionIndex,
                topic: topic,
                intervalDays: intervalDays,
                easeFactor: easeFactor,
                nextReviewAt: nextReviewAt,
                successiveCorrect: successiveCorrect,
                wrongCount: wrongCount,
                sourceKey: sourceKey,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int pdfId,
                required String question,
                required String answer,
                required String type,
                Value<String?> options = const Value.absent(),
                Value<int?> correctOptionIndex = const Value.absent(),
                required String topic,
                required int intervalDays,
                required double easeFactor,
                required int nextReviewAt,
                required int successiveCorrect,
                required int wrongCount,
                Value<String?> sourceKey = const Value.absent(),
              }) => FlashcardsCompanion.insert(
                id: id,
                pdfId: pdfId,
                question: question,
                answer: answer,
                type: type,
                options: options,
                correctOptionIndex: correctOptionIndex,
                topic: topic,
                intervalDays: intervalDays,
                easeFactor: easeFactor,
                nextReviewAt: nextReviewAt,
                successiveCorrect: successiveCorrect,
                wrongCount: wrongCount,
                sourceKey: sourceKey,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$FlashcardsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FlashcardsTable,
      Flashcard,
      $$FlashcardsTableFilterComposer,
      $$FlashcardsTableOrderingComposer,
      $$FlashcardsTableAnnotationComposer,
      $$FlashcardsTableCreateCompanionBuilder,
      $$FlashcardsTableUpdateCompanionBuilder,
      (Flashcard, BaseReferences<_$AppDatabase, $FlashcardsTable, Flashcard>),
      Flashcard,
      PrefetchHooks Function()
    >;
typedef $$StudyPlansTableCreateCompanionBuilder =
    StudyPlansCompanion Function({
      Value<int> id,
      required int day,
      required int pdfId,
      required String pdfTitle,
      required String topic,
      required int timeframeMinutes,
      Value<int?> startPage,
      Value<int?> endPage,
      Value<bool> completed,
      Value<String> source,
      Value<String> sourceType,
      Value<String?> chapterId,
      Value<String?> mode,
      Value<String?> courseId,
    });
typedef $$StudyPlansTableUpdateCompanionBuilder =
    StudyPlansCompanion Function({
      Value<int> id,
      Value<int> day,
      Value<int> pdfId,
      Value<String> pdfTitle,
      Value<String> topic,
      Value<int> timeframeMinutes,
      Value<int?> startPage,
      Value<int?> endPage,
      Value<bool> completed,
      Value<String> source,
      Value<String> sourceType,
      Value<String?> chapterId,
      Value<String?> mode,
      Value<String?> courseId,
    });

class $$StudyPlansTableFilterComposer
    extends Composer<_$AppDatabase, $StudyPlansTable> {
  $$StudyPlansTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get day => $composableBuilder(
    column: $table.day,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get pdfId => $composableBuilder(
    column: $table.pdfId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get pdfTitle => $composableBuilder(
    column: $table.pdfTitle,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get topic => $composableBuilder(
    column: $table.topic,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get timeframeMinutes => $composableBuilder(
    column: $table.timeframeMinutes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get startPage => $composableBuilder(
    column: $table.startPage,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get endPage => $composableBuilder(
    column: $table.endPage,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get completed => $composableBuilder(
    column: $table.completed,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get source => $composableBuilder(
    column: $table.source,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sourceType => $composableBuilder(
    column: $table.sourceType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get chapterId => $composableBuilder(
    column: $table.chapterId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get mode => $composableBuilder(
    column: $table.mode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get courseId => $composableBuilder(
    column: $table.courseId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$StudyPlansTableOrderingComposer
    extends Composer<_$AppDatabase, $StudyPlansTable> {
  $$StudyPlansTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get day => $composableBuilder(
    column: $table.day,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get pdfId => $composableBuilder(
    column: $table.pdfId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get pdfTitle => $composableBuilder(
    column: $table.pdfTitle,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get topic => $composableBuilder(
    column: $table.topic,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get timeframeMinutes => $composableBuilder(
    column: $table.timeframeMinutes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get startPage => $composableBuilder(
    column: $table.startPage,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get endPage => $composableBuilder(
    column: $table.endPage,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get completed => $composableBuilder(
    column: $table.completed,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get source => $composableBuilder(
    column: $table.source,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sourceType => $composableBuilder(
    column: $table.sourceType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get chapterId => $composableBuilder(
    column: $table.chapterId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get mode => $composableBuilder(
    column: $table.mode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get courseId => $composableBuilder(
    column: $table.courseId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$StudyPlansTableAnnotationComposer
    extends Composer<_$AppDatabase, $StudyPlansTable> {
  $$StudyPlansTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get day =>
      $composableBuilder(column: $table.day, builder: (column) => column);

  GeneratedColumn<int> get pdfId =>
      $composableBuilder(column: $table.pdfId, builder: (column) => column);

  GeneratedColumn<String> get pdfTitle =>
      $composableBuilder(column: $table.pdfTitle, builder: (column) => column);

  GeneratedColumn<String> get topic =>
      $composableBuilder(column: $table.topic, builder: (column) => column);

  GeneratedColumn<int> get timeframeMinutes => $composableBuilder(
    column: $table.timeframeMinutes,
    builder: (column) => column,
  );

  GeneratedColumn<int> get startPage =>
      $composableBuilder(column: $table.startPage, builder: (column) => column);

  GeneratedColumn<int> get endPage =>
      $composableBuilder(column: $table.endPage, builder: (column) => column);

  GeneratedColumn<bool> get completed =>
      $composableBuilder(column: $table.completed, builder: (column) => column);

  GeneratedColumn<String> get source =>
      $composableBuilder(column: $table.source, builder: (column) => column);

  GeneratedColumn<String> get sourceType => $composableBuilder(
    column: $table.sourceType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get chapterId =>
      $composableBuilder(column: $table.chapterId, builder: (column) => column);

  GeneratedColumn<String> get mode =>
      $composableBuilder(column: $table.mode, builder: (column) => column);

  GeneratedColumn<String> get courseId =>
      $composableBuilder(column: $table.courseId, builder: (column) => column);
}

class $$StudyPlansTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $StudyPlansTable,
          StudyPlan,
          $$StudyPlansTableFilterComposer,
          $$StudyPlansTableOrderingComposer,
          $$StudyPlansTableAnnotationComposer,
          $$StudyPlansTableCreateCompanionBuilder,
          $$StudyPlansTableUpdateCompanionBuilder,
          (
            StudyPlan,
            BaseReferences<_$AppDatabase, $StudyPlansTable, StudyPlan>,
          ),
          StudyPlan,
          PrefetchHooks Function()
        > {
  $$StudyPlansTableTableManager(_$AppDatabase db, $StudyPlansTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$StudyPlansTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$StudyPlansTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$StudyPlansTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> day = const Value.absent(),
                Value<int> pdfId = const Value.absent(),
                Value<String> pdfTitle = const Value.absent(),
                Value<String> topic = const Value.absent(),
                Value<int> timeframeMinutes = const Value.absent(),
                Value<int?> startPage = const Value.absent(),
                Value<int?> endPage = const Value.absent(),
                Value<bool> completed = const Value.absent(),
                Value<String> source = const Value.absent(),
                Value<String> sourceType = const Value.absent(),
                Value<String?> chapterId = const Value.absent(),
                Value<String?> mode = const Value.absent(),
                Value<String?> courseId = const Value.absent(),
              }) => StudyPlansCompanion(
                id: id,
                day: day,
                pdfId: pdfId,
                pdfTitle: pdfTitle,
                topic: topic,
                timeframeMinutes: timeframeMinutes,
                startPage: startPage,
                endPage: endPage,
                completed: completed,
                source: source,
                sourceType: sourceType,
                chapterId: chapterId,
                mode: mode,
                courseId: courseId,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int day,
                required int pdfId,
                required String pdfTitle,
                required String topic,
                required int timeframeMinutes,
                Value<int?> startPage = const Value.absent(),
                Value<int?> endPage = const Value.absent(),
                Value<bool> completed = const Value.absent(),
                Value<String> source = const Value.absent(),
                Value<String> sourceType = const Value.absent(),
                Value<String?> chapterId = const Value.absent(),
                Value<String?> mode = const Value.absent(),
                Value<String?> courseId = const Value.absent(),
              }) => StudyPlansCompanion.insert(
                id: id,
                day: day,
                pdfId: pdfId,
                pdfTitle: pdfTitle,
                topic: topic,
                timeframeMinutes: timeframeMinutes,
                startPage: startPage,
                endPage: endPage,
                completed: completed,
                source: source,
                sourceType: sourceType,
                chapterId: chapterId,
                mode: mode,
                courseId: courseId,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$StudyPlansTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $StudyPlansTable,
      StudyPlan,
      $$StudyPlansTableFilterComposer,
      $$StudyPlansTableOrderingComposer,
      $$StudyPlansTableAnnotationComposer,
      $$StudyPlansTableCreateCompanionBuilder,
      $$StudyPlansTableUpdateCompanionBuilder,
      (StudyPlan, BaseReferences<_$AppDatabase, $StudyPlansTable, StudyPlan>),
      StudyPlan,
      PrefetchHooks Function()
    >;
typedef $$ChatMessagesTableCreateCompanionBuilder =
    ChatMessagesCompanion Function({
      Value<int> id,
      required int pdfId,
      required String role,
      required String textValue,
      Value<bool> isAudio,
      Value<String?> audioData,
      required int createdAt,
    });
typedef $$ChatMessagesTableUpdateCompanionBuilder =
    ChatMessagesCompanion Function({
      Value<int> id,
      Value<int> pdfId,
      Value<String> role,
      Value<String> textValue,
      Value<bool> isAudio,
      Value<String?> audioData,
      Value<int> createdAt,
    });

class $$ChatMessagesTableFilterComposer
    extends Composer<_$AppDatabase, $ChatMessagesTable> {
  $$ChatMessagesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get pdfId => $composableBuilder(
    column: $table.pdfId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get role => $composableBuilder(
    column: $table.role,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get textValue => $composableBuilder(
    column: $table.textValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isAudio => $composableBuilder(
    column: $table.isAudio,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get audioData => $composableBuilder(
    column: $table.audioData,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ChatMessagesTableOrderingComposer
    extends Composer<_$AppDatabase, $ChatMessagesTable> {
  $$ChatMessagesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get pdfId => $composableBuilder(
    column: $table.pdfId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get role => $composableBuilder(
    column: $table.role,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get textValue => $composableBuilder(
    column: $table.textValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isAudio => $composableBuilder(
    column: $table.isAudio,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get audioData => $composableBuilder(
    column: $table.audioData,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ChatMessagesTableAnnotationComposer
    extends Composer<_$AppDatabase, $ChatMessagesTable> {
  $$ChatMessagesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get pdfId =>
      $composableBuilder(column: $table.pdfId, builder: (column) => column);

  GeneratedColumn<String> get role =>
      $composableBuilder(column: $table.role, builder: (column) => column);

  GeneratedColumn<String> get textValue =>
      $composableBuilder(column: $table.textValue, builder: (column) => column);

  GeneratedColumn<bool> get isAudio =>
      $composableBuilder(column: $table.isAudio, builder: (column) => column);

  GeneratedColumn<String> get audioData =>
      $composableBuilder(column: $table.audioData, builder: (column) => column);

  GeneratedColumn<int> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$ChatMessagesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ChatMessagesTable,
          ChatMessage,
          $$ChatMessagesTableFilterComposer,
          $$ChatMessagesTableOrderingComposer,
          $$ChatMessagesTableAnnotationComposer,
          $$ChatMessagesTableCreateCompanionBuilder,
          $$ChatMessagesTableUpdateCompanionBuilder,
          (
            ChatMessage,
            BaseReferences<_$AppDatabase, $ChatMessagesTable, ChatMessage>,
          ),
          ChatMessage,
          PrefetchHooks Function()
        > {
  $$ChatMessagesTableTableManager(_$AppDatabase db, $ChatMessagesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ChatMessagesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ChatMessagesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ChatMessagesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> pdfId = const Value.absent(),
                Value<String> role = const Value.absent(),
                Value<String> textValue = const Value.absent(),
                Value<bool> isAudio = const Value.absent(),
                Value<String?> audioData = const Value.absent(),
                Value<int> createdAt = const Value.absent(),
              }) => ChatMessagesCompanion(
                id: id,
                pdfId: pdfId,
                role: role,
                textValue: textValue,
                isAudio: isAudio,
                audioData: audioData,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int pdfId,
                required String role,
                required String textValue,
                Value<bool> isAudio = const Value.absent(),
                Value<String?> audioData = const Value.absent(),
                required int createdAt,
              }) => ChatMessagesCompanion.insert(
                id: id,
                pdfId: pdfId,
                role: role,
                textValue: textValue,
                isAudio: isAudio,
                audioData: audioData,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ChatMessagesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ChatMessagesTable,
      ChatMessage,
      $$ChatMessagesTableFilterComposer,
      $$ChatMessagesTableOrderingComposer,
      $$ChatMessagesTableAnnotationComposer,
      $$ChatMessagesTableCreateCompanionBuilder,
      $$ChatMessagesTableUpdateCompanionBuilder,
      (
        ChatMessage,
        BaseReferences<_$AppDatabase, $ChatMessagesTable, ChatMessage>,
      ),
      ChatMessage,
      PrefetchHooks Function()
    >;
typedef $$SmartNotesTableCreateCompanionBuilder =
    SmartNotesCompanion Function({
      Value<int> id,
      required int pdfId,
      required int pageNumber,
      required String term,
      required String explanation,
      Value<double> x,
      Value<double> y,
      Value<String?> colorHex,
      Value<bool> pinned,
    });
typedef $$SmartNotesTableUpdateCompanionBuilder =
    SmartNotesCompanion Function({
      Value<int> id,
      Value<int> pdfId,
      Value<int> pageNumber,
      Value<String> term,
      Value<String> explanation,
      Value<double> x,
      Value<double> y,
      Value<String?> colorHex,
      Value<bool> pinned,
    });

class $$SmartNotesTableFilterComposer
    extends Composer<_$AppDatabase, $SmartNotesTable> {
  $$SmartNotesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get pdfId => $composableBuilder(
    column: $table.pdfId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get pageNumber => $composableBuilder(
    column: $table.pageNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get term => $composableBuilder(
    column: $table.term,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get explanation => $composableBuilder(
    column: $table.explanation,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get x => $composableBuilder(
    column: $table.x,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get y => $composableBuilder(
    column: $table.y,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get colorHex => $composableBuilder(
    column: $table.colorHex,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get pinned => $composableBuilder(
    column: $table.pinned,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SmartNotesTableOrderingComposer
    extends Composer<_$AppDatabase, $SmartNotesTable> {
  $$SmartNotesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get pdfId => $composableBuilder(
    column: $table.pdfId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get pageNumber => $composableBuilder(
    column: $table.pageNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get term => $composableBuilder(
    column: $table.term,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get explanation => $composableBuilder(
    column: $table.explanation,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get x => $composableBuilder(
    column: $table.x,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get y => $composableBuilder(
    column: $table.y,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get colorHex => $composableBuilder(
    column: $table.colorHex,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get pinned => $composableBuilder(
    column: $table.pinned,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SmartNotesTableAnnotationComposer
    extends Composer<_$AppDatabase, $SmartNotesTable> {
  $$SmartNotesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get pdfId =>
      $composableBuilder(column: $table.pdfId, builder: (column) => column);

  GeneratedColumn<int> get pageNumber => $composableBuilder(
    column: $table.pageNumber,
    builder: (column) => column,
  );

  GeneratedColumn<String> get term =>
      $composableBuilder(column: $table.term, builder: (column) => column);

  GeneratedColumn<String> get explanation => $composableBuilder(
    column: $table.explanation,
    builder: (column) => column,
  );

  GeneratedColumn<double> get x =>
      $composableBuilder(column: $table.x, builder: (column) => column);

  GeneratedColumn<double> get y =>
      $composableBuilder(column: $table.y, builder: (column) => column);

  GeneratedColumn<String> get colorHex =>
      $composableBuilder(column: $table.colorHex, builder: (column) => column);

  GeneratedColumn<bool> get pinned =>
      $composableBuilder(column: $table.pinned, builder: (column) => column);
}

class $$SmartNotesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SmartNotesTable,
          SmartNote,
          $$SmartNotesTableFilterComposer,
          $$SmartNotesTableOrderingComposer,
          $$SmartNotesTableAnnotationComposer,
          $$SmartNotesTableCreateCompanionBuilder,
          $$SmartNotesTableUpdateCompanionBuilder,
          (
            SmartNote,
            BaseReferences<_$AppDatabase, $SmartNotesTable, SmartNote>,
          ),
          SmartNote,
          PrefetchHooks Function()
        > {
  $$SmartNotesTableTableManager(_$AppDatabase db, $SmartNotesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SmartNotesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SmartNotesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SmartNotesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> pdfId = const Value.absent(),
                Value<int> pageNumber = const Value.absent(),
                Value<String> term = const Value.absent(),
                Value<String> explanation = const Value.absent(),
                Value<double> x = const Value.absent(),
                Value<double> y = const Value.absent(),
                Value<String?> colorHex = const Value.absent(),
                Value<bool> pinned = const Value.absent(),
              }) => SmartNotesCompanion(
                id: id,
                pdfId: pdfId,
                pageNumber: pageNumber,
                term: term,
                explanation: explanation,
                x: x,
                y: y,
                colorHex: colorHex,
                pinned: pinned,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int pdfId,
                required int pageNumber,
                required String term,
                required String explanation,
                Value<double> x = const Value.absent(),
                Value<double> y = const Value.absent(),
                Value<String?> colorHex = const Value.absent(),
                Value<bool> pinned = const Value.absent(),
              }) => SmartNotesCompanion.insert(
                id: id,
                pdfId: pdfId,
                pageNumber: pageNumber,
                term: term,
                explanation: explanation,
                x: x,
                y: y,
                colorHex: colorHex,
                pinned: pinned,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SmartNotesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SmartNotesTable,
      SmartNote,
      $$SmartNotesTableFilterComposer,
      $$SmartNotesTableOrderingComposer,
      $$SmartNotesTableAnnotationComposer,
      $$SmartNotesTableCreateCompanionBuilder,
      $$SmartNotesTableUpdateCompanionBuilder,
      (SmartNote, BaseReferences<_$AppDatabase, $SmartNotesTable, SmartNote>),
      SmartNote,
      PrefetchHooks Function()
    >;
typedef $$TtsCacheTableCreateCompanionBuilder =
    TtsCacheCompanion Function({
      required String textHash,
      required String textValue,
      required String audioBase64,
      required int createdAt,
      Value<int> rowid,
    });
typedef $$TtsCacheTableUpdateCompanionBuilder =
    TtsCacheCompanion Function({
      Value<String> textHash,
      Value<String> textValue,
      Value<String> audioBase64,
      Value<int> createdAt,
      Value<int> rowid,
    });

class $$TtsCacheTableFilterComposer
    extends Composer<_$AppDatabase, $TtsCacheTable> {
  $$TtsCacheTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get textHash => $composableBuilder(
    column: $table.textHash,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get textValue => $composableBuilder(
    column: $table.textValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get audioBase64 => $composableBuilder(
    column: $table.audioBase64,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TtsCacheTableOrderingComposer
    extends Composer<_$AppDatabase, $TtsCacheTable> {
  $$TtsCacheTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get textHash => $composableBuilder(
    column: $table.textHash,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get textValue => $composableBuilder(
    column: $table.textValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get audioBase64 => $composableBuilder(
    column: $table.audioBase64,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TtsCacheTableAnnotationComposer
    extends Composer<_$AppDatabase, $TtsCacheTable> {
  $$TtsCacheTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get textHash =>
      $composableBuilder(column: $table.textHash, builder: (column) => column);

  GeneratedColumn<String> get textValue =>
      $composableBuilder(column: $table.textValue, builder: (column) => column);

  GeneratedColumn<String> get audioBase64 => $composableBuilder(
    column: $table.audioBase64,
    builder: (column) => column,
  );

  GeneratedColumn<int> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$TtsCacheTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TtsCacheTable,
          TtsCacheData,
          $$TtsCacheTableFilterComposer,
          $$TtsCacheTableOrderingComposer,
          $$TtsCacheTableAnnotationComposer,
          $$TtsCacheTableCreateCompanionBuilder,
          $$TtsCacheTableUpdateCompanionBuilder,
          (
            TtsCacheData,
            BaseReferences<_$AppDatabase, $TtsCacheTable, TtsCacheData>,
          ),
          TtsCacheData,
          PrefetchHooks Function()
        > {
  $$TtsCacheTableTableManager(_$AppDatabase db, $TtsCacheTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TtsCacheTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TtsCacheTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TtsCacheTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> textHash = const Value.absent(),
                Value<String> textValue = const Value.absent(),
                Value<String> audioBase64 = const Value.absent(),
                Value<int> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TtsCacheCompanion(
                textHash: textHash,
                textValue: textValue,
                audioBase64: audioBase64,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String textHash,
                required String textValue,
                required String audioBase64,
                required int createdAt,
                Value<int> rowid = const Value.absent(),
              }) => TtsCacheCompanion.insert(
                textHash: textHash,
                textValue: textValue,
                audioBase64: audioBase64,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TtsCacheTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TtsCacheTable,
      TtsCacheData,
      $$TtsCacheTableFilterComposer,
      $$TtsCacheTableOrderingComposer,
      $$TtsCacheTableAnnotationComposer,
      $$TtsCacheTableCreateCompanionBuilder,
      $$TtsCacheTableUpdateCompanionBuilder,
      (
        TtsCacheData,
        BaseReferences<_$AppDatabase, $TtsCacheTable, TtsCacheData>,
      ),
      TtsCacheData,
      PrefetchHooks Function()
    >;
typedef $$StudyActivityTableCreateCompanionBuilder =
    StudyActivityCompanion Function({
      required String date,
      Value<int> minutesStudied,
      Value<int> pagesRead,
      Value<int> cardsReviewed,
      Value<int> rowid,
    });
typedef $$StudyActivityTableUpdateCompanionBuilder =
    StudyActivityCompanion Function({
      Value<String> date,
      Value<int> minutesStudied,
      Value<int> pagesRead,
      Value<int> cardsReviewed,
      Value<int> rowid,
    });

class $$StudyActivityTableFilterComposer
    extends Composer<_$AppDatabase, $StudyActivityTable> {
  $$StudyActivityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get minutesStudied => $composableBuilder(
    column: $table.minutesStudied,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get pagesRead => $composableBuilder(
    column: $table.pagesRead,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get cardsReviewed => $composableBuilder(
    column: $table.cardsReviewed,
    builder: (column) => ColumnFilters(column),
  );
}

class $$StudyActivityTableOrderingComposer
    extends Composer<_$AppDatabase, $StudyActivityTable> {
  $$StudyActivityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get minutesStudied => $composableBuilder(
    column: $table.minutesStudied,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get pagesRead => $composableBuilder(
    column: $table.pagesRead,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get cardsReviewed => $composableBuilder(
    column: $table.cardsReviewed,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$StudyActivityTableAnnotationComposer
    extends Composer<_$AppDatabase, $StudyActivityTable> {
  $$StudyActivityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<int> get minutesStudied => $composableBuilder(
    column: $table.minutesStudied,
    builder: (column) => column,
  );

  GeneratedColumn<int> get pagesRead =>
      $composableBuilder(column: $table.pagesRead, builder: (column) => column);

  GeneratedColumn<int> get cardsReviewed => $composableBuilder(
    column: $table.cardsReviewed,
    builder: (column) => column,
  );
}

class $$StudyActivityTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $StudyActivityTable,
          StudyActivityData,
          $$StudyActivityTableFilterComposer,
          $$StudyActivityTableOrderingComposer,
          $$StudyActivityTableAnnotationComposer,
          $$StudyActivityTableCreateCompanionBuilder,
          $$StudyActivityTableUpdateCompanionBuilder,
          (
            StudyActivityData,
            BaseReferences<
              _$AppDatabase,
              $StudyActivityTable,
              StudyActivityData
            >,
          ),
          StudyActivityData,
          PrefetchHooks Function()
        > {
  $$StudyActivityTableTableManager(_$AppDatabase db, $StudyActivityTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$StudyActivityTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$StudyActivityTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$StudyActivityTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> date = const Value.absent(),
                Value<int> minutesStudied = const Value.absent(),
                Value<int> pagesRead = const Value.absent(),
                Value<int> cardsReviewed = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => StudyActivityCompanion(
                date: date,
                minutesStudied: minutesStudied,
                pagesRead: pagesRead,
                cardsReviewed: cardsReviewed,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String date,
                Value<int> minutesStudied = const Value.absent(),
                Value<int> pagesRead = const Value.absent(),
                Value<int> cardsReviewed = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => StudyActivityCompanion.insert(
                date: date,
                minutesStudied: minutesStudied,
                pagesRead: pagesRead,
                cardsReviewed: cardsReviewed,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$StudyActivityTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $StudyActivityTable,
      StudyActivityData,
      $$StudyActivityTableFilterComposer,
      $$StudyActivityTableOrderingComposer,
      $$StudyActivityTableAnnotationComposer,
      $$StudyActivityTableCreateCompanionBuilder,
      $$StudyActivityTableUpdateCompanionBuilder,
      (
        StudyActivityData,
        BaseReferences<_$AppDatabase, $StudyActivityTable, StudyActivityData>,
      ),
      StudyActivityData,
      PrefetchHooks Function()
    >;
typedef $$BookmarksTableCreateCompanionBuilder =
    BookmarksCompanion Function({
      Value<int> id,
      required int pdfId,
      required int pageNumber,
      required String title,
      required int createdAt,
      Value<String?> colorHex,
    });
typedef $$BookmarksTableUpdateCompanionBuilder =
    BookmarksCompanion Function({
      Value<int> id,
      Value<int> pdfId,
      Value<int> pageNumber,
      Value<String> title,
      Value<int> createdAt,
      Value<String?> colorHex,
    });

class $$BookmarksTableFilterComposer
    extends Composer<_$AppDatabase, $BookmarksTable> {
  $$BookmarksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get pdfId => $composableBuilder(
    column: $table.pdfId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get pageNumber => $composableBuilder(
    column: $table.pageNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get colorHex => $composableBuilder(
    column: $table.colorHex,
    builder: (column) => ColumnFilters(column),
  );
}

class $$BookmarksTableOrderingComposer
    extends Composer<_$AppDatabase, $BookmarksTable> {
  $$BookmarksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get pdfId => $composableBuilder(
    column: $table.pdfId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get pageNumber => $composableBuilder(
    column: $table.pageNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get colorHex => $composableBuilder(
    column: $table.colorHex,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$BookmarksTableAnnotationComposer
    extends Composer<_$AppDatabase, $BookmarksTable> {
  $$BookmarksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get pdfId =>
      $composableBuilder(column: $table.pdfId, builder: (column) => column);

  GeneratedColumn<int> get pageNumber => $composableBuilder(
    column: $table.pageNumber,
    builder: (column) => column,
  );

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<int> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get colorHex =>
      $composableBuilder(column: $table.colorHex, builder: (column) => column);
}

class $$BookmarksTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $BookmarksTable,
          Bookmark,
          $$BookmarksTableFilterComposer,
          $$BookmarksTableOrderingComposer,
          $$BookmarksTableAnnotationComposer,
          $$BookmarksTableCreateCompanionBuilder,
          $$BookmarksTableUpdateCompanionBuilder,
          (Bookmark, BaseReferences<_$AppDatabase, $BookmarksTable, Bookmark>),
          Bookmark,
          PrefetchHooks Function()
        > {
  $$BookmarksTableTableManager(_$AppDatabase db, $BookmarksTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BookmarksTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BookmarksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BookmarksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> pdfId = const Value.absent(),
                Value<int> pageNumber = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<int> createdAt = const Value.absent(),
                Value<String?> colorHex = const Value.absent(),
              }) => BookmarksCompanion(
                id: id,
                pdfId: pdfId,
                pageNumber: pageNumber,
                title: title,
                createdAt: createdAt,
                colorHex: colorHex,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int pdfId,
                required int pageNumber,
                required String title,
                required int createdAt,
                Value<String?> colorHex = const Value.absent(),
              }) => BookmarksCompanion.insert(
                id: id,
                pdfId: pdfId,
                pageNumber: pageNumber,
                title: title,
                createdAt: createdAt,
                colorHex: colorHex,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$BookmarksTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $BookmarksTable,
      Bookmark,
      $$BookmarksTableFilterComposer,
      $$BookmarksTableOrderingComposer,
      $$BookmarksTableAnnotationComposer,
      $$BookmarksTableCreateCompanionBuilder,
      $$BookmarksTableUpdateCompanionBuilder,
      (Bookmark, BaseReferences<_$AppDatabase, $BookmarksTable, Bookmark>),
      Bookmark,
      PrefetchHooks Function()
    >;
typedef $$AnnotationsTableCreateCompanionBuilder =
    AnnotationsCompanion Function({
      Value<int> id,
      required int pdfId,
      required int pageNumber,
      required String pathDataJson,
      required String colorHex,
      required double strokeWidth,
      required int createdAt,
    });
typedef $$AnnotationsTableUpdateCompanionBuilder =
    AnnotationsCompanion Function({
      Value<int> id,
      Value<int> pdfId,
      Value<int> pageNumber,
      Value<String> pathDataJson,
      Value<String> colorHex,
      Value<double> strokeWidth,
      Value<int> createdAt,
    });

class $$AnnotationsTableFilterComposer
    extends Composer<_$AppDatabase, $AnnotationsTable> {
  $$AnnotationsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get pdfId => $composableBuilder(
    column: $table.pdfId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get pageNumber => $composableBuilder(
    column: $table.pageNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get pathDataJson => $composableBuilder(
    column: $table.pathDataJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get colorHex => $composableBuilder(
    column: $table.colorHex,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get strokeWidth => $composableBuilder(
    column: $table.strokeWidth,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$AnnotationsTableOrderingComposer
    extends Composer<_$AppDatabase, $AnnotationsTable> {
  $$AnnotationsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get pdfId => $composableBuilder(
    column: $table.pdfId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get pageNumber => $composableBuilder(
    column: $table.pageNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get pathDataJson => $composableBuilder(
    column: $table.pathDataJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get colorHex => $composableBuilder(
    column: $table.colorHex,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get strokeWidth => $composableBuilder(
    column: $table.strokeWidth,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AnnotationsTableAnnotationComposer
    extends Composer<_$AppDatabase, $AnnotationsTable> {
  $$AnnotationsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get pdfId =>
      $composableBuilder(column: $table.pdfId, builder: (column) => column);

  GeneratedColumn<int> get pageNumber => $composableBuilder(
    column: $table.pageNumber,
    builder: (column) => column,
  );

  GeneratedColumn<String> get pathDataJson => $composableBuilder(
    column: $table.pathDataJson,
    builder: (column) => column,
  );

  GeneratedColumn<String> get colorHex =>
      $composableBuilder(column: $table.colorHex, builder: (column) => column);

  GeneratedColumn<double> get strokeWidth => $composableBuilder(
    column: $table.strokeWidth,
    builder: (column) => column,
  );

  GeneratedColumn<int> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$AnnotationsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AnnotationsTable,
          Annotation,
          $$AnnotationsTableFilterComposer,
          $$AnnotationsTableOrderingComposer,
          $$AnnotationsTableAnnotationComposer,
          $$AnnotationsTableCreateCompanionBuilder,
          $$AnnotationsTableUpdateCompanionBuilder,
          (
            Annotation,
            BaseReferences<_$AppDatabase, $AnnotationsTable, Annotation>,
          ),
          Annotation,
          PrefetchHooks Function()
        > {
  $$AnnotationsTableTableManager(_$AppDatabase db, $AnnotationsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AnnotationsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AnnotationsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AnnotationsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> pdfId = const Value.absent(),
                Value<int> pageNumber = const Value.absent(),
                Value<String> pathDataJson = const Value.absent(),
                Value<String> colorHex = const Value.absent(),
                Value<double> strokeWidth = const Value.absent(),
                Value<int> createdAt = const Value.absent(),
              }) => AnnotationsCompanion(
                id: id,
                pdfId: pdfId,
                pageNumber: pageNumber,
                pathDataJson: pathDataJson,
                colorHex: colorHex,
                strokeWidth: strokeWidth,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int pdfId,
                required int pageNumber,
                required String pathDataJson,
                required String colorHex,
                required double strokeWidth,
                required int createdAt,
              }) => AnnotationsCompanion.insert(
                id: id,
                pdfId: pdfId,
                pageNumber: pageNumber,
                pathDataJson: pathDataJson,
                colorHex: colorHex,
                strokeWidth: strokeWidth,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$AnnotationsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AnnotationsTable,
      Annotation,
      $$AnnotationsTableFilterComposer,
      $$AnnotationsTableOrderingComposer,
      $$AnnotationsTableAnnotationComposer,
      $$AnnotationsTableCreateCompanionBuilder,
      $$AnnotationsTableUpdateCompanionBuilder,
      (
        Annotation,
        BaseReferences<_$AppDatabase, $AnnotationsTable, Annotation>,
      ),
      Annotation,
      PrefetchHooks Function()
    >;
typedef $$LessonAnnotationsTableCreateCompanionBuilder =
    LessonAnnotationsCompanion Function({
      Value<int> id,
      required String chapterId,
      required String mode,
      required String pathDataJson,
      required String colorHex,
      required double strokeWidth,
      required int createdAt,
    });
typedef $$LessonAnnotationsTableUpdateCompanionBuilder =
    LessonAnnotationsCompanion Function({
      Value<int> id,
      Value<String> chapterId,
      Value<String> mode,
      Value<String> pathDataJson,
      Value<String> colorHex,
      Value<double> strokeWidth,
      Value<int> createdAt,
    });

class $$LessonAnnotationsTableFilterComposer
    extends Composer<_$AppDatabase, $LessonAnnotationsTable> {
  $$LessonAnnotationsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get chapterId => $composableBuilder(
    column: $table.chapterId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get mode => $composableBuilder(
    column: $table.mode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get pathDataJson => $composableBuilder(
    column: $table.pathDataJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get colorHex => $composableBuilder(
    column: $table.colorHex,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get strokeWidth => $composableBuilder(
    column: $table.strokeWidth,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$LessonAnnotationsTableOrderingComposer
    extends Composer<_$AppDatabase, $LessonAnnotationsTable> {
  $$LessonAnnotationsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get chapterId => $composableBuilder(
    column: $table.chapterId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get mode => $composableBuilder(
    column: $table.mode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get pathDataJson => $composableBuilder(
    column: $table.pathDataJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get colorHex => $composableBuilder(
    column: $table.colorHex,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get strokeWidth => $composableBuilder(
    column: $table.strokeWidth,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$LessonAnnotationsTableAnnotationComposer
    extends Composer<_$AppDatabase, $LessonAnnotationsTable> {
  $$LessonAnnotationsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get chapterId =>
      $composableBuilder(column: $table.chapterId, builder: (column) => column);

  GeneratedColumn<String> get mode =>
      $composableBuilder(column: $table.mode, builder: (column) => column);

  GeneratedColumn<String> get pathDataJson => $composableBuilder(
    column: $table.pathDataJson,
    builder: (column) => column,
  );

  GeneratedColumn<String> get colorHex =>
      $composableBuilder(column: $table.colorHex, builder: (column) => column);

  GeneratedColumn<double> get strokeWidth => $composableBuilder(
    column: $table.strokeWidth,
    builder: (column) => column,
  );

  GeneratedColumn<int> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$LessonAnnotationsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LessonAnnotationsTable,
          LessonAnnotation,
          $$LessonAnnotationsTableFilterComposer,
          $$LessonAnnotationsTableOrderingComposer,
          $$LessonAnnotationsTableAnnotationComposer,
          $$LessonAnnotationsTableCreateCompanionBuilder,
          $$LessonAnnotationsTableUpdateCompanionBuilder,
          (
            LessonAnnotation,
            BaseReferences<
              _$AppDatabase,
              $LessonAnnotationsTable,
              LessonAnnotation
            >,
          ),
          LessonAnnotation,
          PrefetchHooks Function()
        > {
  $$LessonAnnotationsTableTableManager(
    _$AppDatabase db,
    $LessonAnnotationsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LessonAnnotationsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LessonAnnotationsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LessonAnnotationsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> chapterId = const Value.absent(),
                Value<String> mode = const Value.absent(),
                Value<String> pathDataJson = const Value.absent(),
                Value<String> colorHex = const Value.absent(),
                Value<double> strokeWidth = const Value.absent(),
                Value<int> createdAt = const Value.absent(),
              }) => LessonAnnotationsCompanion(
                id: id,
                chapterId: chapterId,
                mode: mode,
                pathDataJson: pathDataJson,
                colorHex: colorHex,
                strokeWidth: strokeWidth,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String chapterId,
                required String mode,
                required String pathDataJson,
                required String colorHex,
                required double strokeWidth,
                required int createdAt,
              }) => LessonAnnotationsCompanion.insert(
                id: id,
                chapterId: chapterId,
                mode: mode,
                pathDataJson: pathDataJson,
                colorHex: colorHex,
                strokeWidth: strokeWidth,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$LessonAnnotationsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LessonAnnotationsTable,
      LessonAnnotation,
      $$LessonAnnotationsTableFilterComposer,
      $$LessonAnnotationsTableOrderingComposer,
      $$LessonAnnotationsTableAnnotationComposer,
      $$LessonAnnotationsTableCreateCompanionBuilder,
      $$LessonAnnotationsTableUpdateCompanionBuilder,
      (
        LessonAnnotation,
        BaseReferences<
          _$AppDatabase,
          $LessonAnnotationsTable,
          LessonAnnotation
        >,
      ),
      LessonAnnotation,
      PrefetchHooks Function()
    >;
typedef $$TagsTableCreateCompanionBuilder =
    TagsCompanion Function({
      Value<int> id,
      required String name,
      required String colorHex,
    });
typedef $$TagsTableUpdateCompanionBuilder =
    TagsCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<String> colorHex,
    });

class $$TagsTableFilterComposer extends Composer<_$AppDatabase, $TagsTable> {
  $$TagsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get colorHex => $composableBuilder(
    column: $table.colorHex,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TagsTableOrderingComposer extends Composer<_$AppDatabase, $TagsTable> {
  $$TagsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get colorHex => $composableBuilder(
    column: $table.colorHex,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TagsTableAnnotationComposer
    extends Composer<_$AppDatabase, $TagsTable> {
  $$TagsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get colorHex =>
      $composableBuilder(column: $table.colorHex, builder: (column) => column);
}

class $$TagsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TagsTable,
          Tag,
          $$TagsTableFilterComposer,
          $$TagsTableOrderingComposer,
          $$TagsTableAnnotationComposer,
          $$TagsTableCreateCompanionBuilder,
          $$TagsTableUpdateCompanionBuilder,
          (Tag, BaseReferences<_$AppDatabase, $TagsTable, Tag>),
          Tag,
          PrefetchHooks Function()
        > {
  $$TagsTableTableManager(_$AppDatabase db, $TagsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TagsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TagsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TagsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> colorHex = const Value.absent(),
              }) => TagsCompanion(id: id, name: name, colorHex: colorHex),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                required String colorHex,
              }) =>
                  TagsCompanion.insert(id: id, name: name, colorHex: colorHex),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TagsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TagsTable,
      Tag,
      $$TagsTableFilterComposer,
      $$TagsTableOrderingComposer,
      $$TagsTableAnnotationComposer,
      $$TagsTableCreateCompanionBuilder,
      $$TagsTableUpdateCompanionBuilder,
      (Tag, BaseReferences<_$AppDatabase, $TagsTable, Tag>),
      Tag,
      PrefetchHooks Function()
    >;
typedef $$PdfTagCrossRefsTableCreateCompanionBuilder =
    PdfTagCrossRefsCompanion Function({
      required int pdfId,
      required int tagId,
      Value<int> rowid,
    });
typedef $$PdfTagCrossRefsTableUpdateCompanionBuilder =
    PdfTagCrossRefsCompanion Function({
      Value<int> pdfId,
      Value<int> tagId,
      Value<int> rowid,
    });

class $$PdfTagCrossRefsTableFilterComposer
    extends Composer<_$AppDatabase, $PdfTagCrossRefsTable> {
  $$PdfTagCrossRefsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get pdfId => $composableBuilder(
    column: $table.pdfId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get tagId => $composableBuilder(
    column: $table.tagId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$PdfTagCrossRefsTableOrderingComposer
    extends Composer<_$AppDatabase, $PdfTagCrossRefsTable> {
  $$PdfTagCrossRefsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get pdfId => $composableBuilder(
    column: $table.pdfId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get tagId => $composableBuilder(
    column: $table.tagId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PdfTagCrossRefsTableAnnotationComposer
    extends Composer<_$AppDatabase, $PdfTagCrossRefsTable> {
  $$PdfTagCrossRefsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get pdfId =>
      $composableBuilder(column: $table.pdfId, builder: (column) => column);

  GeneratedColumn<int> get tagId =>
      $composableBuilder(column: $table.tagId, builder: (column) => column);
}

class $$PdfTagCrossRefsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PdfTagCrossRefsTable,
          PdfTagCrossRef,
          $$PdfTagCrossRefsTableFilterComposer,
          $$PdfTagCrossRefsTableOrderingComposer,
          $$PdfTagCrossRefsTableAnnotationComposer,
          $$PdfTagCrossRefsTableCreateCompanionBuilder,
          $$PdfTagCrossRefsTableUpdateCompanionBuilder,
          (
            PdfTagCrossRef,
            BaseReferences<
              _$AppDatabase,
              $PdfTagCrossRefsTable,
              PdfTagCrossRef
            >,
          ),
          PdfTagCrossRef,
          PrefetchHooks Function()
        > {
  $$PdfTagCrossRefsTableTableManager(
    _$AppDatabase db,
    $PdfTagCrossRefsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PdfTagCrossRefsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PdfTagCrossRefsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PdfTagCrossRefsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> pdfId = const Value.absent(),
                Value<int> tagId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PdfTagCrossRefsCompanion(
                pdfId: pdfId,
                tagId: tagId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int pdfId,
                required int tagId,
                Value<int> rowid = const Value.absent(),
              }) => PdfTagCrossRefsCompanion.insert(
                pdfId: pdfId,
                tagId: tagId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$PdfTagCrossRefsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PdfTagCrossRefsTable,
      PdfTagCrossRef,
      $$PdfTagCrossRefsTableFilterComposer,
      $$PdfTagCrossRefsTableOrderingComposer,
      $$PdfTagCrossRefsTableAnnotationComposer,
      $$PdfTagCrossRefsTableCreateCompanionBuilder,
      $$PdfTagCrossRefsTableUpdateCompanionBuilder,
      (
        PdfTagCrossRef,
        BaseReferences<_$AppDatabase, $PdfTagCrossRefsTable, PdfTagCrossRef>,
      ),
      PdfTagCrossRef,
      PrefetchHooks Function()
    >;
typedef $$AchievementsTableCreateCompanionBuilder =
    AchievementsCompanion Function({
      required String id,
      required String title,
      required String description,
      Value<int?> unlockedAt,
      Value<int> rowid,
    });
typedef $$AchievementsTableUpdateCompanionBuilder =
    AchievementsCompanion Function({
      Value<String> id,
      Value<String> title,
      Value<String> description,
      Value<int?> unlockedAt,
      Value<int> rowid,
    });

class $$AchievementsTableFilterComposer
    extends Composer<_$AppDatabase, $AchievementsTable> {
  $$AchievementsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get unlockedAt => $composableBuilder(
    column: $table.unlockedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$AchievementsTableOrderingComposer
    extends Composer<_$AppDatabase, $AchievementsTable> {
  $$AchievementsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get unlockedAt => $composableBuilder(
    column: $table.unlockedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AchievementsTableAnnotationComposer
    extends Composer<_$AppDatabase, $AchievementsTable> {
  $$AchievementsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<int> get unlockedAt => $composableBuilder(
    column: $table.unlockedAt,
    builder: (column) => column,
  );
}

class $$AchievementsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AchievementsTable,
          Achievement,
          $$AchievementsTableFilterComposer,
          $$AchievementsTableOrderingComposer,
          $$AchievementsTableAnnotationComposer,
          $$AchievementsTableCreateCompanionBuilder,
          $$AchievementsTableUpdateCompanionBuilder,
          (
            Achievement,
            BaseReferences<_$AppDatabase, $AchievementsTable, Achievement>,
          ),
          Achievement,
          PrefetchHooks Function()
        > {
  $$AchievementsTableTableManager(_$AppDatabase db, $AchievementsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AchievementsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AchievementsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AchievementsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<int?> unlockedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AchievementsCompanion(
                id: id,
                title: title,
                description: description,
                unlockedAt: unlockedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String title,
                required String description,
                Value<int?> unlockedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AchievementsCompanion.insert(
                id: id,
                title: title,
                description: description,
                unlockedAt: unlockedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$AchievementsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AchievementsTable,
      Achievement,
      $$AchievementsTableFilterComposer,
      $$AchievementsTableOrderingComposer,
      $$AchievementsTableAnnotationComposer,
      $$AchievementsTableCreateCompanionBuilder,
      $$AchievementsTableUpdateCompanionBuilder,
      (
        Achievement,
        BaseReferences<_$AppDatabase, $AchievementsTable, Achievement>,
      ),
      Achievement,
      PrefetchHooks Function()
    >;
typedef $$AiJobsTableCreateCompanionBuilder =
    AiJobsCompanion Function({
      Value<int> id,
      required String type,
      required String payloadJson,
      required String status,
      Value<int> retries,
      required int createdAt,
      required int updatedAt,
    });
typedef $$AiJobsTableUpdateCompanionBuilder =
    AiJobsCompanion Function({
      Value<int> id,
      Value<String> type,
      Value<String> payloadJson,
      Value<String> status,
      Value<int> retries,
      Value<int> createdAt,
      Value<int> updatedAt,
    });

class $$AiJobsTableFilterComposer
    extends Composer<_$AppDatabase, $AiJobsTable> {
  $$AiJobsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get payloadJson => $composableBuilder(
    column: $table.payloadJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get retries => $composableBuilder(
    column: $table.retries,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$AiJobsTableOrderingComposer
    extends Composer<_$AppDatabase, $AiJobsTable> {
  $$AiJobsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get payloadJson => $composableBuilder(
    column: $table.payloadJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get retries => $composableBuilder(
    column: $table.retries,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AiJobsTableAnnotationComposer
    extends Composer<_$AppDatabase, $AiJobsTable> {
  $$AiJobsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get payloadJson => $composableBuilder(
    column: $table.payloadJson,
    builder: (column) => column,
  );

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<int> get retries =>
      $composableBuilder(column: $table.retries, builder: (column) => column);

  GeneratedColumn<int> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<int> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$AiJobsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AiJobsTable,
          AiJob,
          $$AiJobsTableFilterComposer,
          $$AiJobsTableOrderingComposer,
          $$AiJobsTableAnnotationComposer,
          $$AiJobsTableCreateCompanionBuilder,
          $$AiJobsTableUpdateCompanionBuilder,
          (AiJob, BaseReferences<_$AppDatabase, $AiJobsTable, AiJob>),
          AiJob,
          PrefetchHooks Function()
        > {
  $$AiJobsTableTableManager(_$AppDatabase db, $AiJobsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AiJobsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AiJobsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AiJobsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<String> payloadJson = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<int> retries = const Value.absent(),
                Value<int> createdAt = const Value.absent(),
                Value<int> updatedAt = const Value.absent(),
              }) => AiJobsCompanion(
                id: id,
                type: type,
                payloadJson: payloadJson,
                status: status,
                retries: retries,
                createdAt: createdAt,
                updatedAt: updatedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String type,
                required String payloadJson,
                required String status,
                Value<int> retries = const Value.absent(),
                required int createdAt,
                required int updatedAt,
              }) => AiJobsCompanion.insert(
                id: id,
                type: type,
                payloadJson: payloadJson,
                status: status,
                retries: retries,
                createdAt: createdAt,
                updatedAt: updatedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$AiJobsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AiJobsTable,
      AiJob,
      $$AiJobsTableFilterComposer,
      $$AiJobsTableOrderingComposer,
      $$AiJobsTableAnnotationComposer,
      $$AiJobsTableCreateCompanionBuilder,
      $$AiJobsTableUpdateCompanionBuilder,
      (AiJob, BaseReferences<_$AppDatabase, $AiJobsTable, AiJob>),
      AiJob,
      PrefetchHooks Function()
    >;
typedef $$CourseCacheTableCreateCompanionBuilder =
    CourseCacheCompanion Function({
      required String id,
      required String title,
      required String titleEn,
      required String color,
      Value<String?> icon,
      required String mode,
      Value<String?> root,
      required int sortOrder,
      required bool isReady,
      required int chapterCount,
      required int lessonCount,
      required String structureJson,
      required String chaptersJson,
      Value<String?> contentHash,
      required int cachedAt,
      Value<int> rowid,
    });
typedef $$CourseCacheTableUpdateCompanionBuilder =
    CourseCacheCompanion Function({
      Value<String> id,
      Value<String> title,
      Value<String> titleEn,
      Value<String> color,
      Value<String?> icon,
      Value<String> mode,
      Value<String?> root,
      Value<int> sortOrder,
      Value<bool> isReady,
      Value<int> chapterCount,
      Value<int> lessonCount,
      Value<String> structureJson,
      Value<String> chaptersJson,
      Value<String?> contentHash,
      Value<int> cachedAt,
      Value<int> rowid,
    });

class $$CourseCacheTableFilterComposer
    extends Composer<_$AppDatabase, $CourseCacheTable> {
  $$CourseCacheTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get titleEn => $composableBuilder(
    column: $table.titleEn,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get icon => $composableBuilder(
    column: $table.icon,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get mode => $composableBuilder(
    column: $table.mode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get root => $composableBuilder(
    column: $table.root,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isReady => $composableBuilder(
    column: $table.isReady,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get chapterCount => $composableBuilder(
    column: $table.chapterCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get lessonCount => $composableBuilder(
    column: $table.lessonCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get structureJson => $composableBuilder(
    column: $table.structureJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get chaptersJson => $composableBuilder(
    column: $table.chaptersJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get contentHash => $composableBuilder(
    column: $table.contentHash,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CourseCacheTableOrderingComposer
    extends Composer<_$AppDatabase, $CourseCacheTable> {
  $$CourseCacheTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get titleEn => $composableBuilder(
    column: $table.titleEn,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get icon => $composableBuilder(
    column: $table.icon,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get mode => $composableBuilder(
    column: $table.mode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get root => $composableBuilder(
    column: $table.root,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isReady => $composableBuilder(
    column: $table.isReady,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get chapterCount => $composableBuilder(
    column: $table.chapterCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get lessonCount => $composableBuilder(
    column: $table.lessonCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get structureJson => $composableBuilder(
    column: $table.structureJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get chaptersJson => $composableBuilder(
    column: $table.chaptersJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get contentHash => $composableBuilder(
    column: $table.contentHash,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CourseCacheTableAnnotationComposer
    extends Composer<_$AppDatabase, $CourseCacheTable> {
  $$CourseCacheTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get titleEn =>
      $composableBuilder(column: $table.titleEn, builder: (column) => column);

  GeneratedColumn<String> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<String> get icon =>
      $composableBuilder(column: $table.icon, builder: (column) => column);

  GeneratedColumn<String> get mode =>
      $composableBuilder(column: $table.mode, builder: (column) => column);

  GeneratedColumn<String> get root =>
      $composableBuilder(column: $table.root, builder: (column) => column);

  GeneratedColumn<int> get sortOrder =>
      $composableBuilder(column: $table.sortOrder, builder: (column) => column);

  GeneratedColumn<bool> get isReady =>
      $composableBuilder(column: $table.isReady, builder: (column) => column);

  GeneratedColumn<int> get chapterCount => $composableBuilder(
    column: $table.chapterCount,
    builder: (column) => column,
  );

  GeneratedColumn<int> get lessonCount => $composableBuilder(
    column: $table.lessonCount,
    builder: (column) => column,
  );

  GeneratedColumn<String> get structureJson => $composableBuilder(
    column: $table.structureJson,
    builder: (column) => column,
  );

  GeneratedColumn<String> get chaptersJson => $composableBuilder(
    column: $table.chaptersJson,
    builder: (column) => column,
  );

  GeneratedColumn<String> get contentHash => $composableBuilder(
    column: $table.contentHash,
    builder: (column) => column,
  );

  GeneratedColumn<int> get cachedAt =>
      $composableBuilder(column: $table.cachedAt, builder: (column) => column);
}

class $$CourseCacheTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CourseCacheTable,
          CourseCacheData,
          $$CourseCacheTableFilterComposer,
          $$CourseCacheTableOrderingComposer,
          $$CourseCacheTableAnnotationComposer,
          $$CourseCacheTableCreateCompanionBuilder,
          $$CourseCacheTableUpdateCompanionBuilder,
          (
            CourseCacheData,
            BaseReferences<_$AppDatabase, $CourseCacheTable, CourseCacheData>,
          ),
          CourseCacheData,
          PrefetchHooks Function()
        > {
  $$CourseCacheTableTableManager(_$AppDatabase db, $CourseCacheTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CourseCacheTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CourseCacheTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CourseCacheTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> titleEn = const Value.absent(),
                Value<String> color = const Value.absent(),
                Value<String?> icon = const Value.absent(),
                Value<String> mode = const Value.absent(),
                Value<String?> root = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<bool> isReady = const Value.absent(),
                Value<int> chapterCount = const Value.absent(),
                Value<int> lessonCount = const Value.absent(),
                Value<String> structureJson = const Value.absent(),
                Value<String> chaptersJson = const Value.absent(),
                Value<String?> contentHash = const Value.absent(),
                Value<int> cachedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CourseCacheCompanion(
                id: id,
                title: title,
                titleEn: titleEn,
                color: color,
                icon: icon,
                mode: mode,
                root: root,
                sortOrder: sortOrder,
                isReady: isReady,
                chapterCount: chapterCount,
                lessonCount: lessonCount,
                structureJson: structureJson,
                chaptersJson: chaptersJson,
                contentHash: contentHash,
                cachedAt: cachedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String title,
                required String titleEn,
                required String color,
                Value<String?> icon = const Value.absent(),
                required String mode,
                Value<String?> root = const Value.absent(),
                required int sortOrder,
                required bool isReady,
                required int chapterCount,
                required int lessonCount,
                required String structureJson,
                required String chaptersJson,
                Value<String?> contentHash = const Value.absent(),
                required int cachedAt,
                Value<int> rowid = const Value.absent(),
              }) => CourseCacheCompanion.insert(
                id: id,
                title: title,
                titleEn: titleEn,
                color: color,
                icon: icon,
                mode: mode,
                root: root,
                sortOrder: sortOrder,
                isReady: isReady,
                chapterCount: chapterCount,
                lessonCount: lessonCount,
                structureJson: structureJson,
                chaptersJson: chaptersJson,
                contentHash: contentHash,
                cachedAt: cachedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CourseCacheTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CourseCacheTable,
      CourseCacheData,
      $$CourseCacheTableFilterComposer,
      $$CourseCacheTableOrderingComposer,
      $$CourseCacheTableAnnotationComposer,
      $$CourseCacheTableCreateCompanionBuilder,
      $$CourseCacheTableUpdateCompanionBuilder,
      (
        CourseCacheData,
        BaseReferences<_$AppDatabase, $CourseCacheTable, CourseCacheData>,
      ),
      CourseCacheData,
      PrefetchHooks Function()
    >;
typedef $$LessonCacheTableCreateCompanionBuilder =
    LessonCacheCompanion Function({
      required String chapterId,
      required String mode,
      Value<String?> courseId,
      Value<String?> title,
      required String contentJson,
      Value<String?> contentHash,
      required int cachedAt,
      Value<int> rowid,
    });
typedef $$LessonCacheTableUpdateCompanionBuilder =
    LessonCacheCompanion Function({
      Value<String> chapterId,
      Value<String> mode,
      Value<String?> courseId,
      Value<String?> title,
      Value<String> contentJson,
      Value<String?> contentHash,
      Value<int> cachedAt,
      Value<int> rowid,
    });

class $$LessonCacheTableFilterComposer
    extends Composer<_$AppDatabase, $LessonCacheTable> {
  $$LessonCacheTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get chapterId => $composableBuilder(
    column: $table.chapterId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get mode => $composableBuilder(
    column: $table.mode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get courseId => $composableBuilder(
    column: $table.courseId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get contentJson => $composableBuilder(
    column: $table.contentJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get contentHash => $composableBuilder(
    column: $table.contentHash,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$LessonCacheTableOrderingComposer
    extends Composer<_$AppDatabase, $LessonCacheTable> {
  $$LessonCacheTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get chapterId => $composableBuilder(
    column: $table.chapterId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get mode => $composableBuilder(
    column: $table.mode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get courseId => $composableBuilder(
    column: $table.courseId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get contentJson => $composableBuilder(
    column: $table.contentJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get contentHash => $composableBuilder(
    column: $table.contentHash,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$LessonCacheTableAnnotationComposer
    extends Composer<_$AppDatabase, $LessonCacheTable> {
  $$LessonCacheTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get chapterId =>
      $composableBuilder(column: $table.chapterId, builder: (column) => column);

  GeneratedColumn<String> get mode =>
      $composableBuilder(column: $table.mode, builder: (column) => column);

  GeneratedColumn<String> get courseId =>
      $composableBuilder(column: $table.courseId, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get contentJson => $composableBuilder(
    column: $table.contentJson,
    builder: (column) => column,
  );

  GeneratedColumn<String> get contentHash => $composableBuilder(
    column: $table.contentHash,
    builder: (column) => column,
  );

  GeneratedColumn<int> get cachedAt =>
      $composableBuilder(column: $table.cachedAt, builder: (column) => column);
}

class $$LessonCacheTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LessonCacheTable,
          LessonCacheData,
          $$LessonCacheTableFilterComposer,
          $$LessonCacheTableOrderingComposer,
          $$LessonCacheTableAnnotationComposer,
          $$LessonCacheTableCreateCompanionBuilder,
          $$LessonCacheTableUpdateCompanionBuilder,
          (
            LessonCacheData,
            BaseReferences<_$AppDatabase, $LessonCacheTable, LessonCacheData>,
          ),
          LessonCacheData,
          PrefetchHooks Function()
        > {
  $$LessonCacheTableTableManager(_$AppDatabase db, $LessonCacheTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LessonCacheTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LessonCacheTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LessonCacheTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> chapterId = const Value.absent(),
                Value<String> mode = const Value.absent(),
                Value<String?> courseId = const Value.absent(),
                Value<String?> title = const Value.absent(),
                Value<String> contentJson = const Value.absent(),
                Value<String?> contentHash = const Value.absent(),
                Value<int> cachedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LessonCacheCompanion(
                chapterId: chapterId,
                mode: mode,
                courseId: courseId,
                title: title,
                contentJson: contentJson,
                contentHash: contentHash,
                cachedAt: cachedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String chapterId,
                required String mode,
                Value<String?> courseId = const Value.absent(),
                Value<String?> title = const Value.absent(),
                required String contentJson,
                Value<String?> contentHash = const Value.absent(),
                required int cachedAt,
                Value<int> rowid = const Value.absent(),
              }) => LessonCacheCompanion.insert(
                chapterId: chapterId,
                mode: mode,
                courseId: courseId,
                title: title,
                contentJson: contentJson,
                contentHash: contentHash,
                cachedAt: cachedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$LessonCacheTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LessonCacheTable,
      LessonCacheData,
      $$LessonCacheTableFilterComposer,
      $$LessonCacheTableOrderingComposer,
      $$LessonCacheTableAnnotationComposer,
      $$LessonCacheTableCreateCompanionBuilder,
      $$LessonCacheTableUpdateCompanionBuilder,
      (
        LessonCacheData,
        BaseReferences<_$AppDatabase, $LessonCacheTable, LessonCacheData>,
      ),
      LessonCacheData,
      PrefetchHooks Function()
    >;
typedef $$ContentReadingPositionsTableCreateCompanionBuilder =
    ContentReadingPositionsCompanion Function({
      required String chapterId,
      required String mode,
      required String courseId,
      required String chapterTitle,
      required int sectionIndex,
      required int updatedAt,
      Value<int> rowid,
    });
typedef $$ContentReadingPositionsTableUpdateCompanionBuilder =
    ContentReadingPositionsCompanion Function({
      Value<String> chapterId,
      Value<String> mode,
      Value<String> courseId,
      Value<String> chapterTitle,
      Value<int> sectionIndex,
      Value<int> updatedAt,
      Value<int> rowid,
    });

class $$ContentReadingPositionsTableFilterComposer
    extends Composer<_$AppDatabase, $ContentReadingPositionsTable> {
  $$ContentReadingPositionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get chapterId => $composableBuilder(
    column: $table.chapterId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get mode => $composableBuilder(
    column: $table.mode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get courseId => $composableBuilder(
    column: $table.courseId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get chapterTitle => $composableBuilder(
    column: $table.chapterTitle,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sectionIndex => $composableBuilder(
    column: $table.sectionIndex,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ContentReadingPositionsTableOrderingComposer
    extends Composer<_$AppDatabase, $ContentReadingPositionsTable> {
  $$ContentReadingPositionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get chapterId => $composableBuilder(
    column: $table.chapterId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get mode => $composableBuilder(
    column: $table.mode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get courseId => $composableBuilder(
    column: $table.courseId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get chapterTitle => $composableBuilder(
    column: $table.chapterTitle,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sectionIndex => $composableBuilder(
    column: $table.sectionIndex,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ContentReadingPositionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ContentReadingPositionsTable> {
  $$ContentReadingPositionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get chapterId =>
      $composableBuilder(column: $table.chapterId, builder: (column) => column);

  GeneratedColumn<String> get mode =>
      $composableBuilder(column: $table.mode, builder: (column) => column);

  GeneratedColumn<String> get courseId =>
      $composableBuilder(column: $table.courseId, builder: (column) => column);

  GeneratedColumn<String> get chapterTitle => $composableBuilder(
    column: $table.chapterTitle,
    builder: (column) => column,
  );

  GeneratedColumn<int> get sectionIndex => $composableBuilder(
    column: $table.sectionIndex,
    builder: (column) => column,
  );

  GeneratedColumn<int> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$ContentReadingPositionsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ContentReadingPositionsTable,
          ContentReadingPosition,
          $$ContentReadingPositionsTableFilterComposer,
          $$ContentReadingPositionsTableOrderingComposer,
          $$ContentReadingPositionsTableAnnotationComposer,
          $$ContentReadingPositionsTableCreateCompanionBuilder,
          $$ContentReadingPositionsTableUpdateCompanionBuilder,
          (
            ContentReadingPosition,
            BaseReferences<
              _$AppDatabase,
              $ContentReadingPositionsTable,
              ContentReadingPosition
            >,
          ),
          ContentReadingPosition,
          PrefetchHooks Function()
        > {
  $$ContentReadingPositionsTableTableManager(
    _$AppDatabase db,
    $ContentReadingPositionsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ContentReadingPositionsTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$ContentReadingPositionsTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$ContentReadingPositionsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> chapterId = const Value.absent(),
                Value<String> mode = const Value.absent(),
                Value<String> courseId = const Value.absent(),
                Value<String> chapterTitle = const Value.absent(),
                Value<int> sectionIndex = const Value.absent(),
                Value<int> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ContentReadingPositionsCompanion(
                chapterId: chapterId,
                mode: mode,
                courseId: courseId,
                chapterTitle: chapterTitle,
                sectionIndex: sectionIndex,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String chapterId,
                required String mode,
                required String courseId,
                required String chapterTitle,
                required int sectionIndex,
                required int updatedAt,
                Value<int> rowid = const Value.absent(),
              }) => ContentReadingPositionsCompanion.insert(
                chapterId: chapterId,
                mode: mode,
                courseId: courseId,
                chapterTitle: chapterTitle,
                sectionIndex: sectionIndex,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ContentReadingPositionsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ContentReadingPositionsTable,
      ContentReadingPosition,
      $$ContentReadingPositionsTableFilterComposer,
      $$ContentReadingPositionsTableOrderingComposer,
      $$ContentReadingPositionsTableAnnotationComposer,
      $$ContentReadingPositionsTableCreateCompanionBuilder,
      $$ContentReadingPositionsTableUpdateCompanionBuilder,
      (
        ContentReadingPosition,
        BaseReferences<
          _$AppDatabase,
          $ContentReadingPositionsTable,
          ContentReadingPosition
        >,
      ),
      ContentReadingPosition,
      PrefetchHooks Function()
    >;
typedef $$ContentLessonStatesTableCreateCompanionBuilder =
    ContentLessonStatesCompanion Function({
      required String chapterId,
      Value<String?> status,
      Value<bool> bookmarked,
      required int updatedAt,
      Value<int> rowid,
    });
typedef $$ContentLessonStatesTableUpdateCompanionBuilder =
    ContentLessonStatesCompanion Function({
      Value<String> chapterId,
      Value<String?> status,
      Value<bool> bookmarked,
      Value<int> updatedAt,
      Value<int> rowid,
    });

class $$ContentLessonStatesTableFilterComposer
    extends Composer<_$AppDatabase, $ContentLessonStatesTable> {
  $$ContentLessonStatesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get chapterId => $composableBuilder(
    column: $table.chapterId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get bookmarked => $composableBuilder(
    column: $table.bookmarked,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ContentLessonStatesTableOrderingComposer
    extends Composer<_$AppDatabase, $ContentLessonStatesTable> {
  $$ContentLessonStatesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get chapterId => $composableBuilder(
    column: $table.chapterId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get bookmarked => $composableBuilder(
    column: $table.bookmarked,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ContentLessonStatesTableAnnotationComposer
    extends Composer<_$AppDatabase, $ContentLessonStatesTable> {
  $$ContentLessonStatesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get chapterId =>
      $composableBuilder(column: $table.chapterId, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<bool> get bookmarked => $composableBuilder(
    column: $table.bookmarked,
    builder: (column) => column,
  );

  GeneratedColumn<int> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$ContentLessonStatesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ContentLessonStatesTable,
          ContentLessonState,
          $$ContentLessonStatesTableFilterComposer,
          $$ContentLessonStatesTableOrderingComposer,
          $$ContentLessonStatesTableAnnotationComposer,
          $$ContentLessonStatesTableCreateCompanionBuilder,
          $$ContentLessonStatesTableUpdateCompanionBuilder,
          (
            ContentLessonState,
            BaseReferences<
              _$AppDatabase,
              $ContentLessonStatesTable,
              ContentLessonState
            >,
          ),
          ContentLessonState,
          PrefetchHooks Function()
        > {
  $$ContentLessonStatesTableTableManager(
    _$AppDatabase db,
    $ContentLessonStatesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ContentLessonStatesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ContentLessonStatesTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$ContentLessonStatesTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> chapterId = const Value.absent(),
                Value<String?> status = const Value.absent(),
                Value<bool> bookmarked = const Value.absent(),
                Value<int> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ContentLessonStatesCompanion(
                chapterId: chapterId,
                status: status,
                bookmarked: bookmarked,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String chapterId,
                Value<String?> status = const Value.absent(),
                Value<bool> bookmarked = const Value.absent(),
                required int updatedAt,
                Value<int> rowid = const Value.absent(),
              }) => ContentLessonStatesCompanion.insert(
                chapterId: chapterId,
                status: status,
                bookmarked: bookmarked,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ContentLessonStatesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ContentLessonStatesTable,
      ContentLessonState,
      $$ContentLessonStatesTableFilterComposer,
      $$ContentLessonStatesTableOrderingComposer,
      $$ContentLessonStatesTableAnnotationComposer,
      $$ContentLessonStatesTableCreateCompanionBuilder,
      $$ContentLessonStatesTableUpdateCompanionBuilder,
      (
        ContentLessonState,
        BaseReferences<
          _$AppDatabase,
          $ContentLessonStatesTable,
          ContentLessonState
        >,
      ),
      ContentLessonState,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$PdfsTableTableManager get pdfs => $$PdfsTableTableManager(_db, _db.pdfs);
  $$LessonForksTableTableManager get lessonForks =>
      $$LessonForksTableTableManager(_db, _db.lessonForks);
  $$FlashcardsTableTableManager get flashcards =>
      $$FlashcardsTableTableManager(_db, _db.flashcards);
  $$StudyPlansTableTableManager get studyPlans =>
      $$StudyPlansTableTableManager(_db, _db.studyPlans);
  $$ChatMessagesTableTableManager get chatMessages =>
      $$ChatMessagesTableTableManager(_db, _db.chatMessages);
  $$SmartNotesTableTableManager get smartNotes =>
      $$SmartNotesTableTableManager(_db, _db.smartNotes);
  $$TtsCacheTableTableManager get ttsCache =>
      $$TtsCacheTableTableManager(_db, _db.ttsCache);
  $$StudyActivityTableTableManager get studyActivity =>
      $$StudyActivityTableTableManager(_db, _db.studyActivity);
  $$BookmarksTableTableManager get bookmarks =>
      $$BookmarksTableTableManager(_db, _db.bookmarks);
  $$AnnotationsTableTableManager get annotations =>
      $$AnnotationsTableTableManager(_db, _db.annotations);
  $$LessonAnnotationsTableTableManager get lessonAnnotations =>
      $$LessonAnnotationsTableTableManager(_db, _db.lessonAnnotations);
  $$TagsTableTableManager get tags => $$TagsTableTableManager(_db, _db.tags);
  $$PdfTagCrossRefsTableTableManager get pdfTagCrossRefs =>
      $$PdfTagCrossRefsTableTableManager(_db, _db.pdfTagCrossRefs);
  $$AchievementsTableTableManager get achievements =>
      $$AchievementsTableTableManager(_db, _db.achievements);
  $$AiJobsTableTableManager get aiJobs =>
      $$AiJobsTableTableManager(_db, _db.aiJobs);
  $$CourseCacheTableTableManager get courseCache =>
      $$CourseCacheTableTableManager(_db, _db.courseCache);
  $$LessonCacheTableTableManager get lessonCache =>
      $$LessonCacheTableTableManager(_db, _db.lessonCache);
  $$ContentReadingPositionsTableTableManager get contentReadingPositions =>
      $$ContentReadingPositionsTableTableManager(
        _db,
        _db.contentReadingPositions,
      );
  $$ContentLessonStatesTableTableManager get contentLessonStates =>
      $$ContentLessonStatesTableTableManager(_db, _db.contentLessonStates);
}
