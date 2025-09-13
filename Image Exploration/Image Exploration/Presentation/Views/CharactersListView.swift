//
//  CharactersListView.swift
//  Image Exploration
//
//  Created by Jesús Ervin Chapi Suyo on 11/09/25.
//

import SwiftUI
import Combine

struct CharactersListView: View {
    @StateObject var viewModel: CharactersViewModel
   
    var body: some View {
        NavigationStack {
            Group {
                if viewModel.isLoading {
                    ProgressView("Loading...")
                } else if let errorMessage = viewModel.errorMessage {
                    VStack {
                        Text("Error: \(errorMessage)")
                        Button("Retry") {
                            viewModel.loadCharacters()
                        }
                    }
                } else {
                    List(viewModel.characters) { character in
                        HStack(spacing: 16) {
                            // Ensure the URL is not nil and try to use HTTPS if possible
                            let imageURL: URL? = {
                                guard let url = character.thumbnailURL else { return nil }
                                if url.scheme == "http" {
                                    var components = URLComponents(url: url, resolvingAgainstBaseURL: false)
                                    components?.scheme = "https"
                                    return components?.url ?? url
                                }
                                return url
                            }()
                            
                            AsyncImage(url: imageURL) { image in
                                switch image {
                                case .empty:
                                    VStack {
                                        ProgressView()
                                        if let url = imageURL {
                                            Text(url.absoluteString).font(.caption).foregroundColor(.gray)
                                        } else {
                                            Text("No image URL").font(.caption).foregroundColor(.red)
                                        }
                                    }
                                case .success(let img):
                                    img.resizable().aspectRatio(contentMode: .fill)
                                case .failure:
                                    VStack {
                                        Image(systemName: "photo").resizable().aspectRatio(contentMode: .fill)
                                        if let url = imageURL {
                                            Text(url.absoluteString).font(.caption).foregroundColor(.red)
                                        }
                                    }
                                @unknown default:
                                    EmptyView()
                                }
                            }
                            .frame(width: 60, height: 60)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            Text(character.name)
                        }
                    }.listStyle(.plain)
                }
                
                
                
            }
            .navigationTitle("Marvel Characters")
            .onAppear {
                viewModel.loadCharacters()
            }
        }
            
    }
    
}
