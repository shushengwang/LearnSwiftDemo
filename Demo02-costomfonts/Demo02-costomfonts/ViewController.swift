//
//  ViewController.swift
//  Demo02-costomfonts
//
//  Created by Wss on 2017/3/29.
//  Copyright © 2017年 Wss. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    var data = ["关关雎鸠，在河之洲。",
                "窈窕淑女，君子好逑。",
                "参差荇菜，左右流之。",
                "窈窕淑女，寤寐求之。",
                "求之不得，寤寐思服。",
                "悠哉悠哉，辗转反侧。",
                "参差荇菜，左右采之。",
                "窈窕淑女，琴瑟友之。",
                "参差荇菜，左右芼之。",
                "窈窕淑女，钟鼓乐之。"]
    
    let fontNames = ["Copperplate-Bold", "Copperplate","Copperplate-Light"]
    
    var fontIndex = 0
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var fontTableView: UITableView!
    @IBOutlet weak var changeFontButton: UIButton!
    
    @IBAction func changeFontAction(_ sender: Any) {
        fontIndex = ( fontIndex + 1 ) % 3
        fontTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fontTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = data[indexPath.row]
        
        cell.textLabel?.text = text
        cell.textLabel?.textColor = UIColor.black
        cell.textLabel?.font = UIFont.init(name: self.fontNames[fontIndex], size: 13)
        
        return cell
    }
}



