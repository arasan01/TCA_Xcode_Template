//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___. All rights reserved.
//

import SwiftUI
import ComposableArchitecture

public struct ___VARIABLE_MODULENAME___View: View {
    internal let store: Store<___VARIABLE_MODULENAME___Core.State, ___VARIABLE_MODULENAME___Core.Action>

    fileprivate struct ViewState: Equatable {
        init(state: ___VARIABLE_MODULENAME___Core.State) {}
    }

    fileprivate enum ViewAction: Equatable {
        case onAppear
    }

    public init(store: Store<___VARIABLE_MODULENAME___Core.State, ___VARIABLE_MODULENAME___Core.Action>) {
        self.store = store
    }

    public var body: some View {
        WithViewStore(
            store.scope(
                state: ViewState.init,
                action: ___VARIABLE_MODULENAME___Core.Action.init
            )
        ) { viewStore in
            Text("Hello world!")
        }
    }
}

extension ___VARIABLE_MODULENAME___Core.Action {
    fileprivate init(action: ___VARIABLE_MODULENAME___View.ViewAction) {
        switch action {
        case .onAppear:
            self = .onAppear
        }
    }
}

struct ___VARIABLE_MODULENAME___View_Preview: PreviewProvider {
    static var previews: some View {
        ___VARIABLE_MODULENAME___View(
            store: Store<___VARIABLE_MODULENAME___Core.State, ___VARIABLE_MODULENAME___Core.Action>(
                initialState: ___VARIABLE_MODULENAME___Core.State(),
                reducer: ___VARIABLE_MODULENAME___Core.reducer,
                environment: ___VARIABLE_MODULENAME___Core.Environment()
            )
        )
    }
}
