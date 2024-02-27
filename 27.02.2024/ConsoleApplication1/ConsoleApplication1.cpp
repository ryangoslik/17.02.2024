
#include <iostream>

using namespace std;

class Samochody {
private:
	string marka;
	string kolor;
	float pojemnosc;
	float cena;
	int przebieg;
public:
	Samochody(string m, string k, float poj, float c, int przeb) {
		this->marka = m;
		this->kolor = k;
		this->pojemnosc = poj;
		this->cena = c;
		this->przebieg = przeb;
	}
	Samochody(string m, string k) {
		this->marka = m;
		this->kolor = k;
		this->prezentacjaSamochodu2();
	} 
	void prezentacjaSamochodu() {
			setlocale(LC_ALL, "");
			cout << " Marka: " << this->marka << "\n";
			cout << " kolor: " << this->kolor << "\n";
			cout << " Pojemnosc: " << this->pojemnosc << "\n";
			cout << " cena: " << this->cena << "\n";
			cout << " przebieg: " << this->przebieg << "\n";
			cout << "----------------------------------------------" << endl;
		
	}
	void prezentacjaSamochodu2() {
		setlocale(LC_ALL, "");
		cout << "##############################################" << endl;
		cout << " Marka: " << this->marka << "\n";
		cout << " kolor: " << this->kolor << "\n";
		cout << "----------------------------------------------" << endl;
	}
};
int main()
{
	//Samochody fiat = Samochody("FIAT", "Kupa", 1.0, 250.56756565, 180);
	//fiat.prezentacjaSamochodu();
	string marka[3] = { "Fiat", "Volvo", "Skoda" };
	string kolor[3] = { "green", "blue" , "black" };
	float pojemnosc[3] = { 1.2,1.8,2.4 };
	float cena[3] = { 180,250,244 };
	int przebieg[3] = { 1,10,8 };

	for (int i = 0; i < 3; i++) {
		Samochody sam = Samochody(marka[i], kolor[i], pojemnosc[i], cena[i], przebieg[i]);
		sam.prezentacjaSamochodu();
	};

	for (int i = 0; i < 3; i++) {
		Samochody samochod = Samochody(marka[i], kolor[i]);

	};

	return EXIT_SUCCESS; 
}
