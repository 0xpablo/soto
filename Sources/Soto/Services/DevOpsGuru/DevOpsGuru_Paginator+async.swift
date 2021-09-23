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
extension DevOpsGuru {
    ///   Returns the number of open proactive insights, open reactive insights, and the Mean Time to Recover (MTTR) for all closed insights in resource collections in your account. You specify the type of AWS resources collection. The one type of AWS resource collection supported is AWS CloudFormation stacks. DevOps Guru can be configured to analyze only the AWS resources that are defined in the stacks. You can specify up to 500 AWS CloudFormation stacks.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeResourceCollectionHealthPaginator(
        _ input: DescribeResourceCollectionHealthRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeResourceCollectionHealthRequest, DescribeResourceCollectionHealthResponse> {
        return .init(
            input: input,
            command: describeResourceCollectionHealth,
            inputKey: \DescribeResourceCollectionHealthRequest.nextToken,
            outputKey: \DescribeResourceCollectionHealthResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns an estimate of the monthly cost for DevOps Guru to analyze your AWS resources. For more information, see Estimate your Amazon DevOps Guru costs and Amazon DevOps Guru pricing.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getCostEstimationPaginator(
        _ input: GetCostEstimationRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetCostEstimationRequest, GetCostEstimationResponse> {
        return .init(
            input: input,
            command: getCostEstimation,
            inputKey: \GetCostEstimationRequest.nextToken,
            outputKey: \GetCostEstimationResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns lists AWS resources that are of the specified resource collection type. The one type of AWS resource collection supported is AWS CloudFormation stacks. DevOps Guru can be configured to analyze only the AWS resources that are defined in the stacks. You can specify up to 500 AWS CloudFormation stacks.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getResourceCollectionPaginator(
        _ input: GetResourceCollectionRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetResourceCollectionRequest, GetResourceCollectionResponse> {
        return .init(
            input: input,
            command: getResourceCollection,
            inputKey: \GetResourceCollectionRequest.nextToken,
            outputKey: \GetResourceCollectionResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of the anomalies that belong to an insight that you specify using its ID.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAnomaliesForInsightPaginator(
        _ input: ListAnomaliesForInsightRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAnomaliesForInsightRequest, ListAnomaliesForInsightResponse> {
        return .init(
            input: input,
            command: listAnomaliesForInsight,
            inputKey: \ListAnomaliesForInsightRequest.nextToken,
            outputKey: \ListAnomaliesForInsightResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of the events emitted by the resources that are evaluated by DevOps Guru. You can use filters to specify which events are returned.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEventsPaginator(
        _ input: ListEventsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEventsRequest, ListEventsResponse> {
        return .init(
            input: input,
            command: listEvents,
            inputKey: \ListEventsRequest.nextToken,
            outputKey: \ListEventsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of insights in your AWS account. You can specify which insights are returned by their start time and status (ONGOING, CLOSED, or ANY).
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listInsightsPaginator(
        _ input: ListInsightsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListInsightsRequest, ListInsightsResponse> {
        return .init(
            input: input,
            command: listInsights,
            inputKey: \ListInsightsRequest.nextToken,
            outputKey: \ListInsightsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of notification channels configured for DevOps Guru. Each notification channel is used to notify you when DevOps Guru generates an insight that contains information about how to improve your operations. The one supported notification channel is Amazon Simple Notification Service (Amazon SNS).
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listNotificationChannelsPaginator(
        _ input: ListNotificationChannelsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListNotificationChannelsRequest, ListNotificationChannelsResponse> {
        return .init(
            input: input,
            command: listNotificationChannels,
            inputKey: \ListNotificationChannelsRequest.nextToken,
            outputKey: \ListNotificationChannelsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of a specified insight's recommendations. Each recommendation includes a list of related metrics and a list of related events.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRecommendationsPaginator(
        _ input: ListRecommendationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRecommendationsRequest, ListRecommendationsResponse> {
        return .init(
            input: input,
            command: listRecommendations,
            inputKey: \ListRecommendationsRequest.nextToken,
            outputKey: \ListRecommendationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of insights in your AWS account. You can specify which insights are returned by their start time, one or more statuses (ONGOING, CLOSED, and CLOSED), one or more severities (LOW, MEDIUM, and HIGH), and type (REACTIVE or PROACTIVE).   Use the Filters parameter to specify status and severity search parameters. Use the Type parameter to specify REACTIVE or PROACTIVE in your search.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchInsightsPaginator(
        _ input: SearchInsightsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchInsightsRequest, SearchInsightsResponse> {
        return .init(
            input: input,
            command: searchInsights,
            inputKey: \SearchInsightsRequest.nextToken,
            outputKey: \SearchInsightsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
