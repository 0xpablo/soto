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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

#if compiler(>=5.5) && canImport(_Concurrency)

import SotoCore

// MARK: Paginators

@available(macOS 9999, iOS 9999, watchOS 9999, tvOS 9999, *)
extension RedshiftData {
    ///  Describes the detailed information about a table from metadata in the cluster. The information includes its columns.  A token is returned to page through the column list. Depending on the authorization method, use one of the following combinations of request parameters:    Secrets Manager - specify the Amazon Resource Name (ARN) of the secret, the database name, and the  cluster identifier that matches the cluster in the secret.    Temporary credentials - specify the cluster identifier, the database name, and the database user name. Permission to call the redshift:GetClusterCredentials operation is required to use this method.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeTablePaginator(
        _ input: DescribeTableRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeTableRequest, DescribeTableResponse> {
        return .init(
            input: input,
            command: describeTable,
            inputKey: \DescribeTableRequest.nextToken,
            outputKey: \DescribeTableResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Fetches the temporarily cached result of an SQL statement.  A token is returned to page through the statement results.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getStatementResultPaginator(
        _ input: GetStatementResultRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetStatementResultRequest, GetStatementResultResponse> {
        return .init(
            input: input,
            command: getStatementResult,
            inputKey: \GetStatementResultRequest.nextToken,
            outputKey: \GetStatementResultResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List the databases in a cluster.  A token is returned to page through the database list. Depending on the authorization method, use one of the following combinations of request parameters:    Secrets Manager - specify the Amazon Resource Name (ARN) of the secret, the database name, and the  cluster identifier that matches the cluster in the secret.    Temporary credentials - specify the cluster identifier, the database name, and the database user name. Permission to call the redshift:GetClusterCredentials operation is required to use this method.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDatabasesPaginator(
        _ input: ListDatabasesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDatabasesRequest, ListDatabasesResponse> {
        return .init(
            input: input,
            command: listDatabases,
            inputKey: \ListDatabasesRequest.nextToken,
            outputKey: \ListDatabasesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the schemas in a database.  A token is returned to page through the schema list.  Depending on the authorization method, use one of the following combinations of request parameters:    Secrets Manager - specify the Amazon Resource Name (ARN) of the secret, the database name, and the  cluster identifier that matches the cluster in the secret.    Temporary credentials - specify the cluster identifier, the database name, and the database user name. Permission to call the redshift:GetClusterCredentials operation is required to use this method.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSchemasPaginator(
        _ input: ListSchemasRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSchemasRequest, ListSchemasResponse> {
        return .init(
            input: input,
            command: listSchemas,
            inputKey: \ListSchemasRequest.nextToken,
            outputKey: \ListSchemasResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List of SQL statements. By default, only finished statements are shown.  A token is returned to page through the statement list.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listStatementsPaginator(
        _ input: ListStatementsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListStatementsRequest, ListStatementsResponse> {
        return .init(
            input: input,
            command: listStatements,
            inputKey: \ListStatementsRequest.nextToken,
            outputKey: \ListStatementsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List the tables in a database. If neither SchemaPattern nor TablePattern are specified, then  all tables in the database are returned. A token is returned to page through the table list.  Depending on the authorization method, use one of the following combinations of request parameters:    Secrets Manager - specify the Amazon Resource Name (ARN) of the secret, the database name, and the  cluster identifier that matches the cluster in the secret.    Temporary credentials - specify the cluster identifier, the database name, and the database user name. Permission to call the redshift:GetClusterCredentials operation is required to use this method.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTablesPaginator(
        _ input: ListTablesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTablesRequest, ListTablesResponse> {
        return .init(
            input: input,
            command: listTables,
            inputKey: \ListTablesRequest.nextToken,
            outputKey: \ListTablesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)