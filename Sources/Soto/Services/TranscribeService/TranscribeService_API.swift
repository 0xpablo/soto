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

/// Service object for interacting with AWS TranscribeService service.
///
/// Operations and objects for transcribing speech to text.
public struct TranscribeService: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the TranscribeService client
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
            amzTarget: "Transcribe",
            service: "transcribe",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-10-26",
            endpoint: endpoint,
            serviceEndpoints: ["cn-north-1": "cn.transcribe.cn-north-1.amazonaws.com.cn", "cn-northwest-1": "cn.transcribe.cn-northwest-1.amazonaws.com.cn"],
            errorType: TranscribeServiceErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates an analytics category. Amazon Transcribe applies the conditions specified by your analytics categories to your call analytics jobs. For each analytics category, you specify one or more rules. For example, you can specify a rule that the customer sentiment was neutral or negative within that category. If you start a call analytics job, Amazon Transcribe applies the category to the analytics job that you've specified.
    public func createCallAnalyticsCategory(_ input: CreateCallAnalyticsCategoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCallAnalyticsCategoryResponse> {
        return self.client.execute(operation: "CreateCallAnalyticsCategory", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new custom language model. Use Amazon S3 prefixes to provide the location of your input files. The time it takes to create your model depends on the size of your training data.
    public func createLanguageModel(_ input: CreateLanguageModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLanguageModelResponse> {
        return self.client.execute(operation: "CreateLanguageModel", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new custom vocabulary that you can use to modify how Amazon Transcribe Medical transcribes your audio file.
    public func createMedicalVocabulary(_ input: CreateMedicalVocabularyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMedicalVocabularyResponse> {
        return self.client.execute(operation: "CreateMedicalVocabulary", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new custom vocabulary that you can use to change the way Amazon Transcribe handles transcription of an audio file.
    public func createVocabulary(_ input: CreateVocabularyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVocabularyResponse> {
        return self.client.execute(operation: "CreateVocabulary", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new vocabulary filter that you can use to filter words, such as profane words, from the output of a transcription job.
    public func createVocabularyFilter(_ input: CreateVocabularyFilterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVocabularyFilterResponse> {
        return self.client.execute(operation: "CreateVocabularyFilter", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a call analytics category using its name.
    public func deleteCallAnalyticsCategory(_ input: DeleteCallAnalyticsCategoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCallAnalyticsCategoryResponse> {
        return self.client.execute(operation: "DeleteCallAnalyticsCategory", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a call analytics job using its name.
    public func deleteCallAnalyticsJob(_ input: DeleteCallAnalyticsJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCallAnalyticsJobResponse> {
        return self.client.execute(operation: "DeleteCallAnalyticsJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a custom language model using its name.
    @discardableResult public func deleteLanguageModel(_ input: DeleteLanguageModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteLanguageModel", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a transcription job generated by Amazon Transcribe Medical and any related information.
    @discardableResult public func deleteMedicalTranscriptionJob(_ input: DeleteMedicalTranscriptionJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteMedicalTranscriptionJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a vocabulary from Amazon Transcribe Medical.
    @discardableResult public func deleteMedicalVocabulary(_ input: DeleteMedicalVocabularyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteMedicalVocabulary", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a previously submitted transcription job along with any other generated results such as the transcription, models, and so on.
    @discardableResult public func deleteTranscriptionJob(_ input: DeleteTranscriptionJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteTranscriptionJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a vocabulary from Amazon Transcribe.
    @discardableResult public func deleteVocabulary(_ input: DeleteVocabularyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteVocabulary", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a vocabulary filter.
    @discardableResult public func deleteVocabularyFilter(_ input: DeleteVocabularyFilterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteVocabularyFilter", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a single custom language model. Use this information to see details about the language model in your Amazon Web Services account. You can also see whether the base language model used to create your custom language model has been updated. If Amazon Transcribe has updated the base model, you can create a new custom language model using the updated base model. If the language model wasn't created, you can use this operation to understand why Amazon Transcribe couldn't create it.
    public func describeLanguageModel(_ input: DescribeLanguageModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLanguageModelResponse> {
        return self.client.execute(operation: "DescribeLanguageModel", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about a call analytics category.
    public func getCallAnalyticsCategory(_ input: GetCallAnalyticsCategoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCallAnalyticsCategoryResponse> {
        return self.client.execute(operation: "GetCallAnalyticsCategory", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a call analytics job. To see the status of the job, check the CallAnalyticsJobStatus field. If the status is COMPLETED, the job is finished and you can find the results at the location specified in the TranscriptFileUri field. If you enable personally identifiable information (PII) redaction, the redacted transcript appears in the RedactedTranscriptFileUri field.
    public func getCallAnalyticsJob(_ input: GetCallAnalyticsJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCallAnalyticsJobResponse> {
        return self.client.execute(operation: "GetCallAnalyticsJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a transcription job from Amazon Transcribe Medical. To see the status of the job, check the TranscriptionJobStatus field. If the status is COMPLETED, the job is finished. You find the results of the completed job in the TranscriptFileUri field.
    public func getMedicalTranscriptionJob(_ input: GetMedicalTranscriptionJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMedicalTranscriptionJobResponse> {
        return self.client.execute(operation: "GetMedicalTranscriptionJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about a medical vocabulary.
    public func getMedicalVocabulary(_ input: GetMedicalVocabularyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMedicalVocabularyResponse> {
        return self.client.execute(operation: "GetMedicalVocabulary", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a transcription job. To see the status of the job, check the TranscriptionJobStatus field. If the status is COMPLETED, the job is finished and you can find the results at the location specified in the TranscriptFileUri field. If you enable content redaction, the redacted transcript appears in RedactedTranscriptFileUri.
    public func getTranscriptionJob(_ input: GetTranscriptionJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTranscriptionJobResponse> {
        return self.client.execute(operation: "GetTranscriptionJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a vocabulary.
    public func getVocabulary(_ input: GetVocabularyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetVocabularyResponse> {
        return self.client.execute(operation: "GetVocabulary", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a vocabulary filter.
    public func getVocabularyFilter(_ input: GetVocabularyFilterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetVocabularyFilterResponse> {
        return self.client.execute(operation: "GetVocabularyFilter", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides more information about the call analytics categories that you've created. You can use the information in this list to find a specific category. You can then use the operation to get more information about it.
    public func listCallAnalyticsCategories(_ input: ListCallAnalyticsCategoriesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListCallAnalyticsCategoriesResponse> {
        return self.client.execute(operation: "ListCallAnalyticsCategories", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List call analytics jobs with a specified status or substring that matches their names.
    public func listCallAnalyticsJobs(_ input: ListCallAnalyticsJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListCallAnalyticsJobsResponse> {
        return self.client.execute(operation: "ListCallAnalyticsJobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides more information about the custom language models you've created. You can use the information in this list to find a specific custom language model. You can then use the operation to get more information about it.
    public func listLanguageModels(_ input: ListLanguageModelsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListLanguageModelsResponse> {
        return self.client.execute(operation: "ListLanguageModels", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists medical transcription jobs with a specified status or substring that matches their names.
    public func listMedicalTranscriptionJobs(_ input: ListMedicalTranscriptionJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMedicalTranscriptionJobsResponse> {
        return self.client.execute(operation: "ListMedicalTranscriptionJobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of vocabularies that match the specified criteria. If you don't enter a value in any of the request parameters, returns the entire list of vocabularies.
    public func listMedicalVocabularies(_ input: ListMedicalVocabulariesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMedicalVocabulariesResponse> {
        return self.client.execute(operation: "ListMedicalVocabularies", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all tags associated with a given transcription job, vocabulary, or resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists transcription jobs with the specified status.
    public func listTranscriptionJobs(_ input: ListTranscriptionJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTranscriptionJobsResponse> {
        return self.client.execute(operation: "ListTranscriptionJobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of vocabularies that match the specified criteria. If no criteria are specified, returns the entire list of vocabularies.
    public func listVocabularies(_ input: ListVocabulariesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListVocabulariesResponse> {
        return self.client.execute(operation: "ListVocabularies", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about vocabulary filters.
    public func listVocabularyFilters(_ input: ListVocabularyFiltersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListVocabularyFiltersResponse> {
        return self.client.execute(operation: "ListVocabularyFilters", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts an asynchronous analytics job that not only transcribes the audio recording of a caller and agent, but also returns additional insights. These insights include how quickly or loudly the caller or agent was speaking. To retrieve additional insights with your analytics jobs, create categories. A category is a way to classify analytics jobs based on attributes, such as a customer's sentiment or a particular phrase being used during the call. For more information, see the operation.
    public func startCallAnalyticsJob(_ input: StartCallAnalyticsJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartCallAnalyticsJobResponse> {
        return self.client.execute(operation: "StartCallAnalyticsJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a batch job to transcribe medical speech to text.
    public func startMedicalTranscriptionJob(_ input: StartMedicalTranscriptionJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartMedicalTranscriptionJobResponse> {
        return self.client.execute(operation: "StartMedicalTranscriptionJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts an asynchronous job to transcribe speech to text.
    public func startTranscriptionJob(_ input: StartTranscriptionJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartTranscriptionJobResponse> {
        return self.client.execute(operation: "StartTranscriptionJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Tags a Amazon Transcribe resource with the given list of tags.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes specified tags from a specified Amazon Transcribe resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the call analytics category with new values. The UpdateCallAnalyticsCategory operation overwrites all of the existing information with the values that you provide in the request.
    public func updateCallAnalyticsCategory(_ input: UpdateCallAnalyticsCategoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateCallAnalyticsCategoryResponse> {
        return self.client.execute(operation: "UpdateCallAnalyticsCategory", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a vocabulary with new values that you provide in a different text file from the one you used to create the vocabulary. The UpdateMedicalVocabulary operation overwrites all of the existing information with the values that you provide in the request.
    public func updateMedicalVocabulary(_ input: UpdateMedicalVocabularyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateMedicalVocabularyResponse> {
        return self.client.execute(operation: "UpdateMedicalVocabulary", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing vocabulary with new values. The UpdateVocabulary operation overwrites all of the existing information with the values that you provide in the request.
    public func updateVocabulary(_ input: UpdateVocabularyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateVocabularyResponse> {
        return self.client.execute(operation: "UpdateVocabulary", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a vocabulary filter with a new list of filtered words.
    public func updateVocabularyFilter(_ input: UpdateVocabularyFilterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateVocabularyFilterResponse> {
        return self.client.execute(operation: "UpdateVocabularyFilter", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension TranscribeService {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: TranscribeService, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
