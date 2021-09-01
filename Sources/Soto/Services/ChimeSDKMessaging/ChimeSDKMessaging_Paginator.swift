//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

import SotoCore

// MARK: Paginators

extension ChimeSDKMessaging {
    ///  Lists all the users banned from a particular channel.  The x-amz-chime-bearer request header is mandatory. Use the AppInstanceUserArn of the user that makes the API call as the value in the header.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listChannelBansPaginator<Result>(
        _ input: ListChannelBansRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListChannelBansResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listChannelBans,
            inputKey: \ListChannelBansRequest.nextToken,
            outputKey: \ListChannelBansResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listChannelBansPaginator(
        _ input: ListChannelBansRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListChannelBansResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listChannelBans,
            inputKey: \ListChannelBansRequest.nextToken,
            outputKey: \ListChannelBansResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all channel memberships in a channel.  The x-amz-chime-bearer request header is mandatory. Use the AppInstanceUserArn of the user that makes the API call as the value in the header.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listChannelMembershipsPaginator<Result>(
        _ input: ListChannelMembershipsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListChannelMembershipsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listChannelMemberships,
            inputKey: \ListChannelMembershipsRequest.nextToken,
            outputKey: \ListChannelMembershipsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listChannelMembershipsPaginator(
        _ input: ListChannelMembershipsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListChannelMembershipsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listChannelMemberships,
            inputKey: \ListChannelMembershipsRequest.nextToken,
            outputKey: \ListChannelMembershipsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Lists all channels that a particular AppInstanceUser is a part of. Only an AppInstanceAdmin can call the API with a user ARN that is not their own.   The x-amz-chime-bearer request header is mandatory. Use the AppInstanceUserArn of the user that makes the API call as the value in the header.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listChannelMembershipsForAppInstanceUserPaginator<Result>(
        _ input: ListChannelMembershipsForAppInstanceUserRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListChannelMembershipsForAppInstanceUserResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listChannelMembershipsForAppInstanceUser,
            inputKey: \ListChannelMembershipsForAppInstanceUserRequest.nextToken,
            outputKey: \ListChannelMembershipsForAppInstanceUserResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listChannelMembershipsForAppInstanceUserPaginator(
        _ input: ListChannelMembershipsForAppInstanceUserRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListChannelMembershipsForAppInstanceUserResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listChannelMembershipsForAppInstanceUser,
            inputKey: \ListChannelMembershipsForAppInstanceUserRequest.nextToken,
            outputKey: \ListChannelMembershipsForAppInstanceUserResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List all the messages in a channel. Returns a paginated list of ChannelMessages. By default, sorted by creation timestamp in descending order.  Redacted messages appear in the results as empty, since they are only redacted, not deleted. Deleted messages do not appear in the results. This action always returns the latest version of an edited message. Also, the x-amz-chime-bearer request header is mandatory. Use the AppInstanceUserArn of the user that makes the API call as the value in the header.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listChannelMessagesPaginator<Result>(
        _ input: ListChannelMessagesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListChannelMessagesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listChannelMessages,
            inputKey: \ListChannelMessagesRequest.nextToken,
            outputKey: \ListChannelMessagesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listChannelMessagesPaginator(
        _ input: ListChannelMessagesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListChannelMessagesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listChannelMessages,
            inputKey: \ListChannelMessagesRequest.nextToken,
            outputKey: \ListChannelMessagesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all the moderators for a channel.  The x-amz-chime-bearer request header is mandatory. Use the AppInstanceUserArn of the user that makes the API call as the value in the header.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listChannelModeratorsPaginator<Result>(
        _ input: ListChannelModeratorsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListChannelModeratorsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listChannelModerators,
            inputKey: \ListChannelModeratorsRequest.nextToken,
            outputKey: \ListChannelModeratorsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listChannelModeratorsPaginator(
        _ input: ListChannelModeratorsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListChannelModeratorsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listChannelModerators,
            inputKey: \ListChannelModeratorsRequest.nextToken,
            outputKey: \ListChannelModeratorsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all Channels created under a single Chime App as a paginated list. You can specify filters to narrow results.  Functionality &amp; restrictions    Use privacy = PUBLIC to retrieve all public channels in the account.   Only an AppInstanceAdmin can set privacy = PRIVATE to list the private channels in an account.    The x-amz-chime-bearer request header is mandatory. Use the AppInstanceUserArn of the user that makes the API call as the value in the header.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listChannelsPaginator<Result>(
        _ input: ListChannelsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListChannelsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listChannels,
            inputKey: \ListChannelsRequest.nextToken,
            outputKey: \ListChannelsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listChannelsPaginator(
        _ input: ListChannelsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListChannelsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listChannels,
            inputKey: \ListChannelsRequest.nextToken,
            outputKey: \ListChannelsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  A list of the channels moderated by an AppInstanceUser.  The x-amz-chime-bearer request header is mandatory. Use the AppInstanceUserArn of the user that makes the API call as the value in the header.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listChannelsModeratedByAppInstanceUserPaginator<Result>(
        _ input: ListChannelsModeratedByAppInstanceUserRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListChannelsModeratedByAppInstanceUserResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listChannelsModeratedByAppInstanceUser,
            inputKey: \ListChannelsModeratedByAppInstanceUserRequest.nextToken,
            outputKey: \ListChannelsModeratedByAppInstanceUserResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listChannelsModeratedByAppInstanceUserPaginator(
        _ input: ListChannelsModeratedByAppInstanceUserRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListChannelsModeratedByAppInstanceUserResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listChannelsModeratedByAppInstanceUser,
            inputKey: \ListChannelsModeratedByAppInstanceUserRequest.nextToken,
            outputKey: \ListChannelsModeratedByAppInstanceUserResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension ChimeSDKMessaging.ListChannelBansRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ChimeSDKMessaging.ListChannelBansRequest {
        return .init(
            channelArn: self.channelArn,
            chimeBearer: self.chimeBearer,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ChimeSDKMessaging.ListChannelMembershipsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ChimeSDKMessaging.ListChannelMembershipsRequest {
        return .init(
            channelArn: self.channelArn,
            chimeBearer: self.chimeBearer,
            maxResults: self.maxResults,
            nextToken: token,
            type: self.type
        )
    }
}

extension ChimeSDKMessaging.ListChannelMembershipsForAppInstanceUserRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ChimeSDKMessaging.ListChannelMembershipsForAppInstanceUserRequest {
        return .init(
            appInstanceUserArn: self.appInstanceUserArn,
            chimeBearer: self.chimeBearer,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ChimeSDKMessaging.ListChannelMessagesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ChimeSDKMessaging.ListChannelMessagesRequest {
        return .init(
            channelArn: self.channelArn,
            chimeBearer: self.chimeBearer,
            maxResults: self.maxResults,
            nextToken: token,
            notAfter: self.notAfter,
            notBefore: self.notBefore,
            sortOrder: self.sortOrder
        )
    }
}

extension ChimeSDKMessaging.ListChannelModeratorsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ChimeSDKMessaging.ListChannelModeratorsRequest {
        return .init(
            channelArn: self.channelArn,
            chimeBearer: self.chimeBearer,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ChimeSDKMessaging.ListChannelsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ChimeSDKMessaging.ListChannelsRequest {
        return .init(
            appInstanceArn: self.appInstanceArn,
            chimeBearer: self.chimeBearer,
            maxResults: self.maxResults,
            nextToken: token,
            privacy: self.privacy
        )
    }
}

extension ChimeSDKMessaging.ListChannelsModeratedByAppInstanceUserRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ChimeSDKMessaging.ListChannelsModeratedByAppInstanceUserRequest {
        return .init(
            appInstanceUserArn: self.appInstanceUserArn,
            chimeBearer: self.chimeBearer,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
