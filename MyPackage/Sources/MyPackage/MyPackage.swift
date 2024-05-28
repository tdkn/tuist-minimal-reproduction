import SwiftUI

public struct CustomButton: View {
    var text: String

    public init (text: String) {
        self.text = text
    }

    public var body: some View {
        Button {
            print("hello")
        } label: {
            Text(text)
        }
    }
}
