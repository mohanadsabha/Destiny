//
//  ViewController.swift
//  Destiny
//
//  Created by Mohanad on 7/30/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        storyBrain.nextStory(sender.currentTitle!)
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()
        let updateChoice1 = storyBrain.getChoice1()
        let updateChoice2 = storyBrain.getChoice2()
        choice1Button.setTitle(updateChoice1, for: .normal)
        choice2Button.setTitle(updateChoice2, for: .normal)
    }
    
}

