// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension RAM {

    ///  Gets the policies for the specified resources that you own and have shared.
    public func getResourcePoliciesPaginator(_ input: GetResourcePoliciesRequest, onPage: @escaping ([String], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getResourcePolicies, resultKey: \GetResourcePoliciesResponse.policies, tokenKey: \GetResourcePoliciesResponse.nextToken, onPage: onPage)
    }
    
    ///  Gets the resources or principals for the resource shares that you own.
    public func getResourceShareAssociationsPaginator(_ input: GetResourceShareAssociationsRequest, onPage: @escaping ([ResourceShareAssociation], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getResourceShareAssociations, resultKey: \GetResourceShareAssociationsResponse.resourceShareAssociations, tokenKey: \GetResourceShareAssociationsResponse.nextToken, onPage: onPage)
    }
    
    ///  Gets the invitations for resource sharing that you've received.
    public func getResourceShareInvitationsPaginator(_ input: GetResourceShareInvitationsRequest, onPage: @escaping ([ResourceShareInvitation], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getResourceShareInvitations, resultKey: \GetResourceShareInvitationsResponse.resourceShareInvitations, tokenKey: \GetResourceShareInvitationsResponse.nextToken, onPage: onPage)
    }
    
    ///  Gets the resource shares that you own or the resource shares that are shared with you.
    public func getResourceSharesPaginator(_ input: GetResourceSharesRequest, onPage: @escaping ([ResourceShare], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getResourceShares, resultKey: \GetResourceSharesResponse.resourceShares, tokenKey: \GetResourceSharesResponse.nextToken, onPage: onPage)
    }
    
    ///  Lists the resources in a resource share that is shared with you but that the invitation is still pending for.
    public func listPendingInvitationResourcesPaginator(_ input: ListPendingInvitationResourcesRequest, onPage: @escaping ([Resource], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPendingInvitationResources, resultKey: \ListPendingInvitationResourcesResponse.resources, tokenKey: \ListPendingInvitationResourcesResponse.nextToken, onPage: onPage)
    }
    
    ///  Lists the principals that you have shared resources with or that have shared resources with you.
    public func listPrincipalsPaginator(_ input: ListPrincipalsRequest, onPage: @escaping ([Principal], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPrincipals, resultKey: \ListPrincipalsResponse.principals, tokenKey: \ListPrincipalsResponse.nextToken, onPage: onPage)
    }
    
    ///  Lists the resources that you added to a resource shares or the resources that are shared with you.
    public func listResourcesPaginator(_ input: ListResourcesRequest, onPage: @escaping ([Resource], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listResources, resultKey: \ListResourcesResponse.resources, tokenKey: \ListResourcesResponse.nextToken, onPage: onPage)
    }
    
}

extension RAM.GetResourcePoliciesRequest: AWSPaginateStringToken {
    public init(_ original: RAM.GetResourcePoliciesRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            principal: original.principal, 
            resourceArns: original.resourceArns
        )
    }
}

extension RAM.GetResourceShareAssociationsRequest: AWSPaginateStringToken {
    public init(_ original: RAM.GetResourceShareAssociationsRequest, token: String) {
        self.init(
            associationStatus: original.associationStatus, 
            associationType: original.associationType, 
            maxResults: original.maxResults, 
            nextToken: token, 
            principal: original.principal, 
            resourceArn: original.resourceArn, 
            resourceShareArns: original.resourceShareArns
        )
    }
}

extension RAM.GetResourceShareInvitationsRequest: AWSPaginateStringToken {
    public init(_ original: RAM.GetResourceShareInvitationsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            resourceShareArns: original.resourceShareArns, 
            resourceShareInvitationArns: original.resourceShareInvitationArns
        )
    }
}

extension RAM.GetResourceSharesRequest: AWSPaginateStringToken {
    public init(_ original: RAM.GetResourceSharesRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            name: original.name, 
            nextToken: token, 
            resourceOwner: original.resourceOwner, 
            resourceShareArns: original.resourceShareArns, 
            resourceShareStatus: original.resourceShareStatus, 
            tagFilters: original.tagFilters
        )
    }
}

extension RAM.ListPendingInvitationResourcesRequest: AWSPaginateStringToken {
    public init(_ original: RAM.ListPendingInvitationResourcesRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            resourceShareInvitationArn: original.resourceShareInvitationArn
        )
    }
}

extension RAM.ListPrincipalsRequest: AWSPaginateStringToken {
    public init(_ original: RAM.ListPrincipalsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            principals: original.principals, 
            resourceArn: original.resourceArn, 
            resourceOwner: original.resourceOwner, 
            resourceShareArns: original.resourceShareArns, 
            resourceType: original.resourceType
        )
    }
}

extension RAM.ListResourcesRequest: AWSPaginateStringToken {
    public init(_ original: RAM.ListResourcesRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            principal: original.principal, 
            resourceArns: original.resourceArns, 
            resourceOwner: original.resourceOwner, 
            resourceShareArns: original.resourceShareArns, 
            resourceType: original.resourceType
        )
    }
}


