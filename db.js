// THis just sets up to read your db
// from a local connection.  All I
// am exporting, at the moment, is
// the connection

import pgprom from 'pg-promise';
import monitor from 'pg-monitor';
const pginit={};
const pgp=pgprom(pginit);
monitor.attach(pginit);
const cred = {
    host:     "/run/postgresql/",
    database: "coindb"
};
const db = pgp(cred);
