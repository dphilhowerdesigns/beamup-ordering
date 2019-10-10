<#import "/templates/system/common/cstudio-support.ftl" as studio />
<section id="copyright">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <h3>${contentModel.footerTitle}</h3>
                <p <@studio.componentAttr path=contentModel.storeUrl ice=true iceGroup="footerData"/> >
                ${contentModel.copyright}
                <#if contentModel.showCredits?? && contentModel.showCredits == "true">
                |
                ${contentModel.creditsLabel}
                <a rel="nofollow" href="${contentModel.linkURL}" target="_parent">${contentModel.linkLabel}</a>
                </#if>
                </p>
            </div>
        </div>
    </div>
</section>
<@studio.toolSupport />