main(){
  List<String> list = [
    'ASUS',
    'Asus',
    'asus',
    'HP',
    'hp',
    'Hp',
    'MSI',
    'msi',
    'Msi'
  ];
counter(list);
}

counter(List list){

List elements=[];
list.forEach((element) {elements.add(element.toLowerCase());});


 var counts = elements.fold<Map<String, int>>({}, (map, element) {
 map[element] = (map[element] ?? 0) + 1;
  return map;
});
print(counts);
}