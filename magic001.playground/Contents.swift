


//: Magic The Gathering - Creates computer simulation of card game

import UIKit

// Creates card attributes in struct

struct Card {
    
    var name = ""
    
    var art = ""
    
    var type = cardType.land
    
    var subType = ""
    
    var expansionSymbol = ""
    
    var keyword = ""
    
    var reminderText = ""
    
    var flavorText = ""
    
    var artistCredit = ""
    
    var manaCost = 0
    
    var power = 0
    
    var toughness = 0
    
    var isTapped = false

    init(inputName: String, inputArt: String, inputType: cardType, inputSubType: String, inputExpansionSymbol: String,
         inputKeyword: String, inputReminderText: String, inputFlavorText: String, inputArtistCredit: String, inputManaCost: Int,
         inputPower: Int, inputToughness: Int, inputIsTapped: Bool) {
        
        name = inputName
        
        art = inputArt
        
        type = inputType
        
        subType = inputSubType
        
        expansionSymbol = inputExpansionSymbol
        
        keyword = inputKeyword
        
        reminderText = inputReminderText
        
        flavorText = inputFlavorText
        
        artistCredit = inputArtistCredit
        
        manaCost = inputManaCost
        
        power = inputPower
        
        toughness = inputToughness
        
        manaCost = inputManaCost
        
        isTapped = inputIsTapped
    }
}

enum cardType {
    case land
    case creature
    case artifact
    case equipment
    case enchantment
    case planeswalked
    case sorcery
    case instant
}

// Initialize game state

var playerOneHealth = 20

var playerTwoHealth = 20

var currentActivePlayer = 1

// Creates hands for each player's cards

var player001Hand = [Card]()

var player002Hand = [Card]()

// Creates areas of the game board

var graveYard = [Card]()

var library = [Card]()

var battleField = [Card]()

// Initialize cards

var card001 = Card.init(inputName: "",
                        inputArt: "",
                        inputType: cardType.land,
                        inputSubType: "",
                        inputExpansionSymbol: "",
                        inputKeyword: "",
                        inputReminderText: "",
                        inputFlavorText: "",
                        inputArtistCredit: "",
                        inputManaCost: 0,
                        inputPower: 0,
                        inputToughness: 0,
                        inputIsTapped: false)

// Verifies initialization

card001.name
card001.art
card001.type
card001.subType
card001.expansionSymbol
card001.keyword
card001.reminderText
card001.flavorText
card001.artistCredit
card001.manaCost
card001.power
card001.toughness
card001.isTapped































