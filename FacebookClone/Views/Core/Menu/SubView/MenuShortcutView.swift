//
//  MenuShortcutView.swift
//  FacebookClone
//
//  Created by Hallee Berry Manoza on 2/26/24.
//

import SwiftUI

struct MenuShortcutView: View {

    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 16),
        .init(.flexible(), spacing: 16)
    ]
    
    private var shortcuts: [Shortcut] = [Shortcut(shortcutIcon: "gobackward", shortcutLabel: "Memories"),
                                         Shortcut(shortcutIcon: "bookmark.fill", shortcutLabel: "Saved"),
                                         Shortcut(shortcutIcon: "person.2.circle", shortcutLabel: "Groups"),
                                         Shortcut(shortcutIcon: "play.tv.fill", shortcutLabel: "Video"),
                                         Shortcut(shortcutIcon: "storefront.fill", shortcutLabel: "Marketplace"),
                                         Shortcut(shortcutIcon: "person.2.fill", shortcutLabel: "Friends"),
                                         Shortcut(shortcutIcon: "calendar.badge.clock", shortcutLabel: "Feeds"),
                                         Shortcut(shortcutIcon: "calendar", shortcutLabel: "Events")]
    
    @Binding var isShowLogOutAlert: Bool
    private var viewWidth: CGFloat
    
    init(isShowLogOutAlert: Binding<Bool>, viewWidth: CGFloat) {
        _isShowLogOutAlert = isShowLogOutAlert
        self.viewWidth = viewWidth
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Your shortcuts")
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(Color(.darkGray))
            
            LazyVGrid(columns: gridItems) {
                ForEach(shortcuts, id: \.self) { shorcut in
                    configShortcutRowView(icon: shorcut.shortcutIcon,
                                    label: shorcut.shortcutLabel)
                }
            }
            
            Button(action: {}) {
                Text("See more")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .frame(width: viewWidth - 30,
                           height: 44)
                    .background(Color(.systemGray5))
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .foregroundColor(.black)
                    .padding(.vertical)
            }
            
            Divider()
            configMenuCell(icon: "questionmark.circle.fill", label: "Help and support")
            configMenuCell(icon: "gearshape.fill", label: "Settings & Privacy")
            configMenuCell(icon: "window.vertical.open", label: "Also from meta")
            
            Button(action: {
                isShowLogOutAlert.toggle()
            }) {
                Text("Log Out")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .frame(width: viewWidth - 30,
                           height: 44)
                    .background(Color(.systemGray5))
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .foregroundColor(.black)
                    .padding(.vertical)
            }
        }
        .padding(.horizontal)
    }
}

private extension MenuShortcutView {
    @ViewBuilder
    func configShortcutRowView(icon: String, label: String) -> some View {
        VStack(alignment: .leading) {
            Image(systemName: icon)
                .foregroundColor(.blue)
                .padding(.bottom, 4)
            Text(label)
                .font(.subheadline)
                .fontWeight(.bold)
            HStack {
                Spacer()
            }
        }
        .padding(.horizontal)
        .frame(width: viewWidth * 0.45, height: 80)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
    
    @ViewBuilder
    func configMenuCell(icon: String, label: String) -> some View {
        VStack(alignment: .leading) {
            HStack(spacing: 16) {
                Image(systemName: icon)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.gray)
                
                Text(label)
                    .font(.headline)
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: "chevron.down")
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
    }
}

struct MenuShortcutView_Previews: PreviewProvider {
    static var previews: some View {
        MenuShortcutView(isShowLogOutAlert: .constant(false), viewWidth: 0.0)
    }
}
