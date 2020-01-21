// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension CodeGuruProfiler {

    ///  List the start times of the available aggregated profiles of a profiling group for an aggregation period within the specified time range.
    public func listProfileTimesPaginator(_ input: ListProfileTimesRequest, onPage: @escaping ([ProfileTime], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listProfileTimes, resultKey: \ListProfileTimesResponse.profileTimes, tokenKey: \ListProfileTimesResponse.nextToken, onPage: onPage)
    }
    
    ///  List profiling groups in the account.
    public func listProfilingGroupsPaginator(_ input: ListProfilingGroupsRequest, onPage: @escaping ([String], [ProfilingGroupDescription], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listProfilingGroups, resultKey1: \ListProfilingGroupsResponse.profilingGroupNames, resultKey2: \ListProfilingGroupsResponse.profilingGroups, tokenKey: \ListProfilingGroupsResponse.nextToken, onPage: onPage)
    }
    
}

extension CodeGuruProfiler.ListProfileTimesRequest: AWSPaginateStringToken {
    public init(_ original: CodeGuruProfiler.ListProfileTimesRequest, token: String) {
        self.init(
            endTime: original.endTime, 
            maxResults: original.maxResults, 
            nextToken: token, 
            orderBy: original.orderBy, 
            period: original.period, 
            profilingGroupName: original.profilingGroupName, 
            startTime: original.startTime
        )
    }
}

extension CodeGuruProfiler.ListProfilingGroupsRequest: AWSPaginateStringToken {
    public init(_ original: CodeGuruProfiler.ListProfilingGroupsRequest, token: String) {
        self.init(
            includeDescription: original.includeDescription, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


