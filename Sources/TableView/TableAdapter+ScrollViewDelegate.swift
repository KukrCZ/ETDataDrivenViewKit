//
//  TableAdapter+ScrollViewDelegate.swift
//  ETDataDrivenViewKit-iOS
//
//  Created by Jan Čislinský on 17. 08. 2018.
//  Copyright © 2018 Etnetera a. s. All rights reserved.
//

import Foundation
import UIKit

// As mentioned in [Swift: UIScrollViewDelegate extension](https://stackoverflow.com/questions/31271849/swift-uiscrollviewdelegate-extension)
// this implementation couldn't be shared with `CollectionAdapter`.

public extension TableAdapter {
    public func scrollViewDidScroll(_ scrollView: UIScrollView) {
        scrollDelegate.didScroll?(scrollView)
    }

    public func scrollViewDidScrollToTop(_ scrollView: UIScrollView) {
        scrollDelegate.didScrollToTop?(scrollView)
    }

    public func scrollViewShouldScrollToTop(_ scrollView: UIScrollView) -> Bool {
        return scrollDelegate.shouldScrollToTop?(scrollView) ?? true
    }

    public func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        scrollDelegate.didEndDecelerating?(scrollView)
    }

    public func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView) {
        scrollDelegate.willBeginDecelerating?(scrollView)
    }

    public func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        scrollDelegate.didEndScrollingAnimation?(scrollView)
    }

    public func scrollViewDidChangeAdjustedContentInset(_ scrollView: UIScrollView) {
        scrollDelegate.didChangeAdjustedContentInset?(scrollView)
    }

    public func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        scrollDelegate.willBeginDragging?(scrollView)
    }

    public func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        scrollDelegate.didEndDragging?(scrollView, decelerate)
    }

    public func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        scrollDelegate.willEndDragging?(scrollView, velocity, targetContentOffset)
    }

    public func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?) {
        scrollDelegate.willBeginZooming?(scrollView, view)
    }

    public func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat) {
        scrollDelegate.didEndZooming?(scrollView, view, scale)
    }

    public func scrollViewDidZoom(_ scrollView: UIScrollView) {
        scrollDelegate.didZoom?(scrollView)
    }

    public func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return scrollDelegate.zooming?(scrollView) ?? nil
    }
}
