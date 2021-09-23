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

#if compiler(>=5.5) && canImport(_Concurrency)

import SotoCore

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension MediaLive {
    // MARK: Async API Calls

    /// Accept an incoming input device transfer. The ownership of the device will transfer to your AWS account.
    public func acceptInputDeviceTransfer(_ input: AcceptInputDeviceTransferRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AcceptInputDeviceTransferResponse {
        return try await self.client.execute(operation: "AcceptInputDeviceTransfer", path: "/prod/inputDevices/{inputDeviceId}/accept", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts delete of resources.
    public func batchDelete(_ input: BatchDeleteRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDeleteResponse {
        return try await self.client.execute(operation: "BatchDelete", path: "/prod/batch/delete", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts existing resources
    public func batchStart(_ input: BatchStartRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchStartResponse {
        return try await self.client.execute(operation: "BatchStart", path: "/prod/batch/start", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops running resources
    public func batchStop(_ input: BatchStopRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchStopResponse {
        return try await self.client.execute(operation: "BatchStop", path: "/prod/batch/stop", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update a channel schedule
    public func batchUpdateSchedule(_ input: BatchUpdateScheduleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchUpdateScheduleResponse {
        return try await self.client.execute(operation: "BatchUpdateSchedule", path: "/prod/channels/{channelId}/schedule", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Cancel an input device transfer that you have requested.
    public func cancelInputDeviceTransfer(_ input: CancelInputDeviceTransferRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelInputDeviceTransferResponse {
        return try await self.client.execute(operation: "CancelInputDeviceTransfer", path: "/prod/inputDevices/{inputDeviceId}/cancel", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new channel
    public func createChannel(_ input: CreateChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateChannelResponse {
        return try await self.client.execute(operation: "CreateChannel", path: "/prod/channels", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create an input
    public func createInput(_ input: CreateInputRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInputResponse {
        return try await self.client.execute(operation: "CreateInput", path: "/prod/inputs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a Input Security Group
    public func createInputSecurityGroup(_ input: CreateInputSecurityGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInputSecurityGroupResponse {
        return try await self.client.execute(operation: "CreateInputSecurityGroup", path: "/prod/inputSecurityGroups", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a new multiplex.
    public func createMultiplex(_ input: CreateMultiplexRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMultiplexResponse {
        return try await self.client.execute(operation: "CreateMultiplex", path: "/prod/multiplexes", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a new program in the multiplex.
    public func createMultiplexProgram(_ input: CreateMultiplexProgramRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMultiplexProgramResponse {
        return try await self.client.execute(operation: "CreateMultiplexProgram", path: "/prod/multiplexes/{multiplexId}/programs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a partner input
    public func createPartnerInput(_ input: CreatePartnerInputRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePartnerInputResponse {
        return try await self.client.execute(operation: "CreatePartnerInput", path: "/prod/inputs/{inputId}/partners", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create tags for a resource
    public func createTags(_ input: CreateTagsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "CreateTags", path: "/prod/tags/{resource-arn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts deletion of channel. The associated outputs are also deleted.
    public func deleteChannel(_ input: DeleteChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteChannelResponse {
        return try await self.client.execute(operation: "DeleteChannel", path: "/prod/channels/{channelId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the input end point
    public func deleteInput(_ input: DeleteInputRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInputResponse {
        return try await self.client.execute(operation: "DeleteInput", path: "/prod/inputs/{inputId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Input Security Group
    public func deleteInputSecurityGroup(_ input: DeleteInputSecurityGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInputSecurityGroupResponse {
        return try await self.client.execute(operation: "DeleteInputSecurityGroup", path: "/prod/inputSecurityGroups/{inputSecurityGroupId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete a multiplex. The multiplex must be idle.
    public func deleteMultiplex(_ input: DeleteMultiplexRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMultiplexResponse {
        return try await self.client.execute(operation: "DeleteMultiplex", path: "/prod/multiplexes/{multiplexId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete a program from a multiplex.
    public func deleteMultiplexProgram(_ input: DeleteMultiplexProgramRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMultiplexProgramResponse {
        return try await self.client.execute(operation: "DeleteMultiplexProgram", path: "/prod/multiplexes/{multiplexId}/programs/{programName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete an expired reservation.
    public func deleteReservation(_ input: DeleteReservationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteReservationResponse {
        return try await self.client.execute(operation: "DeleteReservation", path: "/prod/reservations/{reservationId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete all schedule actions on a channel.
    public func deleteSchedule(_ input: DeleteScheduleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteScheduleResponse {
        return try await self.client.execute(operation: "DeleteSchedule", path: "/prod/channels/{channelId}/schedule", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags for a resource
    public func deleteTags(_ input: DeleteTagsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteTags", path: "/prod/tags/{resource-arn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets details about a channel
    public func describeChannel(_ input: DescribeChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeChannelResponse {
        return try await self.client.execute(operation: "DescribeChannel", path: "/prod/channels/{channelId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Produces details about an input
    public func describeInput(_ input: DescribeInputRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInputResponse {
        return try await self.client.execute(operation: "DescribeInput", path: "/prod/inputs/{inputId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the details for the input device
    public func describeInputDevice(_ input: DescribeInputDeviceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInputDeviceResponse {
        return try await self.client.execute(operation: "DescribeInputDevice", path: "/prod/inputDevices/{inputDeviceId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get the latest thumbnail data for the input device.
    public func describeInputDeviceThumbnail(_ input: DescribeInputDeviceThumbnailRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInputDeviceThumbnailResponse {
        return try await self.client.execute(operation: "DescribeInputDeviceThumbnail", path: "/prod/inputDevices/{inputDeviceId}/thumbnailData", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Produces a summary of an Input Security Group
    public func describeInputSecurityGroup(_ input: DescribeInputSecurityGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInputSecurityGroupResponse {
        return try await self.client.execute(operation: "DescribeInputSecurityGroup", path: "/prod/inputSecurityGroups/{inputSecurityGroupId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets details about a multiplex.
    public func describeMultiplex(_ input: DescribeMultiplexRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMultiplexResponse {
        return try await self.client.execute(operation: "DescribeMultiplex", path: "/prod/multiplexes/{multiplexId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get the details for a program in a multiplex.
    public func describeMultiplexProgram(_ input: DescribeMultiplexProgramRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMultiplexProgramResponse {
        return try await self.client.execute(operation: "DescribeMultiplexProgram", path: "/prod/multiplexes/{multiplexId}/programs/{programName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get details for an offering.
    public func describeOffering(_ input: DescribeOfferingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOfferingResponse {
        return try await self.client.execute(operation: "DescribeOffering", path: "/prod/offerings/{offeringId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get details for a reservation.
    public func describeReservation(_ input: DescribeReservationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReservationResponse {
        return try await self.client.execute(operation: "DescribeReservation", path: "/prod/reservations/{reservationId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get a channel schedule
    public func describeSchedule(_ input: DescribeScheduleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScheduleResponse {
        return try await self.client.execute(operation: "DescribeSchedule", path: "/prod/channels/{channelId}/schedule", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Produces list of channels that have been created
    public func listChannels(_ input: ListChannelsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListChannelsResponse {
        return try await self.client.execute(operation: "ListChannels", path: "/prod/channels", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List input devices that are currently being transferred. List input devices that you are transferring from your AWS account or input devices that another AWS account is transferring to you.
    public func listInputDeviceTransfers(_ input: ListInputDeviceTransfersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListInputDeviceTransfersResponse {
        return try await self.client.execute(operation: "ListInputDeviceTransfers", path: "/prod/inputDeviceTransfers", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List input devices
    public func listInputDevices(_ input: ListInputDevicesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListInputDevicesResponse {
        return try await self.client.execute(operation: "ListInputDevices", path: "/prod/inputDevices", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Produces a list of Input Security Groups for an account
    public func listInputSecurityGroups(_ input: ListInputSecurityGroupsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListInputSecurityGroupsResponse {
        return try await self.client.execute(operation: "ListInputSecurityGroups", path: "/prod/inputSecurityGroups", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Produces list of inputs that have been created
    public func listInputs(_ input: ListInputsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListInputsResponse {
        return try await self.client.execute(operation: "ListInputs", path: "/prod/inputs", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the programs that currently exist for a specific multiplex.
    public func listMultiplexPrograms(_ input: ListMultiplexProgramsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListMultiplexProgramsResponse {
        return try await self.client.execute(operation: "ListMultiplexPrograms", path: "/prod/multiplexes/{multiplexId}/programs", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieve a list of the existing multiplexes.
    public func listMultiplexes(_ input: ListMultiplexesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListMultiplexesResponse {
        return try await self.client.execute(operation: "ListMultiplexes", path: "/prod/multiplexes", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List offerings available for purchase.
    public func listOfferings(_ input: ListOfferingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListOfferingsResponse {
        return try await self.client.execute(operation: "ListOfferings", path: "/prod/offerings", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List purchased reservations.
    public func listReservations(_ input: ListReservationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListReservationsResponse {
        return try await self.client.execute(operation: "ListReservations", path: "/prod/reservations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Produces list of tags that have been created for a resource
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/prod/tags/{resource-arn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Purchase an offering and create a reservation.
    public func purchaseOffering(_ input: PurchaseOfferingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PurchaseOfferingResponse {
        return try await self.client.execute(operation: "PurchaseOffering", path: "/prod/offerings/{offeringId}/purchase", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Reject the transfer of the specified input device to your AWS account.
    public func rejectInputDeviceTransfer(_ input: RejectInputDeviceTransferRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RejectInputDeviceTransferResponse {
        return try await self.client.execute(operation: "RejectInputDeviceTransfer", path: "/prod/inputDevices/{inputDeviceId}/reject", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts an existing channel
    public func startChannel(_ input: StartChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartChannelResponse {
        return try await self.client.execute(operation: "StartChannel", path: "/prod/channels/{channelId}/start", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Start (run) the multiplex. Starting the multiplex does not start the channels. You must explicitly start each channel.
    public func startMultiplex(_ input: StartMultiplexRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartMultiplexResponse {
        return try await self.client.execute(operation: "StartMultiplex", path: "/prod/multiplexes/{multiplexId}/start", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops a running channel
    public func stopChannel(_ input: StopChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopChannelResponse {
        return try await self.client.execute(operation: "StopChannel", path: "/prod/channels/{channelId}/stop", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops a running multiplex. If the multiplex isn't running, this action has no effect.
    public func stopMultiplex(_ input: StopMultiplexRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopMultiplexResponse {
        return try await self.client.execute(operation: "StopMultiplex", path: "/prod/multiplexes/{multiplexId}/stop", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Start an input device transfer to another AWS account. After you make the request, the other account must accept or reject the transfer.
    public func transferInputDevice(_ input: TransferInputDeviceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TransferInputDeviceResponse {
        return try await self.client.execute(operation: "TransferInputDevice", path: "/prod/inputDevices/{inputDeviceId}/transfer", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a channel.
    public func updateChannel(_ input: UpdateChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateChannelResponse {
        return try await self.client.execute(operation: "UpdateChannel", path: "/prod/channels/{channelId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Changes the class of the channel.
    public func updateChannelClass(_ input: UpdateChannelClassRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateChannelClassResponse {
        return try await self.client.execute(operation: "UpdateChannelClass", path: "/prod/channels/{channelId}/channelClass", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an input.
    public func updateInput(_ input: UpdateInputRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateInputResponse {
        return try await self.client.execute(operation: "UpdateInput", path: "/prod/inputs/{inputId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the parameters for the input device.
    public func updateInputDevice(_ input: UpdateInputDeviceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateInputDeviceResponse {
        return try await self.client.execute(operation: "UpdateInputDevice", path: "/prod/inputDevices/{inputDeviceId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update an Input Security Group's Whilelists.
    public func updateInputSecurityGroup(_ input: UpdateInputSecurityGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateInputSecurityGroupResponse {
        return try await self.client.execute(operation: "UpdateInputSecurityGroup", path: "/prod/inputSecurityGroups/{inputSecurityGroupId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a multiplex.
    public func updateMultiplex(_ input: UpdateMultiplexRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateMultiplexResponse {
        return try await self.client.execute(operation: "UpdateMultiplex", path: "/prod/multiplexes/{multiplexId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update a program in a multiplex.
    public func updateMultiplexProgram(_ input: UpdateMultiplexProgramRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateMultiplexProgramResponse {
        return try await self.client.execute(operation: "UpdateMultiplexProgram", path: "/prod/multiplexes/{multiplexId}/programs/{programName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update reservation.
    public func updateReservation(_ input: UpdateReservationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateReservationResponse {
        return try await self.client.execute(operation: "UpdateReservation", path: "/prod/reservations/{reservationId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    // MARK: Streaming Async API Calls

    /// Get the latest thumbnail data for the input device.
    public func describeInputDeviceThumbnailStreaming(_ input: DescribeInputDeviceThumbnailRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil, _ stream: @escaping (ByteBuffer, EventLoop) -> EventLoopFuture<Void>) async throws -> DescribeInputDeviceThumbnailResponse {
        return try await self.client.execute(operation: "DescribeInputDeviceThumbnail", path: "/prod/inputDevices/{inputDeviceId}/thumbnailData", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop, stream: stream)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
