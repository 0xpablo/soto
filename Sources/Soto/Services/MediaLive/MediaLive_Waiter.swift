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

@_exported import SotoCore

import SotoCore

// MARK: Waiters

extension MediaLive {
    /// Poll resource until it reaches a desired state
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - maxWaitTime: Maximum amount of time to wait for waiter to be successful
    ///   - logger: Logger for logging output
    ///   - eventLoop: EventLoop to run waiter code on
    public func waitUntilChannelCreated(
        _ input: DescribeChannelRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("state", expected: "IDLE")),
                .init(state: .retry, matcher: try! JMESPathMatcher("state", expected: "CREATING")),
                .init(state: .retry, matcher: AWSErrorStatusMatcher(500)),
                .init(state: .failure, matcher: try! JMESPathMatcher("state", expected: "CREATE_FAILED")),
            ],
            minDelayTime: .seconds(3),
            command: describeChannel
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    /// Poll resource until it reaches a desired state
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - maxWaitTime: Maximum amount of time to wait for waiter to be successful
    ///   - logger: Logger for logging output
    ///   - eventLoop: EventLoop to run waiter code on
    public func waitUntilChannelDeleted(
        _ input: DescribeChannelRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("state", expected: "DELETED")),
                .init(state: .retry, matcher: try! JMESPathMatcher("state", expected: "DELETING")),
                .init(state: .retry, matcher: AWSErrorStatusMatcher(500)),
            ],
            minDelayTime: .seconds(5),
            command: describeChannel
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    /// Poll resource until it reaches a desired state
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - maxWaitTime: Maximum amount of time to wait for waiter to be successful
    ///   - logger: Logger for logging output
    ///   - eventLoop: EventLoop to run waiter code on
    public func waitUntilChannelRunning(
        _ input: DescribeChannelRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("state", expected: "RUNNING")),
                .init(state: .retry, matcher: try! JMESPathMatcher("state", expected: "STARTING")),
                .init(state: .retry, matcher: AWSErrorStatusMatcher(500)),
            ],
            minDelayTime: .seconds(5),
            command: describeChannel
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    /// Poll resource until it reaches a desired state
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - maxWaitTime: Maximum amount of time to wait for waiter to be successful
    ///   - logger: Logger for logging output
    ///   - eventLoop: EventLoop to run waiter code on
    public func waitUntilChannelStopped(
        _ input: DescribeChannelRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("state", expected: "IDLE")),
                .init(state: .retry, matcher: try! JMESPathMatcher("state", expected: "STOPPING")),
                .init(state: .retry, matcher: AWSErrorStatusMatcher(500)),
            ],
            minDelayTime: .seconds(5),
            command: describeChannel
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    /// Poll resource until it reaches a desired state
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - maxWaitTime: Maximum amount of time to wait for waiter to be successful
    ///   - logger: Logger for logging output
    ///   - eventLoop: EventLoop to run waiter code on
    public func waitUntilInputAttached(
        _ input: DescribeInputRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("state", expected: "ATTACHED")),
                .init(state: .retry, matcher: try! JMESPathMatcher("state", expected: "DETACHED")),
                .init(state: .retry, matcher: AWSErrorStatusMatcher(500)),
            ],
            minDelayTime: .seconds(5),
            command: describeInput
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    /// Poll resource until it reaches a desired state
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - maxWaitTime: Maximum amount of time to wait for waiter to be successful
    ///   - logger: Logger for logging output
    ///   - eventLoop: EventLoop to run waiter code on
    public func waitUntilInputDeleted(
        _ input: DescribeInputRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("state", expected: "DELETED")),
                .init(state: .retry, matcher: try! JMESPathMatcher("state", expected: "DELETING")),
                .init(state: .retry, matcher: AWSErrorStatusMatcher(500)),
            ],
            minDelayTime: .seconds(5),
            command: describeInput
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    /// Poll resource until it reaches a desired state
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - maxWaitTime: Maximum amount of time to wait for waiter to be successful
    ///   - logger: Logger for logging output
    ///   - eventLoop: EventLoop to run waiter code on
    public func waitUntilInputDetached(
        _ input: DescribeInputRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("state", expected: "DETACHED")),
                .init(state: .retry, matcher: try! JMESPathMatcher("state", expected: "CREATING")),
                .init(state: .retry, matcher: try! JMESPathMatcher("state", expected: "ATTACHED")),
                .init(state: .retry, matcher: AWSErrorStatusMatcher(500)),
            ],
            minDelayTime: .seconds(5),
            command: describeInput
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    /// Poll resource until it reaches a desired state
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - maxWaitTime: Maximum amount of time to wait for waiter to be successful
    ///   - logger: Logger for logging output
    ///   - eventLoop: EventLoop to run waiter code on
    public func waitUntilMultiplexCreated(
        _ input: DescribeMultiplexRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("state", expected: "IDLE")),
                .init(state: .retry, matcher: try! JMESPathMatcher("state", expected: "CREATING")),
                .init(state: .retry, matcher: AWSErrorStatusMatcher(500)),
                .init(state: .failure, matcher: try! JMESPathMatcher("state", expected: "CREATE_FAILED")),
            ],
            minDelayTime: .seconds(3),
            command: describeMultiplex
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    /// Poll resource until it reaches a desired state
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - maxWaitTime: Maximum amount of time to wait for waiter to be successful
    ///   - logger: Logger for logging output
    ///   - eventLoop: EventLoop to run waiter code on
    public func waitUntilMultiplexDeleted(
        _ input: DescribeMultiplexRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("state", expected: "DELETED")),
                .init(state: .retry, matcher: try! JMESPathMatcher("state", expected: "DELETING")),
                .init(state: .retry, matcher: AWSErrorStatusMatcher(500)),
            ],
            minDelayTime: .seconds(5),
            command: describeMultiplex
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    /// Poll resource until it reaches a desired state
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - maxWaitTime: Maximum amount of time to wait for waiter to be successful
    ///   - logger: Logger for logging output
    ///   - eventLoop: EventLoop to run waiter code on
    public func waitUntilMultiplexRunning(
        _ input: DescribeMultiplexRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("state", expected: "RUNNING")),
                .init(state: .retry, matcher: try! JMESPathMatcher("state", expected: "STARTING")),
                .init(state: .retry, matcher: AWSErrorStatusMatcher(500)),
            ],
            minDelayTime: .seconds(5),
            command: describeMultiplex
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    /// Poll resource until it reaches a desired state
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - maxWaitTime: Maximum amount of time to wait for waiter to be successful
    ///   - logger: Logger for logging output
    ///   - eventLoop: EventLoop to run waiter code on
    public func waitUntilMultiplexStopped(
        _ input: DescribeMultiplexRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("state", expected: "IDLE")),
                .init(state: .retry, matcher: try! JMESPathMatcher("state", expected: "STOPPING")),
                .init(state: .retry, matcher: AWSErrorStatusMatcher(500)),
            ],
            minDelayTime: .seconds(5),
            command: describeMultiplex
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}