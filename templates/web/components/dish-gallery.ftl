<#import "/templates/system/common/cstudio-support.ftl" as studio />
<section id="gallery" class="parallax-section">
    <div class="container" <@studio.componentAttr path=contentModel.storeUrl ice=true iceGroup="dishGallery"/>>
        <div class="row">
            <div class="col-md-offset-2 col-md-8 col-sm-12 text-center">
                <h1 class="heading">${contentModel.title}</h1>
                <hr>
            </div>
        </div>
        <div class="row">
            <#assign breaker = 0 />
            <#list contentModel.dishList.item as dishItem>
                <#if dishItem?index == (0 + breaker) || dishItem?index == (2 + breaker) || dishItem?index == (3 + breaker) >
                    <#assign midClass = "" />
                    <#if dishItem?index == (2 + breaker) >
                        <#assign midClass = "food-element-mid" />
                    </#if>
                    <div class="col-md-4 col-sm-4 wow fadeInUp food-element-container ${midClass}" data-wow-delay="0.3s">
                </#if>
                <a class="image-container" href="${dishItem.dishImage}" data-lightbox-gallery="zenda-gallery">
                  <img src="${dishItem.dishImage}" alt="gallery img">
                </a>
                
                <div class="food-element-description">
                  <h3>${dishItem.dishName}</h3>
                  <span>${dishItem.dishIngredients}</span>
                </div>
                
                <#if dishItem?index == (1 + breaker) || dishItem?index == (2 + breaker) || dishItem?index == (4 + breaker) >
                    </div>
                </#if>
                
                <#if dishItem?index == (4  + breaker)>
                    <#assign breaker = (breaker + 5) />
                </#if>
                
                <#if dishItem?is_last>
                	</div>
                </#if>
            </#list>
            
        </div>
    </div>
</section>
<@studio.toolSupport />