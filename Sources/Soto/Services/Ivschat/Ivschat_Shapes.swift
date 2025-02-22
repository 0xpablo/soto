//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2022 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

import Foundation
import SotoCore

extension Ivschat {
    // MARK: Enums

    public enum ChatTokenCapability: String, CustomStringConvertible, Codable, _SotoSendable {
        case deleteMessage = "DELETE_MESSAGE"
        case disconnectUser = "DISCONNECT_USER"
        case sendMessage = "SEND_MESSAGE"
        public var description: String { return self.rawValue }
    }

    public enum FallbackResult: String, CustomStringConvertible, Codable, _SotoSendable {
        case allow = "ALLOW"
        case deny = "DENY"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct CreateChatTokenRequest: AWSEncodableShape {
        /// Application-provided attributes to encode into the token and attach to a chat session. Map keys and values can contain UTF-8 encoded text. The maximum length of this field is 1 KB total.
        public let attributes: [String: String]?
        /// Set of capabilities that the user is allowed to perform in the room. Default: None (the capability to view messages is implicitly included in all requests).
        public let capabilities: [ChatTokenCapability]?
        /// Identifier of the room that the client is trying to access. Currently this must be an ARN.
        public let roomIdentifier: String
        /// Session duration (in minutes), after which the session expires. Default: 60 (1 hour).
        public let sessionDurationInMinutes: Int?
        /// Application-provided ID that uniquely identifies the user associated with this token. This can be any UTF-8 encoded text.
        public let userId: String

        public init(attributes: [String: String]? = nil, capabilities: [ChatTokenCapability]? = nil, roomIdentifier: String, sessionDurationInMinutes: Int? = nil, userId: String) {
            self.attributes = attributes
            self.capabilities = capabilities
            self.roomIdentifier = roomIdentifier
            self.sessionDurationInMinutes = sessionDurationInMinutes
            self.userId = userId
        }

        public func validate(name: String) throws {
            try self.validate(self.roomIdentifier, name: "roomIdentifier", parent: name, max: 128)
            try self.validate(self.roomIdentifier, name: "roomIdentifier", parent: name, min: 1)
            try self.validate(self.roomIdentifier, name: "roomIdentifier", parent: name, pattern: "^arn:aws:ivschat:[a-z0-9-]+:[0-9]+:room/[a-zA-Z0-9-]+$")
            try self.validate(self.sessionDurationInMinutes, name: "sessionDurationInMinutes", parent: name, max: 180)
            try self.validate(self.sessionDurationInMinutes, name: "sessionDurationInMinutes", parent: name, min: 1)
            try self.validate(self.userId, name: "userId", parent: name, max: 128)
            try self.validate(self.userId, name: "userId", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case attributes
            case capabilities
            case roomIdentifier
            case sessionDurationInMinutes
            case userId
        }
    }

    public struct CreateChatTokenResponse: AWSDecodableShape {
        /// Time after which an end user's session is no longer valid. This is an ISO 8601 timestamp; note that this is returned as a string.
        @OptionalCustomCoding<ISO8601DateCoder>
        public var sessionExpirationTime: Date?
        /// The issued client token, encrypted.
        public let token: String?
        /// Time after which the token is no longer valid and cannot be used to connect to a room. This is an ISO 8601 timestamp; note that this is returned as a string.
        @OptionalCustomCoding<ISO8601DateCoder>
        public var tokenExpirationTime: Date?

        public init(sessionExpirationTime: Date? = nil, token: String? = nil, tokenExpirationTime: Date? = nil) {
            self.sessionExpirationTime = sessionExpirationTime
            self.token = token
            self.tokenExpirationTime = tokenExpirationTime
        }

        private enum CodingKeys: String, CodingKey {
            case sessionExpirationTime
            case token
            case tokenExpirationTime
        }
    }

    public struct CreateRoomRequest: AWSEncodableShape {
        /// Maximum number of characters in a single message. Messages are expected to be UTF-8 encoded and this limit applies specifically to rune/code-point count, not number of bytes. Default: 500.
        public let maximumMessageLength: Int?
        /// Maximum number of messages per second that can be sent to the room (by all clients). Default: 10.
        public let maximumMessageRatePerSecond: Int?
        /// Configuration information for optional review of messages.
        public let messageReviewHandler: MessageReviewHandler?
        /// Room name. The value does not need to be unique.
        public let name: String?
        /// Tags to attach to the resource. Array of maps, each of the form string:string (key:value). See Tagging AWS Resources for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS Chat has no constraints beyond what is documented there.
        public let tags: [String: String]?

        public init(maximumMessageLength: Int? = nil, maximumMessageRatePerSecond: Int? = nil, messageReviewHandler: MessageReviewHandler? = nil, name: String? = nil, tags: [String: String]? = nil) {
            self.maximumMessageLength = maximumMessageLength
            self.maximumMessageRatePerSecond = maximumMessageRatePerSecond
            self.messageReviewHandler = messageReviewHandler
            self.name = name
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.validate(self.maximumMessageLength, name: "maximumMessageLength", parent: name, max: 500)
            try self.validate(self.maximumMessageLength, name: "maximumMessageLength", parent: name, min: 1)
            try self.validate(self.maximumMessageRatePerSecond, name: "maximumMessageRatePerSecond", parent: name, max: 10)
            try self.validate(self.maximumMessageRatePerSecond, name: "maximumMessageRatePerSecond", parent: name, min: 1)
            try self.messageReviewHandler?.validate(name: "\(name).messageReviewHandler")
            try self.validate(self.name, name: "name", parent: name, max: 128)
            try self.validate(self.name, name: "name", parent: name, pattern: "^[a-zA-Z0-9-_]*$")
            try self.tags?.forEach {
                try validate($0.key, name: "tags.key", parent: name, max: 128)
                try validate($0.key, name: "tags.key", parent: name, min: 1)
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, max: 256)
            }
            try self.validate(self.tags, name: "tags", parent: name, max: 50)
        }

        private enum CodingKeys: String, CodingKey {
            case maximumMessageLength
            case maximumMessageRatePerSecond
            case messageReviewHandler
            case name
            case tags
        }
    }

