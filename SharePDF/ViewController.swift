//
//  ViewController.swift
//  SharePDF
//
//  Created by Ольга on 21.04.2022.
//

import UIKit
import WebKit
import PDFKit

class ViewController: UIViewController {
    
    let url = URL(string: "https://developers.apple.com/support/downloads/terms/apple-developer-program/Apple-Developer-Program-License-Agreement-20210607-Russian.pdf")!
    
    var pdf: PDFDocument!
    
    @IBOutlet weak var webView: WKWebView!
    
    @IBAction func shareButtonAction(_ sender: Any) {
        let shareController = UIActivityViewController(activityItems: [pdf.dataRepresentation() as Any], applicationActivities: nil)
        present(shareController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.load(URLRequest(url: url))
        pdf = PDFDocument(url: url)
    }
}

