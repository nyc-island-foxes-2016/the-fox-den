var foxes;

var Fox = function(args){
  this.name = args.name;
  this.color = args.color;   
  this.cubs = [];
};

Fox.all = function(){
  return $.ajax('/foxes.json',{dataType: 'json'}).then(function(res){
    return res.map(function(curFox){
      return new Fox(curFox);
    });
  });
}

Fox.prototype.add_cub = function(cub){
  this.cubs.push( cub );
}

// Fox.all().then(function(allFoxes){
//   foxes = allFoxes;
// });
