//
//  CombineExtension.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/30.
//

import Foundation
import Combine

//didSet方法之后再回调的包装器，区别于combine的 @Publisher willSet回调
@propertyWrapper public struct MMPublisher<Value> {
    private let didChangeSubject: any Subject<Value, Never>
    public let projectedValue: AnyPublisher<Value, Never> //通过$取得
    public let valueDidChange: AnyPublisher<Void, Never> //_property.valueDidChange获取值改变的轻量事件(不获取值)
    public var wrappedValue: Value { didSet{didChangeSubject.send(wrappedValue)} }
    public init(wrappedValue: Value, emitCurrentValue: Bool = false) {
        self.wrappedValue = wrappedValue
        let didChangeSubject: any Subject<Value, Never>
        if emitCurrentValue {
            didChangeSubject = CurrentValueSubject(wrappedValue)
        } else {
            didChangeSubject = PassthroughSubject<Value, Never>()
        }
        self.didChangeSubject = didChangeSubject
        self.projectedValue = didChangeSubject.eraseToAnyPublisher()
        self.valueDidChange = didChangeSubject.voidPublisher()
    }
}

public extension Publisher {
    func voidPublisher() -> AnyPublisher<Void, Failure> {
        map { _ in Void() }
            .eraseToAnyPublisher()
    }
}
