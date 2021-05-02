//
//  main.swift
//  demo3
//
//  Created by Nicolas Ramos Gomez on 5/1/21.
//

import Foundation

let ROCK : String = "rock";
let PAPER :String = "paper";
let SCISSORS : String = "scissors";
let ansArray = [ROCK, PAPER, SCISSORS];

print("Rock, paper, scissors");

//random generate the winning answer
let compAnsId : Int = Int.random(in: (0...2));
let compAns :String = ansArray[compAnsId];


var playerGaveValidAnswer:Bool = false;

var userAnswer:String = "";

//atempt to match
while !playerGaveValidAnswer{
    print("Choose rock, paper or scissors");

    userAnswer = (readLine())!;

    if userAnswer.lowercased() == ROCK{
       
        playerGaveValidAnswer = true;
    }else if userAnswer.lowercased() == PAPER{
        print("player chose paper")
        playerGaveValidAnswer = true;
    }else if userAnswer.lowercased() == SCISSORS{
        
        playerGaveValidAnswer = true;
    }else{
        print("""
            player did not choose a valid answer!
            Try again
            """)
    }

}


//see who won
switch userAnswer{
case ROCK:
    print("player chose rock");
    if compAns == ROCK {
        print("Tie");
    }else if compAns == SCISSORS{
        print("CPU choose \(SCISSORS). Player Won!!")
    }else{
        print("CPU choose \(PAPER). Player LOST LMAO!!")
    }
case SCISSORS:
    print("player choose scissors")
    if compAns == SCISSORS {
        print("Tie");
    }else if compAns == PAPER{
        print("CPU choose \(PAPER). Player Won!!")
    }else{
        print("CPU choose \(ROCK). Player LOST LMAO!!")
    }
case PAPER:
    print("player choose rock")
    if compAns == PAPER {
        print("Tie");
    }else if compAns == ROCK{
        print("CPU choose \(ROCK). Player Won!!")
    }else{
        print("CPU choose \(SCISSORS). Player LOST LMAO!!")
    }
default :
 print("ERROR")
    
}



