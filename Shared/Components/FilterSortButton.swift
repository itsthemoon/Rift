//
//  FilterSortButton.swift
//  Rift (iOS)
//
//  Created by Jackson Davis on 9/20/22.
//

import SwiftUI


@available(iOS 15.0, *)
struct FilterSortButton: View {
    @State private var isPresented = false
    @State var value = ""
    @State var placeholder = "Select Client"
    @State var dropDownList = ["Relevance", "Price: High to Low", "Price: Low to High", "Most Popular"]
    @State var filterSelected = ""
    @State var filter1Name = "Filter 1"
    @State var filter2Name = "Filter 2"
    @State var filter3Name = "Filter 3"
    @State var filter4Name = "Filter 4"
    @State var filter5Name = "Filter 5"
    @State var filter6Name = "Filter 6"
    @State var showFilter1 = true
    @State var showFilter2 = false
    @State var showFilter3 = false
    @State var showFilter4 = false
    @State var showFilter5 = false
    @State var showFilter6 = false
    
    
    
    
    var body: some View {
        VStack{
            Button("Filter + Sort", action: {
                isPresented.toggle()
            }).adaptiveSheet(isPresented: $isPresented, detents: [.large()], smallestUndimmedDetentIdentifier: .medium){

                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    .foregroundColor(Color("LightGrey"))
                    .overlay(
                        Group {
                        VStack (alignment: .leading, spacing: 0){
                            HStack {
                            Capsule()
                                .fill(Color.secondary)
                                .frame(width: 30, height: 3)
                                .padding([.top, .leading, .trailing], 10)
                            }
                            .frame(maxWidth: .infinity, alignment: .center)
                            .background(Color.white)

                            
                            ZStack {
                                HStack {
                                    Image(systemName: "shippingbox")
                                        .foregroundColor(Color.white)
                                        .padding(.leading, 15.0)
                                    Spacer()
                                }
                                
                                HStack {
                                    Text("Filter + Sort")
                                        .padding(.horizontal)
                                }
                                
                                HStack {
                                    Spacer()
                                    Button(action:{
                                        isPresented.toggle()
                                    }) {
                                        Text("Done")
                                            .foregroundColor(Color.red)
                                    }
                                    .buttonStyle(.borderedProminent)
                                    .tint(.white)
                                    .padding(.trailing)
                                    
                                }
                                

                            }
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .background(Color.white)
                           

                                
                            ScrollView (showsIndicators: true){
                                VStack {
                            HStack {
                                Text("Sort By")
                                    .opacity(/*@START_MENU_TOKEN@*/0.4/*@END_MENU_TOKEN@*/)
                                    .font(.system(size: 14))
                                    .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/)
                                Spacer()
                            }
                            .padding(.top)
                            
                            
                            Dropdown(value: $value, dropDownList: $dropDownList, placeholder: $placeholder)
                            
                            
                            
                            HStack {
                                Text("Filters")
                                    .opacity(/*@START_MENU_TOKEN@*/0.4/*@END_MENU_TOKEN@*/)
                                    .font(.system(size: 14))
                                    .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                                Spacer()
                            }
                            .padding(.top)
                            
                                    Filter(filterName: $filter1Name)
                                    Filter(filterName: $filter2Name)
                                    Filter(filterName: $filter3Name)
                                    Filter(filterName: $filter4Name)
                                    Filter(filterName: $filter5Name)
                                    Filter(filterName: $filter6Name)
                            
                            

                                    
                            }
                                
                            Spacer()
                        }
                        
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                        }
                        }
                            
                    )
                            
                        }
            .buttonStyle(.borderedProminent)
            .tint(.black)
            .padding([.leading, .bottom, .trailing])
            
        }
    }
}
@available(iOS 15.0, *)
struct AdaptiveSheet<T: View>: ViewModifier {
    let sheetContent: T
    @Binding var isPresented: Bool
    let detents : [UISheetPresentationController.Detent]
    let smallestUndimmedDetentIdentifier: UISheetPresentationController.Detent.Identifier?
    let prefersScrollingExpandsWhenScrolledToEdge: Bool
    let prefersEdgeAttachedInCompactHeight: Bool
    
