//
//  ViewController.swift
//  testWebView
//
//  Created by Kei on 1/8/18.
//  Copyright © 2018 Emrgent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var textView: CustomTextView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		let testText = "I am a set of test text. We will be testing the ability to detect the touches and turn them into selected text at the point that was touched on the text view."
		textView.attributedText = makeAttr(text: testText)
		textView.isEditable = false
		textView.isSelectable = false

	}
	
	private func makeAttr(text: String) -> NSAttributedString {
		let attrText = NSMutableAttributedString(string: text)
		return attrText
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

extension ViewController : UITextViewDelegate {
	
}

