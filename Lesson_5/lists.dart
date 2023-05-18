main(){
// Task-1
// tam ədədlərdən ibarət 2 List yaradın
// bu 2 siyahının elementlərini yeni bir siyahıda yerləşdirin və çap edin.
// yeni siyahını azdan çoxa doğru sıralayın və çap edin.

print('Task 1');
List<double> list1=[12.3,34,5.4];
List<double> list2=[22.3,35,76];
List list3=list1+list2;
print('Concatenated list: ${list3}');
list3.sort();
print('Sorted list: ${list3}');
print('${'-'*100}');
// Task - 2 
// daxilində tərarlanan və təkrarlanmayan tam ədədlərin olduğu qarışıq siyahı qurun
// siyahıda təkrarlanan elementləri silin
// siyahının ən yüksək dəyərə sahib 2ci elementini tapın
// siyahını çoxdan aza doğru sıralayın
print('Task 2');
List<double> list4=[12.3,34,5.4,12.3,7];
print('Given list : ${list4}');
list4 = list4.toSet().toList();
print('List without dublicates: ${list4}');
list4.sort((a, b) => b.compareTo(a));
print('The second highest value: ${list4[1]}');
print('The descending order:${list4}');


}