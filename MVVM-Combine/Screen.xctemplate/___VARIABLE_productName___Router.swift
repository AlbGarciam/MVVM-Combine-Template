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

class ___VARIABLE_productName___Router {
    typealias Configuration = (vc: UIViewController, vm: ___VARIABLE_productName___.ViewModel, rt: ___VARIABLE_productName___.Router)
    weak var viewController: UIViewController?

    static func getViewController() -> UIViewController {    
        let configuration = configureModule()
        return configuration.vc
    }
}

extension ___VARIABLE_productName___Router: ___VARIABLE_productName___.Router {
    
}

//MARK: - Injection
extension ___VARIABLE_productName___Router {
    private static func configureModule() -> Configuration {
        let router = ___VARIABLE_productName___Router()
        let viewModel = ___VARIABLE_productName___ViewModel()
        let viewController = ___VARIABLE_productName___ViewController(viewModel: viewModel)
        
        viewModel.router = router        
        router.viewController = viewController
        
        return Configuration(vc: viewController, vm: viewModel, rt: router)
    }
}
