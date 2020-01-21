// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension Personalize {

    ///  Gets a list of the batch inference jobs that have been performed off of a solution version.
    public func listBatchInferenceJobsPaginator(_ input: ListBatchInferenceJobsRequest, onPage: @escaping ([BatchInferenceJobSummary], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listBatchInferenceJobs, resultKey: \ListBatchInferenceJobsResponse.batchInferenceJobs, tokenKey: \ListBatchInferenceJobsResponse.nextToken, onPage: onPage)
    }
    
    ///  Returns a list of campaigns that use the given solution. When a solution is not specified, all the campaigns associated with the account are listed. The response provides the properties for each campaign, including the Amazon Resource Name (ARN). For more information on campaigns, see CreateCampaign.
    public func listCampaignsPaginator(_ input: ListCampaignsRequest, onPage: @escaping ([CampaignSummary], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listCampaigns, resultKey: \ListCampaignsResponse.campaigns, tokenKey: \ListCampaignsResponse.nextToken, onPage: onPage)
    }
    
    ///  Returns a list of dataset groups. The response provides the properties for each dataset group, including the Amazon Resource Name (ARN). For more information on dataset groups, see CreateDatasetGroup.
    public func listDatasetGroupsPaginator(_ input: ListDatasetGroupsRequest, onPage: @escaping ([DatasetGroupSummary], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDatasetGroups, resultKey: \ListDatasetGroupsResponse.datasetGroups, tokenKey: \ListDatasetGroupsResponse.nextToken, onPage: onPage)
    }
    
    ///  Returns a list of dataset import jobs that use the given dataset. When a dataset is not specified, all the dataset import jobs associated with the account are listed. The response provides the properties for each dataset import job, including the Amazon Resource Name (ARN). For more information on dataset import jobs, see CreateDatasetImportJob. For more information on datasets, see CreateDataset.
    public func listDatasetImportJobsPaginator(_ input: ListDatasetImportJobsRequest, onPage: @escaping ([DatasetImportJobSummary], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDatasetImportJobs, resultKey: \ListDatasetImportJobsResponse.datasetImportJobs, tokenKey: \ListDatasetImportJobsResponse.nextToken, onPage: onPage)
    }
    
    ///  Returns the list of datasets contained in the given dataset group. The response provides the properties for each dataset, including the Amazon Resource Name (ARN). For more information on datasets, see CreateDataset.
    public func listDatasetsPaginator(_ input: ListDatasetsRequest, onPage: @escaping ([DatasetSummary], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDatasets, resultKey: \ListDatasetsResponse.datasets, tokenKey: \ListDatasetsResponse.nextToken, onPage: onPage)
    }
    
    ///  Returns the list of event trackers associated with the account. The response provides the properties for each event tracker, including the Amazon Resource Name (ARN) and tracking ID. For more information on event trackers, see CreateEventTracker.
    public func listEventTrackersPaginator(_ input: ListEventTrackersRequest, onPage: @escaping ([EventTrackerSummary], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listEventTrackers, resultKey: \ListEventTrackersResponse.eventTrackers, tokenKey: \ListEventTrackersResponse.nextToken, onPage: onPage)
    }
    
    ///  Returns a list of available recipes. The response provides the properties for each recipe, including the recipe's Amazon Resource Name (ARN).
    public func listRecipesPaginator(_ input: ListRecipesRequest, onPage: @escaping ([RecipeSummary], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listRecipes, resultKey: \ListRecipesResponse.recipes, tokenKey: \ListRecipesResponse.nextToken, onPage: onPage)
    }
    
    ///  Returns the list of schemas associated with the account. The response provides the properties for each schema, including the Amazon Resource Name (ARN). For more information on schemas, see CreateSchema.
    public func listSchemasPaginator(_ input: ListSchemasRequest, onPage: @escaping ([DatasetSchemaSummary], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSchemas, resultKey: \ListSchemasResponse.schemas, tokenKey: \ListSchemasResponse.nextToken, onPage: onPage)
    }
    
    ///  Returns a list of solution versions for the given solution. When a solution is not specified, all the solution versions associated with the account are listed. The response provides the properties for each solution version, including the Amazon Resource Name (ARN). For more information on solutions, see CreateSolution.
    public func listSolutionVersionsPaginator(_ input: ListSolutionVersionsRequest, onPage: @escaping ([SolutionVersionSummary], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSolutionVersions, resultKey: \ListSolutionVersionsResponse.solutionVersions, tokenKey: \ListSolutionVersionsResponse.nextToken, onPage: onPage)
    }
    
    ///  Returns a list of solutions that use the given dataset group. When a dataset group is not specified, all the solutions associated with the account are listed. The response provides the properties for each solution, including the Amazon Resource Name (ARN). For more information on solutions, see CreateSolution.
    public func listSolutionsPaginator(_ input: ListSolutionsRequest, onPage: @escaping ([SolutionSummary], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSolutions, resultKey: \ListSolutionsResponse.solutions, tokenKey: \ListSolutionsResponse.nextToken, onPage: onPage)
    }
    
}

extension Personalize.ListBatchInferenceJobsRequest: AWSPaginateStringToken {
    public init(_ original: Personalize.ListBatchInferenceJobsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            solutionVersionArn: original.solutionVersionArn
        )
    }
}

extension Personalize.ListCampaignsRequest: AWSPaginateStringToken {
    public init(_ original: Personalize.ListCampaignsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            solutionArn: original.solutionArn
        )
    }
}

extension Personalize.ListDatasetGroupsRequest: AWSPaginateStringToken {
    public init(_ original: Personalize.ListDatasetGroupsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Personalize.ListDatasetImportJobsRequest: AWSPaginateStringToken {
    public init(_ original: Personalize.ListDatasetImportJobsRequest, token: String) {
        self.init(
            datasetArn: original.datasetArn, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Personalize.ListDatasetsRequest: AWSPaginateStringToken {
    public init(_ original: Personalize.ListDatasetsRequest, token: String) {
        self.init(
            datasetGroupArn: original.datasetGroupArn, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Personalize.ListEventTrackersRequest: AWSPaginateStringToken {
    public init(_ original: Personalize.ListEventTrackersRequest, token: String) {
        self.init(
            datasetGroupArn: original.datasetGroupArn, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Personalize.ListRecipesRequest: AWSPaginateStringToken {
    public init(_ original: Personalize.ListRecipesRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            recipeProvider: original.recipeProvider
        )
    }
}

extension Personalize.ListSchemasRequest: AWSPaginateStringToken {
    public init(_ original: Personalize.ListSchemasRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Personalize.ListSolutionVersionsRequest: AWSPaginateStringToken {
    public init(_ original: Personalize.ListSolutionVersionsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            solutionArn: original.solutionArn
        )
    }
}

extension Personalize.ListSolutionsRequest: AWSPaginateStringToken {
    public init(_ original: Personalize.ListSolutionsRequest, token: String) {
        self.init(
            datasetGroupArn: original.datasetGroupArn, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


