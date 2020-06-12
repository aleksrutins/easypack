module lib.installer.core;

import std.stdio : writef, writeln;
import archive.targz;
import std.conv : to;

void install(TarGzArchive arch) {
    auto easypackJson = parseJson(to!(char[])(arch.getFile("easypack.epdata").data)
}
