//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Template created by Alberto Garcia-Muñoz.
//  Linkedin: https://www.linkedin.com/in/alberto-garcia-munoz/
//  GitHub: https://github.com/AlbGarciam
//
//  ___COPYRIGHT___
//

import UIKit

class ___VARIABLE_productName___ViewController: BaseMVVMViewController<___VARIABLE_productName___.State> {
    var screenViewModel: ___VARIABLE_productName___.ViewModel! {
        viewModel as? ___VARIABLE_productName___.ViewModel
    }

    //MARK: - UIComponents
    
    //MARK: - UI Lifecycle
    override func loadView() {
        configure()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        //Your code here
    }

    override func render(state: ___VARIABLE_productName___.State) {
        fatalError("render(state:) has not been implemented")
    }
}
