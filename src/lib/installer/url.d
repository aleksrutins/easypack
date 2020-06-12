module lib.installer.url;
import std.net.curl : get;
import lib.installer.core;
import archive.targz;

void installUrl(string url, string source = "local") {
    install(new TarGzArchive(get(url)));
}
