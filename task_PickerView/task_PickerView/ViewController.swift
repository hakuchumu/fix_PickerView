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

//push時にmargeも一緒にされるのか確認

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var kanaList: UIPickerView!
    
    @IBOutlet weak var labelA: UILabel!
    
    @IBOutlet weak var labelKA: UILabel!
    
    @IBOutlet weak var labelSA: UILabel!
    
    let kana = [["あ", "い", "う", "え", "お"], ["か", "き", "く", "け", "こ"], ["さ", "し", "す", "せ", "そ"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        kanaList.delegate = self
        kanaList.dataSource = self
    }
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    //PickerViewの列数を返す
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return kana.count
    }
    
    //PickerViewの行数を返す
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        let kanaCountRows = kana[component]
        return kanaCountRows.count
    }
    
    //行の項目名を返す
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let item = kana[component][row]
        return item
    }
    
    //ドラムが回転して項目が選ばれた
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        //現在の選択行
        let rowA = pickerView.selectedRow(inComponent: 0)
        let rowKA = pickerView.selectedRow(inComponent: 1)
        let rowSA = pickerView.selectedRow(inComponent: 2)
        
        //それぞれのラベルへ項目の値を貼り付け
        labelA.text = self.pickerView(pickerView, titleForRow: rowA, forComponent: 0)
        labelKA.text = self.pickerView(pickerView, titleForRow: rowKA, forComponent: 1)
        labelSA.text = self.pickerView(pickerView, titleForRow: rowSA, forComponent: 2)
        
    }
}



