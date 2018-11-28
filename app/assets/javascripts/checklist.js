var elements = 4;

$("span").click(function(event){
	$(this).parent().fadeOut(500, function(){
		$(this).remove();
	});
	elements = elements-1;
	if(elements === 0)
	document.getElementById("b").disabled = false;
	event.stopPropagation();
});

if(elements > 0)
document.getElementsByClassName("dis").disabled = true;

// $(".al").click(function(){
// 	if($(this).css("color") === "rgb(128, 128, 128)"){
// 		console.log("It is GRAY!");
// 	}
// });


