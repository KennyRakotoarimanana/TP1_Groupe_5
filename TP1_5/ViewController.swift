//
//  ViewController.swift
//  TP1_5
//
//  Created by mbds on 19/03/2021.
//

import UIKit

class ViewController: UIViewController {
    var isResult: Bool = false;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    var rep = 0.0;
    @IBOutlet weak var calcul: UILabel!
    @IBOutlet weak var resultat: UILabel!
    
    func testResult () {
        if (isResult) {
            calcul.text = ""
            resultat.text = "0"
            isResult = false;
        }
    }
    
    
    @IBAction func un(_ sender: Any) {
        testResult()
        calcul.text! += "1"
    }
    @IBAction func deux(_ sender: Any) {
        testResult()
        calcul.text! += "2"
    }
    @IBAction func trois(_ sender: Any) {
        testResult()
        calcul.text! += "3"    }
    @IBAction func quatre(_ sender: Any) {
        testResult()
        calcul.text! += "4"    }
    @IBAction func cinq(_ sender: Any) {
        testResult()
        calcul.text! += "5"    }
    @IBAction func six(_ sender: Any) {
        testResult()
        calcul.text! += "6"    }
    @IBAction func sept(_ sender: Any) {
        testResult()
        calcul.text! += "7"    }
    @IBAction func huit(_ sender: Any) {
        testResult()
        calcul.text! += "8"    }
    @IBAction func neuf(_ sender: Any) {
        testResult()
        calcul.text! += "9"    }
    @IBAction func zero(_ sender: Any) {
        testResult()
        calcul.text! += "0"    }
    @IBAction func plus(_ sender: Any) {
        calcul.text! += "+"
    }
    @IBAction func moins(_ sender: Any) {
        calcul.text! += "-"
    }
    @IBAction func fois(_ sender: Any) {
        calcul.text! += "*"
    }
    @IBAction func division(_ sender: Any) {
        calcul.text! += "/"
    }
    @IBAction func egal(_ sender: Any) {
        var numericExpression =  "0" + calcul.text! ?? "0"
        let expression = NSExpression(format: numericExpression)
        var result = expression.expressionValue(with: nil, context: nil) as! NSNumber
        resultat.text = "\(result)"
        isResult=true
    }
    @IBAction func virgule(_ sender: Any) {
        calcul.text! += "."
    }
    
    @IBAction func clear(_ sender: Any) {
        calcul.text = ""
        resultat.text = "0"
    }
    
    func calculer(nb1: Double, nb2: Double, operateur: String) -> Double {
        var res: Double = Double(calcul.text!) ?? 0
        if operateur == "+" {
            res = nb1 + nb2
            rep += res
            // resultat.text = "\(res)"
        }
        if operateur == "-" {
            res = nb1 - nb2
            rep -= res
            //resultat.text = "\(res)"
        }
        if operateur == "*" {
            res = nb1 * nb2
            
            resultat.text = "\(res)"
        }
        if operateur == "/" {
            res = nb2 / nb1
            resultat.text = "\(res)"
        }
        return res
    }
}
