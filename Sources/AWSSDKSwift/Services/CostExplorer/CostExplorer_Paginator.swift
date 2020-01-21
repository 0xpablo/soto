// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension CostExplorer {

    ///  Retrieves the Savings Plans covered for your account. This enables you to see how much of your cost is covered by a Savings Plan. An organization’s master account can see the coverage of the associated member accounts. For any time period, you can filter data for Savings Plans usage with the following dimensions:    LINKED_ACCOUNT     REGION     SERVICE     INSTANCE_FAMILY    To determine valid values for a dimension, use the GetDimensionValues operation.
    public func getSavingsPlansCoveragePaginator(_ input: GetSavingsPlansCoverageRequest, onPage: @escaping ([SavingsPlansCoverage], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getSavingsPlansCoverage, resultKey: \GetSavingsPlansCoverageResponse.savingsPlansCoverages, tokenKey: \GetSavingsPlansCoverageResponse.nextToken, onPage: onPage)
    }
    
    ///  Retrieves attribute data along with aggregate utilization and savings data for a given time period. This doesn't support granular or grouped data (daily/monthly) in response. You can't retrieve data by dates in a single response similar to GetSavingsPlanUtilization, but you have the option to make multiple calls to GetSavingsPlanUtilizationDetails by providing individual dates. You can use GetDimensionValues in SAVINGS_PLANS to determine the possible dimension values.   GetSavingsPlanUtilizationDetails internally groups data by SavingsPlansArn. 
    public func getSavingsPlansUtilizationDetailsPaginator(_ input: GetSavingsPlansUtilizationDetailsRequest, onPage: @escaping ([SavingsPlansUtilizationDetail], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getSavingsPlansUtilizationDetails, resultKey: \GetSavingsPlansUtilizationDetailsResponse.savingsPlansUtilizationDetails, tokenKey: \GetSavingsPlansUtilizationDetailsResponse.nextToken, onPage: onPage)
    }
    
}

extension CostExplorer.GetSavingsPlansCoverageRequest: AWSPaginateStringToken {
    public init(_ original: CostExplorer.GetSavingsPlansCoverageRequest, token: String) {
        self.init(
            filter: original.filter, 
            granularity: original.granularity, 
            groupBy: original.groupBy, 
            maxResults: original.maxResults, 
            metrics: original.metrics, 
            nextToken: token, 
            timePeriod: original.timePeriod
        )
    }
}

extension CostExplorer.GetSavingsPlansUtilizationDetailsRequest: AWSPaginateStringToken {
    public init(_ original: CostExplorer.GetSavingsPlansUtilizationDetailsRequest, token: String) {
        self.init(
            filter: original.filter, 
            maxResults: original.maxResults, 
            nextToken: token, 
            timePeriod: original.timePeriod
        )
    }
}


