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
  lazy var flutterEngine = FlutterEngine(name: "my flutter engine")

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    flutterEngine.run()
    GeneratedPluginRegistrant.register(with: flutterEngine)
    
    // Make a button to call the showFlutter function when pressed.
    let button = UIButton(type:UIButton.ButtonType.custom)
    button.addTarget(self, action: #selector(showFlutter), for: .touchUpInside)
    button.setTitle("Show Flutter!", for: UIControl.State.normal)
    button.frame = CGRect(x: 80.0, y: 210.0, width: 160.0, height: 40.0)
    button.backgroundColor = UIColor.blue
    self.view.addSubview(button)
  }

  @objc func showFlutter() {
    let flutterViewController =
        FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
    present(flutterViewController, animated: true, completion: nil)
  }
}
