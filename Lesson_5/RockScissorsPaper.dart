import 'dart:io';
import 'dart:core';

void main() {
    List<int> score=[0,0];
    List<String> names=['rock','scissors','paper'];

    while(score[0]!=3 && score[1]!=3) {
        String randomItem = (names.toList()..shuffle()).first;
        print('Enter the value');
        String userChoice=stdin.readLineSync().toString().toLowerCase();
        print(userChoice);
        print(randomItem);
        String firstComp=getInitials(randomItem);
        String firstUser=getInitials(userChoice);

        if(firstComp==firstUser) {
            print('score draw');
            print(score);
        } else {

            switch(firstComp) {
            case 'r': {

                if(firstUser=='s') {
                    score[1]=score[1]+1;
                } else {
                    score[0]=score[0]+1;
                }
            }

            break;
            case 's': {
                if(firstUser=='r') {
                    score[1]=score[1]+1;
                } else {
                    score[0]=score[0]+1;
                }
            }
            print(score);
            break;
            case 'p': {
                if(firstUser=='s') {
                    score[1]=score[1]+1;
                } else {
                    score[0]=score[0]+1;
                }
            }
            print(score);
            break;
            }
        }
    }
}
String getInitials(String name) => name.isNotEmpty
? name.trim().split(' ').map((l) => l[0]).take(2).join()
: '';