    public struct CreateRoomResponse: AWSDecodableShape {
        /// Room ARN, assigned by the system.
        public let arn: String?
        /// Time when the room was created. This is an ISO 8601 timestamp; note that this is returned as a string.
        @OptionalCustomCoding<ISO8601DateCoder>
        public var createTime: Date?
        /// Room ID, generated by the system. This is a relative identifier, the part of the ARN that uniquely identifies the room.
        public let id: String?
        /// Maximum number of characters in a single message, from the request.
        public let maximumMessageLength: Int?
        /// Maximum number of messages per second that can be sent to the room (by all clients), from the request.
        public let maximumMessageRatePerSecond: Int?
        /// Configuration information for optional review of messages.
        public let messageReviewHandler: MessageReviewHandler?
        /// Room name, from the request (if specified).
        public let name: String?
        /// Tags attached to the resource, from the request.
        public let tags: [String: String]?
        /// Time of the room’s last update. This is an ISO 8601 timestamp; note that this is returned as a string.
        @OptionalCustomCoding<ISO8601DateCoder>
        public var updateTime: Date?

        public init(arn: String? = nil, createTime: Date? = nil, id: String? = nil, maximumMessageLength: Int? = nil, maximumMessageRatePerSecond: Int? = nil, messageReviewHandler: MessageReviewHandler? = nil, name: String? = nil, tags: [String: String]? = nil, updateTime: Date? = nil) {
            self.arn = arn
            self.createTime = createTime
            self.id = id
            self.maximumMessageLength = maximumMessageLength
            self.maximumMessageRatePerSecond = maximumMessageRatePerSecond
            self.messageReviewHandler = messageReviewHandler
            self.name = name
            self.tags = tags
            self.updateTime = updateTime
        }

