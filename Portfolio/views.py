from django.shortcuts import redirect
from django.views.generic import TemplateView, View
import Portfolio.models as PortfolioModel
from django.http import HttpResponseRedirect


class IndexView(View):
    def get(self, request):
        return redirect('home', idioma='es')


class IndexLanguageView(TemplateView):
    template_name = 'dark-index.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        idioma = kwargs.get('idioma','es')
        idomaFiltro = PortfolioModel.Idioma.objects.filter(clave=idioma)
        idiomas = PortfolioModel.Idioma.objects.all()
        context['idiomaDefault'] = PortfolioModel.Idioma.objects.filter(clave='es')[0]
        # Validando que se haya encontrado el idioma buscado y que el idioma tenga un entorno configurado
        if len(idomaFiltro) > 0 and hasattr(idomaFiltro[0], 'idiomaentorno'):
            context['idiomaSeleccionado'] = idomaFiltro[0]
            context['idiomas'] = idiomas
        return context


class ChangeLanguageView(View):
    def get(self, request, idioma):
        referFullPath = request.META.get('HTTP_REFERER')
        pageFullPath = request.build_absolute_uri('/')[:-1]
        redirectPath = "/"

        # Delete "domain" from refer path
        referFullPath = referFullPath.replace(pageFullPath, "")

        redirectPath += idioma + referFullPath[3:]

        # return redirect('home', idioma='es')
        return HttpResponseRedirect(redirectPath)
