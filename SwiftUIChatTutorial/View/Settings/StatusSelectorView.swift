//
//  StatusSelectorView.swift
//  SwiftUIChatTutorial
//
//  Created by 大久保樹 on 2022/10/18.
//

import SwiftUI

struct StatusSelectorView: View {
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .leading) {
                    Text("CURRENTLY SET TO")
                        .foregroundColor(.gray)
                        .padding()
                    
                    StatusCell(viewModel:  StatusViewModel(rawValue: 5)!)
                    
                    Text("SELECT YOUR STATUS")
                        .foregroundColor(.gray)
                        .padding()
                    
                    // for loop with options
                    
                    ForEach(StatusViewModel.allCases, id: \.self) { viewModel in
                        Button(
                            action: {
                                print("Change status here..")
                            },label: {
                                StatusCell(viewModel: viewModel)
                        })
                    }
                }
            }
        }
    }
}

struct StatusSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        StatusSelectorView()
    }
}

struct StatusCell: View {
    let viewModel: StatusViewModel
    
    var body: some View {
        HStack {
            Text(viewModel.title)
                .foregroundColor(.black)
            Spacer()
        }
        .frame(height: 56)
        .padding(.horizontal)
        .background(Color.white)
    }
}
