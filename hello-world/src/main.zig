const std = @import("std");
const builtin = @import("builtin");

pub fn main() !void {
    const msg = "hello this is dog";
    var it = std.mem.tokenize(u8, msg, " ");
    while (it.next()) |item| {
        std.debug.print("{s}\n", .{item});
    }
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}

test "integer overflow at compile time" {
    const x: u8 = 255;
    x += 1;
}
