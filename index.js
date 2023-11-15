#!node
import './json.js';
import { pgp, db } from './db.js';

const objs = JSON.read("registry.json");
const cols = {};
for(var i=0;i<objs.length;i++){
  const obj=objs[i];
  const keys=Object.keys(obj);
  for(let j=0; j<keys.length; j++){
    const key=keys[j];
    const val=obj[key];
    if(val==null)
      continue;
    objs[0][key]=val;
  }
}
console.log(objs[0])
const is = pgp.helpers.insert(objs[0],null,'chains');

//console.log(objs);
//const cs = new pgp.helpers.ColumnSet(Object.keys(objs[0]));
            //console.log(cs);
console.log(is);


//   
//   
//   const pgp = await import('./db.js');
//   const data = JSON.read('registry.json');
//   consols.log(pgp.conn);


