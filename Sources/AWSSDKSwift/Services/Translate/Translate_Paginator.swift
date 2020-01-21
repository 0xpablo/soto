// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension Translate {

    ///  Provides a list of custom terminologies associated with your account.
    public func listTerminologiesPaginator(_ input: ListTerminologiesRequest, onPage: @escaping ([TerminologyProperties], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTerminologies, resultKey: \ListTerminologiesResponse.terminologyPropertiesList, tokenKey: \ListTerminologiesResponse.nextToken, onPage: onPage)
    }
    
    ///  Gets a list of the batch translation jobs that you have submitted.
    public func listTextTranslationJobsPaginator(_ input: ListTextTranslationJobsRequest, onPage: @escaping ([TextTranslationJobProperties], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTextTranslationJobs, resultKey: \ListTextTranslationJobsResponse.textTranslationJobPropertiesList, tokenKey: \ListTextTranslationJobsResponse.nextToken, onPage: onPage)
    }
    
}

extension Translate.ListTerminologiesRequest: AWSPaginateStringToken {
    public init(_ original: Translate.ListTerminologiesRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Translate.ListTextTranslationJobsRequest: AWSPaginateStringToken {
    public init(_ original: Translate.ListTextTranslationJobsRequest, token: String) {
        self.init(
            filter: original.filter, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


