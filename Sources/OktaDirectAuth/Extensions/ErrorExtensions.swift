//
// Copyright (c) 2023-Present, Okta, Inc. and/or its affiliates. All rights reserved.
// The Okta software accompanied by this notice is provided pursuant to the Apache License, Version 2.0 (the "License.")
//
// You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0.
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
// WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//
// See the License for the specific language governing permissions and limitations under the License.
//

import Foundation

extension DirectAuthenticationFlowError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .pollingTimeoutExceeded:
            return NSLocalizedString("polling_timeout_exceeded",
                                     tableName: "OktaOAuth2",
                                     bundle: .oktaDirectAuth,
                                     comment: "Polling timeout exceeded")
        case .missingArguments(let arguments):
            return String.localizedStringWithFormat(
                NSLocalizedString("missing_arguments",
                                  tableName: "OktaDirectAuth",
                                  bundle: .oktaDirectAuth,
                                  comment: ""),
                arguments.joined(separator: ", ")
            )
        case .oauth2(error: let error):
            return error.localizedDescription
        case .network(error: let error):
            return error.localizedDescription
        case .server(error: let error):
            return error.localizedDescription
        case .other(error: let error):
            return error.localizedDescription
        }
    }
}
