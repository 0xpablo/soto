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
extension Route53RecoveryReadiness {
    // MARK: Async API Calls

    /// Creates a new Cell.
    public func createCell(_ input: CreateCellRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCellResponse {
        return try await self.client.execute(operation: "CreateCell", path: "/cells", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a new cross account readiness authorization.
    public func createCrossAccountAuthorization(_ input: CreateCrossAccountAuthorizationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCrossAccountAuthorizationResponse {
        return try await self.client.execute(operation: "CreateCrossAccountAuthorization", path: "/crossaccountauthorizations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new Readiness Check.
    public func createReadinessCheck(_ input: CreateReadinessCheckRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateReadinessCheckResponse {
        return try await self.client.execute(operation: "CreateReadinessCheck", path: "/readinesschecks", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new Recovery Group.
    public func createRecoveryGroup(_ input: CreateRecoveryGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRecoveryGroupResponse {
        return try await self.client.execute(operation: "CreateRecoveryGroup", path: "/recoverygroups", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new Resource Set.
    public func createResourceSet(_ input: CreateResourceSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateResourceSetResponse {
        return try await self.client.execute(operation: "CreateResourceSet", path: "/resourcesets", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing Cell.
    public func deleteCell(_ input: DeleteCellRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteCell", path: "/cells/{cellName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete cross account readiness authorization
    public func deleteCrossAccountAuthorization(_ input: DeleteCrossAccountAuthorizationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCrossAccountAuthorizationResponse {
        return try await self.client.execute(operation: "DeleteCrossAccountAuthorization", path: "/crossaccountauthorizations/{crossAccountAuthorization}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing Readiness Check.
    public func deleteReadinessCheck(_ input: DeleteReadinessCheckRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteReadinessCheck", path: "/readinesschecks/{readinessCheckName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing Recovery Group.
    public func deleteRecoveryGroup(_ input: DeleteRecoveryGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteRecoveryGroup", path: "/recoverygroups/{recoveryGroupName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing Resource Set.
    public func deleteResourceSet(_ input: DeleteResourceSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteResourceSet", path: "/resourcesets/{resourceSetName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a collection of recommendations to improve resilliance and readiness check quality for a Recovery Group.
    public func getArchitectureRecommendations(_ input: GetArchitectureRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetArchitectureRecommendationsResponse {
        return try await self.client.execute(operation: "GetArchitectureRecommendations", path: "/recoverygroups/{recoveryGroupName}/architectureRecommendations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a Cell.
    public func getCell(_ input: GetCellRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCellResponse {
        return try await self.client.execute(operation: "GetCell", path: "/cells/{cellName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about readiness of a Cell.
    public func getCellReadinessSummary(_ input: GetCellReadinessSummaryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCellReadinessSummaryResponse {
        return try await self.client.execute(operation: "GetCellReadinessSummary", path: "/cellreadiness/{cellName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a ReadinessCheck.
    public func getReadinessCheck(_ input: GetReadinessCheckRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetReadinessCheckResponse {
        return try await self.client.execute(operation: "GetReadinessCheck", path: "/readinesschecks/{readinessCheckName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns detailed information about the status of an individual resource within a Readiness Check's Resource Set.
    public func getReadinessCheckResourceStatus(_ input: GetReadinessCheckResourceStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetReadinessCheckResourceStatusResponse {
        return try await self.client.execute(operation: "GetReadinessCheckResourceStatus", path: "/readinesschecks/{readinessCheckName}/resource/{resourceIdentifier}/status", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the status of a Readiness Check.
    public func getReadinessCheckStatus(_ input: GetReadinessCheckStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetReadinessCheckStatusResponse {
        return try await self.client.execute(operation: "GetReadinessCheckStatus", path: "/readinesschecks/{readinessCheckName}/status", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a Recovery Group.
    public func getRecoveryGroup(_ input: GetRecoveryGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRecoveryGroupResponse {
        return try await self.client.execute(operation: "GetRecoveryGroup", path: "/recoverygroups/{recoveryGroupName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a Recovery Group.
    public func getRecoveryGroupReadinessSummary(_ input: GetRecoveryGroupReadinessSummaryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRecoveryGroupReadinessSummaryResponse {
        return try await self.client.execute(operation: "GetRecoveryGroupReadinessSummary", path: "/recoverygroupreadiness/{recoveryGroupName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a Resource Set.
    public func getResourceSet(_ input: GetResourceSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetResourceSetResponse {
        return try await self.client.execute(operation: "GetResourceSet", path: "/resourcesets/{resourceSetName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a collection of Cells.
    public func listCells(_ input: ListCellsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListCellsResponse {
        return try await self.client.execute(operation: "ListCells", path: "/cells", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a collection of cross account readiness authorizations.
    public func listCrossAccountAuthorizations(_ input: ListCrossAccountAuthorizationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListCrossAccountAuthorizationsResponse {
        return try await self.client.execute(operation: "ListCrossAccountAuthorizations", path: "/crossaccountauthorizations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a collection of Readiness Checks.
    public func listReadinessChecks(_ input: ListReadinessChecksRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListReadinessChecksResponse {
        return try await self.client.execute(operation: "ListReadinessChecks", path: "/readinesschecks", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a collection of Recovery Groups.
    public func listRecoveryGroups(_ input: ListRecoveryGroupsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRecoveryGroupsResponse {
        return try await self.client.execute(operation: "ListRecoveryGroups", path: "/recoverygroups", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a collection of Resource Sets.
    public func listResourceSets(_ input: ListResourceSetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListResourceSetsResponse {
        return try await self.client.execute(operation: "ListResourceSets", path: "/resourcesets", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a collection of rules that are applied as part of Readiness Checks.
    public func listRules(_ input: ListRulesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRulesResponse {
        return try await self.client.execute(operation: "ListRules", path: "/rules", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the tags assigned to the specified resource.
    public func listTagsForResources(_ input: ListTagsForResourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourcesResponse {
        return try await self.client.execute(operation: "ListTagsForResources", path: "/tags/{resource-arn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds tags to the specified resource. You can specify one or more tags to add.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resource-arn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags from the specified resource. You can specify one or more tags to remove.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resource-arn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing Cell.
    public func updateCell(_ input: UpdateCellRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateCellResponse {
        return try await self.client.execute(operation: "UpdateCell", path: "/cells/{cellName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an exisiting Readiness Check.
    public func updateReadinessCheck(_ input: UpdateReadinessCheckRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateReadinessCheckResponse {
        return try await self.client.execute(operation: "UpdateReadinessCheck", path: "/readinesschecks/{readinessCheckName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing Recovery Group.
    public func updateRecoveryGroup(_ input: UpdateRecoveryGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRecoveryGroupResponse {
        return try await self.client.execute(operation: "UpdateRecoveryGroup", path: "/recoverygroups/{recoveryGroupName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing Resource Set.
    public func updateResourceSet(_ input: UpdateResourceSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateResourceSetResponse {
        return try await self.client.execute(operation: "UpdateResourceSet", path: "/resourcesets/{resourceSetName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
