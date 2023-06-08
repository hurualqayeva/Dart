main(){
Rectangle rect= Rectangle(5, 10);

print(rect.area());
}
 class Rectangle{
  double width;
  double height;
  Rectangle(this.width,this.height);

  double area(){
return this.width*this.height;
  }

double perimeter(){

return 2*(this.width+this.height);
  }
 }