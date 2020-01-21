// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension KinesisVideo {

    ///  Returns an array of ChannelInfo objects. Each object describes a signaling channel. To retrieve only those channels that satisfy a specific condition, you can specify a ChannelNameCondition.
    public func listSignalingChannelsPaginator(_ input: ListSignalingChannelsInput, onPage: @escaping ([ChannelInfo], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSignalingChannels, resultKey: \ListSignalingChannelsOutput.channelInfoList, tokenKey: \ListSignalingChannelsOutput.nextToken, onPage: onPage)
    }
    
    ///  Returns an array of StreamInfo objects. Each object describes a stream. To retrieve only streams that satisfy a specific condition, you can specify a StreamNameCondition. 
    public func listStreamsPaginator(_ input: ListStreamsInput, onPage: @escaping ([StreamInfo], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listStreams, resultKey: \ListStreamsOutput.streamInfoList, tokenKey: \ListStreamsOutput.nextToken, onPage: onPage)
    }
    
}

extension KinesisVideo.ListSignalingChannelsInput: AWSPaginateStringToken {
    public init(_ original: KinesisVideo.ListSignalingChannelsInput, token: String) {
        self.init(
            channelNameCondition: original.channelNameCondition, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension KinesisVideo.ListStreamsInput: AWSPaginateStringToken {
    public init(_ original: KinesisVideo.ListStreamsInput, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            streamNameCondition: original.streamNameCondition
        )
    }
}


