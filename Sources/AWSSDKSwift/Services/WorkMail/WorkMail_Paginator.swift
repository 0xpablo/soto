// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension WorkMail {

    ///  Creates a paginated call to list the aliases associated with a given entity.
    public func listAliasesPaginator(_ input: ListAliasesRequest, onPage: @escaping ([String], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAliases, resultKey: \ListAliasesResponse.aliases, tokenKey: \ListAliasesResponse.nextToken, onPage: onPage)
    }
    
    ///  Returns an overview of the members of a group. Users and groups can be members of a group.
    public func listGroupMembersPaginator(_ input: ListGroupMembersRequest, onPage: @escaping ([Member], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listGroupMembers, resultKey: \ListGroupMembersResponse.members, tokenKey: \ListGroupMembersResponse.nextToken, onPage: onPage)
    }
    
    ///  Returns summaries of the organization's groups.
    public func listGroupsPaginator(_ input: ListGroupsRequest, onPage: @escaping ([Group], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listGroups, resultKey: \ListGroupsResponse.groups, tokenKey: \ListGroupsResponse.nextToken, onPage: onPage)
    }
    
    ///  Lists the mailbox permissions associated with a user, group, or resource mailbox.
    public func listMailboxPermissionsPaginator(_ input: ListMailboxPermissionsRequest, onPage: @escaping ([Permission], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listMailboxPermissions, resultKey: \ListMailboxPermissionsResponse.permissions, tokenKey: \ListMailboxPermissionsResponse.nextToken, onPage: onPage)
    }
    
    ///  Returns summaries of the customer's non-deleted organizations.
    public func listOrganizationsPaginator(_ input: ListOrganizationsRequest, onPage: @escaping ([OrganizationSummary], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listOrganizations, resultKey: \ListOrganizationsResponse.organizationSummaries, tokenKey: \ListOrganizationsResponse.nextToken, onPage: onPage)
    }
    
    ///  Lists the delegates associated with a resource. Users and groups can be resource delegates and answer requests on behalf of the resource.
    public func listResourceDelegatesPaginator(_ input: ListResourceDelegatesRequest, onPage: @escaping ([Delegate], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listResourceDelegates, resultKey: \ListResourceDelegatesResponse.delegates, tokenKey: \ListResourceDelegatesResponse.nextToken, onPage: onPage)
    }
    
    ///  Returns summaries of the organization's resources.
    public func listResourcesPaginator(_ input: ListResourcesRequest, onPage: @escaping ([Resource], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listResources, resultKey: \ListResourcesResponse.resources, tokenKey: \ListResourcesResponse.nextToken, onPage: onPage)
    }
    
    ///  Returns summaries of the organization's users.
    public func listUsersPaginator(_ input: ListUsersRequest, onPage: @escaping ([User], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listUsers, resultKey: \ListUsersResponse.users, tokenKey: \ListUsersResponse.nextToken, onPage: onPage)
    }
    
}

extension WorkMail.ListAliasesRequest: AWSPaginateStringToken {
    public init(_ original: WorkMail.ListAliasesRequest, token: String) {
        self.init(
            entityId: original.entityId, 
            maxResults: original.maxResults, 
            nextToken: token, 
            organizationId: original.organizationId
        )
    }
}

extension WorkMail.ListGroupMembersRequest: AWSPaginateStringToken {
    public init(_ original: WorkMail.ListGroupMembersRequest, token: String) {
        self.init(
            groupId: original.groupId, 
            maxResults: original.maxResults, 
            nextToken: token, 
            organizationId: original.organizationId
        )
    }
}

extension WorkMail.ListGroupsRequest: AWSPaginateStringToken {
    public init(_ original: WorkMail.ListGroupsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            organizationId: original.organizationId
        )
    }
}

extension WorkMail.ListMailboxPermissionsRequest: AWSPaginateStringToken {
    public init(_ original: WorkMail.ListMailboxPermissionsRequest, token: String) {
        self.init(
            entityId: original.entityId, 
            maxResults: original.maxResults, 
            nextToken: token, 
            organizationId: original.organizationId
        )
    }
}

extension WorkMail.ListOrganizationsRequest: AWSPaginateStringToken {
    public init(_ original: WorkMail.ListOrganizationsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension WorkMail.ListResourceDelegatesRequest: AWSPaginateStringToken {
    public init(_ original: WorkMail.ListResourceDelegatesRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            organizationId: original.organizationId, 
            resourceId: original.resourceId
        )
    }
}

extension WorkMail.ListResourcesRequest: AWSPaginateStringToken {
    public init(_ original: WorkMail.ListResourcesRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            organizationId: original.organizationId
        )
    }
}

extension WorkMail.ListUsersRequest: AWSPaginateStringToken {
    public init(_ original: WorkMail.ListUsersRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            organizationId: original.organizationId
        )
    }
}


