## UISheetPresentationControllerCustomDetent

Adds support for specifying custom detents in `UISheetPresentationController`. Note: This solution relies on a private API, which may break in future iOS releases. 

```
import UISheetPresentationControllerCustomDetent

let viewController = UIViewController()
if let sheetPresentationController = viewController.sheetPresentationController {
    sheetPresentationController.detents = [ .custom(70.0), .custom(200.0), .medium(), .large() ]
    sheetPresentationController.selectedDetentIdentifier = .custom(200.0)
}
present(viewController, animated: true, completion: nil)
```

## License

UISheetPresentationControllerCustomDetent is licensed under the MIT License. See the LICENSE file for more info.
