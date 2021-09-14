//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___. All rights reserved.
//

import UIKit
import Combine
import ComposableArchitecture

public final class ___VARIABLE_MODULENAME___ViewController: UIViewController {
    internal let store: Store<___VARIABLE_MODULENAME___Core.State, ___VARIABLE_MODULENAME___Core.Action>
    internal var cancellables: Set<AnyCancellable> = []
    fileprivate let viewStore: ViewStore<ViewState, ViewAction>

    fileprivate struct ViewState: Equatable {
        init(state: ___VARIABLE_MODULENAME___Core.State) {}
    }

    fileprivate enum ViewAction: Equatable {
        case onAppear
    }

    public init(store: Store<___VARIABLE_MODULENAME___Core.State, ___VARIABLE_MODULENAME___Core.Action>) {
        self.store = store
        self.viewStore = ViewStore(
            self.store.scope(
                state: ViewState.init,
                action: ___VARIABLE_MODULENAME___Core.Action.init))
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ___VARIABLE_MODULENAME___Core.Action {
    fileprivate init(action: ___VARIABLE_MODULENAME___ViewController.ViewAction) {
        switch action {
        case .onAppear:
            self = .onAppear
        }
    }
}

#if canImport(SwiftUI)
import SwiftUI

struct ___VARIABLE_MODULENAME___ViewController_Preview: PreviewProvider {
    struct UIViewRepresented<UIViewType>: UIViewRepresentable where UIViewType: UIView {
        let makeUIView: (Context) -> UIViewType
        let updateUIView: (UIViewType, Context) -> Void = { _, _ in }

        func makeUIView(context: Context) -> UIViewType {
            self.makeUIView(context)
        }

        func updateUIView(_ uiView: UIViewType, context: Context) {
            self.updateUIView(uiView, context)
        }
    }

    static var previews: some View {
        let vc = ___VARIABLE_MODULENAME___ViewController(
            store: Store<___VARIABLE_MODULENAME___Core.State, ___VARIABLE_MODULENAME___Core.Action>(
                initialState: ___VARIABLE_MODULENAME___Core.State(),
                reducer: ___VARIABLE_MODULENAME___Core.reducer,
                environment: ___VARIABLE_MODULENAME___Core.Environment()
            )
        )
        return UIViewRepresented(makeUIView: { _ in vc.view })
    }
}
#endif
