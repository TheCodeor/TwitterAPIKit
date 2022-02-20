import Foundation

public protocol UserAPIv2 {
    /// https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users-id
    func getUser(
        _ request: GetUserRequestV2
    ) -> TwitterAPISessionJSONTask

    /// https://developer.twitter.com/en/docs/twitter-api/users/lookup/api-reference/get-users
    func getUsers(
        _ request: GetUsersRequestV2
    ) -> TwitterAPISessionJSONTask
}

extension TwitterAPIKit.TwitterAPIImplV2: UserAPIv2 {

    func getUser(_ request: GetUserRequestV2) -> TwitterAPISessionJSONTask {
        return session.send(request)
    }

    func getUsers(_ request: GetUsersRequestV2) -> TwitterAPISessionJSONTask {
        return session.send(request)
    }
}
