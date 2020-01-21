// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension ACMPCA {

    ///  Lists the private certificate authorities that you created by using the CreateCertificateAuthority action.
    public func listCertificateAuthoritiesPaginator(_ input: ListCertificateAuthoritiesRequest, onPage: @escaping ([CertificateAuthority], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listCertificateAuthorities, resultKey: \ListCertificateAuthoritiesResponse.certificateAuthorities, tokenKey: \ListCertificateAuthoritiesResponse.nextToken, onPage: onPage)
    }
    
    ///  Lists all the permissions, if any, that have been assigned by a private CA. Permissions can be granted with the CreatePermission action and revoked with the DeletePermission action.
    public func listPermissionsPaginator(_ input: ListPermissionsRequest, onPage: @escaping ([Permission], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPermissions, resultKey: \ListPermissionsResponse.permissions, tokenKey: \ListPermissionsResponse.nextToken, onPage: onPage)
    }
    
    ///  Lists the tags, if any, that are associated with your private CA. Tags are labels that you can use to identify and organize your CAs. Each tag consists of a key and an optional value. Call the TagCertificateAuthority action to add one or more tags to your CA. Call the UntagCertificateAuthority action to remove tags. 
    public func listTagsPaginator(_ input: ListTagsRequest, onPage: @escaping ([Tag], EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTags, resultKey: \ListTagsResponse.tags, tokenKey: \ListTagsResponse.nextToken, onPage: onPage)
    }
    
}

extension ACMPCA.ListCertificateAuthoritiesRequest: AWSPaginateStringToken {
    public init(_ original: ACMPCA.ListCertificateAuthoritiesRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension ACMPCA.ListPermissionsRequest: AWSPaginateStringToken {
    public init(_ original: ACMPCA.ListPermissionsRequest, token: String) {
        self.init(
            certificateAuthorityArn: original.certificateAuthorityArn, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension ACMPCA.ListTagsRequest: AWSPaginateStringToken {
    public init(_ original: ACMPCA.ListTagsRequest, token: String) {
        self.init(
            certificateAuthorityArn: original.certificateAuthorityArn, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


