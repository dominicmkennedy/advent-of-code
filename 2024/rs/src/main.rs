use std::fs;

fn parse_ln(x: &str) -> (i32, i32) {
    let i = x.split("   ").collect::<Vec<_>>();
    (i[0].parse::<i32>().unwrap(), i[1].parse::<i32>().unwrap())
}

fn main() {
    let contents = fs::read_to_string("../input/day_01_input.txt").unwrap();
    let (mut a, mut b): (Vec<i32>, Vec<i32>) = contents.lines().into_iter().map(parse_ln).unzip();
    a.sort();
    b.sort();

    let part1 = a.iter().zip(b.iter()).map(|(a, b)| (a - b).abs()).sum::<i32>();
    let part2 = a.iter().map(|x| b.iter().filter(|y| x == *y).count() as i32 * x).sum::<i32>();
    println!("{part1}\n{part2}");
}
