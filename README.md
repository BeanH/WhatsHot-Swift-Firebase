# WhatsHot-Swift-Firebase
An iOS application utilizing Swift, and integrating Google Firebase for Authentication and data storage. You could access to the recording of how it works at YouTube: https://youtu.be/vPWcd8slr2Q

# Key features:

1. Integrates with Google Firebase for the Authentication(sign up/login)
``` Swift

     @IBAction func loginTapped(_ sender: UIButton) {
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
    
```

2. Read data from Firebase storage.

``` Swift

     func getCityIdMap() {
        let db = Firestore.firestore() 
        let settings = db.settings
        settings.areTimestampsInSnapshotsEnabled = true
        db.settings = settings
        db.collection("country_cities").getDocuments() { (querySnapshot, err) in    // country_cities is the collection's name
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    if(document.get("woeid") == nil || document.get("name") == nil){
                        print("worid is nil")
                        continue
                    }
                   var woeid = (document.get("woeid") as! Int)   // 
                }
        }
    }
    
```

3. Swift multiple pickerViews


``` Swift
    func textFieldDidBeginEditing(_ textField:UITextField) {
        if(textField == self.category){
            pickerNum = 1
        }else if(textField == self.country){
            pickerNum = 2
        }else{
            pickerNum = 3
        }
    }
    
```
