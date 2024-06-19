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
    {'1': 'word', '3': 1, '4': 1, '5': 9, '10': 'word'},
    {'1': 'definition', '3': 2, '4': 1, '5': 9, '10': 'definition'},
    {'1': 'translation', '3': 3, '4': 1, '5': 9, '10': 'translation'},
    {'1': 'tag', '3': 4, '4': 3, '5': 9, '10': 'tag'},
  ],
};

/// Descriptor for `WordReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wordReplyDescriptor = $convert.base64Decode(
    'CglXb3JkUmVwbHkSEgoEd29yZBgBIAEoCVIEd29yZBIeCgpkZWZpbml0aW9uGAIgASgJUgpkZW'
    'Zpbml0aW9uEiAKC3RyYW5zbGF0aW9uGAMgASgJUgt0cmFuc2xhdGlvbhIQCgN0YWcYBCADKAlS'
    'A3RhZw==');

