var no1:Int? , no2:Int?,choice:Int?

print("Enter Your Number1:")
no1=Int(readLine()!)!

print("Enter Your Number2:")
no2=Int(readLine()!)!

print("Enter Your Choice:")
choice=Int(readLine()!)!

switch choice
{
   case 1:
   print("sum:\(no1!+no2!) ")
    
  case 2:
  print("sub:\(no1!-no2!)")
    
  case 3:
  print("mul:\(no1!*no2!)")
    
  case 4:
  print("div:\(no1!/no2!)")
    
  default:
    print("wrong choice......try agian")
    
}