        private enum CodingKeys: String, CodingKey {
            case arn
            case createTime
            case id
            case maximumMessageLength
            case maximumMessageRatePerSecond
            case messageReviewHandler
            case name
            case tags
            case updateTime
        }
    }

    public struct DeleteMessageRequest: AWSEncodableShape {
        /// ID of the message to be deleted. This is the Id field in the received message (see  Message (Subscribe) in the Chat Messaging API).
        public let id: String
        /// Reason for deleting the message.
        public let reason: String?
        /// Identifier of the room where the message should be deleted. Currently this must be an ARN.
        public let roomIdentifier: String

        public init(id: String, reason: String? = nil, roomIdentifier: String) {
            self.id = id
            self.reason = reason
            self.roomIdentifier = roomIdentifier
        }

        public func validate(name: String) throws {
            try self.validate(self.id, name: "id", parent: name, max: 12)
            try self.validate(self.id, name: "id", parent: name, min: 12)
            try self.validate(self.id, name: "id", parent: name, pattern: "^[a-zA-Z0-9]+$")
            try self.validate(self.reason, name: "reason", parent: name, max: 256)
            try self.validate(self.reason, name: "reason", parent: name, min: 1)
            try self.validate(self.roomIdentifier, name: "roomIdentifier", parent: name, max: 128)
            try self.validate(self.roomIdentifier, name: "roomIdentifier", parent: name, min: 1)
            try self.validate(self.roomIdentifier, name: "roomIdentifier", parent: name, pattern: "^arn:aws:ivschat:[a-z0-9-]+:[0-9]+:room/[a-zA-Z0-9-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case id
            case reason
            case roomIdentifier
        }
    }

    public struct DeleteMessageResponse: AWSDecodableShape {
        /// Operation identifier, generated by Amazon IVS Chat.
        public let id: String?

        public init(id: String? = nil) {
            self.id = id
        }

        private enum CodingKeys: String, CodingKey {
            case id
        }
    }

    public struct DeleteRoomRequest: AWSEncodableShape {
        /// Identifier of the room to be deleted. Currently this must be an ARN.
        public let identifier: String

        public init(identifier: String) {
            self.identifier = identifier
        }

        public func validate(name: String) throws {
            try self.validate(self.identifier, name: "identifier", parent: name, max: 128)
            try self.validate(self.identifier, name: "identifier", parent: name, min: 1)
            try self.validate(self.identifier, name: "identifier", parent: name, pattern: "^arn:aws:ivschat:[a-z0-9-]+:[0-9]+:room/[a-zA-Z0-9-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case identifier
        }
    }

    public struct DisconnectUserRequest: AWSEncodableShape {
        /// Reason for disconnecting the user.
        public let reason: String?
        /// Identifier of the room from which the user's clients should be disconnected. Currently this must be an ARN.
        public let roomIdentifier: String
        /// ID of the user (connection) to disconnect from the room.
        public let userId: String

        public init(reason: String? = nil, roomIdentifier: String, userId: String) {
            self.reason = reason
            self.roomIdentifier = roomIdentifier
            self.userId = userId
        }

        public func validate(name: String) throws {
            try self.validate(self.reason, name: "reason", parent: name, max: 256)
            try self.validate(self.reason, name: "reason", parent: name, min: 1)
            try self.validate(self.roomIdentifier, name: "roomIdentifier", parent: name, max: 128)
            try self.validate(self.roomIdentifier, name: "roomIdentifier", parent: name, min: 1)
            try self.validate(self.roomIdentifier, name: "roomIdentifier", parent: name, pattern: "^arn:aws:ivschat:[a-z0-9-]+:[0-9]+:room/[a-zA-Z0-9-]+$")
            try self.validate(self.userId, name: "userId", parent: name, max: 128)
            try self.validate(self.userId, name: "userId", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case reason
            case roomIdentifier
            case userId
        }
    }

    public struct DisconnectUserResponse: AWSDecodableShape {
        public init() {}
    }

