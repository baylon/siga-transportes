<%@ tag body-content="empty"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ attribute name="totalCaracteres"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style>
	.completo{
	    display:none;
	    width:100%;
	}
	
	.mais{
	    color:navy;
	    font-size:13px;
	    padding:3px;
	    cursor:pointer;
	    width:100%;
	    font-weight:bold;
	}
</style>

<script type="text/javascript" src="/sigatp/public/javascripts/jquery/jquery-ui-1.8.16.custom.min.js"></script>

<script>
	var frase;
	var totalCaracteres;

	function dividirTexto(linha) {
		var pontuacao = [",", ".", ";", "-", ":", "(", ")"," "];
        var aux = frase.substring(0, totalCaracteres);
		var n = 0;
        var pos;

        var itensInicio = $(".inicio");
        var itensCompleto = $(".completo");
        var itensMore = $(".mais");

        if (frase!=aux) {
	        for (j = 0; j < pontuacao.length; j++) { 
	             pos = aux.lastIndexOf(pontuacao[j]);
	             if (pos != -1 && n < pos) {
	                 n = pos;
	             } 
	        } 

	        itensInicio[linha].textContent = aux.substring(0, n+1);
        	itensCompleto[linha].textContent = aux.substring(n+1) + frase.replace(aux,'');
        } else {
        	itensInicio[linha].textContent = aux;
        	itensMore[linha].textContent = "";
        } 
	}

	$(function() {
		var itens = $(".toggleTexto");
		totalCaracteres = "${totalCaracteres}";
		
		for (i=0; i<itens.length; i++) {
			frase = itens[i].value;
			dividirTexto(i);
		}

		$(".mais").toggle(function(){
		    $(this).text('\u00AB menos').siblings(".completo").show();    
		}, function(){
		    $(this).text("mais \u00BB").siblings(".completo").hide();    
		});
	});
</script>