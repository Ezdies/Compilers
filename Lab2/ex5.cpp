#include <iostream>
#include <string>

bool isA(char c){
    return c == 'a';
}

int main(){
    std::cout << "Podaj ciag znakow do zweryfikowania\n";
    std::string s;
    std::cin >> s;
    int n = s.size();

    int aCounter = 0;
    int bCounter = 0;
    bool bStarted = false;

    for(int i = 0; i < n; i++){
        if(isA(s[i])){
            if(bStarted){
                std::cout << "Syntax error\n";
                return 0;
            }
            aCounter++;
        }else if(s[i] == 'b'){
            bStarted = true;
            bCounter++;
        }else{
            std::cout << "Syntax error\n";
            return 0;
        }
    }

    if(aCounter > 0 && aCounter == bCounter){
        std::cout << "OK\n";
    }else{
        std::cout << "Syntax error\n";
    }

    return 0;
}
