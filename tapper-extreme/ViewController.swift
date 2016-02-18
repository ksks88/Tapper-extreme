//
//  ViewController.swift
//  tapper-extreme
//
//  Created by Salih Hajlakovic on 10/02/16.
//  Copyright © 2016 Salih Hajlakovic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Variables
    var maxTaps = 0
    var currentTap = 0
    
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var txtTaps: UITextField!
    @IBOutlet weak var btnPlay: UIButton!
    
    @IBOutlet weak var btnTap: UIButton!
    @IBOutlet weak var lblTotalTaps: UILabel!
    
    @IBAction func onPlayBtnClick(sender: UIButton!)
    {
        if(txtTaps.text != nil && txtTaps.text != "")
        {
            clearScreen(true)
            
            maxTaps = Int(txtTaps.text!)!
            resetScores()
            updateLabel()
        }
    }
    
    @IBAction func OnTap(sender: UIButton!)
    {
        currentTap++
        
        if maxTaps > currentTap
        {
            updateLabel()
        }
        else
        {
            clearScreen(false)
            resetScores()
        }
    }
    
    func resetScores()
    {
        txtTaps.text = ""
        currentTap = 0
    }
    
    func clearScreen(IsGoingToSecondScreen: Bool)
    {
        logoImg.hidden = IsGoingToSecondScreen
        txtTaps.hidden = IsGoingToSecondScreen
        btnPlay.hidden = IsGoingToSecondScreen
        
        btnTap.hidden = !IsGoingToSecondScreen
        lblTotalTaps.hidden = !IsGoingToSecondScreen
    }
    
    func updateLabel()
    {
        lblTotalTaps.text = "\(currentTap) Taps"
    }


}

