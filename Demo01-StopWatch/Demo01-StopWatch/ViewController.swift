//
//  ViewController.swift
//  Demo01-StopWatch
//
//  Created by Wss on 2017/3/3.
//  Copyright © 2017年 Wss. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var pauseButton: UIButton!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    var count = 0.0
    var isPlaying = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeLabel.text = String(count)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playButtonAction(_ sender: Any) {
        
        if isPlaying == true  {
            return
        }
        isPlaying = true
        playButton.isEnabled = false
        pauseButton.isEnabled = true
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }

    @IBAction func puseButtonAction(_ sender: Any) {
        if isPlaying == false {
            return
        }
        playButton.isEnabled = true
        pauseButton.isEnabled = false
        timer.invalidate()
    }
    
    @IBAction func resetButtonAction(_ sender: Any) {
        timer.invalidate()
        isPlaying = false
        playButton.isEnabled = true
        pauseButton.isEnabled = true
        count = 0.0
        timeLabel.text = String(count)
        
    }
    
    func updateTime() {
        count = count + 0.1
        timeLabel.text = String(format: "%.1f", count)
    }
    
    
    
}

