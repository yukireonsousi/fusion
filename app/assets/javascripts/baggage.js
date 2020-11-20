jQuery(document).ready(function() {
$(".task-check").bind('change', function(){
  if (this){ //thisは
    $.ajax({
      url: '/baggages/'+this.id+'/toggle',  //checkbox_tagの中にある「各、荷物のid番号」となる部分がvalueとして存在する
      type: 'POST',  //HTTPメソッドのtypeを指定
      data: {"delivery_data": this.checked}
    });
    
    
  }
  else {
    $.ajax({
      url: 'baggages/'+this.id+'/toggle',
      type:'POST',
      data: {"delivery_data": this.checked}
    })
    
  }
});
});











