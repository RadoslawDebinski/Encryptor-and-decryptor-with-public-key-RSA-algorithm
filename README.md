# Encryptor-and-decryptor-with-public-key-RSA-algorithm

Project graph:
![image](https://user-images.githubusercontent.com/83645103/203999993-c0c77236-fea2-4c31-8c6c-416926c0c180.png)


encryptorAndDecryptorWithPublicKey - Main class. It creates tables for data to be encrypted and decrypted, calls functions to generate prime numbers and does mathematical operations on data.

keysGenerator - function which generates three numbers which are necessary for RSA alghorithm

randNum - It generates random number with predefined length in sings. Moreover, there is option to choose an odd or even number.

primeCheck - It checks primary of given number k times.

millRabTest - Implementation of Miller-Rabin algorithm for checking number primary.

coprime - This function checks are two numbers co-prime or not.

*Additional functions, with no current usage. They were created to allow the program's work with numbers bigger than 64 bit in future. There is a need to expand them to work correctly.

modInv - executes the modular multiplicative inverse.

modExponent - executes the modular exponentiation.
