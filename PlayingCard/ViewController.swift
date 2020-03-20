//
//  ViewController.swift
//  PlayingCard
//
//  Created by Anastasia Reyngardt on 09.11.2019.
//  Copyright © 2019 GermanyHome. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var playingCardView: PlayingCardView! {
        didSet {
            let swipe = UISwipeGestureRecognizer(target: self, action: <#T##Selector?#>)
        }
    }
    
    var deck = PlayingCardDeck()

    override func viewDidLoad() {
        super.viewDidLoad()
        for _ in 1...10 {
            if let card = deck.draw() {
                print("\(card)")
            }
        }
    }


}

