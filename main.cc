#include <future>
#include <iostream>

void f()
{
  std::cout << "The cake is a lie in this thread too" << std::endl;
}

int main ()
{
  auto t1 = std::async( std::launch::async , f );
  auto t2 = std::async( std::launch::async , f );
  std::cout << "The cake is a lie" << std::endl;
}
