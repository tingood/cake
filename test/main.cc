#include <gtest/gtest.h>


TEST(simple_test_case, simple_test)
{
  EXPECT_EQ(1, 1);
}

TEST(simple_test_case, simple_test)
{
  EXPECT_EQ(2, 2);
}

TEST(second_test_case, simple_test)
{
  EXPECT_EQ(3, 3);
}

int main(int argc, char** argv)
{
  testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
