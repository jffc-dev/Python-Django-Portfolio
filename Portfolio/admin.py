from django.contrib import admin
import Portfolio.models as PortfolioModel


admin.site.register(PortfolioModel.Formacion)
admin.site.register(PortfolioModel.Habilidad)
admin.site.register(PortfolioModel.Idioma)
admin.site.register(PortfolioModel.IdiomaEntorno)
admin.site.register(PortfolioModel.Perfil)
admin.site.register(PortfolioModel.PerfilServicios)
admin.site.register(PortfolioModel.Categoria)
admin.site.register(PortfolioModel.CategoriaIdioma)
