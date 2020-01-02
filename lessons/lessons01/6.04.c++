/* Напишите таблицу результатов всех побитовых логических операций для всех возможных комбинаций операндов 0 и 1 */	
#include <iostream>

int main()
{	
	bool a0 = false; //0
	bool a1 = true;  //1
	bool b0 = false; //0
	bool b1 = true;  //1
	
/*	
	int a0 = 2; //0
	int a1 = 3;  //1
	int b0 = 4; //0
	int b1 = 5;  //1
*/	

	std::cout << "\t|---|---|-----|-----|-----|------|-----|-----|" << std::endl;	
	std::cout << "Oper:\t|-a-|-b-|-and-|--or-|-xor-|-notA-|-->>-|--<<-|" << std::endl;
	std::cout << "\t|---|---|-----|-----|-----|------|-----|-----|" << std::endl;
	std::cout << "\t| " << a0 << " | " << b0 << " |  "<< (a0&b0) << "  |  " << (a0|b0) << "  |  " << (a0^b0) << "  |  " << (~a0) << "  |  " << (a0>>b0) << "  |  " << (a0<<b0) << "  |  " << std::endl;
    std::cout << "\t| " << a0 << " | " << b1 << " |  "<< (a0&b1) << "  |  " << (a0|b1) << "  |  " << (a0^b1) << "  |  " << (~a0) << "  |  " << (a0>>b1) << "  |  " << (a0<<b1) << "  |  " << std::endl;
    std::cout << "\t| " << a1 << " | " << b0 << " |  "<< (a1&b0) << "  |  " << (a1|b0) << "  |  " << (a1^b0) << "  |  " << (~a1) << "  |  " << (a1>>b0) << "  |  " << (a1<<b0) << "  |  " << std::endl;
    std::cout << "\t| " << a1 << " | " << b1 << " |  "<< (a1&b1) << "  |  " << (a1|b1) << "  |  " << (a1^b1) << "  |  " << (~a1) << "  |  " << (a1>>b1) << "  |  " << (a1<<b1) << "  |  " << std::endl;
	std::cout << "\t|---|---|-----|-----|-----|------|-----|-----|" << std::endl;
	std::cout << "Size:\t| " << sizeof(a0) << " | " << sizeof(b0) << " |  "<< sizeof(a0&b0) << "  |  " << sizeof(a0|b0) << "  |  " << sizeof(a0^b0) << "  |   " << sizeof(~a0) << "  |  " << sizeof(a0>>b0) << "  |  " << sizeof(a0<<b0) << "  |  " << std::endl;
	std::cout << "\t|___|___|_____|_____|_____|______|_____|_____|" << std::endl;	
	

	//std::cout << "END\n";
	return 0;
}
