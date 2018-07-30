//
//  CreateUser.swift
//  FunChatikUITests
//
//  Created by Natalia on 7/26/18.
//  Copyright © 2018 Natalia. All rights reserved.
//

import XCTest

class CreateUser: BaseTest {
    
    func testCreateUserWithoutAvatar() {
        XCTContext.runActivity(named: "to channel screen") { activity in
            let chatScreen = ChatScreen()
            chatScreen.menuButtonTap()
        }
        XCTContext.runActivity(named: "to login screen") { activity in
            let channelScreen = ChannelScreen()
            channelScreen.tapLoginButton()
        }
        XCTContext.runActivity(named: "to create user screen") { activity in
            let loginScreen = LoginScreen()
            loginScreen.tapSignUp()
        }
        XCTContext.runActivity(named: "create new user") { activity in
            let createAccountScreen = CreateAccountScreen()
            createAccountScreen.typeUserName(usernameTxt: CreateData.newUniqueUser)
            createAccountScreen.typeEmail(emailTxt: CreateData.newUniqueUser)
            createAccountScreen.typePassword(passwordTxt: CreateData.newUniqueUser)
            createAccountScreen.tapCreateAccountLbl()
            createAccountScreen.tapCreateAccountBtn()
            XCTAssertTrue(createAccountScreen.alertSuccessExists())
            createAccountScreen.tapOkBtn()
        }
    }
    
    func testCreateUserWithAvatar() {
        XCTContext.runActivity(named: "to channel screen") { activity in
            let chatScreen = ChatScreen()
            chatScreen.menuButtonTap()
        }
        XCTContext.runActivity(named: "to login screen") { activity in
            let channelScreen = ChannelScreen()
            channelScreen.tapLoginButton()
        }
        XCTContext.runActivity(named: "to create user screen") { activity in
            let loginScreen = LoginScreen()
            loginScreen.tapSignUp()
        }
        XCTContext.runActivity(named: "create new user") { activity in
            let createAccountScreen = CreateAccountScreen()
            createAccountScreen.typeUserName(usernameTxt: CreateData.newUniqueUser)
            createAccountScreen.typeEmail(emailTxt: CreateData.newUniqueUser)
            createAccountScreen.typePassword(passwordTxt: CreateData.newUniqueUser)
            
            let avatarsScreen = createAccountScreen.tapChooseAvatar()
            let createAccountScreen2 = avatarsScreen.tapAvatar()
            
            createAccountScreen2.tapChooseBGColor()
            createAccountScreen2.tapChooseBGColor()
            createAccountScreen2.tapCreateAccountLbl()
            createAccountScreen2.tapCreateAccountBtn()
            XCTAssertTrue(createAccountScreen2.alertSuccessExists())
            createAccountScreen2.tapOkBtn()
            
            

//            collectionViewsQuery.children(matching: .cell).element(boundBy: 0).otherElements.containing(.image, identifier:"avatarImage").element.tap()
//            chooseavatarbtnButton.tap()
//            collectionViewsQuery.children(matching: .cell).element(boundBy: 1).otherElements.containing(.image, identifier:"avatarImage").element.tap()
//            app/*@START_MENU_TOKEN@*/.buttons["closeButtonCreateAccount"]/*[[".buttons[\"close\"]",".buttons[\"closeButtonCreateAccount\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//
            
        }
    }
    
    func testAvatarsScreen() {
        XCTContext.runActivity(named: "to channel screen") { activity in
            let chatScreen = ChatScreen()
            chatScreen.menuButtonTap()
        }
        XCTContext.runActivity(named: "to login screen") { activity in
            let channelScreen = ChannelScreen()
            channelScreen.tapLoginButton()
        }
        XCTContext.runActivity(named: "to create user screen") { activity in
            let loginScreen = LoginScreen()
            loginScreen.tapSignUp()
        }
        XCTContext.runActivity(named: "to avatars screen") { activity in
            let createAccountScreen = CreateAccountScreen()
            let chooseAvatarScreen = createAccountScreen.tapChooseAvatar()
            chooseAvatarScreen.tapLightAvatarsChoice()
            chooseAvatarScreen.tapDarkAvatarsChoice()
            chooseAvatarScreen.tapBackBtn()
        }
    }
}
