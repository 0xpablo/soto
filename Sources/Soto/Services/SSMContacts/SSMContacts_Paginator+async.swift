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

#if compiler(>=5.5) && canImport(_Concurrency)

import SotoCore

// MARK: Paginators

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension SSMContacts {
    ///  Lists all contact channels for the specified contact.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listContactChannelsPaginator(
        _ input: ListContactChannelsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListContactChannelsRequest, ListContactChannelsResult> {
        return .init(
            input: input,
            command: listContactChannels,
            inputKey: \ListContactChannelsRequest.nextToken,
            outputKey: \ListContactChannelsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all contacts and escalation plans in Incident Manager.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listContactsPaginator(
        _ input: ListContactsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListContactsRequest, ListContactsResult> {
        return .init(
            input: input,
            command: listContacts,
            inputKey: \ListContactsRequest.nextToken,
            outputKey: \ListContactsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all engagements that have happened in an incident.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEngagementsPaginator(
        _ input: ListEngagementsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEngagementsRequest, ListEngagementsResult> {
        return .init(
            input: input,
            command: listEngagements,
            inputKey: \ListEngagementsRequest.nextToken,
            outputKey: \ListEngagementsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all of the engagements to contact channels that have been acknowledged.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPageReceiptsPaginator(
        _ input: ListPageReceiptsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPageReceiptsRequest, ListPageReceiptsResult> {
        return .init(
            input: input,
            command: listPageReceipts,
            inputKey: \ListPageReceiptsRequest.nextToken,
            outputKey: \ListPageReceiptsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the engagements to a contact's contact channels.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPagesByContactPaginator(
        _ input: ListPagesByContactRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPagesByContactRequest, ListPagesByContactResult> {
        return .init(
            input: input,
            command: listPagesByContact,
            inputKey: \ListPagesByContactRequest.nextToken,
            outputKey: \ListPagesByContactResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the engagements to contact channels that occurred by engaging a contact.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPagesByEngagementPaginator(
        _ input: ListPagesByEngagementRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPagesByEngagementRequest, ListPagesByEngagementResult> {
        return .init(
            input: input,
            command: listPagesByEngagement,
            inputKey: \ListPagesByEngagementRequest.nextToken,
            outputKey: \ListPagesByEngagementResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
