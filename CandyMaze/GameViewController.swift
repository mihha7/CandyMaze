//
//  GameViewController.swift
//  CandyMaze
//
//  Created by 西村 美陽 on 2016/01/09.
//  Copyright (c) 2016年 Miharu Nishimura. All rights reserved.
//

import UIKit
import SpriteKit

var scenes = [String:SKScene]();

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scenes["title"] = TitleScene()
        scenes["game"] = GameScene()
        
        for key in scenes.keys{
            if let s:SKScene = scenes[key] {
                s.scaleMode = .AspectFit
                s.size = CGSize(width: 375, height: 500)
                // TODO: How to disable muititouch?
            }
        }
        
        let skView = self.view as! SKView
        skView.showsFPS = false
        skView.showsNodeCount = false
        skView.ignoresSiblingOrder = true
        
        skView.presentScene(scenes["title"]!)
        
    }
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return .Portrait
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
