// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension MigrationHub {

    ///  Lists all the migration statuses for your applications. If you use the optional ApplicationIds parameter, only the migration statuses for those applications will be returned.
    public func listApplicationStatesPaginator(_ input: ListApplicationStatesRequest, onPage: @escaping ([ApplicationState], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listApplicationStates, resultKey: \ListApplicationStatesResult.applicationStateList, tokenKey: \ListApplicationStatesResult.nextToken, onPage: onPage)
    }
    
    ///  Lists the created artifacts attached to a given migration task in an update stream. This API has the following traits:   Gets the list of the created artifacts while migration is taking place.   Shows the artifacts created by the migration tool that was associated by the AssociateCreatedArtifact API.    Lists created artifacts in a paginated interface.   
    public func listCreatedArtifactsPaginator(_ input: ListCreatedArtifactsRequest, onPage: @escaping ([CreatedArtifact], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listCreatedArtifacts, resultKey: \ListCreatedArtifactsResult.createdArtifactList, tokenKey: \ListCreatedArtifactsResult.nextToken, onPage: onPage)
    }
    
    ///  Lists discovered resources associated with the given MigrationTask.
    public func listDiscoveredResourcesPaginator(_ input: ListDiscoveredResourcesRequest, onPage: @escaping ([DiscoveredResource], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDiscoveredResources, resultKey: \ListDiscoveredResourcesResult.discoveredResourceList, tokenKey: \ListDiscoveredResourcesResult.nextToken, onPage: onPage)
    }
    
    ///  Lists all, or filtered by resource name, migration tasks associated with the user account making this call. This API has the following traits:   Can show a summary list of the most recent migration tasks.   Can show a summary list of migration tasks associated with a given discovered resource.   Lists migration tasks in a paginated interface.  
    public func listMigrationTasksPaginator(_ input: ListMigrationTasksRequest, onPage: @escaping ([MigrationTaskSummary], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listMigrationTasks, resultKey: \ListMigrationTasksResult.migrationTaskSummaryList, tokenKey: \ListMigrationTasksResult.nextToken, onPage: onPage)
    }
    
    ///  Lists progress update streams associated with the user account making this call.
    public func listProgressUpdateStreamsPaginator(_ input: ListProgressUpdateStreamsRequest, onPage: @escaping ([ProgressUpdateStreamSummary], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listProgressUpdateStreams, resultKey: \ListProgressUpdateStreamsResult.progressUpdateStreamSummaryList, tokenKey: \ListProgressUpdateStreamsResult.nextToken, onPage: onPage)
    }
    
}

extension MigrationHub.ListApplicationStatesRequest: AWSPaginateStringToken {
    public init(_ original: MigrationHub.ListApplicationStatesRequest, token: String) {
        self.init(
            applicationIds: original.applicationIds, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension MigrationHub.ListCreatedArtifactsRequest: AWSPaginateStringToken {
    public init(_ original: MigrationHub.ListCreatedArtifactsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            migrationTaskName: original.migrationTaskName, 
            nextToken: token, 
            progressUpdateStream: original.progressUpdateStream
        )
    }
}

extension MigrationHub.ListDiscoveredResourcesRequest: AWSPaginateStringToken {
    public init(_ original: MigrationHub.ListDiscoveredResourcesRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            migrationTaskName: original.migrationTaskName, 
            nextToken: token, 
            progressUpdateStream: original.progressUpdateStream
        )
    }
}

extension MigrationHub.ListMigrationTasksRequest: AWSPaginateStringToken {
    public init(_ original: MigrationHub.ListMigrationTasksRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            resourceName: original.resourceName
        )
    }
}

extension MigrationHub.ListProgressUpdateStreamsRequest: AWSPaginateStringToken {
    public init(_ original: MigrationHub.ListProgressUpdateStreamsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


