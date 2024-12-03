#include <algorithm>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <numeric>
#include <ranges>
#include <tuple>
#include <vector>

const std::tuple<std::vector<int>, std::vector<int>>
read_file(const std::string &fname) {
  std::ifstream file(fname);
  std::vector<int> a, b;

  int a0, b0;
  while (file >> a0 >> b0) {
    a.push_back(a0);
    b.push_back(b0);
  }
  file.close();

  std::sort(a.begin(), a.end());
  std::sort(b.begin(), b.end());

  return std::tuple(a, b);
}

int part_one(const std::vector<int> &a, const std::vector<int> &b) {
  auto a_b = std::views::zip(a, b);
  std::vector<int> c(a_b.size());

  std::transform(a_b.begin(), a_b.end(), c.begin(),
                 [](auto x) { return abs(std::get<0>(x) - std::get<1>(x)); });

  return std::accumulate(c.begin(), c.end(), 0);
}

int part_two(const std::vector<int> &a, const std::vector<int> &b) {
  std::vector<int> c(a.size());

  std::transform(a.begin(), a.end(), c.begin(),
                 [&b](int x) { return std::count(b.begin(), b.end(), x) * x; });

  return std::accumulate(c.begin(), c.end(), 0);
}

int main() {
  auto [a, b] = read_file("../../input/day_01_input.txt");
  std::cout << "Part One: " << part_one(a, b) << "\n";
  std::cout << "Part Two: " << part_two(a, b) << "\n";
}
