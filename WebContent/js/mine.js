
$(document).ready(function(){
	//用户登录后，登录注册消失
	 var id = $("#cont").text();
	 //alert(id=="")
   		if(id==""){
   			$("#loginid").hide();
   			$(".toggle1").show();
   			$(".toggleout").hide();
   		}else{
   			$(".toggle1").hide();
   			$(".toggleout").show();
   			
   		}
	 
	//最初的小计
	var originprice=0;
	var originnum=0;
	var tt=0;
	
	$(".text_box").each(function(){
		 originprice=Number($(this).parent().prev().text());
		 originnum=Number($(this).val());
		 //alert(originnum)
		 tt=originnum*originprice;
		 //alert($(this).parent().next().text());
		 $(this).next().parent().next().text(tt);
		 
	})
	
	/*$("body").on("",".text_box",function(){
		 alert(1)
		 originprice=Number($(this).parent().prev().text());
		 originnum=Number($(this).val())
		 alert(originnum)
		 tt=originnum*originprice;
		 alert($(this).parent().next().text());
		 $(this).next().parent().next().text(tt);
	});*/
	 addmin();
	 setTotal();
	 ttotal();
	 //myteacher.jsp
	  function ttotal(){
		  var tpertotal=0;
		 // alert($(".ttotal"))
		  //$(".ttotal").each(function(){
			// alert( $(this).text());
			  //alert($(this).parent().find(".tprice").length)
			  
				 /* $(this).parent().find(".tprice").each(function(){
					  //alert(2)
					 // alert($(this).text())
					  if($(this).parent().find(".ttotal").length>1){
						  alert(2);
					  tpertotal+=Number($(this).text());
					  alert(tpertotal);
					  }else{
						  alert(1);
						  tpertotal=Number($(this).text());
					  }
					 
					 
				  });*/
				  //alert( $(this).text());
				/*  alert($(this).text())
				  $(this).parent().find(".ttotal").text(tpertotal);
				  //alert( $(this).text());
			  
			 
			 
		  })*/
		 
			  $(".ttotal").each(function(){
				 // alert($(this).text())
				//alert($(this).parent().find(".tprice").length)
			  if( $(this).parent().find(".tprice").length>1){
				  var t=0;
				  $(this).parent().find(".tprice").each(function(){
					  var p=Number($(this).text());
					  var n=Number($(this).next().text());
					  //alert(p);
					  //alert(n);
					  
					  t=Number(t+Number(p*n));
					  //alert(t)
					  
				
			    });
				  $(this).text(t);
			  }else{
				  $(this).text(Number($(this).parent().find(".tprice").text()*$(this).parent().find(".tnum").text()));
			  }
		  })
	  }
	 
	 
	 
	 //全选清空清空
	 function delNeed1(){
		 $("#all").attr("checked",false);
		  $("#all1").attr("checked",false);
		  $(".buybtn").css({"color":"black","background":"#999"}).attr("disabled",true);
	 }
	 
	 $("body").on("click",".clearAll",function(){
		 //alert(1)
		  $(".cart_body").each(function(){
			 
			  if($("#all").is(":checked")){
				  $(this).remove();
				  if($(".list").length==0){
					 
					  delNeed1();
					  setTotal();
				  }
			  }
		  })
		  return false;
	 });
	 
	 $("body").on("click",".delSelected",function(){
		  $(".pid").each(function(){
			  //alert($(this).prop('checked'))
			  var tid=$(this).val();
			  alert(tid);
			  if($(this).prop('checked')){
				  $(this).parents(".cart_body").remove();
				  $(this).attr("checked",false);
			      //alert($(this).prop('checked'))
				  setTotal();
				  delNeed1();
				 
			  }
		  })
		  return false;
	 })
	 
	 //前台删除
	 $(".close").each(function(){
		 $(this).click(function(){
			 //alert(1);
			 $(this).parent().parent().parent().remove();
			 if($(".list").length==0){
				 $("#total").text(0.00);
			 }
			 setTotal();
			 return false;
		 });
	 })
	 
	//按钮禁用,只有选中的时候，结算按钮才可以用
	$(".pid").click(function(){
		//alert($(".pid").is(':checked'));
		if($(".pid").is(':checked')){
			$(".buybtn").css({"color":"#fff","background":"#2f374c"}).attr("disabled",false);
	        
		   }else{
			   $(".buybtn").css({"color":"black","background":"#999"}).attr("disabled",true);
		   }
		
	});
	//第一个全选选中后，另一个也实现
	$("#all").click(function(){
		//alert($(".pid").prop('checked'));//复选框的值需要用prop取值，尽量不用attr,会返回undefined
			if(this.checked){
			  $(".buybtn").css({"color":"#fff","background":"#2f374c"}).attr("disabled",false);
		      $("#all1").prop("checked",true);
		      $(".pid").prop("checked",true);
		      var vnums=$(".list input[type='checkbox']:checked");//选中的pid数组
			  $("#num").html(vnums.size());//选中的个数
			  setTotal()
		   }else{
			   $(".pid").prop("checked",false);
			   $("#all1").prop("checked",false);
			   $(".buybtn").css({"color":"black","background":"#999"}).attr("disabled",true);
			   var vnums=$(".list input[type='checkbox']:checked");//选中的pid数组
				// alert(vnums.size());
				 $("#num").html(vnums.size());//选中的个数
				 setTotal()
		   }
		countTotal();//buycart.jsp的全选计算总价
		
	});
	
	$("#all1").click(function(){
		//alert($(".pid").is(':checked'));
		 if($(this).is(':checked')){
			$(".buybtn").css({"color":"#fff","background":"#2f374c"}).attr("disabled",false);
		      $("#all").prop("checked",true);
		      $(".pid").prop("checked",true);
		      var nums=$(".list input[type='checkbox']");//取出所有pid,一个数组
				 var vnums=$(".list input[type='checkbox']:checked");//选中的pid数组
				// alert(vnums.size());
				 $("#num").html(vnums.size());//选中的个数
				 setTotal()
		   }else{
			   $(".pid").prop("checked",false);
			   $("#all").prop("checked",false);
			   $(".buybtn").css({"color":"black","background":"#999"}).attr("disabled",true);
			   var vnums=$(".list input[type='checkbox']:checked");//选中的pid数组
				// alert(vnums.size());
				 $("#num").html(vnums.size());//选中的个数
				 setTotal()
		   }
		
	});
	
	//子选项满后，全选也选上，否则
	
	//加减和小计listcard.jsp
	 //小计前
	/*$(".nn").each(function(){
		var nn=$(this).val;
	});*/
	
	function addmin(){
		$("body").on("click",".add",function(){
	     /*$(".add").each(function(){
	    	 $(this).click(function(){*/
	    		 var $multi=0;
	    		 var t=$(this).parent().find('input[class*=text_box]');
	    		 //alert($(this).parent().find('input[class*=text_box]').val())
		    	 t.val(Number(parseInt(t.val())+1));//加一
		         //alert(typeof(t.val()));
		         //alert(typeof($(this).parent().prev().text()));
		    	 $multi=Number(t.val())*parseFloat($(this).parent().prev().text());
		    	 //alert(Number($multi));
		    	 $(this).parent().next().text(Number($multi));
		    	 //alert( typeof($(this).parent().next().text()));
		    	 var counts=0;
		    	 setTotal()
	    	// });
	     });
	    	
	     $(".min").each(function(){
	    	 $(this).click(function(){
	    		 var $multi=0;
	    	 var t=$(this).parent().find('input[class*=text_box]');
	    	 t.val(parseInt(t.val())-1);
	    	 if(parseInt(t.val())<0){
	    		 t.val(0);
	    	 }
	    	 $multi=Number(t.val())*parseFloat($(this).parent().prev().text());
	    	// alert(Number($multi));
	    	 $(this).parent().next().text(Number($multi));
	    	// alert(typeof(Number($multi)));
	    	 var counts=0;
	    	 setTotal()
	    	  });
	     });
	}
	
	
	//只有选中才算总价
	function setTotal(){
		
    var counts=0;
    var aa=0;
    	$(".list").each(function(){
    		//alert(2);
    		//alert(Number($(this).children().find('input[class*=text_box]').val()));
    		//alert($(this).find('input[type=checkbox]').prop("checked"));
    		//alert(parseInt($(this).find('[class*=totle]').text()));
    		//alert($(this).find('input[type=checkbox]').prop("checked"))
    		if($(this).find('input[type=checkbox]').prop("checked")){
    			for(var i=0;i<$(this).length;i++){
    				
    				//alert(Number($(this).children().find('input[class*=text_box]').val()))
    				var price=Number($(this).find('[class*=price]').text());
    				//alert(Number($(this).find('[class*=price]').text()));
    				var num=Number($(this).children().find('input[class*=text_box]').val());
    				var total=num*price;
    				
    			//	alert(total);
    				//counts+=Number($(this).find('[class*=totle]').text())
    				counts+=total;
    				//alert(counts);
    				aa++;
    			}
    		}
    	});	
    	
    	$("#num").text(aa);
    	$("#total").text(counts.toFixed(2));
		//alert($("#total").html());
 
	}
	
	$(".pid").each(function(){
		$(this).click(function(){
			setTotal();
		 var pid=$(".pid");
		 var flag=true;
		 var nums=$(".list input[type='checkbox']");//取出所有pid,一个数组
		 var vnums=$(".list input[type='checkbox']:checked");//选中的pid数组
		 $("#num").html(vnums.size());//选中的个数
		 //alert(nums.size());
		// alert(vnums.size());
		 //判断是否全部实现也可以通过each（）函数实现
		 if(nums.size()==vnums.size()){
			 //alert("全部选中")
			 $("#all").prop("checked",true);
			 //alert("全部选中")
   		 $("#all1").prop("checked",true);
		 }
   		for(var i=0;i<pid.length;i++){
   			if(!pid[i].checked){
   				flag=false;
   				break;
   			}
   		}
   		
   		if(flag){
   			$("#all").attr("checked",true);
      			$("#all1").attr("checked",true);
      		}else{
      			$("#all").attr("checked",false);
      			$("#all1").attr("checked",false);
      		}
   		
	   });
	});    
	     
	
	/*buycart.jsp  js*/
	//小计
	
	$(".btotle").each(function(){
		
		var bnum=Number($(this).parent().prev().text());
		//alert(typeof(Number($(this).parent().prev().text())))
		var bprice=Number($(this).parent().prev().prev().text());
		//alert(Number($(this).parent().prev().prev().text()));
		var btotle=bnum*bprice;
		//当前的小计，用this
		$(this).text(btotle);
		//buytotal=Number(buytotal+btotle);
	})
	
	 //buycart.jsp  全选后进行计算价钱
    $(".pid").click(function(){
		countTotal();
	 })
	//总价
	function countTotal(){
   	 //alert("ajdshf");
	var buytotal=0;
	  $(".pid").each(function(){
		  	//("sdfsad");
			//alert($(this).is(":checked"))
			if($(this).is(":checked")){
				//alert("sdfa");
				var btol=Number($(this).parent().nextAll().find(".btotle").text());
				//alert(btol);
				
				buytotal=Number(buytotal+btol);
				//alert(buytotal);
			}
			$("#buytotal").val(buytotal);
		
		
	})
	
	}

	
     /*返回顶部*/
	  $(window).scroll(function(){
		  //获取窗口的宽高
		  var width=$(window).width()+$(document).scrollLeft();
		  var height=$(window).height()+$(document).scrollTop();
		  var st=$(window).scrollTop();//滚动条距顶部距离
		 
		  if(st>100){
			  $("#scrollup").fadeIn();
		  }else{
			  $("#scrollup").fadeOut();
		  }
		});
      $("#scrollup").click(function(){
    	  var speed=600;//滑动速度
    	  $('body,html').animate({scrollTop:0},speed);
    	  return false;
      });
      
      
      
      //下拉菜单
      $(".dropdown").hover(            
    	        function() {
    	            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
    	            $(this).toggleClass('open');        
    	        },
    	        function() {
    	            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
    	            $(this).toggleClass('open');       
    	        }
    	    );
      
      
      
      //验证码局部刷新
	    $("#refresh").click(function(){
			//时间戳 document.getElementById("code").src="img?time="+new Date().getTime(); 一定要给个参数，否则服务器端不认为是次新的请求
  	   document.getElementById("code").src="img?id="+Math.random();
     });
	   
	   
     //对input为text,password的进行css
     $(":text,:password").focus(function(){
          $(this).css({"border":"1px solid #f1b458"});
     }).blur(function(){
         //$(this)是获取jquery对象，this是指dom元素
         $(this).css({"border":"1px solid #777"});
     });

         //用户名非空判断
     $("#username") .blur(function(){
         //法一获取值
        var name=$("#username").val();
         if(!name){
             $("#tipu").html("用户名不可以为空！");
             $("#tip-user").html("用户名不可以为空！");
         }
     }).focus(function(){
                 $("#tipu").html("");
             });

     //密码判断
     $("#userpasswd").blur(function(){

         //法二通过$(this)
         var passwd= $("#userpasswd").val();

         if(!passwd){
             $("#tipp").html("密码不能为空！");

         }else if(!passwd.match(/^\w{3,15}$/)){
             $("#tipp").html("密码必须数字或英文或下划线组成的3-15个字符！");
         }
     }).focus(function(){
         $("#tipp").html("");
     });
     //验证码
     $("#checkcode").blur(function(){
         var checkcode=$("#checkcode").val();
         if(!checkcode){
             $("#tipc").html("验证码不能为空！");
         }
     }).focus(function (){
         $("#tipc").html("");
     });
     
    
 //注册页面
     //真实姓名判断
     $("#realname").blur(function(){

         //法二通过$(this)
         var realname= $("#realname").val();

         if(!realname){
             $("#tip-real").html("真实姓名不能为空！");

         }
     }).focus(function(){
         $("#tip-real").html("");
     });

     //密码判断
     $("#passwd").blur(function(){

         //法二通过$(this)
         var passwd= $("#passwd").val();
        // alert(passwd);
         if(!passwd){
             $("#tip-pwd").html("密码不能为空！");

         }else if(!passwd.match(/^\w{6,15}$/)){
             $("#tip-pwd").html("密码必须数字或英文或下划线组成的2-15个字符！");
         }
     }).focus(function(){
         $("#tip-pwd").html("");
     });

      // 确认密码
     $("#confirnpasswd").blur(function(){
         if(!($("#passwd").val())){
             $("#tip-pwd").html("密码不能为空！");
         }
         if(!($("#confirnpasswd").val())){
             $("#tip-conpwd").html("请输入确认密码！");
         }

          var confirmpwd=$(this).val();
         if( ($("#passwd").val())&&($("#confirnpasswd").val())){
             if(confirmpwd==($("#passwd").val())){
                 $("#tip-conpwd").html("密码正确！");
             }
         }

     }).focus(function(){
         $("#tip-conpwd").html("");
     });
     //email
     $("#email").blur(function(){
         var email=$("#email").val();
         if(!email){
             $("#tip-email").html("邮箱不能为空！");
         }else if(!email.match(/^\w+[@]{1}\w+[.]\w+/)){
             $("#tip-email").html("邮箱格式不对！");
         }
     }).focus(function (){
         $("tip-email").html("");
     });
     //确认emil
     $("#confirmemail").blur(function(){

         var email=$("#email").val();
         var confirmemail=$("#confirmemail").val();

         if(!email){
             $("#tip-email").html("邮箱不能为空！");
         }
         if(!confirmemail){
             $("#tip-conemail").html("请输入确认邮箱！")
         }
         if(email&&confirmemail&&email!=confirmemail){
             $("#tip-conemail").html("邮箱确认错误！");
         }
     }).focus(function (){
         $("#tip-conemail").html("");
     });

//确认手机号
     $("#phone").blur(function(){

         var phone=$("#phone").val();
     
         if(!phone){
             $("#tip-phone").html("电话不能为空！");
         }else if(!phone.match(/^\d{11}$/)){
             $("#tip-phone").html("电话号码必须11位!");
         }
        
       
     }).focus(function (){
         $("#tip-phone").html("");
     });
     
     //确认地址
     $("#address").blur(function(){

         var address=$("#address").val();
     
         if(!address){
             $("#tip-address").html("地址不能为空！");
         }
        
       
     }).focus(function (){
         $("#tip-address").html("");
     });
 
  function refresh(obj){
	   obj.src="img?id="+Math.random();
 } 
 
//购物车飞入
  var offset = $("#end").offset();
	var top;
	
	$(".addcar").click(function(event){
		var addcar = $(this);
		//alert(1)
	    //alert($(document).scrollTop())//得到整个文档上卷的高度
		//alert($(this).offset().top);//元素距头部的元素
	    //alert(($(this).offset().top)-($(document).scrollTop()))
		var img = addcar.parents().find('img').attr('src');//获取当前商品的图片
		var flyer = $('<img class="u-flyer" src="'+img+'">');
		//alert(event.e.offsetTop)
		//alert(event.pageX)
		//alert(offset.left)
		flyer.fly({
			start: {
				left: event.pageX, //开始位置（必填）#fly元素会被设置成position: fixed 
				top:($(this).offset().top)-($(document).scrollTop()) //开始位置（必填） 获取元素在当前窗口的位置
			},
			end: {
				left: offset.left+400, //结束位置（必填） 返回或设置匹配元素相对于文档的偏移（位置
				top: offset.top+100, //结束位置（必填） 
				width: 0, //结束时宽度 
				height: 0//结束时高度 
			},
			onEnd: function(){ //结束回调 
				$("#msg").show().animate({width: '250px'}, 200).fadeOut(1000);//提示信息 
				addcar.css("cursor","default").removeClass('orange').unbind('click');
				this.destory(); //移除dom 
			}
		});
	});
    
	
	  $("#slider3").responsiveSlides({
			auto: true,
			pager: true,
			nav: true,
			speed: 500,
			namespace: "callbacks",
			before: function () {
			  $('.events').append("<li>before event fired.</li>");
			},
			after: function () {
			  $('.events').append("<li>after event fired.</li>");
			}
		  });
     
});

