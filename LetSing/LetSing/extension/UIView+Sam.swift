//
//  UIView+Sam.swift
//  LetSing
//
//  Created by MACBOOK on 2018/5/18.
//  Copyright © 2018年 MACBOOK. All rights reserved.
//

import Foundation

import UIKit

extension UIView {

    func startChangeColor(duration: CGFloat) {
        let orange = UIColor.orange.cgColor
        let alpha = UIColor.white.withAlphaComponent(0.7).cgColor

        let gradient = CAGradientLayer()

        gradient.colors = [orange, alpha]

    }

    func startShimmering() {
        let red = UIColor.red.cgColor
        let alpha = UIColor.white.withAlphaComponent(0.7).cgColor

        let gradient = CAGradientLayer()
        gradient.colors = [alpha, red, alpha, alpha, red, alpha]
        gradient.frame = CGRect(x: -self.bounds.size.width, y: 0, width: 3 * self.bounds.size.width, height: self.bounds.size.height)
        gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.525)
        gradient.locations = [0.4, 0.5, 0.6]
        self.layer.mask = gradient

        let animation = CABasicAnimation(keyPath: "locations")
        animation.fromValue = [0.0, 0.1, 0.2]
        animation.toValue = [0.8, 0.9, 1.0]
        animation.duration = 1.5
        animation.repeatCount = HUGE
        gradient.add(animation, forKey: "shimmer")
    }

    func stopShimmering() {
        self.layer.mask = nil
    }

}
