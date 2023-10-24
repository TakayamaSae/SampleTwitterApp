//
//  HomeViewController.swift
//  SampleTwitterApp
//
//  Created by 高山彩愛 on 2023/10/04.
//

import UIKit

class HomeViewController: UIViewController {
   
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        print("HomeViewControllerが表示されました！")
    }
    
    private func configureTableView() {
        tableView.dataSource = self
        tableView.delegate = self
//        // カスタムセル
//        let nib = UINib(nibName: "〇〇TableViewCell", bundle: nil)
//        tableView.register(nib, forCellReuseIdentifier: "Cell")
    }
}

// MARK: - UITableViewDataSource

extension HomeViewController: UITableViewDataSource {
    /// データの数（＝セルの数）を返すメソッド
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    /// 各セルの内容を返すメソッド
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        return UITableViewCell()
    }
}

// MARK: - UITableViewDelegate

extension HomeViewController: UITableViewDelegate {
    /// セルの高さを設定するメソッド
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
