FLAGS=-g -O3 -std=gnu++14

all: view-distribution encrypt-example maxpos-decryptor unigrams-decryptor bigrams-decryptor

encrypt-example: encrypt-example.cpp rc4.cpp rc4.h stattables.h
	g++ encrypt-example.cpp rc4.cpp -o $@ ${FLAGS}

bigrams-decryptor: bigrams-decryptor.cpp stattables.h
	g++ $< -Ifxt/src -o $@ ${FLAGS}

unigrams-decryptor: unigrams-decryptor.cpp stattables.h
	g++ $< -Ifxt/src -o $@ ${FLAGS}

maxpos-decryptor: maxpos-decryptor.cpp stattables.h
	g++ $< -Ifxt/src -o $@ ${FLAGS}

view-distribution: view-distribution.cpp rc4.cpp rc4.h
	g++ view-distribution.cpp rc4.cpp -o $@ -lpthread ${FLAGS}

clean:
	rm -rf view-distribution encrypt-example maxpos-decryptor unigrams-decryptor bigrams-decryptor

