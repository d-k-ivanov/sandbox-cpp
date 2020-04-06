/*
 * =====================================================================
 *      Project :  multithreading
 *      File    :  example2.cpp
 *      Created :  06/04/2020 02:39:55 +0300
 * =====================================================================
 */


#include <thread>
#include <iostream>
#include <string>

void run(std::string const &threadName) {
    for (auto i = 0; i < 5; i++) {
        //std::string out = threadName + std::to_string(i) + "\n";
        std::cout << threadName + std::to_string(i) + "\n";
    }
}

int main() {
    std::thread tA(run, "A");
    std::thread tB(run, "    B");
    std::thread tC(run, "        C");
    std::thread tD(run, "            D");
    std::thread tE(run, "                E");
    std::thread tF(run, "                    F");
    std::thread tG(run, "                        G");
    std::thread tH(run, "                            H");
    std::thread tI(run, "                                I");
    std::thread tJ(run, "                                    J");
    std::thread tK(run, "                                        K");
    std::thread tL(run, "                                            L");
    std::thread tM(run, "                                                M");
    std::thread tN(run, "                                                    N");
    std::thread tO(run, "                                                        O");
    std::thread tP(run, "                                                            P");
    tA.join();
    tB.join();
    tC.join();
    tD.join();
    tE.join();
    tF.join();
    tG.join();
    tH.join();
    tI.join();
    tJ.join();
    tK.join();
    tL.join();
    tM.join();
    tN.join();
    tO.join();
    tP.join();
}
