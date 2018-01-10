//
//  CustomTextView.swift
//  testWebView
//
//  Created by Kei on 1/9/18.
//  Copyright © 2018 Emrgent. All rights reserved.
//

import Foundation
import UIKit

class CustomTextView : UITextView {
	
	override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
		super.touchesEnded(touches, with: event)
		let touch = event?.allTouches?.first
		let location = touch?.location(in: self)
		let index = self.layoutManager.characterIndex(for: location!,
										  in: self.textContainer,
										  fractionOfDistanceBetweenInsertionPoints: nil)
		print("index: " + index.description)

	}
}