    init(isPresented: Binding<Bool>, detents : [UISheetPresentationController.Detent] = [.medium(), .large()], smallestUndimmedDetentIdentifier: UISheetPresentationController.Detent.Identifier? = .medium, prefersScrollingExpandsWhenScrolledToEdge: Bool = false, prefersEdgeAttachedInCompactHeight: Bool = true, @ViewBuilder content: @escaping () -> T) {
        self.sheetContent = content()
        self.detents = detents
        self.smallestUndimmedDetentIdentifier = smallestUndimmedDetentIdentifier
        self.prefersEdgeAttachedInCompactHeight = prefersEdgeAttachedInCompactHeight
        self.prefersScrollingExpandsWhenScrolledToEdge = prefersScrollingExpandsWhenScrolledToEdge
        self._isPresented = isPresented
    }
    func body(content: Content) -> some View {
        ZStack{
            content
            CustomSheet_UI(isPresented: $isPresented, detents: detents, smallestUndimmedDetentIdentifier: smallestUndimmedDetentIdentifier, prefersScrollingExpandsWhenScrolledToEdge: prefersScrollingExpandsWhenScrolledToEdge, prefersEdgeAttachedInCompactHeight: prefersEdgeAttachedInCompactHeight, content: {sheetContent}).frame(width: 0, height: 0)
        }
    }
}
@available(iOS 15.0, *)
extension View {
    func adaptiveSheet<T: View>(isPresented: Binding<Bool>, detents : [UISheetPresentationController.Detent] = [.medium(), .large()], smallestUndimmedDetentIdentifier: UISheetPresentationController.Detent.Identifier? = .medium, prefersScrollingExpandsWhenScrolledToEdge: Bool = false, prefersEdgeAttachedInCompactHeight: Bool = true, @ViewBuilder content: @escaping () -> T)-> some View {
        modifier(AdaptiveSheet(isPresented: isPresented, detents : detents, smallestUndimmedDetentIdentifier: smallestUndimmedDetentIdentifier, prefersScrollingExpandsWhenScrolledToEdge: prefersScrollingExpandsWhenScrolledToEdge, prefersEdgeAttachedInCompactHeight: prefersEdgeAttachedInCompactHeight, content: content))
    }
}

@available(iOS 15.0, *)
struct CustomSheet_UI<Content: View>: UIViewControllerRepresentable {
    
    let content: Content
    @Binding var isPresented: Bool
    let detents : [UISheetPresentationController.Detent]
    let smallestUndimmedDetentIdentifier: UISheetPresentationController.Detent.Identifier?
    let prefersScrollingExpandsWhenScrolledToEdge: Bool
    let prefersEdgeAttachedInCompactHeight: Bool
    
    init(isPresented: Binding<Bool>, detents : [UISheetPresentationController.Detent] = [.medium(), .large()], smallestUndimmedDetentIdentifier: UISheetPresentationController.Detent.Identifier? = .medium, prefersScrollingExpandsWhenScrolledToEdge: Bool = false, prefersEdgeAttachedInCompactHeight: Bool = true, @ViewBuilder content: @escaping () -> Content) {
        self.content = content()
        self.detents = detents
        self.smallestUndimmedDetentIdentifier = smallestUndimmedDetentIdentifier
        self.prefersEdgeAttachedInCompactHeight = prefersEdgeAttachedInCompactHeight
        self.prefersScrollingExpandsWhenScrolledToEdge = prefersScrollingExpandsWhenScrolledToEdge
        self._isPresented = isPresented
    }
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    func makeUIViewController(context: Context) -> CustomSheetViewController<Content> {
        let vc = CustomSheetViewController(coordinator: context.coordinator, detents : detents, smallestUndimmedDetentIdentifier: smallestUndimmedDetentIdentifier, prefersScrollingExpandsWhenScrolledToEdge:  prefersScrollingExpandsWhenScrolledToEdge, prefersEdgeAttachedInCompactHeight: prefersEdgeAttachedInCompactHeight, content: {content})
        return vc
    }
    
    func updateUIViewController(_ uiViewController: CustomSheetViewController<Content>, context: Context) {
        if isPresented{
            uiViewController.presentModalView()
        }else{
            uiViewController.dismissModalView()
        }
    }
    class Coordinator: NSObject, UIAdaptivePresentationControllerDelegate {
        var parent: CustomSheet_UI
        init(_ parent: CustomSheet_UI) {
            self.parent = parent
        }
        //Adjust the variable when the user dismisses with a swipe
        func presentationControllerDidDismiss(_ presentationController: UIPresentationController) {
            if parent.isPresented{
                parent.isPresented = false
            }
            
        }
        
    }
}

