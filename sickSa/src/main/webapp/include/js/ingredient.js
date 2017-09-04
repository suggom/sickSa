/**
 * jQuery ajax java script
 */

/*****전역 초기화함수 로그인 체크******/
function init_ui() {
	
};

/*****전역 로드시 실행******/
$(window).load(function(igct_id) {
	init_ui();
	igct_list_load();
});

function igct_list_load() {
	$.ajax({
		url : 'igctList',
		type : 'POST',
		success : function(response) {
			$("#contentHolder").html(response);
		},
		dataType: "html"//set to JSON
	});	
}

// 재료 리스트를 불러온다.
function ing_list_load(igct_id){
	$.post('ingList', {igct_id : igct_id}, function(data) {
			$('#ingredientList'+igct_id).html(data).toggle();
			$('#ingredientList').hide();
	});
}

// 재료의 디테일 정보를 불러온다.
$('.panel-heading h3').on('click',function(){
	$(this).parent().parent().next().toggle();
});

function igct_insert_form(){
	window.open(
			'igctInsertForm','재료 항목 추가',
			'width=700, height=500, left=0, top=0, toolbar=no, location=no, directories=no, status=no, menubar=no, resizable=no, scrollbars=no, copyhistory=no');
}

function igct_insert_action(){
	document.getElementById("igctAddForm").action = 'igctInsertAction';
	document.getElementById("igctAddForm").method = 'POST';
	document.getElementById("igctAddForm").submit();
}

function ing_insert_form(){
	window.open(
			'ingInsertForm','재료 추가',
	'width=700, height=500, left=0, top=0, toolbar=no, location=no, directories=no, status=no, menubar=no, resizable=no, scrollbars=no, copyhistory=no');
}

function ing_insert_action(){
	document.getElementById("ingAddForm").action = 'ingInsertAction';
	document.getElementById("ingAddForm").method = 'POST';
	document.getElementById("ingAddForm").submit();
}


//add igct form modal 
//$(document).ready(function() {
//	$('body').on('hidden.bs.modal', '.modal', function(){ 
//		$(this).removeData('bs.modal'); 
//	});
//	
//	var dialog, form,
//	    igct_name = $( "#igct_name" ),
//	    allFields = $( [] ).add( igct_name );
//
//	function addIgct() {
//		var form = document.getElementById("igctAddForm");
//		form.action = 'igctInsertAction';
//		form.method = 'POST';
//		form.submit();
//		dialog.dialog( "close" );
//		return true;
//	}
//
//	dialog = $("#dialog-form").dialog({
//		autoOpen : false,
//		height : 400,
//		width : 350,
//		modal : true,
//		buttons : {
//			"Add" : addIgct,
//			Cancel : function() {
//				dialog.dialog("close");
//			}
//		},
//		close : function() {
//			form[0].reset();
//			allFields.removeClass("ui-state-error");
//		}
//	});
//
//	form = dialog.find("form").on("submit", function(event) {
//		event.preventDefault();
//		addIgct();
//	});
//
//	$("#create-igct").button().on("click", function() {
//		$('div.modal').modal({
//			remote : 'igctInsertForm'
//		});
//	});
//});

//add ing form modal 
//$(document).ready(function() {
//	$('body').on('hidden.bs.modal', '.modal', function(){ 
//		$(this).removeData('bs.modal'); 
//	});
//	
//	var dialog, form,
//	igct_id = $( "#igct_id" ),
//	ing_id = $( "#ing_id" ),
//	ing_stock = $( "#ing_stock" ),
//	ing_measure = $( "#ing_measure" ),
//	igdt_price = $( "#igdt_price" ),
//	igdt_contact = $( "#igdt_contact" ),
//	allFields = $( [] ).add( igct_id ).add( ing_id ).add( ing_stock ).add( ing_measure ).add( igdt_price ).add( igdt_contact );
//	
//	function addUser() {
//		document.getElementById("ingAddForm").action = 'ingInsertAction';
//		document.getElementById("ingAddForm").method = 'POST';
//		document.getElementById("ingAddForm").submit();
//		dialog.dialog( "close" );
//		return true;
//	}
//	
//	dialog = $("#dialog-form").dialog({
//		autoOpen : false,
//		height : 800,
//		width : 350,
//		modal : true,
//		buttons : {
//			"Create an account" : addUser,
//			Cancel : function() {
//				dialog.dialog("close");
//			}
//		},
//		close : function() {
//			form[0].reset();
//			allFields.removeClass("ui-state-error");
//		}
//	});
//	
//	form = dialog.find("form").on("submit", function(event) {
//		event.preventDefault();
//		addUser();
//	});
//	
//	$("#create-ing").button().on("click", function() {
//		$('div.modal').modal({
//			remote : 'ingInsertForm'
//		});
//	});
//});
