

from menv import group, mconfig;

function build() {
    var arch = mconfig.arch;
    var bootApps;
    var entries;

    bootApps = [
        "boot/bootman:bootmefi.efi",
        "boot/loader:loadefi"
    ];

    if (arch == "x86") {
        bootApps += [
            "boot/bootman:bootman.bin",
            "boot/fatboot:fatboot.bin",
            "boot/loader:loader",
            "boot/mbr:mbr.bin"
        ];
    }

    entries = group("boot_apps", bootApps);
    return entries;
}
