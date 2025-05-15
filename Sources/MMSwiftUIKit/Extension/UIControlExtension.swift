//
//  UIControlExt.swift
//  Test
//
//  Created by 小君夜麻吕 on 2025/5/8.
//

import Foundation
import UIKit
import Combine

public extension UIControl {
    
    /// 通用事件 Publisher（返回控件本身）
    func publisherControlEvent(_ events: UIControl.Event) -> AnyPublisher<UIControl, Never> {
        ControlEventPublisher(control: self, events: events)
            .eraseToAnyPublisher()
    }
    
    /// Publisher 实现
    private struct ControlEventPublisher<Control: UIControl>: Publisher {
        typealias Output = Control
        typealias Failure = Never
        
        private let control: Control
        private let events: UIControl.Event
        
        init(control: Control, events: UIControl.Event) {
            self.control = control
            self.events = events
        }
        
        func receive<S>(subscriber: S) where S : Subscriber, Never == S.Failure, Control == S.Input {
            let subscription = ControlEventSubscription(
                subscriber: subscriber,
                control: control,
                events: events
            )
            subscriber.receive(subscription: subscription)
        }
    }

    /// Subscription 实现
    private final class ControlEventSubscription<S: Subscriber, Control: UIControl>: Subscription where S.Input == Control, S.Failure == Never {
        private var subscriber: S?
        private weak var control: Control?
        private let events: UIControl.Event
        
        init(subscriber: S, control: Control, events: UIControl.Event) {
            self.subscriber = subscriber
            self.control = control
            self.events = events
            control.addTarget(self, action: #selector(eventHandler), for: events)
        }
        
        @objc private func eventHandler() {
            guard let control = control else { return }
            _ = subscriber?.receive(control)
        }
        
        func request(_ demand: Subscribers.Demand) {}
        
        func cancel() {
            control?.removeTarget(self, action: #selector(eventHandler), for: events)
            subscriber = nil
        }
    }
}
