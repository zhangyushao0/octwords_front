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
    $core.String? word,
    $core.String? definition,
    $core.String? translation,
    $core.Iterable<$core.String>? tag,
  }) {
    final $result = create();
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
    return $result;
  }
  WordReply._() : super();
  factory WordReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WordReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WordReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'word'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'word')
    ..aOS(2, _omitFieldNames ? '' : 'definition')
    ..aOS(3, _omitFieldNames ? '' : 'translation')
    ..pPS(4, _omitFieldNames ? '' : 'tag')
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
  $core.String get word => $_getSZ(0);
  @$pb.TagNumber(1)
  set word($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWord() => $_has(0);
  @$pb.TagNumber(1)
  void clearWord() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get definition => $_getSZ(1);
  @$pb.TagNumber(2)
  set definition($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDefinition() => $_has(1);
  @$pb.TagNumber(2)
  void clearDefinition() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get translation => $_getSZ(2);
  @$pb.TagNumber(3)
  set translation($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTranslation() => $_has(2);
  @$pb.TagNumber(3)
  void clearTranslation() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get tag => $_getList(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
