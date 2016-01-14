var Controller = function(view){
  this.view = view;
}

Controller.prototype.foxesIndex = function(){

  var self = this;

  Fox.all().then(function(allFoxes){
    this.view.showFoxes( allFoxes );
  }.bind(self));
};