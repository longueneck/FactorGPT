import UIKit

class ViewController: UIViewController{

    var homeView: View?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        overrideUserInterfaceStyle = .light
    }
    
    override func loadView() {
        self.homeView = View()
        self.view = homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = Color.dark
        homeView?.configTextFieldDelegate(delegate: self)
        homeView?.configTableViewProtocols(delegate: self, dataSource: self)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        homeView?.inputTextFIeld.resignFirstResponder()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 0
    }
}

    extension ViewController: UITextFieldDelegate{
        
        func textFieldDidBeginEditing(_ textField: UITextField) {
            textField.backgroundColor = Color.dark
            homeView?.sendButton.tintColor = Color.dark
        }
        
        func textFieldDidEndEditing(_ textField: UITextField) {
            textField.backgroundColor = Color.gray
            homeView?.sendButton.tintColor = Color.gray
        }
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
        }
    }
    


