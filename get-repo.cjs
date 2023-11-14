const cp = require('child_process');
const pkgs = cp.execSync('find -name package.json').toString().split("\n");
for(const pkg of pkgs) {
  if(pkg==null||pkg.length==0)
    continue;
  const res = require(pkg);
  if(res.repository) {
    const rep = res.repository;
    if(res.name) {
      rep.name=res.name;
    } else {
      rep.name=pkg;
    }
    console.log(rep);
  };
};
