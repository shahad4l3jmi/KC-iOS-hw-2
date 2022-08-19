//
//  ContentView.swift
//  2nd HW
//
//  Created by Shhooda on 12/08/2022.
//

import SwiftUI



struct ContentView: View {
    
    @State var amount = ""
    @State var amount1 = ""
    @State var amount2 = ""
    @State var amount3 = ""
    @State var amount4 = ""
    @State var MYmoney = ""
    @State var FinPirice = 0.0
    @State var price = ""
    
    var body: some View {
        ZStack{
            Image("JP2")
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()
                .frame(width: 950, height: 950)
            
            //Image("PFP")
            //   .resizable()
            // .scaledToFit()
            // .clipShape(Circle())
            //.shadow(color:.black, radius: 10)
            //.padding()
            
            VStack{
                Text("Amai Cafe")
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.bold)
                
                Image("PFP")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .shadow(color:.black, radius: 10)
                    .frame(width: 150, height: 150)
                
                Text("Our Menu")
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.bold)
                
                VStack{
                    
                    MyView(MyMenu: $amount ,title: "Zenitsu Mojito ", price: "1.750")
                    MyView(MyMenu: $amount1 ,title: "Chicken Onigiri",price: "3.750")
                    MyView(MyMenu: $amount2 ,title: "Miso Ramen"    ,price:   "4.250")
                    MyView(MyMenu: $amount3 ,title: "Fried Rice    ", price:  "4.500")
                    MyView(MyMenu: $amount4 ,title: "Kazanookie  ", price:   "3.750")
                    
                    
                    
                }.multilineTextAlignment(.leading)
                    .padding(20).background(.brown.opacity(0.8))
                    .cornerRadius(20)
                    .frame(width: 380, height: 300, alignment: .leading)
                
                
                HStack{
                    
                    
                    Text("How Much Do You Have?")
                        .foregroundColor(.white)
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.trailing, 2.0)
                    
                    TextField("Amount", text: $MYmoney )
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 80, height: 40)
                }.padding(20)
                
                
                Button{
                    
                    //   let price1 = Double(amount) ?? 0 * 1.750
                    // let price2 = Double(amount) ?? 0 * 3.750
                    //  let price3 = Double(amount) ?? 0 * 4.250
                    //  let price4 = Double(amount) ?? 0 * 4.750
                    // let price5 = Double(amount) ?? 0 * 3.750
                    
                    FinPirice = CALC()
                    
                   // if (Double(MYmoney) ?? 0 >= FinPirice){
                    //    Text("Enjoy!!😋")
                     //       .foregroundColor(.white)
                     //       .font(.title2)
                        
                 //   }
                  //  else if Double(MYmoney) ?? 0 < FinPirice{
                   //     Text("I Think You Should Save More Money ☹️")
                       //     .foregroundColor(.white)
                       //     .font(.title2)
                        
                    }
                    
                
            label:{ Text("\tPress For Receipt\t")
                    .foregroundColor(.white)
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(15)
                    .background(.brown)
                    .cornerRadius(50)
                
            }
                Text("\(FinPirice) KD")
                    .foregroundColor(.white)
                    .font(.title2)
                    .fontWeight(.bold)
                
                if (Double(MYmoney) ?? 0 >= FinPirice){
                    Text("Enjoy!!😋")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.title2)
                    
                }
                else if Double(MYmoney) ?? 0 < FinPirice{
                    Text(" You Should Save More Money ☹️")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.title2)
                    
                }
            }
            
        }
        }
        
    
    func CALC () -> Double{
        let price1 = Double(amount) ?? 0 * 1.750
        let price2 = Double(amount1) ?? 0 * 3.750
        let price3 = Double(amount2) ?? 0 * 4.250
        let price4 = Double(amount3) ?? 0 * 4.750
        let price5 = Double(amount4) ?? 0 * 3.750
        
        return price1 + price2 + price3 + price4 + price5 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





struct MyView: View {
    @Binding var MyMenu: String
    @State var title:String
    @State var price:String
    
    var body: some View {
        HStack{
            
            Text(title)
                .foregroundColor(.white)
                .font(.title2)
                .padding(.trailing, 2.0)
            
            Text("\(price)")
                .foregroundColor(.white)
                .font(.title2)
                .padding(.trailing, 2.0)
            
            Text("KD")
                .foregroundColor(.white)
                .font(.title2)
                .padding(.trailing, 2.0)
            
            TextField("Qty", text: $MyMenu )
                .textFieldStyle(.roundedBorder)
                .frame(width: 80, height: 40)
            
            // Stepper(title,value: $amount, in:0...130)
            //  .foregroundColor(.white)
            //  .font(.title2)
            //  .padding(.trailing, 2.0)
            //  .scaledToFit()
            //  .frame(width: 300, height: 40, alignment: .leading)
            //  Text("\(amount)")
        }
    }
    
}

