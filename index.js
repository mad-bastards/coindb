#!node
import './json.js';
import { pgp, db } from './db.js';

const objs = JSON.read("registry.json");
const cols = {};
//   for(var i=0;i<objs.length;i++){
//     const obj=objs[i];
//     const keys=Object.keys(obj);
//     for(var j=0;j<keys.length;j++){
//       const key=keys[j];
//       const type=typeof(obj[key]);
//       cols[key]||={};
//       cols[key][type]||=0;
//       cols[key][type]++;
//     };
//   }
//console.log(objs);
//const cs = new pgp.helpers.ColumnSet(Object.keys(objs[0]));
            //console.log(cs);
const is = pgp.helpers.insert(objs[0],null,'chains');
console.log(is);


//   
//   
//   const pgp = await import('./db.js');
//   const data = JSON.read('registry.json');
//   consols.log(pgp.conn);
