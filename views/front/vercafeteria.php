<?php

use cafeterias\Storage\Session;
use cafeterias\Core\Route;

?>

<div class="row">
          <div class="col-md-12 detailcafe">
            <div class="container">
              <div>
                <h1><b><?php echo $cafeteria->getNombre() ?></b></h1>
                <p><b>Zona:</b> <?php echo $cafeteria->getSucursal() ?></p>
                <p><b>Categoria:</b> Especialidad</p>			
				<p class="starshowheader"><b>Calificaci&oacute;n:</b> <i class="starspoints fa fa-star" aria-hidden="true"></i><i class="starspoints fa fa-star" aria-hidden="true"></i><i class="starspoints fa fa-star" aria-hidden="true"></i><i class="starspoints fa fa-star" aria-hidden="true"></i><i class="starspoints fa fa-star" aria-hidden="true"></i></p>
				
				
				
              </div>
              <div></div>
              <div class="horarios">
                <p>Lunes a viernes de 9:00 a 20:00</p>
                <p>Sabados de 10:00 a 18:00</p>
                <p>Domingos: cerrado</p>
              </div>
            </div>
          </div>
        </div>

        <section class="mainwrapperC" >
          <div class="infoCafe">

			<nav aria-label="breadcrumb">
			  <ol class="breadcrumb navegacionResumen">
				<li class="breadcrumb-item"><a href="/public">Home</a></li>
				<li class="breadcrumb-item"><a href="#">Cafeter&iacute;as</a></li>
				<li class="breadcrumb-item active" aria-current="page">Especialidad</li>
			  </ol>
			</nav>

			
            <div>
              <h2 class="Hs">Especialistas en caf&eacute; y un ambiente &uacute;nico</h2>
			<p><span class="iconservicios"><i class="fa fa-wifi" aria-hidden="true"></i> Wifi</span><span class="iconservicios"><i class="fa fa-credit-card" aria-hidden="true"></i> Tarjetas</span><span class="iconservicios"><i class="fas fa-shopping-bag"></i> Para llevar</span></p>
              <div class="resumenC">
                
                <div class="detalleResumenC">
                  <!-- p><img src="../img/especificaciones.jpg" alt="" /></p -->
				
                  <p> <?php echo $cafeteria->getdescripcion() ?></p>
                </div>
                
                <div class="mapa">
                  <!--h3>Mapa</h3 -->
				<!-- img src="imagenes/map.jpg" alt="Mapa" / -->
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3285.713663226196!2d-58.461502185168776!3d-34.560804562734994!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bcb5d4c4929eb1%3A0xd069655c700ba877!2sAll+Saints+Cafe!5e0!3m2!1ses!2sar!4v1536512635592" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
                
              </div>
            </div>
			<div class="extraInfo">
				<h2 class="Hs">Cursos especializados dictados por sus propios baristas</h2>
				<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>
			</div>			



			
			
	<div class="imagenesCafe">
		<h2 class="Hs">Imágenes</h2>
		<div>
			<img alt="Cafeterias BA" src="<?= \cafeterias\Core\App::urlTo('img/alsainstgaleria.jpg') ?>"/>
		</div>
	</div>
	<div>
		<h2 class="Hs">Promociones disponibles</h2>
	<div class="promosC">
		<div>
			<img alt="Cafeterias BA" src="<?= \cafeterias\Core\App::urlTo('img/promo01.jpg') ?>"/>  
			<div class="txtPromo"><p>Texto Promo</p></div>
		</div>
		<div>
			<img alt="Cafeterias BA" src="<?= \cafeterias\Core\App::urlTo('img/promo01.jpg') ?>"/>
			<div class="txtPromo"><p>Texto Promo</p></div>
		</div>
	</div>
	</div>
	<div class="container">
		<h2 class="Hs">Cargá tu reseña</h2>
	<div class="bloqueResena row">
		<div class="resena">
			<form action="">
				<div class="textareaW">
					<textarea placeholder="Escribi una reseña sobre tu experiencia en esta cafeteria. Que cosa probaste? que fue lo que mas te gusto?" rows="7"></textarea>
				</div>
				<div class="califyprecio">
					<p class="starasignbox"><b>Asigná una calificación:</b> 
					<i class="starspoints far fa-star"></i>
					<i class="starspoints far fa-star"></i>
					<i class="starspoints far fa-star"></i>
					<i class="starspoints far fa-star"></i>
					<i class="starspoints far fa-star"></i>
					</p><b>Añadir foto a la reseña: </b><input class="loadimgs"  placeholder="" name="myFile" type="file">
					<div class="boxbtnvmas"><a class="vermasbutton" href="detalle.html">Cargar Reseña<i class="fawincon fa fa-angle-right" aria-hidden="true"></i></a></div>
					<div class="clear"></div>
				</div>
			</form>
		</div>
	</div>
	</div>
	<div class="container bloqueComentarios">
		<div class="row comentario">
			<div class="col-md-2  col-xs-12 imgUser"><img alt="Cafeterias BA" src="<?= \cafeterias\Core\App::urlTo('img/user01.jpg') ?>"/></div>
			<div class="detailUser col-md-3 col-xs-12">
				<h3>Juan Pablo</h3>
				<p>Nivel: Novato</p>
				
				<p>Fecha: 01/08/2018</p>
			</div>
			<div class="resenaUser col-md-7  col-xs-12">
				<p>Calificación otorgada:
					<span class="starresponcont">
						<i class="starspoints fa fa-star" aria-hidden="true"></i><i class="starspoints fa fa-star" aria-hidden="true"></i><i class="starspoints fa fa-star" aria-hidden="true"></i><i class="starspoints fa fa-star" aria-hidden="true"></i><i class="starspoints fa fa-star" aria-hidden="true"></i>
					</span>
				</p>
				<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos.</p>
			</div>
		</div>
		<div class="row comentario">
			<div class="col-md-2  col-xs-12 imgUser"><img alt="Cafeterias BA" src="<?= \cafeterias\Core\App::urlTo('img/user02.jpg') ?>"/></div>
			<div class="detailUser col-md-3 col-xs-12">
				<h3>Cosme Fulanito</h3>
				<p>Nivel: Novato</p>
				<p>Fecha: 01/08/2018</p>
			</div>
			<div class="resenaUser col-md-7  col-xs-12">
				<p>Calificación otorgada:
					<span class="starresponcont">
						<i class="starspoints fa fa-star" aria-hidden="true"></i><i class="starspoints fa fa-star" aria-hidden="true"></i><i class="starspoints fa fa-star" aria-hidden="true"></i><i class="starspoints fa fa-star" aria-hidden="true"></i><i class="starspoints fa fa-star" aria-hidden="true"></i>
					</span>
				</p>
				<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor </p>
			</div>
		</div>
		<div class="row comentario">
			<div class="col-md-2  col-xs-12 imgUser"><img alt="Cafeterias BA" src="<?= \cafeterias\Core\App::urlTo('img/user03.jpg') ?>"/></div>
			<div class="detailUser col-md-3 col-xs-12">
				<h3>Rick</h3>
				<p>Nivel: Novato</p>
				<p>Fecha: 01/08/2018</p>
			</div>
			<div class="resenaUser col-md-7  col-xs-12">
				<p>Calificación otorgada:
					<span class="starresponcont">
						<i class="starspoints fa fa-star" aria-hidden="true"></i><i class="starspoints fa fa-star" aria-hidden="true"></i><i class="starspoints fa fa-star" aria-hidden="true"></i><i class="starspoints fa fa-star" aria-hidden="true"></i><i class="starspoints fa fa-star" aria-hidden="true"></i>
					</span>
				</p>
				<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años</p>
			</div>
		</div>
	</div>			
			
			
			
			
			
			
			
			
			


			
        </section>
