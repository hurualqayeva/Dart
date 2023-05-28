import 'dart:math';

main(){
// Task: 
// Tam ədədlərdən ibarət bir list hazırlayın.
// Listin üzərində əməliyyat aparmaq üçün 4 funksiya yaradın.
// 1- funksiya: listin ən böyük elementin tapır
// 2- funksiya listin ən kiçik elementin tapır
// 3- funksiya elementlərin cəmini tapır
// 4- funksiya elementlərin ədədi ortasını tapır
List<double> list1=[12,3,4];

print("Biggest element of the list : ${biggestElement(list1)}");
print("Smallest element of the list : ${smallestElement(list1)}");
print("Sum of the list : ${sumOfList(list1)}");
print("Average of the list : ${meanOfList(list1).toStringAsFixed(2)}");

}

double biggestElement(List<double> list1){

 return list1.reduce((value, element) => value > element ? value: element); // == reduce(max)
   
}
double smallestElement(List<double> list1){

 return list1.reduce(min); 
   
}
double sumOfList(List<double> list1){

 return list1.reduce((value, element) => value+element); 
   
}
double meanOfList(List<double> list1){

 return list1.reduce((value, element) => value+element)/list1.length; 

}
