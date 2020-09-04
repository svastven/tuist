import Foundation
import RxSwift

/// Async queue dispatcher.
public protocol AsyncQueueDispatcher {
    /// Identifier.
    var identifier: String { get }

    /// Dispatches a given event.
    /// - Parameter event: Event to be dispatched.
    func dispatch(event: AsyncQueueEvent) throws

    /// Dispatch a persisted event.
    /// - Parameters:
    ///   - id: Id of the event.
    ///   - date: Date of the event.
    ///   - data: Serialized data of the event.
    func dispatch(id: UUID, date: Date, data: Data)
}
