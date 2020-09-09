
import UIKit

class ViewController: UIViewController {
    var myData:[List] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    var myHeader:[Header] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    let tableView: UITableView = {
        let tableview = UITableView(frame: .zero, style: .grouped)
        tableview.rowHeight = UITableView.automaticDimension
        tableview.estimatedRowHeight = 200
        tableview.register(MyTableViewCell.self, forCellReuseIdentifier: "MyTableViewCell")
        tableview.register(MyHeaderView.self, forHeaderFooterViewReuseIdentifier: "MyHeaderView")
        tableview.translatesAutoresizingMaskIntoConstraints = false
        tableview.tableFooterView = UIView()
        return tableview
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        setupConstraints()
        myData = MyData.getList()
        myHeader = MyHeader.getHeader()
    }
    
    func setupUI() {
        self.view.addSubview(tableView)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            tableView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0),
        ])
    }
    
}
    

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "MyHeaderView") as! MyHeaderView
                
        header.data = myHeader[section]
        
        return header
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 500
    }
    
}
extension ViewController: UITableViewDataSource{
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return myHeader.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
        
        cell.data = myData[indexPath.row]
        
        return cell
    }
    
}

