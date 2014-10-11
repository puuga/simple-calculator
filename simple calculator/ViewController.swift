//
//  ViewController.swift
//  simple calculator
//
//  Created by Siwawes Wongcharoen on 10/11/2557 BE.
//  Copyright (c) 2557 puuga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var bt0:UIButton!;
    var bt1:UIButton!;
    var bt2:UIButton!;
    var bt3:UIButton!;
    var bt4:UIButton!;
    var bt5:UIButton!;
    var bt6:UIButton!;
    var bt7:UIButton!;
    var bt8:UIButton!;
    var bt9:UIButton!;
    var btPlus:UIButton!;
    var btCal:UIButton!;
    var lbResult:UILabel!;
    var btReset:UIButton!;
    
    var screenWidth:CGFloat!;
    var screenHeight:CGFloat!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        screenWidth = UIScreen.mainScreen().bounds.width;
        screenHeight = UIScreen.mainScreen().bounds.height;
        println(NSString(format: "%f", screenWidth));
        println(NSString(format: "%f", screenHeight));
        
        bindWidget();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func bindWidget() {
        lbResult = UILabel(frame: CGRect(x: 20, y: 40, width: 330, height: 40));
        bt1 = UIButton(frame: CGRect(x: 20, y: 100, width: 60, height: 40));
        bt2 = UIButton(frame: CGRect(x: 100, y: 100, width: 60, height: 40));
        bt3 = UIButton(frame: CGRect(x: 180, y: 100, width: 60, height: 40));
        bt4 = UIButton(frame: CGRect(x: 20, y: 140, width: 60, height: 40));
        bt5 = UIButton(frame: CGRect(x: 100, y: 140, width: 60, height: 40));
        bt6 = UIButton(frame: CGRect(x: 180, y: 140, width: 60, height: 40));
        bt7 = UIButton(frame: CGRect(x: 20, y: 180, width: 60, height: 40));
        bt8 = UIButton(frame: CGRect(x: 100, y: 180, width: 60, height: 40));
        bt9 = UIButton(frame: CGRect(x: 180, y: 180, width: 60, height: 40));
        bt0 = UIButton(frame: CGRect(x: 20, y: 220, width: 60, height: 40));
        btPlus = UIButton(frame: CGRect(x: 100, y: 220, width: 160, height: 40));
        btCal = UIButton(frame: CGRect(x: 20, y: 260, width: 330, height: 40));
        btReset = UIButton(frame: CGRect(x: 20, y: 300, width: 330, height: 40));
        
        lbResult.text = "";
        
        bt0.setTitle("0", forState: UIControlState.Normal);
        bt0.setTitleColor(UIColor.brownColor(), forState: UIControlState.Normal);
        bt0.addTarget(self, action: "performClicked:", forControlEvents: UIControlEvents.TouchUpInside);
        
        bt1.setTitle("1", forState: UIControlState.Normal);
        bt1.setTitleColor(UIColor.brownColor(), forState: UIControlState.Normal);
        bt1.addTarget(self, action: "performClicked:", forControlEvents: UIControlEvents.TouchUpInside);
        
        bt2.setTitle("2", forState: UIControlState.Normal);
        bt2.setTitleColor(UIColor.brownColor(), forState: UIControlState.Normal);
        bt2.addTarget(self, action: "performClicked:", forControlEvents: UIControlEvents.TouchUpInside);
        
        bt3.setTitle("3", forState: UIControlState.Normal);
        bt3.setTitleColor(UIColor.brownColor(), forState: UIControlState.Normal);
        bt3.addTarget(self, action: "performClicked:", forControlEvents: UIControlEvents.TouchUpInside);
        
        bt4.setTitle("4", forState: UIControlState.Normal);
        bt4.setTitleColor(UIColor.brownColor(), forState: UIControlState.Normal);
        bt4.addTarget(self, action: "performClicked:", forControlEvents: UIControlEvents.TouchUpInside);
        
        bt5.setTitle("5", forState: UIControlState.Normal);
        bt5.setTitleColor(UIColor.brownColor(), forState: UIControlState.Normal);
        bt5.addTarget(self, action: "performClicked:", forControlEvents: UIControlEvents.TouchUpInside);
        
        bt6.setTitle("6", forState: UIControlState.Normal);
        bt6.setTitleColor(UIColor.brownColor(), forState: UIControlState.Normal);
        bt6.addTarget(self, action: "performClicked:", forControlEvents: UIControlEvents.TouchUpInside);
        
        bt7.setTitle("7", forState: UIControlState.Normal);
        bt7.setTitleColor(UIColor.brownColor(), forState: UIControlState.Normal);
        bt7.addTarget(self, action: "performClicked:", forControlEvents: UIControlEvents.TouchUpInside);
        
        bt8.setTitle("8", forState: UIControlState.Normal);
        bt8.setTitleColor(UIColor.brownColor(), forState: UIControlState.Normal);
        bt8.addTarget(self, action: "performClicked:", forControlEvents: UIControlEvents.TouchUpInside);
        
        bt9.setTitle("9", forState: UIControlState.Normal);
        bt9.setTitleColor(UIColor.brownColor(), forState: UIControlState.Normal);
        bt9.addTarget(self, action: "performClicked:", forControlEvents: UIControlEvents.TouchUpInside);
        
        bt0.setTitle("0", forState: UIControlState.Normal);
        bt0.setTitleColor(UIColor.brownColor(), forState: UIControlState.Normal);
        bt0.addTarget(self, action: "performClicked:", forControlEvents: UIControlEvents.TouchUpInside);
        
        btPlus.setTitle("+", forState: UIControlState.Normal);
        btPlus.setTitleColor(UIColor.brownColor(), forState: UIControlState.Normal);
        btPlus.addTarget(self, action: "performClicked:", forControlEvents: UIControlEvents.TouchUpInside);
        
        btCal.setTitle("=", forState: UIControlState.Normal);
        btCal.setTitleColor(UIColor.brownColor(), forState: UIControlState.Normal);
        btCal.addTarget(self, action: "performClicked:", forControlEvents: UIControlEvents.TouchUpInside);
        
        btReset.setTitle("RESET", forState: UIControlState.Normal);
        btReset.setTitleColor(UIColor.brownColor(), forState: UIControlState.Normal);
        btReset.addTarget(self, action: "performClicked:", forControlEvents: UIControlEvents.TouchUpInside);
        
        self.view.addSubview(lbResult);
        self.view.addSubview(bt0);
        self.view.addSubview(bt1);
        self.view.addSubview(bt2);
        self.view.addSubview(bt3);
        self.view.addSubview(bt4);
        self.view.addSubview(bt5);
        self.view.addSubview(bt6);
        self.view.addSubview(bt7);
        self.view.addSubview(bt8);
        self.view.addSubview(bt9);
        self.view.addSubview(bt0);
        self.view.addSubview(btPlus);
        self.view.addSubview(btCal);
        self.view.addSubview(btReset);
    }
    
    func performClicked(sender:UIButton) {
        if (sender.titleLabel?.text == "0") {
            lbResult.text = lbResult.text! + "0";
        }
        
        if (sender.titleLabel?.text == "1") {
            lbResult.text = lbResult.text! + "1";
        }
        
        if (sender.titleLabel?.text == "2") {
            lbResult.text = lbResult.text! + "2";
        }
        
        if (sender.titleLabel?.text == "3") {
            lbResult.text = lbResult.text! + "3";
        }
        
        if (sender.titleLabel?.text == "4") {
            lbResult.text = lbResult.text! + "4";
        }
        
        if (sender.titleLabel?.text == "5") {
            lbResult.text = lbResult.text! + "5";
        }
        
        if (sender.titleLabel?.text == "6") {
            lbResult.text = lbResult.text! + "6";
        }
        
        if (sender.titleLabel?.text == "7") {
            lbResult.text = lbResult.text! + "7";
        }
        
        if (sender.titleLabel?.text == "8") {
            lbResult.text = lbResult.text! + "8";
        }
        
        if (sender.titleLabel?.text == "9") {
            lbResult.text = lbResult.text! + "9";
        }
        
        if (sender.titleLabel?.text == "+") {
            lbResult.text = lbResult.text! + "+";
        }
        
        if (sender.titleLabel?.text == "=") {
            cal(lbResult.text!);
        }
        
        if (sender.titleLabel?.text == "RESET") {
            lbResult.text = "";
        }
    }
    
    func cal(text:String) {
        let texts = text.componentsSeparatedByString("+");
        var result = 0;
        for temp in texts {
            result = result + temp.toInt()!;
        }
        lbResult.text = NSString(format: "%d", result);
    }


}

