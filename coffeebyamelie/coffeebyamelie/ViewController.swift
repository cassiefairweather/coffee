//
//  ViewController.swift
//  coffeebyamelie
//
//  Created by Christina Asquith on 4/17/23.
//

import UIKit
import MessageUI
class ViewController: UIViewController {
    
    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
    }
    
    @IBAction func emailButtonTapped(sender: UIButton) {
        showMailComposer()
    }
    
    func showMailComposer() {
        guard MFMailComposeViewController.canSendMail() else {
            return
        }
        
        let composer = MFMailComposeViewController()
        composer.mailComposeDelegate = self
        composer.setToRecipients(["ameliefairweather7@gmail.com"])
        composer.setSubject("hello")
        composer.setMessageBody("hey there", isHTML: false)
        present(composer, animated: true, completion: nil)
    }
}
extension ViewController: MFMailComposeViewControllerDelegate {
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
    
    @objc func buttonTapped(_ sender: UIButton) {
        // Handle button tap here
    }
}
@IBAction func orderEmail(_ sender: UIButton) {
  // Code for email button
}

    
    
    @ IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func didTapButton() {
        let storyboard = UIStoryboard(name: "OrderForm", bundle: nil)
        guard let orderForm = storyboard.instantiateViewController(withIdentifier: "OrderFormViewController") as? UIViewController else {
            return
        }
        self.navigationController?.pushViewController(orderForm, animated: true)
    }
  
}


