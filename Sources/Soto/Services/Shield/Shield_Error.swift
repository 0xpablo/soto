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

/// Error enum for Shield
public struct ShieldErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case accessDeniedForDependencyException = "AccessDeniedForDependencyException"
        case internalErrorException = "InternalErrorException"
        case invalidOperationException = "InvalidOperationException"
        case invalidPaginationTokenException = "InvalidPaginationTokenException"
        case invalidParameterException = "InvalidParameterException"
        case invalidResourceException = "InvalidResourceException"
        case limitsExceededException = "LimitsExceededException"
        case lockedSubscriptionException = "LockedSubscriptionException"
        case noAssociatedRoleException = "NoAssociatedRoleException"
        case optimisticLockException = "OptimisticLockException"
        case resourceAlreadyExistsException = "ResourceAlreadyExistsException"
        case resourceNotFoundException = "ResourceNotFoundException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Shield
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// Exception that indicates the specified AttackId does not exist, or the requester does not have the appropriate permissions to access the AttackId.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// In order to grant the necessary access to the Shield Response Team (SRT) the user submitting the request must have the iam:PassRole permission. This error indicates the user did not have the appropriate permissions. For more information, see Granting a User Permissions to Pass a Role to an Amazon Web Services Service.
    public static var accessDeniedForDependencyException: Self { .init(.accessDeniedForDependencyException) }
    /// Exception that indicates that a problem occurred with the service infrastructure. You can retry the request.
    public static var internalErrorException: Self { .init(.internalErrorException) }
    /// Exception that indicates that the operation would not cause any change to occur.
    public static var invalidOperationException: Self { .init(.invalidOperationException) }
    /// Exception that indicates that the NextToken specified in the request is invalid. Submit the request using the NextToken value that was returned in the response.
    public static var invalidPaginationTokenException: Self { .init(.invalidPaginationTokenException) }
    /// Exception that indicates that the parameters passed to the API are invalid. If available, this exception includes details in additional properties.
    public static var invalidParameterException: Self { .init(.invalidParameterException) }
    /// Exception that indicates that the resource is invalid. You might not have access to the resource, or the resource might not exist.
    public static var invalidResourceException: Self { .init(.invalidResourceException) }
    /// Exception that indicates that the operation would exceed a limit.
    public static var limitsExceededException: Self { .init(.limitsExceededException) }
    /// You are trying to update a subscription that has not yet completed the 1-year commitment. You can change the AutoRenew parameter during the last 30 days of your subscription. This exception indicates that you are attempting to change AutoRenew prior to that period.
    public static var lockedSubscriptionException: Self { .init(.lockedSubscriptionException) }
    /// The ARN of the role that you specifed does not exist.
    public static var noAssociatedRoleException: Self { .init(.noAssociatedRoleException) }
    /// Exception that indicates that the resource state has been modified by another client. Retrieve the resource and then retry your request.
    public static var optimisticLockException: Self { .init(.optimisticLockException) }
    /// Exception indicating the specified resource already exists. If available, this exception includes details in additional properties.
    public static var resourceAlreadyExistsException: Self { .init(.resourceAlreadyExistsException) }
    /// Exception indicating the specified resource does not exist. If available, this exception includes details in additional properties.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
}

extension ShieldErrorType: Equatable {
    public static func == (lhs: ShieldErrorType, rhs: ShieldErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension ShieldErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
