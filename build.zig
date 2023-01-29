const std = @import("std");

pub fn build(b: *std.build.Builder) void {
    const target = b.standardTargetOptions(.{});
    const mode = b.standardReleaseOptions();

    const lib = b.addStaticLibrary("espresso", null);
    lib.setTarget(target);
    lib.setBuildMode(mode);
    lib.linkLibC();
    lib.addIncludePath("include");
    lib.addCSourceFiles(sources, &[_][]const u8{"-std=c99"});
    lib.install();
    lib.installHeadersDirectory("include", "");
}

const sources: []const []const u8 = &.{
    "src/black_white.c",
    "src/canonical.c",
    "src/cofactor.c",
    "src/cols.c",
    "src/compl.c",
    "src/contain.c",
    "src/cpu_time.c",
    "src/cubestr.c",
    "src/cvrin.c",
    "src/cvrm.c",
    "src/cvrmisc.c",
    "src/cvrout.c",
    "src/dominate.c",
    "src/equiv.c",
    "src/espresso.c",
    "src/essen.c",
    "src/essentiality.c",
    "src/exact.c",
    "src/expand.c",
    "src/gasp.c",
    "src/gimpel.c",
    "src/globals.c",
    "src/hack.c",
    "src/indep.c",
    "src/irred.c",
    "src/map.c",
    "src/matrix.c",
    "src/mincov.c",
    "src/opo.c",
    "src/pair.c",
    "src/part.c",
    "src/primes.c",
    "src/prtime.c",
    "src/reduce.c",
    "src/rows.c",
    "src/set.c",
    "src/setc.c",
    "src/sharp.c",
    "src/sigma.c",
    "src/signature.c",
    "src/signature_exact.c",
    "src/sminterf.c",
    "src/solution.c",
    "src/sparse.c",
    "src/strdup.c",
    "src/unate.c",
    "src/util_signature.c",
    "src/verify.c",
};
