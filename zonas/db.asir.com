zone "asir.com." {
        type primary;
        file "/var/lib/bind/db.asir.com";
        notify explicit;
};