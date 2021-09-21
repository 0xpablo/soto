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

#if compiler(>=5.5)

import SotoCore

// MARK: Paginators

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension CodeGuruReviewer {
    ///   Lists all the code reviews that the customer has created in the past 90 days.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listCodeReviewsPaginator(
        _ input: ListCodeReviewsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCodeReviewsRequest, ListCodeReviewsResponse> {
        return .init(
            input: input,
            command: listCodeReviews,
            inputKey: \ListCodeReviewsRequest.nextToken,
            outputKey: \ListCodeReviewsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of  RecommendationFeedbackSummary  objects that contain customer recommendation feedback for all CodeGuru Reviewer users.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRecommendationFeedbackPaginator(
        _ input: ListRecommendationFeedbackRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRecommendationFeedbackRequest, ListRecommendationFeedbackResponse> {
        return .init(
            input: input,
            command: listRecommendationFeedback,
            inputKey: \ListRecommendationFeedbackRequest.nextToken,
            outputKey: \ListRecommendationFeedbackResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns the list of all recommendations for a completed code review.
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

    ///   Returns a list of  RepositoryAssociationSummary  objects that contain summary information about a repository association. You can filter the returned list by  ProviderType ,  Name ,  State , and  Owner .
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRepositoryAssociationsPaginator(
        _ input: ListRepositoryAssociationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRepositoryAssociationsRequest, ListRepositoryAssociationsResponse> {
        return .init(
            input: input,
            command: listRepositoryAssociations,
            inputKey: \ListRepositoryAssociationsRequest.nextToken,
            outputKey: \ListRepositoryAssociationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5)