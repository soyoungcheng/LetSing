//
//  RecordVideoPanel.swift
//  LetSing
//
//  Created by MACBOOK on 2018/5/8.
//  Copyright © 2018年 MACBOOK. All rights reserved.
//

import AVFoundation
import UIKit
import YouTubePlayer

class RecordVideoPanelView: UIView {

    @IBOutlet weak var videoPlayerView: YouTubePlayerView!

    @IBOutlet weak var recordingProgress: UISlider!
    @IBOutlet weak var timeStartLabel: UILabel!
    @IBOutlet weak var timeEndLabel: UILabel!
    @IBOutlet weak var playBtn: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func updateEndTime(time: String) {

        timeEndLabel.text = time
    }

    func updateCurrentTime(time: String, proportion: Double) {
        timeStartLabel.text = time

        recordingProgress.value = Float(proportion)
    }

    func updatePlayer() {

        videoPlayerView.clear()

        videoPlayerView.isUserInteractionEnabled = false

        playBtn.isSelected = true

        updateEndTime(time: LSConstants.PlayerTime.originTime)

        updateCurrentTime(time: LSConstants.PlayerTime.originTime, proportion: LSConstants.PlayerTime.originProportion)
    }

    func playerDidPlay() {
        playBtn.isSelected = true
    }

    func playerDidStopWithError(error: Error) {
        //TODO
    }
}

