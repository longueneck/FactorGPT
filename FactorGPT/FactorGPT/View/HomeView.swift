import UIKit

class View: UIView {

    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.backgroundColor = Color.gray
        return tableView
    }()
    
    lazy var inputTextFIeld: UITextField = {
        let input = UITextField()
        input.translatesAutoresizingMaskIntoConstraints = false
        input.layer.cornerRadius = 15
        input.backgroundColor = Color.gray
        input.textColor = .white
        return input
    }()
    
    lazy var sendButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "paperplane.fill"), for: UIControl.State.normal)
        button.tintColor = Color.gray
        button.backgroundColor = .none
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addViews()
        self.setContraints()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configTextFieldDelegate(delegate: UITextFieldDelegate){
        inputTextFIeld.delegate = delegate
    }
    
    func configTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        tableView.delegate = delegate
        tableView.dataSource = dataSource
    }
    
    private func addViews(){
        self.addSubview(self.tableView)
        self.addSubview(self.inputTextFIeld)
        self.addSubview(self.sendButton)
    }
    
    private func setContraints(){
        NSLayoutConstraint.activate([
        
            tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -80),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
        
            inputTextFIeld.bottomAnchor.constraint(equalTo: keyboardLayoutGuide.topAnchor, constant: -15),
            inputTextFIeld.heightAnchor.constraint(equalToConstant: 45),
            inputTextFIeld.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            inputTextFIeld.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            
            sendButton.centerYAnchor.constraint(equalTo: inputTextFIeld.centerYAnchor),
            sendButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            sendButton.heightAnchor.constraint(equalToConstant: 30),
            sendButton.widthAnchor.constraint(equalToConstant: 30),
        ])
        
        
    }
    
}
