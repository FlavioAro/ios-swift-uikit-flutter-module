//
//  ViewController.swift
//  SwiftApp
//
//  Created by flavio on 29/12/22.
//

import UIKit
import Flutter
import FlutterPluginRegistrant

class ViewController: UIViewController {
  lazy var flutterEngine = FlutterEngine(name: "module_flutter_engine")

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    flutterEngine.run()
    GeneratedPluginRegistrant.register(with: flutterEngine)
    
    // Make a button to call the showFlutter function when pressed.
    myButton()
  }
    
    func myButton() {
        let button = UIButton(type:UIButton.ButtonType.custom)
        button.addTarget(self, action: #selector(showFlutter), for: .touchUpInside)
        button.setTitle("OPEN FLUTTER MODULE", for: UIControl.State.normal)
        button.frame = CGRect(x: 45, y: 200, width: 300, height: 52)
        button.backgroundColor = UIColor.blue
        self.view.addSubview(button)
    }

  @objc func showFlutter() {
    let flutterViewController =
        FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
    flutterViewController.modalPresentationStyle = .fullScreen
    present(flutterViewController, animated: true, completion: nil)
  }
}