@available(iOS 15.0, *)
class CustomSheetViewController<Content: View>: UIViewController {
    let content: Content
    let coordinator: CustomSheet_UI<Content>.Coordinator
    let detents : [UISheetPresentationController.Detent]
    let smallestUndimmedDetentIdentifier: UISheetPresentationController.Detent.Identifier?
    let prefersScrollingExpandsWhenScrolledToEdge: Bool
    let prefersEdgeAttachedInCompactHeight: Bool
    private var isLandscape: Bool = UIDevice.current.orientation.isLandscape
    init(coordinator: CustomSheet_UI<Content>.Coordinator, detents : [UISheetPresentationController.Detent] = [.medium(), .large()], smallestUndimmedDetentIdentifier: UISheetPresentationController.Detent.Identifier? = .medium, prefersScrollingExpandsWhenScrolledToEdge: Bool = false, prefersEdgeAttachedInCompactHeight: Bool = true, @ViewBuilder content: @escaping () -> Content) {
        self.content = content()
        self.coordinator = coordinator
        self.detents = detents
        self.smallestUndimmedDetentIdentifier = smallestUndimmedDetentIdentifier
        self.prefersEdgeAttachedInCompactHeight = prefersEdgeAttachedInCompactHeight
        self.prefersScrollingExpandsWhenScrolledToEdge = prefersScrollingExpandsWhenScrolledToEdge
        super.init(nibName: nil, bundle: .main)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func dismissModalView(){
        dismiss(animated: true, completion: nil)
    }
    func presentModalView(){
        
        let hostingController = UIHostingController(rootView: content)
        
        hostingController.modalPresentationStyle = .popover
        hostingController.presentationController?.delegate = coordinator as UIAdaptivePresentationControllerDelegate
        hostingController.modalTransitionStyle = .coverVertical
        if let hostPopover = hostingController.popoverPresentationController {
            hostPopover.sourceView = super.view
            let sheet = hostPopover.adaptiveSheetPresentationController
            //As of 13 Beta 4 if .medium() is the only detent in landscape error occurs
            sheet.detents = (isLandscape ? [.large()] : detents)
            sheet.largestUndimmedDetentIdentifier =
            smallestUndimmedDetentIdentifier
            sheet.prefersScrollingExpandsWhenScrolledToEdge =
            prefersScrollingExpandsWhenScrolledToEdge
            sheet.prefersEdgeAttachedInCompactHeight =
            prefersEdgeAttachedInCompactHeight
            sheet.widthFollowsPreferredContentSizeWhenEdgeAttached = true
            
        }
        if presentedViewController == nil{
            present(hostingController, animated: true, completion: nil)
        }
    }
    /// To compensate for orientation as of 13 Beta 4 only [.large()] works for landscape
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        if UIDevice.current.orientation.isLandscape {
            isLandscape = true
            self.presentedViewController?.popoverPresentationController?.adaptiveSheetPresentationController.detents = [.large()]
        } else {
            isLandscape = false
            self.presentedViewController?.popoverPresentationController?.adaptiveSheetPresentationController.detents = detents
        }
    }
}

@available(iOS 15.0, *)
struct FilterSortButton_Previews: PreviewProvider {
    static var previews: some View {
        FilterSortButton()
    }
}

struct Dropdown: View {
    @Binding var value: String
    @Binding var dropDownList: [String]
    @Binding var placeholder: String
    var body: some View {
        HStack {
            Menu {
                ForEach(dropDownList, id: \.self){ client in
                    Button(client) {
                        self.value = client
                    }
                }
            } label: {
                VStack(spacing: 0){
                    HStack{
                        Text(value.isEmpty ? placeholder : value)
                            .foregroundColor(value.isEmpty ? .gray : .black)
                        Spacer()
                        Image(systemName: "chevron.down")
                            .foregroundColor(Color.black)
                            .font(Font.system(size: 20, weight: .bold))
                    }
                    .padding(.all)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                    Rectangle()
                        .fill(Color.black)
                        .frame(height: 2)
                }
            }
        }
        .frame(height: 50.0)
    }
}

struct Filter: View {
    @Binding var filterName: String
    @State var show = false
    @State var items: [String] = ["Apples", "Oranges", "Bananas", "Pears", "Mangos", "Grapefruit"]
    @State var selections: [String] = []
    var body: some View {
        VStack {
        HStack {
            Button(action: {
                show.toggle()
            }){
                HStack {
                    Text(filterName)
                        .foregroundColor(Color.black)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Image(systemName: show ? "chevron.down" : "chevron.right")
                        .foregroundColor(Color.black)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                }
                .frame(maxWidth: .infinity)

            }
            .buttonStyle(.borderedProminent)
            .tint(.white)
        }
        .frame(height: 50.0)
        .padding(.vertical, 10.0)
            
            if show {
        FilterList()
            }

        }
        
}
    
}


struct FilterList: View {
    @State private var selectedStrength = "Mild"
    let strengths = ["Mild", "Medium", "Mature"]
    @State var items: [String] = ["Selection1", "Selection2", "Selection3", "Selection4", "Selection5", "Selection6"]
    @State var selections: [String] = []
    var body: some View {
        List {
            ForEach(self.items, id: \.self) { item in
                MultipleSelectionRow(title: item, isSelected: self.selections.contains(item)) {
                    if self.selections.contains(item) {
                        self.selections.removeAll(where: { $0 == item })
                    }
                    else {
                        self.selections.append(item)
                    }
                }
            }
        }
        .frame(height: 350.0)
    }
}


struct MultipleSelectionRow: View {
    var title: String
    var isSelected: Bool
    var action: () -> Void

    var body: some View {
        Button(action: self.action) {
            HStack {
                Text(self.title)
                    .foregroundColor(isSelected ? Color.black: Color.gray)
                if self.isSelected {
                    Spacer()
                    Image(systemName: "checkmark")
                        .foregroundColor(Color.black)
                }
            }
        }
        .buttonStyle(.borderedProminent)
        .tint(.white)
    }
}

