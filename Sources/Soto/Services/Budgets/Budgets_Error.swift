//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2022 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

import SotoCore

/// Error enum for Budgets
public struct BudgetsErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case creationLimitExceededException = "CreationLimitExceededException"
        case duplicateRecordException = "DuplicateRecordException"
        case expiredNextTokenException = "ExpiredNextTokenException"
        case internalErrorException = "InternalErrorException"
        case invalidNextTokenException = "InvalidNextTokenException"
        case invalidParameterException = "InvalidParameterException"
        case notFoundException = "NotFoundException"
        case resourceLockedException = "ResourceLockedException"
        case throttlingException = "ThrottlingException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Budgets
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

    /// You are not authorized to use this operation with the given parameters.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// You've exceeded the notification or subscriber limit.
    public static var creationLimitExceededException: Self { .init(.creationLimitExceededException) }
    /// The budget name already exists. Budget names must be unique within an account.
    public static var duplicateRecordException: Self { .init(.duplicateRecordException) }
    /// The pagination token expired.
    public static var expiredNextTokenException: Self { .init(.expiredNextTokenException) }
    /// An error on the server occurred during the processing of your request. Try again later.
    public static var internalErrorException: Self { .init(.internalErrorException) }
    /// The pagination token is invalid.
    public static var invalidNextTokenException: Self { .init(.invalidNextTokenException) }
    /// An error on the client occurred. Typically, the cause is an invalid input value.
    public static var invalidParameterException: Self { .init(.invalidParameterException) }
    /// We can’t locate the resource that you specified.
    public static var notFoundException: Self { .init(.notFoundException) }
    ///  The request was received and recognized by the server, but the server rejected that particular method for the requested resource.
    public static var resourceLockedException: Self { .init(.resourceLockedException) }
    ///  The number of API requests has exceeded the maximum allowed API request throttling limit for the account.
    public static var throttlingException: Self { .init(.throttlingException) }
}

extension BudgetsErrorType: Equatable {
    public static func == (lhs: BudgetsErrorType, rhs: BudgetsErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension BudgetsErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
