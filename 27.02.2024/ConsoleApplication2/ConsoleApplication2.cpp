#include <iostream>
#include <math.h>
using namespace std;

class Ksztalty {
private:
	const float pi = 3.14;
	float r;
	float h;
	float a;
	float b;
	float e, f;
public:
	Ksztalty(float r1, float h1, float a1, float b1, float e1, float f1) {
		
		this->r = r1;
		this->h = h1;
		this->a = a1;
		this->b = b1;
		this->e = e1;
		this->f = f1;

	}
	void kolo() {
		cout << "Pole kola: ";
		cout << this->pi * pow(this->r, 2) << endl;
	}
	void kwadrat() {
		cout << "Pole kwadratu: ";
		cout << this->a * this->b << endl;
	}
	void trojkat() {
		cout << "Pole trojkata: ";
		cout << (this->a * this->h)/2 << endl;
	}
	
	
	void romb() {
		cout << "Pole romb: ";
		cout << (this->e * this->f) / 2 << endl;;
	}

};
int main()
{
	setlocale(LC_ALL, "");
	float r, h, a, b, e, f;
	cout << "podaj r:"; cin >> r;
	cout << "podaj h:"; cin >> h;
	cout << "podaj a:"; cin >> a;
	cout << "podaj b:"; cin >> b;
	cout << "podaj e:"; cin >> e;
	cout << "podaj f:"; cin >> f;
	Ksztalty nr1(r, h, a, b, e, f);
	nr1.kolo();
	nr1.kwadrat();
	nr1.romb();
	nr1.trojkat();
	return EXIT_SUCCESS;
}
