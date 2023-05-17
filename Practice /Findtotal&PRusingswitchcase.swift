import Foundation
var sub1:Int?,sub2:Int?,sub3:Int?,sub4:Int?
print("enter sub1 mark : ")
sub1=Int(readLine()!)
print("enter sub2 mark : ")
sub2=Int(readLine()!)
print("enter sub3 mark : ")
sub3=Int(readLine()!)
print("enter sub4 mark : ")
sub4=Int(readLine()!)
if sub1!>=35 && sub2!>=35 && sub3!>=35 && sub4!>=35
{
    let total = sub1!+sub2!+sub3!+sub4!
    print("Total : \(total)")
    let pr = total*100/400
    print("PR : \(pr)")
    switch(pr/10)
    {
        case 10:
        print("GRADE : A+")
        case 9:
        print("GRADE : A1")
        case 8:
        print("GRADE : A")
        case 7:
        print("GRADE : B+")
        case 6:
        print("GRADE : B1")
        case 5:
        print("GRADE : B")
        case 4:
        print("GRADE : C+")
        case 3:
        print("GRADE : C")
        /*case 10:
        print("YOU GOT DISTINCTION")
        case 9:
        print("YOU GOT FIRST CLASS")
        case 8:
        print("YOU GOT SECOND CLASS")
        case 7:
        print("YOU GOT THIRD CLASS")
        case 6:
        print("YOU GOT FOURTH CLASS")
        case 5:
        print("YOU GOT FIFTH CLASS")
        case 4:
        print("YOU GOT SIXTH CLASS")
        case 3:
        print("YOU GOT SEVENTH CLASS")*/
        default:
        print("invalid.....")
    }  
}
else
{
    print("YOU'R FAIL--- TRY IN NEXT ATTEMPT")
}
