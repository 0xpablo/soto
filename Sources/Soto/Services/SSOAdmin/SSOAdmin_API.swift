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

/// Service object for interacting with AWS SSOAdmin service.
///
/// Amazon Web Services Single Sign On (SSO) is a cloud SSO service that makes it easy to centrally manage SSO access to multiple Amazon Web Services accounts and business applications. This guide provides information on SSO operations which could be used for access management of Amazon Web Services accounts. For information about Amazon Web Services SSO features, see the Amazon Web Services Single Sign-On User Guide. Many operations in the SSO APIs rely on identifiers for users and groups, known as principals. For more information about how to work with principals and principal IDs in Amazon Web Services SSO, see the Amazon Web Services SSO Identity Store API Reference.
public struct SSOAdmin: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the SSOAdmin client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "SWBExternalService",
            service: "sso",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2020-07-20",
            endpoint: endpoint,
            errorType: SSOAdminErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Attaches an IAM managed policy ARN to a permission set.  If the permission set is already referenced by one or more account assignments, you will need to call  ProvisionPermissionSet  after this operation. Calling ProvisionPermissionSet applies the corresponding IAM policy updates to all assigned accounts.
    public func attachManagedPolicyToPermissionSet(_ input: AttachManagedPolicyToPermissionSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AttachManagedPolicyToPermissionSetResponse> {
        return self.client.execute(operation: "AttachManagedPolicyToPermissionSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Assigns access to a principal for a specified Amazon Web Services account using a specified permission set.  The term principal here refers to a user or group that is defined in Amazon Web Services SSO.   As part of a successful CreateAccountAssignment call, the specified permission set will automatically be provisioned to the account in the form of an IAM policy. That policy is attached to the SSO-created IAM role. If the permission set is subsequently updated, the corresponding IAM policies attached to roles in your accounts will not be updated automatically. In this case, you must call  ProvisionPermissionSet  to make these updates.
    public func createAccountAssignment(_ input: CreateAccountAssignmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAccountAssignmentResponse> {
        return self.client.execute(operation: "CreateAccountAssignment", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Enables the attributes-based access control (ABAC) feature for the specified Amazon Web Services SSO instance. You can also specify new attributes to add to your ABAC configuration during the enabling process. For more information about ABAC, see Attribute-Based Access Control in the Amazon Web Services SSO User Guide.
    public func createInstanceAccessControlAttributeConfiguration(_ input: CreateInstanceAccessControlAttributeConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInstanceAccessControlAttributeConfigurationResponse> {
        return self.client.execute(operation: "CreateInstanceAccessControlAttributeConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a permission set within a specified SSO instance.  To grant users and groups access to Amazon Web Services account resources, use  CreateAccountAssignment .
    public func createPermissionSet(_ input: CreatePermissionSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePermissionSetResponse> {
        return self.client.execute(operation: "CreatePermissionSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a principal's access from a specified Amazon Web Services account using a specified permission set.
    public func deleteAccountAssignment(_ input: DeleteAccountAssignmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAccountAssignmentResponse> {
        return self.client.execute(operation: "DeleteAccountAssignment", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the inline policy from a specified permission set.
    public func deleteInlinePolicyFromPermissionSet(_ input: DeleteInlinePolicyFromPermissionSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteInlinePolicyFromPermissionSetResponse> {
        return self.client.execute(operation: "DeleteInlinePolicyFromPermissionSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disables the attributes-based access control (ABAC) feature for the specified Amazon Web Services SSO instance and deletes all of the attribute mappings that have been configured. Once deleted, any attributes that are received from an identity source and any custom attributes you have previously configured will not be passed. For more information about ABAC, see Attribute-Based Access Control in the Amazon Web Services SSO User Guide.
    public func deleteInstanceAccessControlAttributeConfiguration(_ input: DeleteInstanceAccessControlAttributeConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteInstanceAccessControlAttributeConfigurationResponse> {
        return self.client.execute(operation: "DeleteInstanceAccessControlAttributeConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified permission set.
    public func deletePermissionSet(_ input: DeletePermissionSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePermissionSetResponse> {
        return self.client.execute(operation: "DeletePermissionSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the status of the assignment creation request.
    public func describeAccountAssignmentCreationStatus(_ input: DescribeAccountAssignmentCreationStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountAssignmentCreationStatusResponse> {
        return self.client.execute(operation: "DescribeAccountAssignmentCreationStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the status of the assignment deletion request.
    public func describeAccountAssignmentDeletionStatus(_ input: DescribeAccountAssignmentDeletionStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountAssignmentDeletionStatusResponse> {
        return self.client.execute(operation: "DescribeAccountAssignmentDeletionStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the list of Amazon Web Services SSO identity store attributes that have been configured to work with attributes-based access control (ABAC) for the specified Amazon Web Services SSO instance. This will not return attributes configured and sent by an external identity provider. For more information about ABAC, see Attribute-Based Access Control in the Amazon Web Services SSO User Guide.
    public func describeInstanceAccessControlAttributeConfiguration(_ input: DescribeInstanceAccessControlAttributeConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceAccessControlAttributeConfigurationResponse> {
        return self.client.execute(operation: "DescribeInstanceAccessControlAttributeConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the details of the permission set.
    public func describePermissionSet(_ input: DescribePermissionSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePermissionSetResponse> {
        return self.client.execute(operation: "DescribePermissionSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the status for the given permission set provisioning request.
    public func describePermissionSetProvisioningStatus(_ input: DescribePermissionSetProvisioningStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePermissionSetProvisioningStatusResponse> {
        return self.client.execute(operation: "DescribePermissionSetProvisioningStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Detaches the attached IAM managed policy ARN from the specified permission set.
    public func detachManagedPolicyFromPermissionSet(_ input: DetachManagedPolicyFromPermissionSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachManagedPolicyFromPermissionSetResponse> {
        return self.client.execute(operation: "DetachManagedPolicyFromPermissionSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Obtains the inline policy assigned to the permission set.
    public func getInlinePolicyForPermissionSet(_ input: GetInlinePolicyForPermissionSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetInlinePolicyForPermissionSetResponse> {
        return self.client.execute(operation: "GetInlinePolicyForPermissionSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the status of the Amazon Web Services account assignment creation requests for a specified SSO instance.
    public func listAccountAssignmentCreationStatus(_ input: ListAccountAssignmentCreationStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAccountAssignmentCreationStatusResponse> {
        return self.client.execute(operation: "ListAccountAssignmentCreationStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the status of the Amazon Web Services account assignment deletion requests for a specified SSO instance.
    public func listAccountAssignmentDeletionStatus(_ input: ListAccountAssignmentDeletionStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAccountAssignmentDeletionStatusResponse> {
        return self.client.execute(operation: "ListAccountAssignmentDeletionStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the assignee of the specified Amazon Web Services account with the specified permission set.
    public func listAccountAssignments(_ input: ListAccountAssignmentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAccountAssignmentsResponse> {
        return self.client.execute(operation: "ListAccountAssignments", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the Amazon Web Services accounts where the specified permission set is provisioned.
    public func listAccountsForProvisionedPermissionSet(_ input: ListAccountsForProvisionedPermissionSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAccountsForProvisionedPermissionSetResponse> {
        return self.client.execute(operation: "ListAccountsForProvisionedPermissionSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the SSO instances that the caller has access to.
    public func listInstances(_ input: ListInstancesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListInstancesResponse> {
        return self.client.execute(operation: "ListInstances", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the IAM managed policy that is attached to a specified permission set.
    public func listManagedPoliciesInPermissionSet(_ input: ListManagedPoliciesInPermissionSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListManagedPoliciesInPermissionSetResponse> {
        return self.client.execute(operation: "ListManagedPoliciesInPermissionSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the status of the permission set provisioning requests for a specified SSO instance.
    public func listPermissionSetProvisioningStatus(_ input: ListPermissionSetProvisioningStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPermissionSetProvisioningStatusResponse> {
        return self.client.execute(operation: "ListPermissionSetProvisioningStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the PermissionSets in an SSO instance.
    public func listPermissionSets(_ input: ListPermissionSetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPermissionSetsResponse> {
        return self.client.execute(operation: "ListPermissionSets", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the permission sets that are provisioned to a specified Amazon Web Services account.
    public func listPermissionSetsProvisionedToAccount(_ input: ListPermissionSetsProvisionedToAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPermissionSetsProvisionedToAccountResponse> {
        return self.client.execute(operation: "ListPermissionSetsProvisionedToAccount", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags that are attached to a specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The process by which a specified permission set is provisioned to the specified target.
    public func provisionPermissionSet(_ input: ProvisionPermissionSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ProvisionPermissionSetResponse> {
        return self.client.execute(operation: "ProvisionPermissionSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Attaches an IAM inline policy to a permission set.  If the permission set is already referenced by one or more account assignments, you will need to call  ProvisionPermissionSet  after this action to apply the corresponding IAM policy updates to all assigned accounts.
    public func putInlinePolicyToPermissionSet(_ input: PutInlinePolicyToPermissionSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutInlinePolicyToPermissionSetResponse> {
        return self.client.execute(operation: "PutInlinePolicyToPermissionSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associates a set of tags with a specified resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates a set of tags from a specified resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the Amazon Web Services SSO identity store attributes that you can use with the Amazon Web Services SSO instance for attributes-based access control (ABAC). When using an external identity provider as an identity source, you can pass attributes through the SAML assertion as an alternative to configuring attributes from the Amazon Web Services SSO identity store. If a SAML assertion passes any of these attributes, Amazon Web Services SSO replaces the attribute value with the value from the Amazon Web Services SSO identity store. For more information about ABAC, see Attribute-Based Access Control in the Amazon Web Services SSO User Guide.
    public func updateInstanceAccessControlAttributeConfiguration(_ input: UpdateInstanceAccessControlAttributeConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateInstanceAccessControlAttributeConfigurationResponse> {
        return self.client.execute(operation: "UpdateInstanceAccessControlAttributeConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing permission set.
    public func updatePermissionSet(_ input: UpdatePermissionSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdatePermissionSetResponse> {
        return self.client.execute(operation: "UpdatePermissionSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension SSOAdmin {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: SSOAdmin, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
