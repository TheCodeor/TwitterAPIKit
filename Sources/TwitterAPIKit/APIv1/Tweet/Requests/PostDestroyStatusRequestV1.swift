import Foundation

/// https://developer.twitter.com/en/docs/twitter-api/v1/tweets/post-and-engage/api-reference/post-statuses-destroy-id
public class PostDestroyStatusRequestV1: TwitterAPIRequest {

    public let id: String
    public let trimUser: Bool?

    public var method: HTTPMethod {
        return .post
    }

    public var path: String {
        return "/1.1/statuses/destroy/\(id).json"
    }

    public var parameters: [String: Any]? {
        var p = [String: Any]()
        trimUser.map { p["trim_user"] = $0 }
        return p
    }

    public init(id: String, trimUser: Bool? = nil) {
        self.id = id
        self.trimUser = trimUser
    }

}