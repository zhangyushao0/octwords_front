//
//  Generated code. Do not modify.
//  source: word.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use wordRequestDescriptor instead')
const WordRequest$json = {
  '1': 'WordRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

/// Descriptor for `WordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wordRequestDescriptor = $convert.base64Decode(
    'CgtXb3JkUmVxdWVzdBIOCgJpZBgBIAEoDVICaWQ=');

@$core.Deprecated('Use wordReplyDescriptor instead')
const WordReply$json = {
  '1': 'WordReply',
  '2': [
    {'1': 'word', '3': 1, '4': 1, '5': 11, '6': '.word.WordInner', '10': 'word'},
  ],
};

/// Descriptor for `WordReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wordReplyDescriptor = $convert.base64Decode(
    'CglXb3JkUmVwbHkSIwoEd29yZBgBIAEoCzIPLndvcmQuV29yZElubmVyUgR3b3Jk');

@$core.Deprecated('Use wordInnerDescriptor instead')
const WordInner$json = {
  '1': 'WordInner',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    {'1': 'word', '3': 2, '4': 1, '5': 9, '10': 'word'},
    {'1': 'definition', '3': 3, '4': 1, '5': 9, '10': 'definition'},
    {'1': 'translation', '3': 4, '4': 1, '5': 9, '10': 'translation'},
    {'1': 'tag', '3': 5, '4': 3, '5': 9, '10': 'tag'},
    {'1': 'extended_blocks', '3': 6, '4': 1, '5': 9, '10': 'extendedBlocks'},
  ],
};

/// Descriptor for `WordInner`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wordInnerDescriptor = $convert.base64Decode(
    'CglXb3JkSW5uZXISDgoCaWQYASABKA1SAmlkEhIKBHdvcmQYAiABKAlSBHdvcmQSHgoKZGVmaW'
    '5pdGlvbhgDIAEoCVIKZGVmaW5pdGlvbhIgCgt0cmFuc2xhdGlvbhgEIAEoCVILdHJhbnNsYXRp'
    'b24SEAoDdGFnGAUgAygJUgN0YWcSJwoPZXh0ZW5kZWRfYmxvY2tzGAYgASgJUg5leHRlbmRlZE'
    'Jsb2Nrcw==');

@$core.Deprecated('Use newLearnRequestDescriptor instead')
const NewLearnRequest$json = {
  '1': 'NewLearnRequest',
  '2': [
    {'1': 'number', '3': 1, '4': 1, '5': 13, '10': 'number'},
  ],
};

/// Descriptor for `NewLearnRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newLearnRequestDescriptor = $convert.base64Decode(
    'Cg9OZXdMZWFyblJlcXVlc3QSFgoGbnVtYmVyGAEgASgNUgZudW1iZXI=');

@$core.Deprecated('Use newLearnReplyDescriptor instead')
const NewLearnReply$json = {
  '1': 'NewLearnReply',
  '2': [
    {'1': 'words', '3': 1, '4': 3, '5': 11, '6': '.word.WordInner', '10': 'words'},
    {'1': 'eventId', '3': 2, '4': 1, '5': 9, '10': 'eventId'},
  ],
};

/// Descriptor for `NewLearnReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newLearnReplyDescriptor = $convert.base64Decode(
    'Cg1OZXdMZWFyblJlcGx5EiUKBXdvcmRzGAEgAygLMg8ud29yZC5Xb3JkSW5uZXJSBXdvcmRzEh'
    'gKB2V2ZW50SWQYAiABKAlSB2V2ZW50SWQ=');

@$core.Deprecated('Use wordLearnInnerDescriptor instead')
const WordLearnInner$json = {
  '1': 'WordLearnInner',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    {'1': 'wrong_count', '3': 2, '4': 1, '5': 13, '10': 'wrongCount'},
  ],
};

/// Descriptor for `WordLearnInner`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wordLearnInnerDescriptor = $convert.base64Decode(
    'Cg5Xb3JkTGVhcm5Jbm5lchIOCgJpZBgBIAEoDVICaWQSHwoLd3JvbmdfY291bnQYAiABKA1SCn'
    'dyb25nQ291bnQ=');

@$core.Deprecated('Use finishLearnRequestDescriptor instead')
const FinishLearnRequest$json = {
  '1': 'FinishLearnRequest',
  '2': [
    {'1': 'eventId', '3': 1, '4': 1, '5': 9, '10': 'eventId'},
    {'1': 'words', '3': 2, '4': 3, '5': 11, '6': '.word.WordLearnInner', '10': 'words'},
  ],
};

/// Descriptor for `FinishLearnRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List finishLearnRequestDescriptor = $convert.base64Decode(
    'ChJGaW5pc2hMZWFyblJlcXVlc3QSGAoHZXZlbnRJZBgBIAEoCVIHZXZlbnRJZBIqCgV3b3Jkcx'
    'gCIAMoCzIULndvcmQuV29yZExlYXJuSW5uZXJSBXdvcmRz');

@$core.Deprecated('Use finishLearnReplyDescriptor instead')
const FinishLearnReply$json = {
  '1': 'FinishLearnReply',
};

/// Descriptor for `FinishLearnReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List finishLearnReplyDescriptor = $convert.base64Decode(
    'ChBGaW5pc2hMZWFyblJlcGx5');

