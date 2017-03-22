


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

var card002 = Card.init(inputNumber: 2,
                        inputName: "Ajani’s Sunstriker",
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

var card003 = Card.init(inputNumber: 3,
                        inputName: "Angel’s Mercy",
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

var card004 = Card.init(inputNumber: 4,
                        inputName: "Angelic Benediction",
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

var card005 = Card.init(inputNumber: 5,
                        inputName: "Attended Knight",
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

var card006 = Card.init(inputNumber: 6,
                        inputName: "Aven Squire",
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

var card007 = Card.init(inputNumber: 7,
                        inputName: "Battleflight Eagle",
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

var card008 = Card.init(inputNumber: 8,
                        inputName: "Captain of the Watch",
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

var card009 = Card.init(inputNumber: 9,
                        inputName: "Captain’s Call",
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

var card010 = Card.init(inputNumber: 10,
                        inputName: "Crusader of Odric",
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

var card011 = Card.init(inputNumber: 11,
                        inputName: "Divine Favor",
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

var card012 = Card.init(inputNumber: 12,
                        inputName: "Divine Verdict",
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

var card013 = Card.init(inputNumber: 13,
                        inputName: "Erase",
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

var card014 = Card.init(inputNumber: 14,
                        inputName: "Faith’s Reward",
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

var card015 = Card.init(inputNumber: 15,
                        inputName: "Glorious Charge",
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

var card016 = Card.init(inputNumber: 16,
                        inputName: "Griffin Protector",
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

var card017 = Card.init(inputNumber: 17,
                        inputName: "Guardian Lions",
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

var card018 = Card.init(inputNumber: 18,
                        inputName: "Guardians of Akrasa",
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

var card019 = Card.init(inputNumber: 19,
                        inputName: "Healer of the Pride",
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

var card020 = Card.init(inputNumber: 20,
                        inputName: "Intrepid Hero",
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

var card021 = Card.init(inputNumber: 21,
                        inputName: "Knight of Glory",
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

var card022 = Card.init(inputNumber: 22,
                        inputName: "Oblivion Ring",
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

var card023 = Card.init(inputNumber: 23,
                        inputName: "Odric, Master Tactician",
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

var card024 = Card.init(inputNumber: 24,
                        inputName: "Pacifism",
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
deck.append(card002)
deck.append(card003)
deck.append(card004)
deck.append(card005)
deck.append(card006)
deck.append(card007)
deck.append(card008)
deck.append(card009)
deck.append(card010)
deck.append(card011)
deck.append(card012)
deck.append(card013)
deck.append(card014)
deck.append(card015)
deck.append(card016)
deck.append(card017)
deck.append(card018)
deck.append(card019)
deck.append(card020)
deck.append(card021)
deck.append(card022)
deck.append(card023)
deck.append(card024)
deck.append(card025)


// Verifies initialization of input card by printing out its attributes
//
// :param: Card
//
// :return: Nothing
func printCardAttributes(inputCard: Card) {
    
    print(inputCard.number)
    
    print(inputCard.name)
    
    print(inputCard.art)
    
    print(inputCard.type)
    
    print(inputCard.subType)
    
    print(inputCard.rarity)
    
    print(inputCard.set)
    
    print(inputCard.keyword)
    
    print(inputCard.reminderText)
    
    print(inputCard.flavorText)
    
    print(inputCard.artistCredit)
    
    print(inputCard.manaCost)
    
    print(inputCard.power)
    
    print(inputCard.toughness)
    
    print(inputCard.isTapped)
}

printCardAttributes(inputCard: card001)































