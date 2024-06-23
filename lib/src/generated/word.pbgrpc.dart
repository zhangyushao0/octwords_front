//
//  Generated code. Do not modify.
//  source: word.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'word.pb.dart' as $0;

export 'word.pb.dart';

@$pb.GrpcServiceName('word.Word')
class WordClient extends $grpc.Client {
  static final _$getWord = $grpc.ClientMethod<$0.WordRequest, $0.WordReply>(
      '/word.Word/getWord',
      ($0.WordRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.WordReply.fromBuffer(value));
  static final _$startNewLearn = $grpc.ClientMethod<$0.NewLearnRequest, $0.NewLearnReply>(
      '/word.Word/startNewLearn',
      ($0.NewLearnRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.NewLearnReply.fromBuffer(value));
  static final _$finishLearn = $grpc.ClientMethod<$0.FinishLearnRequest, $0.FinishLearnReply>(
      '/word.Word/finishLearn',
      ($0.FinishLearnRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FinishLearnReply.fromBuffer(value));

  WordClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.WordReply> getWord($0.WordRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWord, request, options: options);
  }

  $grpc.ResponseFuture<$0.NewLearnReply> startNewLearn($0.NewLearnRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$startNewLearn, request, options: options);
  }

  $grpc.ResponseFuture<$0.FinishLearnReply> finishLearn($0.FinishLearnRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$finishLearn, request, options: options);
  }
}

@$pb.GrpcServiceName('word.Word')
abstract class WordServiceBase extends $grpc.Service {
  $core.String get $name => 'word.Word';

  WordServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.WordRequest, $0.WordReply>(
        'getWord',
        getWord_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.WordRequest.fromBuffer(value),
        ($0.WordReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.NewLearnRequest, $0.NewLearnReply>(
        'startNewLearn',
        startNewLearn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.NewLearnRequest.fromBuffer(value),
        ($0.NewLearnReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FinishLearnRequest, $0.FinishLearnReply>(
        'finishLearn',
        finishLearn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FinishLearnRequest.fromBuffer(value),
        ($0.FinishLearnReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.WordReply> getWord_Pre($grpc.ServiceCall call, $async.Future<$0.WordRequest> request) async {
    return getWord(call, await request);
  }

  $async.Future<$0.NewLearnReply> startNewLearn_Pre($grpc.ServiceCall call, $async.Future<$0.NewLearnRequest> request) async {
    return startNewLearn(call, await request);
  }

  $async.Future<$0.FinishLearnReply> finishLearn_Pre($grpc.ServiceCall call, $async.Future<$0.FinishLearnRequest> request) async {
    return finishLearn(call, await request);
  }

  $async.Future<$0.WordReply> getWord($grpc.ServiceCall call, $0.WordRequest request);
  $async.Future<$0.NewLearnReply> startNewLearn($grpc.ServiceCall call, $0.NewLearnRequest request);
  $async.Future<$0.FinishLearnReply> finishLearn($grpc.ServiceCall call, $0.FinishLearnRequest request);
}
