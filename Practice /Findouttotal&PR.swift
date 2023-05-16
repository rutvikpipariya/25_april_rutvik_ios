
import Foundation
print("enter subject 1 mark : ") 
var sub1 = Float(readLine()!)!
print("enter subject 2 mark: ")
var sub2 = Float(readLine()!)! 
print("enter subject 3 mark: ")
var sub3 = Float(readLine()!)!
print("enter subject 4 mark : ")
var sub4 = Float(readLine()!)!
if sub1>=40 && sub2>=40 && sub3>=40 &&  sub4>=40
{
let total = sub1+sub2+sub3+sub4
print("Total : \(total) ")
let percentage = total*100/400
print("Percentage \(percentage)")
if percentage >= 70{
print("You got distinction")}
else if percentage >= 60{
print("You got first class")}
else if percentage >= 50{
print("You got second class")}
else if percentage >= 40{ 
print("You got third class")}
else {
print("You got fail")}
} 
