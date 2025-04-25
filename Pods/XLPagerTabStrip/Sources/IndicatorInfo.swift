//  IndicatorInfo.swift
//  XLPagerTabStrip ( https://github.com/xmartlabs/XLPagerTabStrip )
//
//  Copyright (c) 2017 Xmartlabs ( http://xmartlabs.com )
//
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Foundation

public struct IndicatorInfo {

    public var title: String?
    public var image: UIImage?
    public var highlightedImage: UIImage?
    public var badgeColor: UIColor?
    public var enableBadge: Bool = false
    public var accessibilityLabel: String?
    public var accessibilityId: String?
    public var accessibilityBadgeId: String?
    public var userInfo: Any?
    
    public init(title: String?,
                badgeColor: UIColor? = nil,
                enableBadge: Bool = false,
                accessibilityId: String? = nil,
                accessibilityBadgeId: String? = nil) {
        self.title = title
        self.badgeColor = badgeColor
        self.enableBadge = enableBadge
        self.accessibilityLabel = title
        self.accessibilityId = accessibilityId
        self.accessibilityBadgeId = accessibilityBadgeId
    }
    
    public init(image: UIImage?, 
                highlightedImage: UIImage? = nil,
                badgeColor: UIColor? = nil,
                enableBadge: Bool = false,
                userInfo: Any? = nil,
                accessibilityId: String? = nil,
                accessibilityBadgeId: String? = nil) {
        self.image = image
        self.highlightedImage = highlightedImage
        self.badgeColor = badgeColor
        self.enableBadge = enableBadge
        self.userInfo = userInfo
        self.accessibilityId = accessibilityId
        self.accessibilityBadgeId = accessibilityBadgeId
    }
    
    public init(title: String?, 
                image: UIImage?,
                highlightedImage: UIImage? = nil,
                badgeColor: UIColor? = nil,
                enableBadge: Bool = false,
                userInfo: Any? = nil,
                accessibilityId: String? = nil,
                accessibilityBadgeId: String? = nil) {
        self.title = title
        self.accessibilityLabel = title
        self.image = image
        self.highlightedImage = highlightedImage
        self.badgeColor = badgeColor
        self.enableBadge = enableBadge
        self.userInfo = userInfo
        self.accessibilityId = accessibilityId
        self.accessibilityBadgeId = accessibilityBadgeId
    }
    
    public init(title: String?,
                accessibilityLabel: String?,
                image: UIImage?, 
                highlightedImage: UIImage? = nil,
                badgeColor: UIColor? = nil, 
                enableBadge: Bool = false,
                userInfo: Any? = nil,
                accessibilityId: String? = nil,
                accessibilityBadgeId: String? = nil) {
        self.title = title
        self.accessibilityLabel = accessibilityLabel
        self.image = image
        self.highlightedImage = highlightedImage
        self.badgeColor = badgeColor
        self.enableBadge = enableBadge
        self.userInfo = userInfo
        self.accessibilityId = accessibilityId
        self.accessibilityBadgeId = accessibilityBadgeId
    }

}

extension IndicatorInfo : ExpressibleByStringLiteral {

    public init(stringLiteral value: String) {
        title = value
        accessibilityLabel = value
    }

    public init(extendedGraphemeClusterLiteral value: String) {
        title = value
        accessibilityLabel = value
    }

    public init(unicodeScalarLiteral value: String) {
        title = value
        accessibilityLabel = value
    }
}
