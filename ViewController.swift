//
//  ViewController.swift
//  TestXibs
//
//  Created by Avishek Sinha on 28/09/17.
//  Copyright © 2017 Avishek Sinha. All rights reserved.
//

import UIKit

@IBDesignable
class ViewController: UIViewController,UITableViewDataSource {
    var array = [NSString]()
    var contentView:UIView?
    @IBOutlet weak var tableView:UITableView!
    @IBOutlet weak var mycustomUDIDString:UILabel!
    @IBOutlet weak var myUDID:UILabel!
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.separatorColor = UIColor.clear
        let cell = tableView.dequeueReusableCell(withIdentifier: "something", for: indexPath)
        cell.textLabel?.text = "some"
        cell.detailTextLabel?.text = "detail"
        return cell
       
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       self.mycustomUDIDString.text = UIDevice.current.uniqueDeviceIdentifier()!
        self.myUDID.text = UIDevice.current.identifierForVendor!.uuidString as String 
        print(self.mycustomUDIDString.text! + "this is the uuid")
        
        
         let some = NSString.init(string: "this is a ssf s sdsf sf sdf sfsdsasfs sdf sf d sds dsds ssds ssdsds ds sdfs sdf sdf ds sdssd sdsds dsdss dsdsd dsd sds dsd tring")
        
        array = some.components(separatedBy: " ") as [NSString]
        
        
    
  
        print(array.count)
        // printLabels()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func printLabels() {
        for i in 1..<20 {
            
            let label = UILabel(frame: CGRect(origin: CGPoint(x: 20, y: 20 + (i * 60)), size: CGSize(width: 200, height: 50)))
            label.text = array[i] as String
            label.sizeToFit()
            //label.font.pointSize = 12.0
            UIView.animate(withDuration: 3, delay: 3.5, options:.curveEaseIn, animations: {
                self.view.backgroundColor = UIColor.red
                
            }, completion: { (complete) in
                self.view.addSubview(label)
            })
            
            
            
        }
    }
        

  

}

