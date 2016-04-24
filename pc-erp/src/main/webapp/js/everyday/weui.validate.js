define(		["jquery", "template"],
	function(jQuery,    template){
		
		var def={};
		
		def["target"]=function(formid){

            jQuery("#"+formid).on("blur", "input[data-validate]", function(){
                var ruleStr = jQuery(this).attr("data-validate");
                var rule = JSON.parse(ruleStr);
                var value = jQuery(this).val();

                if(typeof rule["required"] != "undefined" && rule["required"]){
                    if(value==""){
                        def.addCellWarn(jQuery(this).parent().parent());
                        def.disableSubmit(formid);
                        return ;
                    }
                }

                if(typeof rule["pattern"] != "undefined" && rule["pattern"]!=""){
                    if(value!=""){
                        var pattern =eval(rule["pattern"]);
                        if(!pattern.test(value)){
                            def.addCellWarn(jQuery(this).parent().parent());
                            def.disableSubmit(formid);
                            return ;
                        }
                    }
                }

                def.removeCellWarn(jQuery(this).parent().parent());
            });

            if(jQuery("#"+formid+" input[data-validate]").length>0){
                def.disableSubmit(formid);
            }

        }

        def["addCellWarn"]=function(obj){
            if(obj.hasClass("weui_cell_warn")){
                return ;
            }
            obj.addClass("weui_cell_warn");
        }

        def["removeCellWarn"]=function(obj){
            obj.removeClass("weui_cell_warn");
        }

        def["disableSubmit"]=function(formid){
            jQuery("#"+formid+" input[type=submit]").each(function(){
                if(jQuery(this).hasClass("weui_btn_disabled")){
                    return ;
                }
                jQuery(this).addClass("weui_btn_disabled");
            });
        }

		return def;
	}
);