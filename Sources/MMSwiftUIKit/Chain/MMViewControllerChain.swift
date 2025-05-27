//
//  MMViewControllerChain.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/27.
//

import UIKit

public class MMViewControllerChain<T>: MMResponderChain<T> where T: UIViewController {
    
    @discardableResult public func loadView() -> Self {
        self.view.loadView()
        return self
    }
    
    @available(iOS 9.0, *)
    @discardableResult public func loadViewIfNeeded() -> Self {
        self.view.loadViewIfNeeded()
        return self
    }
    
    @discardableResult public func viewDidLoad() -> Self {
        self.view.viewDidLoad()
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func performSegue(withIdentifier identifier: String, sender: Any?) -> Self {
        self.view.performSegue(withIdentifier: identifier, sender: sender)
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func prepare(for segue: UIStoryboardSegue, sender: Any?) -> Self {
        self.view.prepare(for: segue, sender: sender)
        return self
    }
    
    @discardableResult public func viewWillAppear(_ animated: Bool) -> Self {
        self.view.viewWillAppear(animated)
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult public func viewIsAppearing(_ animated: Bool) -> Self {
        self.view.viewIsAppearing(animated)
        return self
    }
    
    @discardableResult public func viewDidAppear(_ animated: Bool) -> Self {
        self.view.viewDidAppear(animated)
        return self
    }
    
    @discardableResult public func viewWillDisappear(_ animated: Bool) -> Self {
        self.view.viewWillDisappear(animated)
        return self
    }
    
    @discardableResult public func viewDidDisappear(_ animated: Bool) -> Self {
        self.view.viewDidDisappear(animated)
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func viewWillLayoutSubviews() -> Self {
        self.view.viewWillLayoutSubviews()
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func viewDidLayoutSubviews() -> Self {
        self.view.viewDidLayoutSubviews()
        return self
    }
    
    @discardableResult public func didReceiveMemoryWarning() -> Self {
        self.view.didReceiveMemoryWarning()
        return self
    }
    
    @discardableResult public func title(_ value: String?) -> Self {
        self.view.title = value
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func definesPresentationContext(_ value: Bool) -> Self {
        self.view.definesPresentationContext = value
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func providesPresentationContextTransitionStyle(_ value: Bool) -> Self {
        self.view.providesPresentationContextTransitionStyle = value
        return self
    }
    
    @available(iOS 10.0, *)
    @discardableResult public func restoresFocusAfterTransition(_ value: Bool) -> Self {
        self.view.restoresFocusAfterTransition = value
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func focusGroupIdentifier(_ value: String?) -> Self {
        self.view.focusGroupIdentifier = value
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult public func interactionActivityTrackingBaseName(_ value: String?) -> Self {
        self.view.interactionActivityTrackingBaseName = value
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil) -> Self {
        self.view.present(viewControllerToPresent, animated: flag, completion: completion)
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func dismiss(animated flag: Bool, completion: (() -> Void)? = nil) -> Self {
        self.view.dismiss(animated: flag, completion: completion)
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult public func modalTransitionStyle(_ value: UIModalTransitionStyle) -> Self {
        self.view.modalTransitionStyle = value
        return self
    }
    
    @available(iOS 3.2, *)
    @discardableResult public func modalPresentationStyle(_ value: UIModalPresentationStyle) -> Self {
        self.view.modalPresentationStyle = value
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func modalPresentationCapturesStatusBarAppearance(_ value: Bool) -> Self {
        self.view.modalPresentationCapturesStatusBarAppearance = value
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func edgesForExtendedLayout(_ value: UIRectEdge) -> Self {
        self.view.edgesForExtendedLayout = value
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func extendedLayoutIncludesOpaqueBars(_ value: Bool) -> Self {
        self.view.extendedLayoutIncludesOpaqueBars = value
        return self
    }
    
    @available(iOS, introduced: 7.0, deprecated: 11.0, message: "Use UIScrollView's contentInsetAdjustmentBehavior instead")
    @discardableResult public func automaticallyAdjustsScrollViewInsets(_ value: Bool) -> Self {
        self.view.automaticallyAdjustsScrollViewInsets = value
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func preferredContentSize(_ value: CGSize) -> Self {
        self.view.preferredContentSize = value
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func setNeedsStatusBarAppearanceUpdate() -> Self {
        self.view.setNeedsStatusBarAppearanceUpdate()
        return self
    }
    
    @available(iOS 8.0, *)
    @discardableResult public func show(_ vc: UIViewController, sender: Any?) -> Self {
        self.view.show(vc, sender: sender)
        return self
    }
    
    @available(iOS 8.0, *)
    @discardableResult public func showDetailViewController(_ vc: UIViewController, sender: Any?) -> Self {
        self.view.showDetailViewController(vc, sender: sender)
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult public func overrideUserInterfaceStyle(_ value: UIUserInterfaceStyle) -> Self {
        self.view.overrideUserInterfaceStyle = value
        return self
    }
    
    @discardableResult public func isEditing(_ value: Bool) -> Self {
        self.view.isEditing = value
        return self
    }
    
    @discardableResult public func setEditing(_ editing: Bool, animated: Bool) -> Self {
        self.view.setEditing(editing, animated: animated)
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func addChild(_ childController: UIViewController) -> Self {
        self.view.addChild(childController)
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func removeFromParent() -> Self {
        self.view.removeFromParent()
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func transition(from fromViewController: UIViewController, to toViewController: UIViewController, duration: TimeInterval, options: UIView.AnimationOptions = [], animations: (() -> Void)?, completion: ((Bool) -> Void)? = nil) -> Self {
        self.view.transition(from: fromViewController, to: toViewController, duration: duration, options: options, animations: animations, completion: completion)
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func beginAppearanceTransition(_ isAppearing: Bool, animated: Bool) -> Self {
        self.view.beginAppearanceTransition(isAppearing, animated: animated)
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func endAppearanceTransition() -> Self {
        self.view.endAppearanceTransition()
        return self
    }
    
    @available(iOS, introduced: 8.0, deprecated: 17.0, message: "Use the traitOverrides property on the child view controller instead")
    @discardableResult public func setOverrideTraitCollection(_ collection: UITraitCollection?, forChild childViewController: UIViewController) -> Self {
        self.view.setOverrideTraitCollection(collection, forChild: childViewController)
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func willMove(toParent parent: UIViewController?) -> Self {
        self.view.willMove(toParent: parent)
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func didMove(toParent parent: UIViewController?) -> Self {
        self.view.didMove(toParent: parent)
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult public func encodeRestorableState(with coder: NSCoder) -> Self {
        self.view.encodeRestorableState(with: coder)
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult public func decodeRestorableState(with coder: NSCoder) -> Self {
        self.view.decodeRestorableState(with: coder)
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func applicationFinishedRestoringState() -> Self {
        self.view.applicationFinishedRestoringState()
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult public func updateViewConstraints() -> Self {
        self.view.updateViewConstraints()
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func transitioningDelegate(_ value: (any UIViewControllerTransitioningDelegate)?) -> Self {
        self.view.transitioningDelegate = value
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult public func additionalSafeAreaInsets(_ value: UIEdgeInsets) -> Self {
        self.view.additionalSafeAreaInsets = value
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult public func viewRespectsSystemMinimumLayoutMargins(_ value: Bool) -> Self {
        self.view.viewRespectsSystemMinimumLayoutMargins = value
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult public func viewLayoutMarginsDidChange() -> Self {
        self.view.viewLayoutMarginsDidChange()
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult public func viewSafeAreaInsetsDidChange() -> Self {
        self.view.viewSafeAreaInsetsDidChange()
        return self
    }
    
    @available(iOS 9.0, *)
    @discardableResult public func addKeyCommand(_ keyCommand: UIKeyCommand) -> Self {
        self.view.addKeyCommand(keyCommand)
        return self
    }
    
    @available(iOS 9.0, *)
    @discardableResult public func removeKeyCommand(_ keyCommand: UIKeyCommand) -> Self {
        self.view.removeKeyCommand(keyCommand)
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult public func isModalInPresentation(_ value: Bool) -> Self {
        self.view.isModalInPresentation = value
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult public func setNeedsUpdateOfScreenEdgesDeferringSystemGestures() -> Self {
        self.view.setNeedsUpdateOfScreenEdgesDeferringSystemGestures()
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult public func setNeedsUpdateOfHomeIndicatorAutoHidden() -> Self {
        self.view.setNeedsUpdateOfHomeIndicatorAutoHidden()
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func setNeedsUpdateOfPrefersPointerLocked() -> Self {
        self.view.setNeedsUpdateOfPrefersPointerLocked()
        return self
    }
    
    @available(iOS 17.0, *)
    @discardableResult public func setNeedsUpdateContentUnavailableConfiguration() -> Self {
        self.view.setNeedsUpdateContentUnavailableConfiguration()
        return self
    }
    
    @available(iOS 17.0, *)
    @discardableResult public func updateTraitsIfNeeded() -> Self {
        self.view.updateTraitsIfNeeded()
        return self
    }
} 