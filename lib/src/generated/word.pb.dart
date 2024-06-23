//
//  Generated code. Do not modify.
//  source: word.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class WordRequest extends $pb.GeneratedMessage {
  factory WordRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  WordRequest._() : super();
  factory WordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WordRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'word'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WordRequest clone() => WordRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WordRequest copyWith(void Function(WordRequest) updates) => super.copyWith((message) => updates(message as WordRequest)) as WordRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WordRequest create() => WordRequest._();
  WordRequest createEmptyInstance() => create();
  static $pb.PbList<WordRequest> createRepeated() => $pb.PbList<WordRequest>();
  @$core.pragma('dart2js:noInline')
  static WordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WordRequest>(create);
  static WordRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class WordReply extends $pb.GeneratedMessage {
  factory WordReply({
    WordInner? word,
  }) {
    final $result = create();
    if (word != null) {
      $result.word = word;
    }
    return $result;
  }
  WordReply._() : super();
  factory WordReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WordReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WordReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'word'), createEmptyInstance: create)
    ..aOM<WordInner>(1, _omitFieldNames ? '' : 'word', subBuilder: WordInner.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WordReply clone() => WordReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WordReply copyWith(void Function(WordReply) updates) => super.copyWith((message) => updates(message as WordReply)) as WordReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WordReply create() => WordReply._();
  WordReply createEmptyInstance() => create();
  static $pb.PbList<WordReply> createRepeated() => $pb.PbList<WordReply>();
  @$core.pragma('dart2js:noInline')
  static WordReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WordReply>(create);
  static WordReply? _defaultInstance;

  @$pb.TagNumber(1)
  WordInner get word => $_getN(0);
  @$pb.TagNumber(1)
  set word(WordInner v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasWord() => $_has(0);
  @$pb.TagNumber(1)
  void clearWord() => clearField(1);
  @$pb.TagNumber(1)
  WordInner ensureWord() => $_ensure(0);
}

class WordInner extends $pb.GeneratedMessage {
  factory WordInner({
    $core.int? id,
    $core.String? word,
    $core.String? definition,
    $core.String? translation,
    $core.Iterable<$core.String>? tag,
    $core.String? extendedBlocks,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (word != null) {
      $result.word = word;
    }
    if (definition != null) {
      $result.definition = definition;
    }
    if (translation != null) {
      $result.translation = translation;
    }
    if (tag != null) {
      $result.tag.addAll(tag);
    }
    if (extendedBlocks != null) {
      $result.extendedBlocks = extendedBlocks;
    }
    return $result;
  }
  WordInner._() : super();
  factory WordInner.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WordInner.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WordInner', package: const $pb.PackageName(_omitMessageNames ? '' : 'word'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'word')
    ..aOS(3, _omitFieldNames ? '' : 'definition')
    ..aOS(4, _omitFieldNames ? '' : 'translation')
    ..pPS(5, _omitFieldNames ? '' : 'tag')
    ..aOS(6, _omitFieldNames ? '' : 'extendedBlocks')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WordInner clone() => WordInner()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WordInner copyWith(void Function(WordInner) updates) => super.copyWith((message) => updates(message as WordInner)) as WordInner;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WordInner create() => WordInner._();
  WordInner createEmptyInstance() => create();
  static $pb.PbList<WordInner> createRepeated() => $pb.PbList<WordInner>();
  @$core.pragma('dart2js:noInline')
  static WordInner getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WordInner>(create);
  static WordInner? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get word => $_getSZ(1);
  @$pb.TagNumber(2)
  set word($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWord() => $_has(1);
  @$pb.TagNumber(2)
  void clearWord() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get definition => $_getSZ(2);
  @$pb.TagNumber(3)
  set definition($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDefinition() => $_has(2);
  @$pb.TagNumber(3)
  void clearDefinition() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get translation => $_getSZ(3);
  @$pb.TagNumber(4)
  set translation($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTranslation() => $_has(3);
  @$pb.TagNumber(4)
  void clearTranslation() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get tag => $_getList(4);

  @$pb.TagNumber(6)
  $core.String get extendedBlocks => $_getSZ(5);
  @$pb.TagNumber(6)
  set extendedBlocks($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasExtendedBlocks() => $_has(5);
  @$pb.TagNumber(6)
  void clearExtendedBlocks() => clearField(6);
}

class NewLearnRequest extends $pb.GeneratedMessage {
  factory NewLearnRequest({
    $core.int? number,
  }) {
    final $result = create();
    if (number != null) {
      $result.number = number;
    }
    return $result;
  }
  NewLearnRequest._() : super();
  factory NewLearnRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewLearnRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NewLearnRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'word'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'number', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewLearnRequest clone() => NewLearnRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewLearnRequest copyWith(void Function(NewLearnRequest) updates) => super.copyWith((message) => updates(message as NewLearnRequest)) as NewLearnRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NewLearnRequest create() => NewLearnRequest._();
  NewLearnRequest createEmptyInstance() => create();
  static $pb.PbList<NewLearnRequest> createRepeated() => $pb.PbList<NewLearnRequest>();
  @$core.pragma('dart2js:noInline')
  static NewLearnRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewLearnRequest>(create);
  static NewLearnRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get number => $_getIZ(0);
  @$pb.TagNumber(1)
  set number($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearNumber() => clearField(1);
}

class NewLearnReply extends $pb.GeneratedMessage {
  factory NewLearnReply({
    $core.Iterable<WordInner>? words,
    $core.String? eventId,
  }) {
    final $result = create();
    if (words != null) {
      $result.words.addAll(words);
    }
    if (eventId != null) {
      $result.eventId = eventId;
    }
    return $result;
  }
  NewLearnReply._() : super();
  factory NewLearnReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewLearnReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NewLearnReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'word'), createEmptyInstance: create)
    ..pc<WordInner>(1, _omitFieldNames ? '' : 'words', $pb.PbFieldType.PM, subBuilder: WordInner.create)
    ..aOS(2, _omitFieldNames ? '' : 'eventId', protoName: 'eventId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewLearnReply clone() => NewLearnReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewLearnReply copyWith(void Function(NewLearnReply) updates) => super.copyWith((message) => updates(message as NewLearnReply)) as NewLearnReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NewLearnReply create() => NewLearnReply._();
  NewLearnReply createEmptyInstance() => create();
  static $pb.PbList<NewLearnReply> createRepeated() => $pb.PbList<NewLearnReply>();
  @$core.pragma('dart2js:noInline')
  static NewLearnReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewLearnReply>(create);
  static NewLearnReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<WordInner> get words => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get eventId => $_getSZ(1);
  @$pb.TagNumber(2)
  set eventId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEventId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEventId() => clearField(2);
}

class WordLearnInner extends $pb.GeneratedMessage {
  factory WordLearnInner({
    $core.int? id,
    $core.int? wrongCount,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (wrongCount != null) {
      $result.wrongCount = wrongCount;
    }
    return $result;
  }
  WordLearnInner._() : super();
  factory WordLearnInner.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WordLearnInner.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WordLearnInner', package: const $pb.PackageName(_omitMessageNames ? '' : 'word'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'wrongCount', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WordLearnInner clone() => WordLearnInner()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WordLearnInner copyWith(void Function(WordLearnInner) updates) => super.copyWith((message) => updates(message as WordLearnInner)) as WordLearnInner;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WordLearnInner create() => WordLearnInner._();
  WordLearnInner createEmptyInstance() => create();
  static $pb.PbList<WordLearnInner> createRepeated() => $pb.PbList<WordLearnInner>();
  @$core.pragma('dart2js:noInline')
  static WordLearnInner getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WordLearnInner>(create);
  static WordLearnInner? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get wrongCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set wrongCount($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWrongCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearWrongCount() => clearField(2);
}

class FinishLearnRequest extends $pb.GeneratedMessage {
  factory FinishLearnRequest({
    $core.String? eventId,
    $core.Iterable<WordLearnInner>? words,
  }) {
    final $result = create();
    if (eventId != null) {
      $result.eventId = eventId;
    }
    if (words != null) {
      $result.words.addAll(words);
    }
    return $result;
  }
  FinishLearnRequest._() : super();
  factory FinishLearnRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FinishLearnRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FinishLearnRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'word'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'eventId', protoName: 'eventId')
    ..pc<WordLearnInner>(2, _omitFieldNames ? '' : 'words', $pb.PbFieldType.PM, subBuilder: WordLearnInner.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FinishLearnRequest clone() => FinishLearnRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FinishLearnRequest copyWith(void Function(FinishLearnRequest) updates) => super.copyWith((message) => updates(message as FinishLearnRequest)) as FinishLearnRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FinishLearnRequest create() => FinishLearnRequest._();
  FinishLearnRequest createEmptyInstance() => create();
  static $pb.PbList<FinishLearnRequest> createRepeated() => $pb.PbList<FinishLearnRequest>();
  @$core.pragma('dart2js:noInline')
  static FinishLearnRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FinishLearnRequest>(create);
  static FinishLearnRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get eventId => $_getSZ(0);
  @$pb.TagNumber(1)
  set eventId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEventId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEventId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<WordLearnInner> get words => $_getList(1);
}

class FinishLearnReply extends $pb.GeneratedMessage {
  factory FinishLearnReply() => create();
  FinishLearnReply._() : super();
  factory FinishLearnReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FinishLearnReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FinishLearnReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'word'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FinishLearnReply clone() => FinishLearnReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FinishLearnReply copyWith(void Function(FinishLearnReply) updates) => super.copyWith((message) => updates(message as FinishLearnReply)) as FinishLearnReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FinishLearnReply create() => FinishLearnReply._();
  FinishLearnReply createEmptyInstance() => create();
  static $pb.PbList<FinishLearnReply> createRepeated() => $pb.PbList<FinishLearnReply>();
  @$core.pragma('dart2js:noInline')
  static FinishLearnReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FinishLearnReply>(create);
  static FinishLearnReply? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
