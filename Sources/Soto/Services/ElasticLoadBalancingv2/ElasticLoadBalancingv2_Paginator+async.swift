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
extension ElasticLoadBalancingv2 {
    ///  Describes the specified listeners or the listeners for the specified Application Load Balancer, Network Load Balancer, or Gateway Load Balancer. You must specify either a load balancer or one or more listeners.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeListenersPaginator(
        _ input: DescribeListenersInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeListenersInput, DescribeListenersOutput> {
        return .init(
            input: input,
            command: describeListeners,
            inputKey: \DescribeListenersInput.marker,
            outputKey: \DescribeListenersOutput.nextMarker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Describes the specified load balancers or all of your load balancers.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeLoadBalancersPaginator(
        _ input: DescribeLoadBalancersInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeLoadBalancersInput, DescribeLoadBalancersOutput> {
        return .init(
            input: input,
            command: describeLoadBalancers,
            inputKey: \DescribeLoadBalancersInput.marker,
            outputKey: \DescribeLoadBalancersOutput.nextMarker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Describes the specified target groups or all of your target groups. By default, all target groups are described. Alternatively, you can specify one of the following to filter the results: the ARN of the load balancer, the names of one or more target groups, or the ARNs of one or more target groups.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeTargetGroupsPaginator(
        _ input: DescribeTargetGroupsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeTargetGroupsInput, DescribeTargetGroupsOutput> {
        return .init(
            input: input,
            command: describeTargetGroups,
            inputKey: \DescribeTargetGroupsInput.marker,
            outputKey: \DescribeTargetGroupsOutput.nextMarker,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
