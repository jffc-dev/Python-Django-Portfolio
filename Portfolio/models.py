from django.db import models
from django.db.models import Q

from Portfolio.choices import FORMACION_TIPOS, HABILIDAD_TIPOS


class Idioma(models.Model):
    clave = models.CharField(max_length=2)
    titulo = models.CharField(max_length=20)
    imagen = models.ImageField(upload_to='idiomas')

    def __str__(self):
        return 'Clave: {}, Titulo: {}'.format(self.clave, self.titulo)

    def educacionLista(self):
        return Formacion.objects.filter(tipo__exact='EDU', idioma__clave=self.clave)

    def categoriasLista(self):
        return Categoria.objects.all()

    def experienciaLista(self):
        return Formacion.objects.filter(tipo__exact='EXP', idioma__clave=self.clave)

    def premiosLista(self):
        return Formacion.objects.filter(tipo__exact='PRE', idioma__clave=self.clave)

    def habilidadesDurasLista(self):
        return Habilidad.objects.filter(Q(tipo__exact='HRD') & (Q(idioma__clave=self.clave) | Q(idioma=None)))

    def habilidadesBlandasLista(self):
        return Habilidad.objects.filter(Q(tipo__exact='SFT') & (Q(idioma__clave=self.clave) | Q(idioma=None)))

    def habilidadesIdiomasLista(self):
        return Habilidad.objects.filter(Q(tipo__exact='LNG') & (Q(idioma__clave=self.clave) | Q(idioma=None)))


class IdiomaEntorno(models.Model):

    class Meta:
        verbose_name_plural = "Entorno por idioma"

    idioma = models.OneToOneField(Idioma, on_delete=models.CASCADE, primary_key=True)
    titulo = models.CharField(max_length=50, blank=True)
    # region CamposMenu
    menuInicio = models.CharField(max_length=50, blank=True)
    menuAcerca = models.CharField(max_length=50, blank=True)
    menuResumen = models.CharField(max_length=50, blank=True)
    menuPortafolio = models.CharField(max_length=50, blank=True)
    menuBlog = models.CharField(max_length=50, blank=True)
    menuContacto = models.CharField(max_length=50, blank=True)
    inicioPrefijoSoy = models.CharField(max_length=50, blank=True)
    # endregion
    # region CamposAcerca
    acercaPresentacion = models.CharField(max_length=50, blank=True)
    acercaCumpleanos = models.CharField(max_length=50, blank=True)
    acercaTelefono = models.CharField(max_length=50, blank=True)
    acercaCorreo = models.CharField(max_length=50, blank=True)
    acercaDireccion = models.CharField(max_length=50, blank=True)
    # endregion
    # region CamposResumen
    resumenEducacion = models.CharField(max_length=50, blank=True)
    resumenExperiencia = models.CharField(max_length=50, blank=True)
    resumenHabilidades = models.CharField(max_length=50, blank=True)
    resumenHabilidadesBlandas = models.CharField(max_length=50, blank=True)
    resumenHabilidadesIdiomas = models.CharField(max_length=50, blank=True)
    resumenPremios = models.CharField(max_length=50, blank=True)
    resumenBotonCv = models.CharField(max_length=50, blank=True)
    resumenBotonContratarme = models.CharField(max_length=50, blank=True)
    # endregion
    # region CamposPortfolio
    portafolioMisTrabajos = models.CharField(max_length=50, blank=True)
    portafolioPrecios = models.CharField(max_length=50, blank=True)
    portafolioTestimonios = models.CharField(max_length=50, blank=True)
    portafolioClientes = models.CharField(max_length=50, blank=True)
    portafolioPreciosDetalles = models.CharField(max_length=50, blank=True)
    # endregion
    # region CamposContacto
    contactoTitulo = models.CharField(max_length=50, blank=True)
    contactoSubitulo = models.CharField(max_length=50, blank=True)
    contactoCorreoEtiqueta = models.CharField(max_length=50, blank=True)
    contactoCorreoGuia = models.CharField(max_length=50, blank=True)
    contactoTelefonoEtiqueta = models.CharField(max_length=50, blank=True)
    contactoTelefonoGuia = models.CharField(max_length=50, blank=True)
    contactoAsuntoEtiqueta = models.CharField(max_length=50, blank=True)
    contactoMensajeEtiqueta = models.CharField(max_length=50, blank=True)
    contactoMensajeGuia = models.CharField(max_length=50, blank=True)
    contactoBotonEtiqueta = models.CharField(max_length=50, blank=True)
    # endregion
    # region CamposBlog
    blogUltimasNoticias = models.CharField(max_length=50, blank=True)
    # endregion

    def __str__(self):
        return 'Entorno para el idioma: {}'.format(self.idioma.titulo)


class Categoria(models.Model):
    nombreCortoDefecto = models.CharField(max_length=50)
    nombreLargoDefecto = models.CharField(max_length=100, blank=True)

    def __str__(self):
        return 'Nombre: {}'.format(self.nombreCortoDefecto)


