const print = @import("std").debug.print;

pub fn main() void {
    var y: i32 = 5678;

    y += 1;

    print("{d}\n", .{y});

    var x: i32 = undefined;
    x = 1;
    print("{d}\n", .{x});
}
