//
//  MMTextView.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/13.
//

import UIKit
import RSKGrowingTextView
import Combine

@MainActor open class MMTextView: RSKGrowingTextView {
    
    public var cancellabel = Set<AnyCancellable>()
    
    public let textSubject: PassthroughSubject<String, Never> = PassthroughSubject<String, Never>()
    
    public override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        
        self.publisher(for: \.text).sink { [unowned self] string in
            self.textSubject.send(string ?? "")
        }.store(in: &cancellabel)
    }
    
    @MainActor required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
