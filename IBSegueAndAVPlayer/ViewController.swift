//
//  ViewController.swift
//  IBSegueAndAVPlayer
//
//  Created by 林祔利 on 2023/4/12.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBSegueAction func showVideo(_ coder: NSCoder) -> AVPlayerViewController? {
        let controller = AVPlayerViewController(coder: coder)
        let url = Bundle.main.url(forResource: "嘉賓", withExtension: "mp4")
        controller?.player = AVPlayer(url: url!)
        controller?.player?.play()
        return controller
    }
}

