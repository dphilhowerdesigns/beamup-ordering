<#import "/templates/system/common/cstudio-support.ftl" as studio />
<footer class="parallax-section">
    <div class="container">
        <div class="row">
        
            <div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.6s" <@studio.componentAttr path=contentModel.storeUrl ice=true iceGroup="contactInfoData"/>>
                <h2 class="heading">${contentModel.contactInfoLabel}</h2>
                <div class="ph">
                    <p>
                        <i class="fa fa-phone" id="fa-icono"></i> 
                        ${contentModel.phoneLabel}
                    </p>
                    <h4>${contentModel.phoneNumber}</h4>
                </div>
                <div class="address">
                    <p>
                        <i class="fa fa-map-marker" id="fa-icono"></i> 
                        ${contentModel.locationLabel}
                    </p>
                    <h4>${contentModel.location}</h4>
                </div>
            </div>
            
            <div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.6s" <@studio.componentAttr path=contentModel.storeUrl ice=true iceGroup="openHoursData"/>>
            	<h2 class="heading">${contentModel.openHoursLabel}</h2>
                <#list contentModel.openDays.item as item>
                    <p>
                        ${item.openDay}
                        <span>
                            ${item.openAt?datetime("MM/dd/yy HH:mm")?time?string.short}
                             - 
                            ${item.closedAt?datetime("MM/dd/yy HH:mm")?time?string.short}
                        </span>
                    </p>
                </#list>
            </div>
            
            <div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.6s" <@studio.componentAttr path=contentModel.storeUrl ice=true iceGroup="socialLinksData"/>>
                <h2 class="heading">${contentModel.socialLinksTitle}</h2>
                <ul class="social-icon">
                    <#list contentModel.contactSocialLinks.item as item>
                        <li>
                            <a href="${item.socialLinkUrl!""}" class="fa fa-${item.socialLinkType} wow bounceIn" data-wow-delay="0.3s"></a>
                        </li>
                    </#list>
                </ul>
            </div>
            
        </div>
    </div>
</footer>
<@studio.toolSupport />