//
//  EXFlutterViewController.swift
//  iOS
//
//  Created by 聂高涛 on 2024/8/6.
//

import UIKit
import Flutter
import FlutterPluginRegistrant

class EXFlutterViewController: EXViewController {
    var path = ""
    var engine: FlutterEngine?
    var channel: FlutterMethodChannel?

    var flutterView: FlutterViewController?
    override func viewDidLoad() {
        super.viewDidLoad()

        let engine = App.app.engineGroup.makeEngine(withEntrypoint: nil, libraryURI: nil, initialRoute: path)
        GeneratedPluginRegistrant.register(with: engine)
        let flutterView = FlutterViewController(engine: engine, nibName: nil, bundle: nil)
        self.addChild(flutterView)
        self.view.addSubview(flutterView.view)
        flutterView.view.frame = self.view.bounds
        let channel = FlutterMethodChannel(name: path, binaryMessenger: engine.binaryMessenger)
        channel.setMethodCallHandler {[weak self] call, result in
            guard let self = self else {return}
            if call.method == "open" {
                let vc = EXFlutterViewController()
                if self.path == "/a" {
                    vc.path = "/b"
                }
                else if self.path == "/b" {
                    vc.path = "/c"
                }
                else if self.path == "/c" {
                    vc.path = "/a"
                }
                self.navigationController?.pushViewController(vc, animated: true)
            }
        }

        self.engine = engine
        self.channel = channel
        self.flutterView = flutterView
    }
}
