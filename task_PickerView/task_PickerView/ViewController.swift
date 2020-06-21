//
//  ViewController.swift
//  task_PickerView
//
//  Created by Nakata chisato on 2020/06/16.
//  Copyright © 2020 Ajima. All rights reserved.
//

//１
//①ViewControllerにPickerViewとlabelを用意。
//②PickerViewで選択された内容をラベルに反映する。

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{

    @IBOutlet weak var playlist: UIPickerView!
    
    @IBOutlet weak var selectedTitle: UILabel!
    
    
    let classicSongs = ["caprice No.24", "Carnival of Venice", "Liebesfreud", "The last rose of summer", "The four seasons,RV297"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        let songTitle = classicSongs[component]
        return songTitle.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let item = classicSongs[row]
        return item
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

        selectedTitle.text = self.pickerView(pickerView, titleForRow: row, forComponent: 0)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        playlist.delegate = self
        playlist.dataSource = self
    }


}



