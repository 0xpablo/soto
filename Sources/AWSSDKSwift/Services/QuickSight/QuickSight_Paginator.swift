// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension QuickSight {

    ///  Lists all the versions of the dashboards in the QuickSight subscription.
    public func listDashboardVersionsPaginator(_ input: ListDashboardVersionsRequest, onPage: @escaping ([DashboardVersionSummary], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDashboardVersions, resultKey: \ListDashboardVersionsResponse.dashboardVersionSummaryList, tokenKey: \ListDashboardVersionsResponse.nextToken, onPage: onPage)
    }
    
    ///  Lists dashboards in an AWS account.
    public func listDashboardsPaginator(_ input: ListDashboardsRequest, onPage: @escaping ([DashboardSummary], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDashboards, resultKey: \ListDashboardsResponse.dashboardSummaryList, tokenKey: \ListDashboardsResponse.nextToken, onPage: onPage)
    }
    
    ///  Lists all of the datasets belonging to the current AWS account in an AWS Region. The permissions resource is arn:aws:quicksight:region:aws-account-id:dataset/*.
    public func listDataSetsPaginator(_ input: ListDataSetsRequest, onPage: @escaping ([DataSetSummary], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDataSets, resultKey: \ListDataSetsResponse.dataSetSummaries, tokenKey: \ListDataSetsResponse.nextToken, onPage: onPage)
    }
    
    ///  Lists data sources in current AWS Region that belong to this AWS account.
    public func listDataSourcesPaginator(_ input: ListDataSourcesRequest, onPage: @escaping ([DataSource], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDataSources, resultKey: \ListDataSourcesResponse.dataSources, tokenKey: \ListDataSourcesResponse.nextToken, onPage: onPage)
    }
    
    ///  Lists the history of SPICE ingestions for a dataset.
    public func listIngestionsPaginator(_ input: ListIngestionsRequest, onPage: @escaping ([Ingestion], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listIngestions, resultKey: \ListIngestionsResponse.ingestions, tokenKey: \ListIngestionsResponse.nextToken, onPage: onPage)
    }
    
    ///  Lists all the aliases of a template.
    public func listTemplateAliasesPaginator(_ input: ListTemplateAliasesRequest, onPage: @escaping ([TemplateAlias], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTemplateAliases, resultKey: \ListTemplateAliasesResponse.templateAliasList, tokenKey: \ListTemplateAliasesResponse.nextToken, onPage: onPage)
    }
    
    ///  Lists all the versions of the templates in the current Amazon QuickSight account.
    public func listTemplateVersionsPaginator(_ input: ListTemplateVersionsRequest, onPage: @escaping ([TemplateVersionSummary], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTemplateVersions, resultKey: \ListTemplateVersionsResponse.templateVersionSummaryList, tokenKey: \ListTemplateVersionsResponse.nextToken, onPage: onPage)
    }
    
    ///  Lists all the templates in the current Amazon QuickSight account.
    public func listTemplatesPaginator(_ input: ListTemplatesRequest, onPage: @escaping ([TemplateSummary], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTemplates, resultKey: \ListTemplatesResponse.templateSummaryList, tokenKey: \ListTemplatesResponse.nextToken, onPage: onPage)
    }
    
}

extension QuickSight.ListDashboardVersionsRequest: AWSPaginateStringToken {
    public init(_ original: QuickSight.ListDashboardVersionsRequest, token: String) {
        self.init(
            awsAccountId: original.awsAccountId, 
            dashboardId: original.dashboardId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension QuickSight.ListDashboardsRequest: AWSPaginateStringToken {
    public init(_ original: QuickSight.ListDashboardsRequest, token: String) {
        self.init(
            awsAccountId: original.awsAccountId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension QuickSight.ListDataSetsRequest: AWSPaginateStringToken {
    public init(_ original: QuickSight.ListDataSetsRequest, token: String) {
        self.init(
            awsAccountId: original.awsAccountId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension QuickSight.ListDataSourcesRequest: AWSPaginateStringToken {
    public init(_ original: QuickSight.ListDataSourcesRequest, token: String) {
        self.init(
            awsAccountId: original.awsAccountId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension QuickSight.ListIngestionsRequest: AWSPaginateStringToken {
    public init(_ original: QuickSight.ListIngestionsRequest, token: String) {
        self.init(
            awsAccountId: original.awsAccountId, 
            dataSetId: original.dataSetId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension QuickSight.ListTemplateAliasesRequest: AWSPaginateStringToken {
    public init(_ original: QuickSight.ListTemplateAliasesRequest, token: String) {
        self.init(
            awsAccountId: original.awsAccountId, 
            maxResults: original.maxResults, 
            nextToken: token, 
            templateId: original.templateId
        )
    }
}

extension QuickSight.ListTemplateVersionsRequest: AWSPaginateStringToken {
    public init(_ original: QuickSight.ListTemplateVersionsRequest, token: String) {
        self.init(
            awsAccountId: original.awsAccountId, 
            maxResults: original.maxResults, 
            nextToken: token, 
            templateId: original.templateId
        )
    }
}

extension QuickSight.ListTemplatesRequest: AWSPaginateStringToken {
    public init(_ original: QuickSight.ListTemplatesRequest, token: String) {
        self.init(
            awsAccountId: original.awsAccountId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