    public struct GetRoomRequest: AWSEncodableShape {
        /// Identifier of the room for which the configuration is to be retrieved. Currently this must be an ARN.
        public let identifier: String

        public init(identifier: String) {
            self.identifier = identifier
        }

        public func validate(name: String) throws {
            try self.validate(self.identifier, name: "identifier", parent: name, max: 128)
            try self.validate(self.identifier, name: "identifier", parent: name, min: 1)
            try self.validate(self.identifier, name: "identifier", parent: name, pattern: "^arn:aws:ivschat:[a-z0-9-]+:[0-9]+:room/[a-zA-Z0-9-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case identifier
        }
    }

    public struct GetRoomResponse: AWSDecodableShape {
        /// Room ARN, from the request (if identifier was an ARN).
        public let arn: String?
        /// Time when the room was created. This is an ISO 8601 timestamp; note that this is returned as a string.
        @OptionalCustomCoding<ISO8601DateCoder>
        public var createTime: Date?
        /// Room ID, generated by the system. This is a relative identifier, the part of the ARN that uniquely identifies the room.
        public let id: String?
        /// Maximum number of characters in a single message. Messages are expected to be UTF-8 encoded and this limit applies specifically to rune/code-point count, not number of bytes. Default: 500.
        public let maximumMessageLength: Int?
        /// Maximum number of messages per second that can be sent to the room (by all clients). Default: 10.
        public let maximumMessageRatePerSecond: Int?
        /// Configuration information for optional review of messages.
        public let messageReviewHandler: MessageReviewHandler?
        /// Room name. The value does not need to be unique.
        public let name: String?
        /// Tags attached to the resource. Array of maps, each of the form string:string (key:value).
        public let tags: [String: String]?
        /// Time of the room’s last update. This is an ISO 8601 timestamp; note that this is returned as a string.
        @OptionalCustomCoding<ISO8601DateCoder>
        public var updateTime: Date?

        public init(arn: String? = nil, createTime: Date? = nil, id: String? = nil, maximumMessageLength: Int? = nil, maximumMessageRatePerSecond: Int? = nil, messageReviewHandler: MessageReviewHandler? = nil, name: String? = nil, tags: [String: String]? = nil, updateTime: Date? = nil) {
            self.arn = arn
            self.createTime = createTime
            self.id = id
            self.maximumMessageLength = maximumMessageLength
            self.maximumMessageRatePerSecond = maximumMessageRatePerSecond
            self.messageReviewHandler = messageReviewHandler
            self.name = name
            self.tags = tags
            self.updateTime = updateTime
        }

        private enum CodingKeys: String, CodingKey {
            case arn
            case createTime
            case id
            case maximumMessageLength
            case maximumMessageRatePerSecond
            case messageReviewHandler
            case name
            case tags
            case updateTime
        }
    }

    public struct ListRoomsRequest: AWSEncodableShape {
        /// Maximum number of rooms to return. Default: 50.
        public let maxResults: Int?
        /// Filters the list to match the specified message review handler URI.
        public let messageReviewHandlerUri: String?
        /// Filters the list to match the specified room name.
        public let name: String?
        /// The first room to retrieve. This is used for pagination; see the nextToken response field.
        public let nextToken: String?

        public init(maxResults: Int? = nil, messageReviewHandlerUri: String? = nil, name: String? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.messageReviewHandlerUri = messageReviewHandlerUri
            self.name = name
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 50)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.messageReviewHandlerUri, name: "messageReviewHandlerUri", parent: name, max: 170)
            try self.validate(self.messageReviewHandlerUri, name: "messageReviewHandlerUri", parent: name, pattern: "^$|^arn:aws:lambda:[a-z0-9-]+:[0-9]{12}:function:.+")
            try self.validate(self.name, name: "name", parent: name, max: 128)
            try self.validate(self.name, name: "name", parent: name, pattern: "^[a-zA-Z0-9-_]*$")
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 1024)
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults
            case messageReviewHandlerUri
            case name
            case nextToken
        }
    }

