#include <algorithm>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <numeric>
#include <ranges>
#include <sstream>
#include <string>
#include <vector>

const std::vector<std::vector<int>> read_file(const std::string &fname) {
  std::ifstream file(fname);
  std::vector<std::vector<int>> res;

  std::string line;
  while (std::getline(file, line)) {
    std::stringstream ss(line);
    std::vector<int> xs;
    int x;

    while (ss >> x) {
      xs.push_back(x);
    }

    res.push_back(xs);
  }
  file.close();

  return res;
}

int check_diffs(const std::vector<int> &v) {
  std::vector<int> diffs(v.size());
  std::adjacent_difference(v.begin(), v.end(), diffs.begin());
  diffs.erase(diffs.begin());
  bool neg = diffs[0] < 0 ? true : false;

  std::transform(diffs.begin(), diffs.end(), diffs.begin(), [neg](int x) {
    x = neg ? x * -1 : x;
    return x == 1 || x == 2 || x == 3;
  });

  return std::accumulate(diffs.begin(), diffs.end(), 1,
                         [](int x, int y) { return x && y; });
}

const std::vector<std::vector<int>> make_combos(const std::vector<int> &v) {
  std::vector<std::vector<int>> res;

  for (auto [index, _] : std::ranges::views::enumerate(v)) {
    std::vector<int> tmp(v);
    tmp.erase(tmp.begin() + index);
    res.push_back(tmp);
  }

  return res;
}

int part_one(const std::vector<std::vector<int>> &data) {
  std::vector<int> res(data.size());

  std::transform(data.begin(), data.end(), res.begin(),
                 [](std::vector<int> x) { return check_diffs(x); });

  return std::accumulate(res.begin(), res.end(), 0);
}

int part_two(const std::vector<std::vector<int>> &data) {
  std::vector<std::vector<std::vector<int>>> all_combos(data.size());

  std::transform(data.begin(), data.end(), all_combos.begin(),
                 [](std::vector<int> x) { return make_combos(x); });

  std::vector<int> outer_res(data.size());

  std::transform(all_combos.begin(), all_combos.end(), outer_res.begin(),
                 [](std::vector<std::vector<int>> one_combos) {
                   std::vector<int> inner_res(one_combos.size());
                   std::transform(
                       one_combos.begin(), one_combos.end(), inner_res.begin(),
                       [](std::vector<int> x) { return check_diffs(x); });

                   return std::accumulate(inner_res.begin(), inner_res.end(), 0,
                                          [](int a, int b) { return a || b; });
                 });

  return std::accumulate(outer_res.begin(), outer_res.end(), 0);
}

int main() {
  std::vector<std::vector<int>> data = read_file("../input/day_02_input.txt");
  std::cout << "Part One: " << part_one(data) << "\n";
  std::cout << "Part Two: " << part_two(data) << "\n";
}
