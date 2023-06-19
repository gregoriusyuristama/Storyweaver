//
//  ContentView.swift
//  DecisionTreeTest
//
//  Created by Alvito . on 16/06/23.
//

import SwiftUI

struct Dialog {
    let id: Int
    let text: String
    let outcome: String
    let nextDialogIDs: [Int]
}

class GameState: ObservableObject {
    @Published var currentDialog: Dialog?
    @Published var outcome: String = ""
    @Published var decisions: [Decision] = []

    let dialogTree: [Dialog] = [
        Dialog(id: 0, text: "...", outcome: "", nextDialogIDs: [1, 2]),
        Dialog(id: 1, text: "You tried to move but found yourself stuck inside a cramped space.", outcome: "Keep silent", nextDialogIDs: [3]),
        Dialog(id: 2, text: "You tried to move but found yourself stuck inside a cramped space.", outcome: "Try to move", nextDialogIDs: [3]),
        Dialog(id: 3, text: "It's a little bit hard to breathe", outcome: "Continue", nextDialogIDs: [4, 5]),
        Dialog(id: 4, text: "You tried to move harder, hoping to escape the narrow room. ", outcome: "Keep silent", nextDialogIDs: [6]),
        Dialog(id: 5, text: "You tried to move harder, hoping to escape the narrow room. ", outcome: "Try to move", nextDialogIDs: [6]),
        Dialog(id: 6, text: "Engulfed by pain and immense emotional burst, which is unexpected for an entity such as you, you let out a voice…", outcome: "Continue", nextDialogIDs: [7]),
        Dialog(id: 7, text: "(Am I a baby this time?)", outcome: "Continue", nextDialogIDs: [8]),
        Dialog(id: 8, text: "Hello?", outcome: "Continue", nextDialogIDs: [9]),
        Dialog(id: 9, text: "Engulfed by pain and immense emotional burst, which is unexpected for an entity such as you, you let out a voice…", outcome: "Continue", nextDialogIDs: []),
        Dialog(id: 10, text: "Engulfed by pain and immense emotional burst, which is unexpected for an entity such as you, you let out a voice…", outcome: "Continue", nextDialogIDs: []),
    ]

    init() {
        currentDialog = dialogTree.first
        updateDecisions()
    }

    func selectDecision(_ decision: Decision) {
        outcome = decision.outcome
        currentDialog = dialogTree.first { $0.id == decision.dialogID }
        updateDecisions()
    }

    private func updateDecisions() {
        guard let currentDialog = currentDialog else { return }
        let nextDialogIDs = currentDialog.nextDialogIDs
        decisions = nextDialogIDs.map { decisionForDialogID($0) }.compactMap { $0 }
    }

    private func decisionForDialogID(_ dialogID: Int) -> Decision? {
        return dialogTree.first { $0.id == dialogID }.map { Decision(text: $0.outcome, outcome: $0.outcome, dialogID: $0.id) }
    }
    
    func resetGame() {
            currentDialog = dialogTree.first
            outcome = ""
            updateDecisions()
        }
}

struct Decision {
    let text: String
    let outcome: String
    let dialogID: Int
}

struct ContentView: View {
    @StateObject private var gameState = GameState()

    var body: some View {
        VStack {
            if let currentDialog = gameState.currentDialog {
                Text(currentDialog.text)
                    .font(.title)
                    .padding()

                if currentDialog.nextDialogIDs.isEmpty {
                    Text("Outcome: \(gameState.outcome)")
                        .font(.title2)
                        .padding()
                } else {
                    ForEach(gameState.decisions, id: \.dialogID) { decision in
                        Button(action: {
                            gameState.selectDecision(decision)
                        }) {
                            Text(decision.text)
                                .font(.title2)
                                .padding()
                        }
                        .buttonStyle(.bordered)
                        .padding(.horizontal)
                    }
                }
            }
            Spacer()
            Button(action: {
                gameState.resetGame()
            }) {
                Text("Reset")
                    .font(.title2)
                    .padding()
            }
            .buttonStyle(.bordered)
            .padding(.horizontal)

            Spacer()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
