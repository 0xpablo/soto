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

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension AugmentedAIRuntime {
    // MARK: Async API Calls

    /// Deletes the specified human loop for a flow definition. If the human loop was deleted, this operation will return a ResourceNotFoundException.
    public func deleteHumanLoop(_ input: DeleteHumanLoopRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteHumanLoopResponse {
        return try await self.client.execute(operation: "DeleteHumanLoop", path: "/human-loops/{HumanLoopName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the specified human loop. If the human loop was deleted, this operation will return a ResourceNotFoundException error.
    public func describeHumanLoop(_ input: DescribeHumanLoopRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHumanLoopResponse {
        return try await self.client.execute(operation: "DescribeHumanLoop", path: "/human-loops/{HumanLoopName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about human loops, given the specified parameters. If a human loop was deleted, it will not be included.
    public func listHumanLoops(_ input: ListHumanLoopsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListHumanLoopsResponse {
        return try await self.client.execute(operation: "ListHumanLoops", path: "/human-loops", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a human loop, provided that at least one activation condition is met.
    public func startHumanLoop(_ input: StartHumanLoopRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartHumanLoopResponse {
        return try await self.client.execute(operation: "StartHumanLoop", path: "/human-loops", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops the specified human loop.
    public func stopHumanLoop(_ input: StopHumanLoopRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopHumanLoopResponse {
        return try await self.client.execute(operation: "StopHumanLoop", path: "/human-loops/stop", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
