module lib.installer.core;

import std.stdio : writef, writeln;
import archive.targz;
import std.conv : to;
import dsl.parser;

void install(TarGzArchive arch) {
    auto easypackJson = EPDSLInstance.parse(to!(char[])(arch.getFile("easypack.epdata").data));
    string packName = easypackJson.getDecl("name").value;
    EPDSLDecl[] dependencies = easypackJson.getDecls("dependency");
    foreach (EPDSLDecl dep; dependencies)
    {
        
    }
}
