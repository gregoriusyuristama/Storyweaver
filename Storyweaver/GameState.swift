//
//  ContentView.swift
//  DecisionTreeTest
//
//  Created by Alvito . on 16/06/23.
//

import SwiftUI

class GameState: ObservableObject {
    @Published var currentDialog: Dialog?
    @Published var outcome: String = ""
    @Published var decisions: [Decision] = []
    
    var dialogTree: [Dialog]
    
    init(dialogTree: [Dialog]) {
        self.dialogTree = dialogTree
        currentDialog = self.dialogTree.first
        updateDecisions()
    }
    
    func selectDecision(_ decision: Decision) {
        outcome = decision.outcome
        currentDialog = self.dialogTree.first { $0.id == decision.dialogID }
        updateDecisions()
    }
    
    private func updateDecisions() {
        guard let currentDialog = currentDialog else { return }
        let nextDialogIDs = currentDialog.nextDialogIDs
        decisions = nextDialogIDs.map { decisionForDialogID($0) }.compactMap { $0 }
    }
    
    private func decisionForDialogID(_ dialogID: Int) -> Decision? {
        return self.dialogTree.first { $0.id == dialogID }.map { Decision(text: $0.outcome, outcome: $0.outcome, dialogID: $0.id) }
    }
    
    func resetGame() {
        currentDialog = self.dialogTree.first
        outcome = ""
        updateDecisions()
    }
}
