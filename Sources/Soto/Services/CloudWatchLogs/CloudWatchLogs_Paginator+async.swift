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
extension CloudWatchLogs {
    ///  Lists all your destinations. The results are ASCII-sorted by destination name.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeDestinationsPaginator(
        _ input: DescribeDestinationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeDestinationsRequest, DescribeDestinationsResponse> {
        return .init(
            input: input,
            command: describeDestinations,
            inputKey: \DescribeDestinationsRequest.nextToken,
            outputKey: \DescribeDestinationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the specified log groups. You can list all your log groups or filter the results by prefix. The results are ASCII-sorted by log group name. CloudWatch Logs doesn’t support IAM policies that control access to the DescribeLogGroups action by using the aws:ResourceTag/key-name  condition key. Other CloudWatch Logs actions do support the use of the aws:ResourceTag/key-name  condition key to control access. For more information about using tags to control access, see Controlling access to Amazon Web Services resources using tags.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeLogGroupsPaginator(
        _ input: DescribeLogGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeLogGroupsRequest, DescribeLogGroupsResponse> {
        return .init(
            input: input,
            command: describeLogGroups,
            inputKey: \DescribeLogGroupsRequest.nextToken,
            outputKey: \DescribeLogGroupsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the log streams for the specified log group. You can list all the log streams or filter the results by prefix. You can also control how the results are ordered. This operation has a limit of five transactions per second, after which transactions are throttled.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeLogStreamsPaginator(
        _ input: DescribeLogStreamsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeLogStreamsRequest, DescribeLogStreamsResponse> {
        return .init(
            input: input,
            command: describeLogStreams,
            inputKey: \DescribeLogStreamsRequest.nextToken,
            outputKey: \DescribeLogStreamsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the specified metric filters. You can list all of the metric filters or filter the results by log name, prefix, metric name, or metric namespace. The results are ASCII-sorted by filter name.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeMetricFiltersPaginator(
        _ input: DescribeMetricFiltersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeMetricFiltersRequest, DescribeMetricFiltersResponse> {
        return .init(
            input: input,
            command: describeMetricFilters,
            inputKey: \DescribeMetricFiltersRequest.nextToken,
            outputKey: \DescribeMetricFiltersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the subscription filters for the specified log group. You can list all the subscription filters or filter the results by prefix. The results are ASCII-sorted by filter name.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeSubscriptionFiltersPaginator(
        _ input: DescribeSubscriptionFiltersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeSubscriptionFiltersRequest, DescribeSubscriptionFiltersResponse> {
        return .init(
            input: input,
            command: describeSubscriptionFilters,
            inputKey: \DescribeSubscriptionFiltersRequest.nextToken,
            outputKey: \DescribeSubscriptionFiltersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists log events from the specified log group. You can list all the log events or filter the results using a filter pattern, a time range, and the name of the log stream. By default, this operation returns as many log events as can fit in 1 MB (up to 10,000 log events) or all the events found within the time range that you specify. If the results include a token, then there are more log events available, and you can get additional results by specifying the token in a subsequent call. This operation can return empty results while there are more log events available through the token. The returned log events are sorted by event timestamp, the timestamp when the event was ingested by CloudWatch Logs, and the ID of the PutLogEvents request.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func filterLogEventsPaginator(
        _ input: FilterLogEventsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<FilterLogEventsRequest, FilterLogEventsResponse> {
        return .init(
            input: input,
            command: filterLogEvents,
            inputKey: \FilterLogEventsRequest.nextToken,
            outputKey: \FilterLogEventsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists log events from the specified log stream. You can list all of the log events or filter using a time range. By default, this operation returns as many log events as can fit in a response size of 1MB (up to 10,000 log events). You can get additional log events by specifying one of the tokens in a subsequent call. This operation can return empty results while there are more log events available through the token.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getLogEventsPaginator(
        _ input: GetLogEventsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetLogEventsRequest, GetLogEventsResponse> {
        return .init(
            input: input,
            command: getLogEvents,
            inputKey: \GetLogEventsRequest.nextToken,
            outputKey: \GetLogEventsResponse.nextForwardToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
