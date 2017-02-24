//
//  MainViewController.swift
//  TextFromPDF
//
//  Created by Developer on 2/24/17.
//  Copyright © 2017 SIC. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: - Properties
    
    @IBOutlet weak var textView: UITextView!
    
    
    
    // MARK: - LyfeCicle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


// MARK: - @IBAction's

extension MainViewController {
    
    @IBAction func showAsTextTapped() {
        let pdfURL = Bundle.main.bundleURL.appendingPathComponent("sample.pdf")
        let wrapper = Wrapper()
        
        if self.textView.text.isEmpty {
            if let textFromPDF = wrapper.convertPDF(toText: pdfURL.path) {
                self.textView.text = textFromPDF
            }
        } else {
            let alertController = UIAlertController(title: "Text from PDF", message: "Text from PDF file was already extracted", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default) { (action) in print("Tapped on OK") }
            
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion:nil)
        }
    }
}
