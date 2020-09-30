//
//  ViewController.swift
//  CarCollectionView
//
//  Created by Cleís Aurora Pereira on 30/09/20.
//

import UIKit

class ViewController: UIViewController {

    //let carArray = ["carro1.png", "carro2.png", "carro3.png", "carro4.png"]

    var carArray = [Car]()


    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self

        carArray.append(Car(name: "Carro1", image: "carro1.png" ))
        carArray.append(Car(name: "Carro2", image: "carro2.png" ))
        carArray.append(Car(name: "Carro3", image: "carro3.png" ))
        carArray.append(Car(name: "Carro4", image: "carro4.png" ))
    }
}

extension ViewController: UICollectionViewDelegate{

}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return carArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "carCollectionCell", for: indexPath) as! CarViewCell

        cell.setup(car: carArray[indexPath.row])
        return cell

    }


}

