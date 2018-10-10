//
//  ViewController.swift
//  WhatsHot
//
//  Created by Zhanghe Liu on 10/9/18.
//  Copyright © 2018 CMU. All rights reserved.
//

import UIKit
import FirebaseUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       // let db = Firestore.firestore()
        
       // var content:String
       // db.collection("twitter").getDocuments() { (querySnapshot, err) in
       //     if let err = err {
       //         print("Error getting documents: \(err)")
       //     } else {
        //        for document in querySnapshot!.documents {
        //            content.append(document.data())
        //            print("\(document.documentID) => \(document.data())")
        //        }
       //     }
       // }
        //todo show content to the UI
        
    }

    @IBAction func loginTapped(_ sender: UIButton) {
        // Get the default auth UI object
        let authUI = FUIAuth.defaultAuthUI()
        
        guard authUI != nil else {
            // Log the error
            return
        }
        
        // Set ourselves as the delegate
        authUI?.delegate = self
        
        // Get a reference to the auto UI view controller
        let authViewController = authUI!.authViewController()
        
        // Show it
        present(authViewController, animated: true, completion: nil)
    }
    
}

extension ViewController: FUIAuthDelegate {
    func authUI(_ authUI: FUIAuth, didSignInWith authDataResult: AuthDataResult?, error: Error?) {
        // Check if there was an error
        if error != nil {
            // Log error
            return
        }
        
        //authDataResult?.user.uid
        
        performSegue(withIdentifier: "goHome", sender: self)
    }
}

