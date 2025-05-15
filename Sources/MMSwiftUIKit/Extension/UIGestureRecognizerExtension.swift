//
//  UIGestureRecognizerExt.swift
//  Test
//
//  Created by 小君夜麻吕 on 2025/5/8.
//

import Foundation
import UIKit
import Combine

public extension UIGestureRecognizer {
    
    /// 手势事件 Publisher
    struct GesturePublisher: Publisher {
        public typealias Output = UIGestureRecognizer
        public typealias Failure = Never
        
        private let recognizer: UIGestureRecognizer
        
        init(recognizer: UIGestureRecognizer) {
            self.recognizer = recognizer
        }
        
        public func receive<S>(subscriber: S) where S : Subscriber, Never == S.Failure, UIGestureRecognizer == S.Input {
            let subscription = GestureSubscription(
                subscriber: subscriber,
                recognizer: recognizer
            )
            subscriber.receive(subscription: subscription)
        }
    }
    
    /// 创建手势事件 Publisher
    var publisher: GesturePublisher {
        GesturePublisher(recognizer: self)
    }
    
    
    // MARK: - Subscription
    private final class GestureSubscription<S: Subscriber>: Subscription
    where S.Input == UIGestureRecognizer, S.Failure == Never {
        private var subscriber: S?
        private let recognizer: UIGestureRecognizer
        
        init(subscriber: S, recognizer: UIGestureRecognizer) {
            self.subscriber = subscriber
            self.recognizer = recognizer
            recognizer.addTarget(self, action: #selector(gestureHandler))
        }
        
        @objc private func gestureHandler() {
            _ = subscriber?.receive(recognizer)
        }
        
        func request(_ demand: Subscribers.Demand) {
            // 无需实现具体需求管理
        }
        
        func cancel() {
            subscriber = nil
            recognizer.removeTarget(self, action: nil)
        }
    }
}