class CategoriaIdioma(models.Model):
    idioma = models.ForeignKey(Idioma, on_delete=models.CASCADE)
    categoria = models.ForeignKey(Categoria, on_delete=models.CASCADE)
    nombreCorto = models.CharField(max_length=50)
    nombreLargo = models.CharField(max_length=100, blank=True)

    def __str__(self):
        return 'Nombre: {}'.format(self.nombreCorto)


class Formacion(models.Model):

    class Meta:
        verbose_name_plural = "Formaciones"

    idioma = models.ForeignKey(Idioma, on_delete=models.CASCADE)
    rangoFecha = models.CharField(max_length=150)
    posicion = models.CharField(max_length=150)
    empresa = models.CharField(max_length=150)
    descripcion = models.TextField(blank=True, null=True)
    tipo = models.CharField(max_length=3, choices=FORMACION_TIPOS)

    def __str__(self):
        return 'Idioma: {}, Posicion: {}'.format(self.idioma.titulo, self.posicion)


class Habilidad(models.Model):

    class Meta:
        verbose_name_plural = "Habilidades"

    idioma = models.ForeignKey(Idioma, on_delete=models.CASCADE, blank=True, null=True)
    titulo = models.CharField(max_length=30)
    porcentaje = models.IntegerField()
    tipo = models.CharField(max_length=3, choices=HABILIDAD_TIPOS)
    categoria = models.ForeignKey(Categoria, default=1, on_delete=models.CASCADE)

    def __str__(self):
        return 'Idioma: {}, Título: {}'.format(self.idioma.titulo if self.idioma else 'Todos', self.titulo)


class Perfil(models.Model):

    class Meta:
        verbose_name_plural = "Perfiles"

    idioma = models.OneToOneField(Idioma, on_delete=models.CASCADE, primary_key=True)
    nombreCorto = models.CharField(max_length=50, blank=True)
    nombreLargo = models.CharField(max_length=100, blank=True)
    enlacePresentacion = models.CharField(max_length=100, blank=True)
    imagenPerfil = models.ImageField(upload_to='perfiles')
    soyLista = models.CharField(max_length=200, blank=True)
    saludo = models.CharField(max_length=50, blank=True)
    descipcion = models.TextField(blank=True, null=True)
    enlaceLinkedin = models.CharField(max_length=100, blank=True)
    enlaceGithub = models.CharField(max_length=100, blank=True)
    enlaceTwitter = models.CharField(max_length=100, blank=True)
    cumpleanos = models.CharField(max_length=50, blank=True)
    telefono = models.CharField(max_length=50, blank=True)
    correo = models.CharField(max_length=50, blank=True)
    direccion = models.CharField(max_length=100, blank=True)
    archivoCv = models.FileField(upload_to='cvs')

    def __str__(self):
        return 'Idioma: {}'.format(self.idioma.titulo)


class PerfilServicios(models.Model):

    class Meta:
        verbose_name_plural = "Servicios por perfil"

    idioma = models.OneToOneField(Idioma, on_delete=models.CASCADE, primary_key=True)
    servicio1Texto = models.CharField(max_length=50, blank=True)
    servicio1Url = models.CharField(max_length=100, blank=True)
    servicio2Texto = models.CharField(max_length=50, blank=True)
    servicio2Url = models.CharField(max_length=100, blank=True)
    servicio3Texto = models.CharField(max_length=50, blank=True)
    servicio3Url = models.CharField(max_length=100, blank=True)
    servicio4Texto = models.CharField(max_length=50, blank=True)
    servicio4Url = models.CharField(max_length=100, blank=True)

    def __str__(self):
        return 'Servicios para el idioma: {}'.format(self.idioma.titulo)


class ContactoAsunto(models.Model):
    idioma = models.OneToOneField(Idioma, on_delete=models.CASCADE, primary_key=True)
    nombreCorto = models.CharField(max_length=50, blank=True)
    nombreLargo = models.CharField(max_length=100, blank=True)

    def __str__(self):
        return 'Idioma: {}, Texto: {}'.format(self.idioma.titulo, self.nombreCorto)


class Testimonial(models.Model):
    nombreUsuario = models.CharField(max_length=50, blank=True)
    nombreCargo = models.CharField(max_length=50, blank=True)
    titulo = models.CharField(max_length=100, blank=True)
    texto = models.TextField(blank=True, null=True)
    imagenPerfil = models.ImageField(upload_to='testimoniales')
    mostrarPagina = models.BooleanField(default=False)

    def __str__(self):
        return 'Usuario: {}, Título: {}'.format(self.nombreUsuario, self.titulo)


class Proyecto(models.Model):
    nombreCorto = models.CharField(max_length=50, blank=True)
    nombreLargo = models.CharField(max_length=100, blank=True)
    imagenProyecto = models.ImageField(upload_to='proyectos')
    categoria = models.ForeignKey(Categoria, on_delete=models.CASCADE)

    def __str__(self):
        return 'Usuario: {}, Título: {}'.format(self.nombreUsuario, self.titulo)