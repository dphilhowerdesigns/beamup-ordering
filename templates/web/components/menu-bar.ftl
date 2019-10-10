<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!-- navigation section -->
<div class="collapse navbar-collapse">
  	<ul class="nav navbar-nav navbar-right" <@studio.componentAttr path=contentModel.storeUrl ice=true iceGroup="navigationBar"/>>
    	<#list contentModel.navigationItems.item as item>
            <li>
              	<a href="#${item.section}" class="smoothScroll">${item.navigationItem}</a>
            </li>
    	</#list>
  	</ul>
</div>
<@studio.toolSupport/>