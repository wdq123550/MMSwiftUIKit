//
//  MMWebViewChain.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/27.
//

import UIKit
import WebKit

public class MMWebViewChain<T>: MMViewChain<T> where T: WKWebView {
    
    @discardableResult public func navigationDelegate(_ value: (any WKNavigationDelegate)?) -> Self {
        self.view.navigationDelegate = value
        return self
    }
    
    @discardableResult public func uiDelegate(_ value: (any WKUIDelegate)?) -> Self {
        self.view.uiDelegate = value
        return self
    }
    
    @discardableResult public func load(_ request: URLRequest) -> Self {
        _ = self.view.load(request)
        return self
    }
    
    @available(iOS 9.0, *)
    @discardableResult public func loadFileURL(_ url: URL, allowingReadAccessTo readAccessURL: URL) -> Self {
        _ = self.view.loadFileURL(url, allowingReadAccessTo: readAccessURL)
        return self
    }
    
    @discardableResult public func loadHTMLString(_ string: String, baseURL: URL?) -> Self {
        _ = self.view.loadHTMLString(string, baseURL: baseURL)
        return self
    }
    
    @available(iOS 9.0, *)
    @discardableResult public func load(_ data: Data, mimeType: String, characterEncodingName: String, baseURL: URL) -> Self {
        _ = self.view.load(data, mimeType: mimeType, characterEncodingName: characterEncodingName, baseURL: baseURL)
        return self
    }
    
    @discardableResult public func go(to item: WKBackForwardListItem) -> Self {
        _ = self.view.go(to: item)
        return self
    }
    
    @discardableResult public func goBack() -> Self {
        _ = self.view.goBack()
        return self
    }
    
    @discardableResult public func goForward() -> Self {
        _ = self.view.goForward()
        return self
    }
    
    @discardableResult public func reload() -> Self {
        _ = self.view.reload()
        return self
    }
    
    @discardableResult public func reloadFromOrigin() -> Self {
        _ = self.view.reloadFromOrigin()
        return self
    }
    
    @discardableResult public func stopLoading() -> Self {
        self.view.stopLoading()
        return self
    }
    
    @discardableResult public func allowsBackForwardNavigationGestures(_ value: Bool) -> Self {
        self.view.allowsBackForwardNavigationGestures = value
        return self
    }
    
    @available(iOS 9.0, *)
    @discardableResult public func customUserAgent(_ value: String?) -> Self {
        self.view.customUserAgent = value
        return self
    }
    
    @available(iOS 9.0, *)
    @discardableResult public func allowsLinkPreview(_ value: Bool) -> Self {
        self.view.allowsLinkPreview = value
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func pageZoom(_ value: CGFloat) -> Self {
        self.view.pageZoom = value
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func mediaType(_ value: String?) -> Self {
        self.view.mediaType = value
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func interactionState(_ value: Any?) -> Self {
        self.view.interactionState = value
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func underPageBackgroundColor(_ value: UIColor) -> Self {
        self.view.underPageBackgroundColor = value
        return self
    }
    
    @available(iOS 15.5, *)
    @discardableResult public func setMinimumViewportInset(_ minimumViewportInset: UIEdgeInsets, maximumViewportInset: UIEdgeInsets) -> Self {
        self.view.setMinimumViewportInset(minimumViewportInset, maximumViewportInset: maximumViewportInset)
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult public func isFindInteractionEnabled(_ value: Bool) -> Self {
        self.view.isFindInteractionEnabled = value
        return self
    }
    
    @available(iOS 16.4, *)
    @discardableResult public func isInspectable(_ value: Bool) -> Self {
        self.view.isInspectable = value
        return self
    }
    
    @available(iOS, introduced: 14.5, deprecated: 15.0)
    @discardableResult public func closeAllMediaPresentations() -> Self {
        self.view.closeAllMediaPresentations()
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func pauseAllMediaPlayback() -> Self {
        self.view.pauseAllMediaPlayback()
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func setAllMediaPlaybackSuspended(_ suspended: Bool) -> Self {
        self.view.setAllMediaPlaybackSuspended(suspended)
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func setCameraCaptureState(_ state: WKMediaCaptureState) -> Self {
        self.view.setCameraCaptureState(state)
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func setMicrophoneCaptureState(_ state: WKMediaCaptureState) -> Self {
        self.view.setMicrophoneCaptureState(state)
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func loadSimulatedRequest(_ request: URLRequest, response: URLResponse, responseData data: Data) -> Self {
        _ = self.view.loadSimulatedRequest(request, response: response, responseData: data)
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func loadFileRequest(_ request: URLRequest, allowingReadAccessTo readAccessURL: URL) -> Self {
        _ = self.view.loadFileRequest(request, allowingReadAccessTo: readAccessURL)
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func loadSimulatedRequest(_ request: URLRequest, responseHTML string: String) -> Self {
        _ = self.view.loadSimulatedRequest(request, responseHTML: string)
        return self
    }
}
