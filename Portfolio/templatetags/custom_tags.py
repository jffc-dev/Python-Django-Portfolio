import datetime
from django import template
from Portfolio.models import Idioma, CategoriaIdioma, Categoria

register = template.Library()


@register.filter(name='verificar_seleccionado_lista')
def verificar_seleccionado_lista(valor, arg):
    # Filtro que valida que la lista del idioma seleccionada tenga elementos, caso contrario se devuelve la lista por defecto
    return arg if len(valor) == 0 else valor


@register.filter(name='verificar_texto_longitud')
def verificar_texto_longitud(valor, arg):
    # Filtro que valida que la cadena del idioma seleccionada o el idioma de la cadena por defecto, tenga longitud mayor a 0
    return len(valor) > 0 or len(arg) > 0


# @register.filter(name='verificar_categoria_idioma')
# def verificar_categoria_idioma(categoriaCodigo, idiomaCodigo):
#     try:
#         categoriaIdioma = CategoriaIdioma.objects.get(categoria=categoriaCodigo, idioma=idiomaCodigo)
#         if categoriaIdioma:
#             return categoriaIdioma.nombreCorto
#         else:
#             return Categoria.objects.get(pk=categoriaCodigo).nombreCortoDefecto
#     except (ValueError, ZeroDivisionError):
#         return None


@register.simple_tag(name='verificar_categoria_idioma')
def verificar_categoria_idioma(categoriaCodigo, idiomaCodigo):
    categoriaIdioma = CategoriaIdioma.objects.filter(categoria=categoriaCodigo, idioma=idiomaCodigo)
    if len(categoriaIdioma) > 0:
        return categoriaIdioma[0].nombreCorto
    else:
        return Categoria.objects.get(pk=categoriaCodigo).nombreCortoDefecto


@register.filter(name='dividir')
def dividir(value, arg):
    try:
        return int(value) / int(arg)
    except (ValueError, ZeroDivisionError):
        return None


@register.simple_tag(name='verificar_seleccionado_texto')
def verificar_seleccionado_texto(seleccionado, default):
    # Filtro que valida que la cadena del idioma seleccionada tenga contenido, caso contrario se devuelve la cadena por defecto
    return default if seleccionado == "" else seleccionado