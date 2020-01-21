// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension AppConfig {

    ///  List all applications in your AWS account.
    public func listApplicationsPaginator(_ input: ListApplicationsRequest, onPage: @escaping ([Application], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listApplications, resultKey: \Applications.items, tokenKey: \Applications.nextToken, onPage: onPage)
    }
    
    ///  Lists the configuration profiles for an application.
    public func listConfigurationProfilesPaginator(_ input: ListConfigurationProfilesRequest, onPage: @escaping ([ConfigurationProfileSummary], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listConfigurationProfiles, resultKey: \ConfigurationProfiles.items, tokenKey: \ConfigurationProfiles.nextToken, onPage: onPage)
    }
    
    ///  List deployment strategies.
    public func listDeploymentStrategiesPaginator(_ input: ListDeploymentStrategiesRequest, onPage: @escaping ([DeploymentStrategy], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDeploymentStrategies, resultKey: \DeploymentStrategies.items, tokenKey: \DeploymentStrategies.nextToken, onPage: onPage)
    }
    
    ///  Lists the deployments for an environment.
    public func listDeploymentsPaginator(_ input: ListDeploymentsRequest, onPage: @escaping ([DeploymentSummary], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDeployments, resultKey: \Deployments.items, tokenKey: \Deployments.nextToken, onPage: onPage)
    }
    
    ///  List the environments for an application.
    public func listEnvironmentsPaginator(_ input: ListEnvironmentsRequest, onPage: @escaping ([Environment], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listEnvironments, resultKey: \Environments.items, tokenKey: \Environments.nextToken, onPage: onPage)
    }
    
}

extension AppConfig.ListApplicationsRequest: AWSPaginateStringToken {
    public init(_ original: AppConfig.ListApplicationsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension AppConfig.ListConfigurationProfilesRequest: AWSPaginateStringToken {
    public init(_ original: AppConfig.ListConfigurationProfilesRequest, token: String) {
        self.init(
            applicationId: original.applicationId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension AppConfig.ListDeploymentStrategiesRequest: AWSPaginateStringToken {
    public init(_ original: AppConfig.ListDeploymentStrategiesRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension AppConfig.ListDeploymentsRequest: AWSPaginateStringToken {
    public init(_ original: AppConfig.ListDeploymentsRequest, token: String) {
        self.init(
            applicationId: original.applicationId, 
            environmentId: original.environmentId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension AppConfig.ListEnvironmentsRequest: AWSPaginateStringToken {
    public init(_ original: AppConfig.ListEnvironmentsRequest, token: String) {
        self.init(
            applicationId: original.applicationId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


