import Foundation
import enum TSCBasic.ProcessEnv
import enum TuistSupport.LogOutput
import TuistSupport
import TuistAsyncQueue

if CommandLine.arguments.contains("--verbose") { try? ProcessEnv.setVar(Constants.EnvironmentVariables.verbose, value: "true") }

LogOutput.bootstrap()

import TuistKit

try AsyncQueue.run {
    TuistCommand.main()
}
