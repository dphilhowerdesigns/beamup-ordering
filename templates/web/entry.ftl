<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>${contentModel.topSiteName}</title>
        
        <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        
        <!-- CSS Files -->
        <#include "/templates/web/static-includes/css-libraries.ftl" />
    </head>
    <body>
        <!-- Preloader section -->
        <section class="preloader">
            <div class="sk-spinner sk-spinner-pulse"></div>
        </section>

        <!-- Navigation section -->
        <section class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon icon-bar"></span>
                        <span class="icon icon-bar"></span>
                        <span class="icon icon-bar"></span>
                    </button>
                    <a href="/" class="navbar-brand">${contentModel.topSiteName}</a>
                </div>
                <@renderComponent component = contentModel.menuBar.item />
            </div>
        </section>        
        


        <!-- Home section -->
        <section id="home" class="parallax-section" <@studio.iceAttr iceGroup="homepageGroup"/> style="background-image:url(${contentModel.homepageImage})">
            <div class="container">
                <div class="row"> 
                    <div class="col-md-12 col-sm-12">
                        <h1>${contentModel.title}</h1>
                        <h2>${contentModel.slogan}</h2>
                        <a href="#gallery" class="smoothScroll btn btn-default">${contentModel.buttonLabel}</a>
                    </div>
                </div>
            </div>
        </section>

        <!-- Gallery section -->
        <@renderComponent component = contentModel.dishGallery.item />

        <!-- Menu section -->
        <@renderComponent component = contentModel.foodMenu.item />

        <!-- Team section -->
        <@renderComponent component = contentModel.teamMembers.item />

		<!-- Contact us section -->
		<@renderComponent component = contentModel.contactUs.item />

        <!-- Copyright section -->
        <@renderComponent component = contentModel.footer.item />
        

        <!-- Javascript Files -->
        <#include "/templates/web/static-includes/js-libraries.ftl" />
        
        <@studio.toolSupport/>
    </body>
</html>