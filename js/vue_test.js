(function() {
  var list_data;

  list_data = ['かに', 'うに', 'いくら'];

  $(function() {
    return new Vue({
      el: '#lists',
      data: {
        selected: list_data[0],
        lists: list_data
      }
    });
  });

}).call(this);
