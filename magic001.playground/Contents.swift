


//: Magic The Gathering - Creates computer simulation of card game

import UIKit

// Creates card attributes in struct

struct Card {
    
    var number = 0
    
    var name = ""
    
    var color = cardColor.white
    
    var art = ""
    
    var type = cardType.land
    
    var subType = ""
    
    var rarity = cardRarity.common
    
    var set = cardSet.m13
    
    var keyword = ""
    
    var reminderText = ""
    
    var flavorText = ""
    
    var artistCredit = ""
    
    var manaCost = 0
    
    var power = 0
    
    var toughness = 0
    
    var isTapped = false

    init(inputNumber: Int,
        inputName: String,
         inputColor: cardColor,
         inputArt: String,
         inputType: cardType,
         inputSubType: String,
         inputRarity: cardRarity,
         inputSet: cardSet,
         inputKeyword: String,
         inputReminderText: String,
         inputFlavorText: String,
         inputArtistCredit: String,
         inputManaCost: Int,
         inputPower: Int,
         inputToughness: Int,
         inputIsTapped: Bool) {
        
        number = inputNumber
        
        name = inputName
        
        color = inputColor
        
        art = inputArt
        
        type = inputType
        
        subType = inputSubType
        
        rarity = inputRarity
        
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
    case planeswalker
    case sorcery
    case instant
}

enum cardColor {
    
    case white
    case green
    case red
    case blue
    case black
}

enum cardRarity {
    
    case mythicRare
    case timeshifted
    case rare
    case common
    case uncommon
}

enum cardSet {
    
    case m13
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
// source: http://www.magicspoiler.com/m13-magic-2013-card-list/

var card001 = Card.init(inputNumber: 1,
                        inputName: "Ajani, Caller of the Pride",
                        inputColor: cardColor.white,
                        inputArt: "",
                        inputType: cardType.planeswalker,
                        inputSubType: "Ajani",
                        inputRarity: cardRarity.mythicRare,
                        inputSet: cardSet.m13,
                        inputKeyword: "",
                        inputReminderText: "",
                        inputFlavorText: "",
                        inputArtistCredit: "",
                        inputManaCost: 0,
                        inputPower: 0,
                        inputToughness: 0,
                        inputIsTapped: false)

// Adds cards to deck

var deck = [Card]()

deck.append(card001)

// Verifies initialization

card001.number
card001.name
card001.art
card001.type
card001.subType
card001.rarity
card001.set
card001.keyword
card001.reminderText
card001.flavorText
card001.artistCredit
card001.manaCost
card001.power
card001.toughness
card001.isTapped































