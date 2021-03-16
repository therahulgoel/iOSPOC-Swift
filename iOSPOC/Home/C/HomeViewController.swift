//
//  HomeViewController.swift
//  iOSPOC
//
//  Created by Rahul on 10/07/18.
//  Copyright © 2018 Rahul Goel. All rights reserved.
//

import UIKit


class HomeViewController: TRGBaseViewController {

    @IBOutlet weak var tblview: UITableView!
    private var viewModel:HomeViewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doSomeStuff()
        setUpTableView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}


extension HomeViewController{
    func doSomeStuff(){
    }
}

//TableView : Delegate And DataSource
extension HomeViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return viewModel.dataSource[.type1]?.count ?? 0
        }else if section == 1{
            return viewModel.dataSource[.type2]?.count ?? 0
        }
        return 0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let vw:UIView = UIView(frame: CGRect(x: 0, y: 0, width: tblview.frame.size.width, height: tblview.frame.size.height))
        
        return vw
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
         if section == 0 {
            return 100
        }
        return 0
    }
    
    func tableView(_ tableView:UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rowType:HomeCellType = viewModel.dataSourceOrder[indexPath.section]
        
        if rowType == .type1{
            if let vww = viewModel.dataSource[rowType],!vww.isEmpty{
            let cell:HomeTableViewImageCell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewImageCell")  as! HomeTableViewImageCell
            return cell
            }
        }
        if  rowType == .type2{
            let cell:HomeTableCollectionViewCell = tableView.dequeueReusableCell(withIdentifier: "HomeTableCollectionViewCell")  as! HomeTableCollectionViewCell
            return cell
        }

        return UITableViewCell()
    }
    
    final func registerTableViewCell(){
        tblview.register(UINib.init(nibName: "HomeTableViewImageCell", bundle: nil), forCellReuseIdentifier: "HomeTableViewImageCell")
        tblview.register(UINib.init(nibName: "HomeTableCollectionViewCell", bundle: nil), forCellReuseIdentifier: "HomeTableCollectionViewCell")
    }
    
    final func setUpTableView(){
        tblview.delegate = self
        tblview.dataSource = self
        registerTableViewCell()
    }
}
