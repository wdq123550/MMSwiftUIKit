//
//  MMResponderChain.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/27.
//

import UIKit

public class MMResponderChain<T> where T: UIResponder {
    
    public let view: T
    
    public init(view: T) {
        self.view = view
    }
    
    @discardableResult public func becomeFirstResponder() -> Self {
        _ = self.view.becomeFirstResponder()
        return self
    }
    
    @discardableResult public func resignFirstResponder() -> Self {
        _ = self.view.resignFirstResponder()
        return self
    }
    
    @discardableResult public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) -> Self {
        self.view.touchesBegan(touches, with: event)
        return self
    }
    
    @discardableResult public func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) -> Self {
        self.view.touchesMoved(touches, with: event)
        return self
    }
    
    @discardableResult public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) -> Self {
        self.view.touchesEnded(touches, with: event)
        return self
    }
    
    @discardableResult public func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) -> Self {
        self.view.touchesCancelled(touches, with: event)
        return self
    }
    
    @available(iOS 9.1, *)
    @discardableResult public func touchesEstimatedPropertiesUpdated(_ touches: Set<UITouch>) -> Self {
        self.view.touchesEstimatedPropertiesUpdated(touches)
        return self
    }
    
    @available(iOS 9.0, *)
    @discardableResult public func pressesBegan(_ presses: Set<UIPress>, with event: UIPressesEvent?) -> Self {
        self.view.pressesBegan(presses, with: event)
        return self
    }
    
    @available(iOS 9.0, *)
    @discardableResult public func pressesChanged(_ presses: Set<UIPress>, with event: UIPressesEvent?) -> Self {
        self.view.pressesChanged(presses, with: event)
        return self
    }
    
    @available(iOS 9.0, *)
    @discardableResult public func pressesEnded(_ presses: Set<UIPress>, with event: UIPressesEvent?) -> Self {
        self.view.pressesEnded(presses, with: event)
        return self
    }
    
    @available(iOS 9.0, *)
    @discardableResult public func pressesCancelled(_ presses: Set<UIPress>, with event: UIPressesEvent?) -> Self {
        self.view.pressesCancelled(presses, with: event)
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult public func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) -> Self {
        self.view.motionBegan(motion, with: event)
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult public func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) -> Self {
        self.view.motionEnded(motion, with: event)
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult public func motionCancelled(_ motion: UIEvent.EventSubtype, with event: UIEvent?) -> Self {
        self.view.motionCancelled(motion, with: event)
        return self
    }
    
    @available(iOS 4.0, *)
    @discardableResult public func remoteControlReceived(with event: UIEvent?) -> Self {
        self.view.remoteControlReceived(with: event)
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult public func buildMenu(with builder: any UIMenuBuilder) -> Self {
        self.view.buildMenu(with: builder)
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult public func validate(_ command: UICommand) -> Self {
        self.view.validate(command)
        return self
    }
    
    @available(iOS 3.2, *)
    @discardableResult public func reloadInputViews() -> Self {
        self.view.reloadInputViews()
        return self
    }
    
    @available(iOS 8.0, *)
    @discardableResult public func updateUserActivityState(_ activity: NSUserActivity) -> Self {
        self.view.updateUserActivityState(activity)
        return self
    }
    
    @available(iOS 8.0, *)
    @discardableResult public func restoreUserActivityState(_ activity: NSUserActivity) -> Self {
        self.view.restoreUserActivityState(activity)
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func captureTextFromCamera(_ sender: Any?) -> Self {
        self.view.captureTextFromCamera(sender)
        return self
    }
    
    // MARK: - UIResponderStandardEditActions
    
    @available(iOS 3.0, *)
    @discardableResult public func cut(_ sender: Any?) -> Self {
        self.view.cut(sender)
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult public func copy(_ sender: Any?) -> Self {
        self.view.copy(sender)
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult public func paste(_ sender: Any?) -> Self {
        self.view.paste(sender)
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func pasteAndMatchStyle(_ sender: Any?) -> Self {
        self.view.pasteAndMatchStyle(sender)
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func pasteAndGo(_ sender: Any?) -> Self {
        self.view.pasteAndGo(sender)
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func pasteAndSearch(_ sender: Any?) -> Self {
        self.view.pasteAndSearch(sender)
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult public func select(_ sender: Any?) -> Self {
        self.view.select(sender)
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult public func selectAll(_ sender: Any?) -> Self {
        self.view.selectAll(sender)
        return self
    }
    
    @available(iOS 3.2, *)
    @discardableResult public func delete(_ sender: Any?) -> Self {
        self.view.delete(sender)
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func makeTextWritingDirectionLeftToRight(_ sender: Any?) -> Self {
        self.view.makeTextWritingDirectionLeftToRight(sender)
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func makeTextWritingDirectionRightToLeft(_ sender: Any?) -> Self {
        self.view.makeTextWritingDirectionRightToLeft(sender)
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult public func toggleBoldface(_ sender: Any?) -> Self {
        self.view.toggleBoldface(sender)
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult public func toggleItalics(_ sender: Any?) -> Self {
        self.view.toggleItalics(sender)
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult public func toggleUnderline(_ sender: Any?) -> Self {
        self.view.toggleUnderline(sender)
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func increaseSize(_ sender: Any?) -> Self {
        self.view.increaseSize(sender)
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func decreaseSize(_ sender: Any?) -> Self {
        self.view.decreaseSize(sender)
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult public func find(_ sender: Any?) -> Self {
        self.view.find(sender)
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult public func findAndReplace(_ sender: Any?) -> Self {
        self.view.findAndReplace(sender)
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult public func findNext(_ sender: Any?) -> Self {
        self.view.findNext(sender)
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult public func findPrevious(_ sender: Any?) -> Self {
        self.view.findPrevious(sender)
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult public func useSelectionForFind(_ sender: Any?) -> Self {
        self.view.useSelectionForFind(sender)
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult public func updateTextAttributes(conversionHandler: @escaping UITextAttributesConversionHandler) -> Self {
        self.view.updateTextAttributes(conversionHandler: conversionHandler)
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func printContent(_ sender: Any?) -> Self {
        self.view.printContent(sender)
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult public func rename(_ sender: Any?) -> Self {
        self.view.rename(sender)
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult public func duplicate(_ sender: Any?) -> Self {
        self.view.duplicate(sender)
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult public func move(_ sender: Any?) -> Self {
        self.view.move(sender)
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult public func export(_ sender: Any?) -> Self {
        self.view.export(sender)
        return self
    }
    
//    @available(iOS 18.2, *)
//    @discardableResult public func showWritingTools(_ sender: Any) -> Self {
//        self.view.showWritingTools(sender)
//        return self
//    }
}