    public struct ListRoomsResponse: AWSDecodableShape {
        /// If there are more rooms than maxResults, use nextToken in the request to get the next set.
        public let nextToken: String?
        /// List of the matching rooms (summary information only).
        public let rooms: [RoomSummary]

        public init(nextToken: String? = nil, rooms: [RoomSummary]) {
            self.nextToken = nextToken
            self.rooms = rooms
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken
            case rooms
        }
    }

    public struct ListTagsForResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceArn", location: .uri("resourceArn"))
        ]

        /// The ARN of the resource to be retrieved. The ARN must be URL-encoded.
        public let resourceArn: String

        public init(resourceArn: String) {
            self.resourceArn = resourceArn
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, max: 128)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, min: 1)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, pattern: "^arn:aws:ivschat:[a-z0-9-]+:[0-9]+:[a-z-]/[a-zA-Z0-9-]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListTagsForResourceResponse: AWSDecodableShape {
        /// Tags attached to the resource, from the request.
        public let tags: [String: String]

        public init(tags: [String: String]) {
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case tags
        }
    }

    public struct MessageReviewHandler: AWSEncodableShape & AWSDecodableShape {
        /// Specifies the fallback behavior (whether the message is allowed or denied) if the handler does not return a valid response, encounters an error, or times out. (For the timeout period, see  Service Quotas.) If allowed, the message is delivered with returned content to all users connected to the room. If denied, the message is not delivered to any user. Default: ALLOW.
        public let fallbackResult: FallbackResult?
        /// Identifier of the message review handler. Currently this must be an ARN of a lambda function.
        public let uri: String?

        public init(fallbackResult: FallbackResult? = nil, uri: String? = nil) {
            self.fallbackResult = fallbackResult
            self.uri = uri
        }

        public func validate(name: String) throws {
            try self.validate(self.uri, name: "uri", parent: name, max: 170)
            try self.validate(self.uri, name: "uri", parent: name, pattern: "^$|^arn:aws:lambda:[a-z0-9-]+:[0-9]{12}:function:.+")
        }

        private enum CodingKeys: String, CodingKey {
            case fallbackResult
            case uri
        }
    }

    public struct RoomSummary: AWSDecodableShape {
        /// Room ARN.
        public let arn: String?
        /// Time when the room was created. This is an ISO 8601 timestamp; note that this is returned as a string.
        @OptionalCustomCoding<ISO8601DateCoder>
        public var createTime: Date?
        /// Room ID, generated by the system. This is a relative identifier, the part of the ARN that uniquely identifies the room.
        public let id: String?
        /// Configuration information for optional review of messages.
        public let messageReviewHandler: MessageReviewHandler?
        /// Room name. The value does not need to be unique.
        public let name: String?
        /// Tags attached to the resource. See Tagging AWS Resources for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS Chat has no constraints beyond what is documented there.
        public let tags: [String: String]?
        /// Time of the room’s last update. This is an ISO 8601 timestamp; note that this is returned as a string.
        @OptionalCustomCoding<ISO8601DateCoder>
        public var updateTime: Date?

        public init(arn: String? = nil, createTime: Date? = nil, id: String? = nil, messageReviewHandler: MessageReviewHandler? = nil, name: String? = nil, tags: [String: String]? = nil, updateTime: Date? = nil) {
            self.arn = arn
            self.createTime = createTime
            self.id = id
            self.messageReviewHandler = messageReviewHandler
            self.name = name
            self.tags = tags
            self.updateTime = updateTime
        }

        private enum CodingKeys: String, CodingKey {
            case arn
            case createTime
            case id
            case messageReviewHandler
            case name
            case tags
            case updateTime
        }
    }

    public struct SendEventRequest: AWSEncodableShape {
        /// Application-defined metadata to attach to the event sent to clients. The maximum length of the metadata is 1 KB total.
        public let attributes: [String: String]?
        /// Application-defined name of the event to send to clients.
        public let eventName: String
        /// Identifier of the room to which the event will be sent. Currently this must be an ARN.
        public let roomIdentifier: String

        public init(attributes: [String: String]? = nil, eventName: String, roomIdentifier: String) {
            self.attributes = attributes
            self.eventName = eventName
            self.roomIdentifier = roomIdentifier
        }

        public func validate(name: String) throws {
            try self.validate(self.eventName, name: "eventName", parent: name, max: 100)
            try self.validate(self.eventName, name: "eventName", parent: name, min: 1)
            try self.validate(self.roomIdentifier, name: "roomIdentifier", parent: name, max: 128)
            try self.validate(self.roomIdentifier, name: "roomIdentifier", parent: name, min: 1)
            try self.validate(self.roomIdentifier, name: "roomIdentifier", parent: name, pattern: "^arn:aws:ivschat:[a-z0-9-]+:[0-9]+:room/[a-zA-Z0-9-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case attributes
            case eventName
            case roomIdentifier
        }
    }

    public struct SendEventResponse: AWSDecodableShape {
        /// An identifier generated by Amazon IVS Chat. This identifier must be used in subsequent operations for this message, such as DeleteMessage.
        public let id: String?

        public init(id: String? = nil) {
            self.id = id
        }

        private enum CodingKeys: String, CodingKey {
            case id
        }
    }

    public struct TagResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceArn", location: .uri("resourceArn"))
        ]

        /// The ARN of the resource to be tagged. The ARN must be URL-encoded.
        public let resourceArn: String
        /// Array of tags to be added or updated. See Tagging AWS Resources for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS Chat has no constraints beyond what is documented there.
        public let tags: [String: String]

        public init(resourceArn: String, tags: [String: String]) {
            self.resourceArn = resourceArn
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, max: 128)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, min: 1)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, pattern: "^arn:aws:ivschat:[a-z0-9-]+:[0-9]+:[a-z-]/[a-zA-Z0-9-]+$")
            try self.tags.forEach {
                try validate($0.key, name: "tags.key", parent: name, max: 128)
                try validate($0.key, name: "tags.key", parent: name, min: 1)
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, max: 256)
            }
            try self.validate(self.tags, name: "tags", parent: name, max: 50)
        }

        private enum CodingKeys: String, CodingKey {
            case tags
        }
    }

    public struct TagResourceResponse: AWSDecodableShape {
        public init() {}
    }

    public struct UntagResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceArn", location: .uri("resourceArn")),
            AWSMemberEncoding(label: "tagKeys", location: .querystring("tagKeys"))
        ]

        /// The ARN of the resource to be untagged. The ARN must be URL-encoded.
        public let resourceArn: String
        /// Array of tags to be removed. See Tagging AWS Resources for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS Chat has no constraints beyond what is documented there.
        public let tagKeys: [String]

        public init(resourceArn: String, tagKeys: [String]) {
            self.resourceArn = resourceArn
            self.tagKeys = tagKeys
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, max: 128)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, min: 1)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, pattern: "^arn:aws:ivschat:[a-z0-9-]+:[0-9]+:[a-z-]/[a-zA-Z0-9-]+$")
            try self.tagKeys.forEach {
                try validate($0, name: "tagKeys[]", parent: name, max: 128)
                try validate($0, name: "tagKeys[]", parent: name, min: 1)
            }
            try self.validate(self.tagKeys, name: "tagKeys", parent: name, max: 50)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct UntagResourceResponse: AWSDecodableShape {
        public init() {}
    }

    public struct UpdateRoomRequest: AWSEncodableShape {
        /// Identifier of the room to be updated. Currently this must be an ARN.
        public let identifier: String
        /// The maximum number of characters in a single message. Messages are expected to be UTF-8 encoded and this limit applies specifically to rune/code-point count, not number of bytes. Default: 500.
        public let maximumMessageLength: Int?
        /// Maximum number of messages per second that can be sent to the room (by all clients). Default: 10.
        public let maximumMessageRatePerSecond: Int?
        /// Configuration information for optional review of messages. Specify an empty uri string to disassociate a message review handler from the specified room.
        public let messageReviewHandler: MessageReviewHandler?
        /// Room name. The value does not need to be unique.
        public let name: String?

        public init(identifier: String, maximumMessageLength: Int? = nil, maximumMessageRatePerSecond: Int? = nil, messageReviewHandler: MessageReviewHandler? = nil, name: String? = nil) {
            self.identifier = identifier
            self.maximumMessageLength = maximumMessageLength
            self.maximumMessageRatePerSecond = maximumMessageRatePerSecond
            self.messageReviewHandler = messageReviewHandler
            self.name = name
        }

        public func validate(name: String) throws {
            try self.validate(self.identifier, name: "identifier", parent: name, max: 128)
            try self.validate(self.identifier, name: "identifier", parent: name, min: 1)
            try self.validate(self.identifier, name: "identifier", parent: name, pattern: "^arn:aws:ivschat:[a-z0-9-]+:[0-9]+:room/[a-zA-Z0-9-]+$")
            try self.validate(self.maximumMessageLength, name: "maximumMessageLength", parent: name, max: 500)
            try self.validate(self.maximumMessageLength, name: "maximumMessageLength", parent: name, min: 1)
            try self.validate(self.maximumMessageRatePerSecond, name: "maximumMessageRatePerSecond", parent: name, max: 10)
            try self.validate(self.maximumMessageRatePerSecond, name: "maximumMessageRatePerSecond", parent: name, min: 1)
            try self.messageReviewHandler?.validate(name: "\(name).messageReviewHandler")
            try self.validate(self.name, name: "name", parent: name, max: 128)
            try self.validate(self.name, name: "name", parent: name, pattern: "^[a-zA-Z0-9-_]*$")
        }

        private enum CodingKeys: String, CodingKey {
            case identifier
            case maximumMessageLength
            case maximumMessageRatePerSecond
            case messageReviewHandler
            case name
        }
    }

    public struct UpdateRoomResponse: AWSDecodableShape {
        /// Room ARN, from the request (if identifier was an ARN).
        public let arn: String?
        /// Time when the room was created. This is an ISO 8601 timestamp; note that this is returned as a string.
        @OptionalCustomCoding<ISO8601DateCoder>
        public var createTime: Date?
        /// Room ID, generated by the system. This is a relative identifier, the part of the ARN that uniquely identifies the room.
        public let id: String?
        /// Maximum number of characters in a single message, from the request.
        public let maximumMessageLength: Int?
        /// Maximum number of messages per second that can be sent to the room (by all clients), from the request.
        public let maximumMessageRatePerSecond: Int?
        /// Configuration information for optional review of messages.
        public let messageReviewHandler: MessageReviewHandler?
        /// Room name, from the request.
        public let name: String?
        /// Tags attached to the resource.
        public let tags: [String: String]?
        /// Time of the room’s last update. This is an ISO 8601 timestamp; note that this is returned as a string.
        @OptionalCustomCoding<ISO8601DateCoder>
        public var updateTime: Date?

        public init(arn: String? = nil, createTime: Date? = nil, id: String? = nil, maximumMessageLength: Int? = nil, maximumMessageRatePerSecond: Int? = nil, messageReviewHandler: MessageReviewHandler? = nil, name: String? = nil, tags: [String: String]? = nil, updateTime: Date? = nil) {
            self.arn = arn
            self.createTime = createTime
            self.id = id
            self.maximumMessageLength = maximumMessageLength
            self.maximumMessageRatePerSecond = maximumMessageRatePerSecond
            self.messageReviewHandler = messageReviewHandler
            self.name = name
            self.tags = tags
            self.updateTime = updateTime
        }

        private enum CodingKeys: String, CodingKey {
            case arn
            case createTime
            case id
            case maximumMessageLength
            case maximumMessageRatePerSecond
            case messageReviewHandler
            case name
            case tags
            case updateTime
        }
    }
}
