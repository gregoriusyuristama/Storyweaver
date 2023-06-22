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



//struct ContentView: View {
//    @StateObject private var gameState = GameState()
//
//    var body: some View {
//        VStack {
//            if let currentDialog = gameState.currentDialog {
//                Text(currentDialog.text)
//                    .font(.title)
//                    .padding()
//
//                if currentDialog.nextDialogIDs.isEmpty {
//                    Text("Outcome: \(gameState.outcome)")
//                        .font(.title2)
//                        .padding()
//                } else {
//                    ForEach(gameState.decisions, id: \.dialogID) { decision in
//                        Button(action: {
//                            gameState.selectDecision(decision)
//                        }) {
//                            Text(decision.text)
//                                .font(.title2)
//                                .padding()
//                        }
//                        .buttonStyle(.bordered)
//                        .padding(.horizontal)
//                    }
//                }
//            }
//            Spacer()
//            Button(action: {
//                gameState.resetGame()
//            }) {
//                Text("Reset")
//                    .font(.title2)
//                    .padding()
//            }
//            .buttonStyle(.bordered)
//            .padding(.horizontal)
//
//            Spacer()
//        }
//    }
//}
//
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
