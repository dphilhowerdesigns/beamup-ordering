<#import "/templates/system/common/cstudio-support.ftl" as studio />
<#include "/templates/web/functions/utils-functions.ftl">
<section id="menu" class="parallax-section">
    <div class="container">
        <div class="row" <@studio.componentAttr path=contentModel.storeUrl ice=true iceGroup="foodMenu"/>>
            <div class="col-md-offset-2 col-md-8 col-sm-12 text-center">
                <h1 class="heading">${contentModel.title}</h1>
                <hr>
            </div>
            
            <#list contentModel.menuList.item as dishItem>
                <div class="col-md-6 col-sm-6">
                    <h4> ${dishItem.dishName?trim} ${dots(dishItem.dishName?trim, dishItem.dishPrice?trim)?trim} <span>${contentModel.dishPriceCurrency}${dishItem.dishPrice?trim}</span></h4>
                    <h5>${dishItem.dishIngredients?trim}</h5>
                </div>            
            </#list>
        </div>
    </div>
</section>
<@studio.toolSupport />