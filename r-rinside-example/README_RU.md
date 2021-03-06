# Использование R в С++

## Пролог

Для начала, я бы хотел процитировать Дирк Эддельбюттеля (активного контрибютора в Rcpp)

> You. Cannot. Compile. Rcpp. Classes. Without. R. It simply won't work. Rcpp is an R extension. – Dirk Eddelbuettel

Ho! Он так же является создателем пакета [RInside](https://github.com/eddelbuettel/rinside), который предоставляет бесшовную интеграцию расширений R в C++.

## Пример кода

```cpp
// main.cpp

#include <iostream>

#include <Rcpp.h>
#include <RInside.h>

int main(int argc, char *argv[])
{
    std::cout << "Hello, CPP World!\n";

    RInside R(argc, argv);
    Rcpp::CharacterVector a("Hello, R World!\n");
    print(a);

    exit(0);
}
```

## Компиляция с GCC

Так как мы используем Microsoft R Open 3.5.3, поэтому инструкция заточена под эту версию, но её можно легко раширить под любую версию R.

Нам понадобятся:

* Динамические библиотеки R, Rcpp и RInside для запуска приложений
* Библиотеки R и RInside для сборки
* Заголовки R, Rcpp и RInside

```bash
# Buildtime libs
export LIBRARY_PATH="/opt/microsoft/ropen/3.5.3/lib64/R/library/RInside/lib:$LD_LIBRARY_PATH"
export LIBRARY_PATH="/opt/microsoft/ropen/3.5.3/lib64/R/lib:$LD_LIBRARY_PATH"

# Include dirs
export CPLUS_INCLUDE_PATH="/opt/microsoft/ropen/3.5.3/lib64/R/library/RInside/include:$CPLUS_INCLUDE_PATH"
export CPLUS_INCLUDE_PATH="/opt/microsoft/ropen/3.5.3/lib64/R/library/Rcpp/include:$CPLUS_INCLUDE_PATH"
export CPLUS_INCLUDE_PATH="/opt/microsoft/ropen/3.5.3/lib64/R/include:$CPLUS_INCLUDE_PATH"

# R dependencies
Rscript -e 'install.packages("Rcpp", "RInside")'

g++ -lR -lRInside -o main.bin main.cpp
```

## Запуск

```bash
# Runtime libs
export LD_LIBRARY_PATH="/opt/microsoft/ropen/3.5.3/lib64/R/library/RInside/lib:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="/opt/microsoft/ropen/3.5.3/lib64/R/library/Rcpp/lib:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="/opt/microsoft/ropen/3.5.3/lib64/R/lib:$LD_LIBRARY_PATH"

bash_prompt$ ./main.bin
Hello, CPP World!
[1] "Hello, R World!\n"

```
