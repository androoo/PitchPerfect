//
//  RecordSoundsViewController.swift
//  PitchPerfect
//
//  Created by andrew gierke on 12/7/16.
//  Copyright © 2016 Androoo. All rights reserved.
//

import UIKit

class RecordSoundsViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var tapToRecordLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    //MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordingButton.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // this runs some code right before the vc loads on screen
    }
    
    //MARK: - Interactions
    @IBAction func recordAudio(_ sender: AnyObject) {
        tapToRecordLabel.text = "Recording in progress..."
        stopRecordingButton.isEnabled = true
        recordButton.isEnabled = false
    }
    
    @IBAction func stopRecording(_ sender: AnyObject) {
        tapToRecordLabel.text = "Tap to record audio"
        recordButton.isEnabled = true
        stopRecordingButton.isEnabled = false
    }
    
}

