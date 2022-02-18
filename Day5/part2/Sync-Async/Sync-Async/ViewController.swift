//
//  ViewController.swift
//  Sync-Async
//
//  Created by AbdelRahman AbdelFattah on 17/02/2022.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var webView: UIWebView!
	override func viewDidLoad() {
		super.viewDidLoad()
		let url = URL(string: "https://www.yahoo.com")
		let request = URLRequest(url: url!)
		webView.loadRequest(request)
	}


}

