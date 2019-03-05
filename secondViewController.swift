//
//  secondViewController.swift
//  sideMenuMultiButton
//
//  Created by 김태훈 on 2018. 5. 8..
//  Copyright © 2018년 김태훈. All rights reserved.
//

import UIKit
import AVFoundation
class setFileNameAsArray {
    
}
class secondViewController: UIViewController {
    var audioPlayer:AVAudioPlayer!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var ppButton: UIButton!
    @IBOutlet weak var sButton: UIButton!
    @IBOutlet weak var nButton: UIButton!
    @IBOutlet weak var bButton: UIButton!
    var isPlayingMusic = true
    var number: Int?
    var i = 0
    var musicCount = 0
    let musicname = ["vivid", "vivid(Acoustic ver)", "I'll be there", "Around You"]
    let url = [Bundle.main.url(forResource:"vivid", withExtension: "mp3" ),
               Bundle.main.url(forResource:"vivid2", withExtension: "mp3" ),
               Bundle.main.url(forResource:"iwillbethere", withExtension: "mp3" ),
               Bundle.main.url(forResource:"aroundyou", withExtension: "mp3" )]
    var musiclist = Array<URL?>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ppButton.setImage(UIImage(named: "play.png"), for: .normal)
        ppButton.setTitleColor(UIColor.black, for: .normal)
        sButton.setImage(UIImage(named: "stop.png"), for: .normal)
        nButton.setImage(UIImage(named: "nextsong.png"), for: .normal)
        bButton.setImage(UIImage(named: "backsong.png"), for: .normal)

        
        if let memberNum = number {
            switch memberNum {
            case 1:
                mainImg.image = #imageLiteral(resourceName: "Heejin_main_img.jpg")
                titleLabel.text = "Heejin"
                musiclist = [url[0], url[1], url[2]]
                musicCount = 3
            case 2:
                mainImg.image = #imageLiteral(resourceName: "Hyunjin_main_img.jpg")
                titleLabel.text = "HyunJin"
                musiclist = [url[2], url[3]]
                musicCount = 2
            case 3:
                 mainImg.image = #imageLiteral(resourceName: "Hyunjin_main_img.jpg")
                 titleLabel.text = "Haseul"
            case 4:
                 mainImg.image = #imageLiteral(resourceName: "Hyunjin_main_img.jpg")
                 titleLabel.text = "YeoJin"
            case 5:
                 mainImg.image = #imageLiteral(resourceName: "Hyunjin_main_img.jpg")
                 titleLabel.text = "HyunJin"
            case 6:
                 mainImg.image = #imageLiteral(resourceName: "Hyunjin_main_img.jpg")
                 titleLabel.text = "HyunJin"
            case 7:
                 mainImg.image = #imageLiteral(resourceName: "Hyunjin_main_img.jpg")
                 titleLabel.text = "HyunJin"
            case 8:
                 mainImg.image = #imageLiteral(resourceName: "Hyunjin_main_img.jpg")
                 titleLabel.text = "HyunJin"
            case 9:
                 mainImg.image = #imageLiteral(resourceName: "Hyunjin_main_img.jpg")
                 titleLabel.text = "HyunJin"
            case 10:
                 mainImg.image = #imageLiteral(resourceName: "Hyunjin_main_img.jpg")
                 titleLabel.text = "HyunJin"
            case 11:
                 mainImg.image = #imageLiteral(resourceName: "Hyunjin_main_img.jpg")
                 titleLabel.text = "HyunJin"
            case 12:
                 mainImg.image = #imageLiteral(resourceName: "Hyunjin_main_img.jpg")
                 titleLabel.text = "HyunJin"
                
            default : break
                
            }
            
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: musiclist[i]!)
                audioPlayer.prepareToPlay()
            }
            catch let error as NSError{
                print(error.debugDescription)
            }
            
        }
        
        // Do any additional setup after loading the view.
    }

    
    @IBAction func playPauseMusic(_ sender: UIButton) {

        if audioPlayer.isPlaying {
            audioPlayer.pause()
            ppButton.setImage(UIImage(named: "play.png"), for: .normal)
        }
        else {
            audioPlayer.play()
            ppButton.setImage(UIImage(named: "pause.png"), for: .normal)
        }
    }
    @IBAction func stopMusic(_ sender: UIButton) {
        audioPlayer.currentTime = 0
        audioPlayer.stop()
        ppButton.setImage(UIImage(named: "play.png"), for: .normal)

    }
    @IBAction func palyNextMusic(_ sender: UIButton) {

        if i > -1 && i < musicCount{
            i = i + 1
        }
        if i > musicCount-1 {i = 0}
        if !audioPlayer.isPlaying{isPlayingMusic = false}
        else {isPlayingMusic = true}
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: musiclist[i]!)
            audioPlayer.prepareToPlay()
        }
        catch let error as NSError{
            print(error.debugDescription)
        }
        
        if isPlayingMusic{
            ppButton.setImage(UIImage(named: "pause.png"), for: .normal)
            audioPlayer.play()
        }
        else{
            ppButton.setImage(UIImage(named: "play.png"), for: .normal)
        }
    }
    @IBAction func playBeforeMusic(_ sender: UIButton) {
        if i > -1 && i < musicCount{
        i = i - 1
        }
        if i < 0 {i = musicCount-1}
        if !audioPlayer.isPlaying{isPlayingMusic = false}
        else {isPlayingMusic = true}
        do{
            
            audioPlayer = try AVAudioPlayer(contentsOf: musiclist[i]!)
            
            audioPlayer.prepareToPlay()
        }
        catch let error as NSError{
            print(error.debugDescription)
        }
        if isPlayingMusic{
            ppButton.setImage(UIImage(named: "pause.png"), for: .normal)
            audioPlayer.play()
        }
        else{
            ppButton.setImage(UIImage(named: "play.png"), for: .normal)
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
