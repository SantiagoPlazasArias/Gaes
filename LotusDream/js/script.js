// Tu JSON de productos y servicios (resumido aquí para ejemplo)
//import Servicios from 'data/data.json' assert { type: 'json' };

//const data = datajson;

// Función que recibe una categoría y genera HTML
function render(){
    console.log("Hola estoy en render");
  //  const productos = dataSpa[categoria];
  fetch('data/data.json') // Reemplaza 'ruta/al/archivo.json' con la ubicación real de tu archivo
  .then(response => {
    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`);
    }
    return response.json(); // Esto también devuelve una Promesa que se resuelve con el objeto JSON parseado
  })
  .then(data => {
    servicios = data["Servicios"];
    if (!servicios || servicios.length === 0) {
        document.getElementById('contentDisplay').innerHTML = '<p>No hay servicios disponibles en esta categoría.</p>';
        return;
    
    }/*
        html = ''
    servicios.forEach(servicio => {
    html += `
  <div class="card mb-4 rounded-3 shadow-sm">
    <div class="card-header py-3">
      <h4>${servicio.nombre}</h4>
    </div>
    <div class="card-body">
      <img class="bd-placeholder-img card-img-top" src="${servicio.imagen}" alt="${servicio.nombre}" width="100%">
      ${servicio.presentacion ? `<p>${servicio.presentacion}</p>` : ''}
      <p>$${servicio.precio.toLocaleString('es-CO')}</p>
      <p>${servicio.descripcion}</p>
      <button class="btn-mas-info">
        <a href="Descripciones/manicuratradicional.html"> Más Información </a>
      </button>
    </div>
  </div>
`;
    });*/
    html = ''
    servicios.forEach(servicio => {
            html += `
      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3"">
        <div class="card shadow-sm">
        <h4>${servicio.nombre}</h4> 
        <div class="card-body">
          <img class="bd-placeholder-img card-img-top" src="${servicio.imagen}" alt="${servicio.nombre}" width='10em' height='10em'>        </div>
        ${servicio.presentacion ? `<p>${servicio.presentacion}</p>` : ''}
        <p>$${servicio.precio.toLocaleString('es-CO')}</p>
        <p>${servicio.descripcion}</p>
        <button class="btn-mas-info">
          <a href="Descripciones/manicuratradicional.html"> Más Información </a>
        </button>
      </div>
      </div>
    `;
    });

    document.getElementById('contentDisplay').innerHTML = html;
  })
  .catch(error => {
    // Aquí puedes manejar cualquier error que ocurra durante la lectura del archivo
    console.error('No se pudo leer el archivo JSON:', error);
  });
  // Validación básica
 /*

  // Construcción de HTML
  let html = `
    <h2>${categoria.replace(/([A-Z])/g, ' $1').trim()}</h2>
    <p>Descubre nuestros servicios y productos diseñados para realzar tu belleza.</p>
    <div class="product-grid">
  `;

  productos.forEach(producto => {
    html += `
      <div class="product">
        <img src="${producto.imagen}" alt="${producto.nombre}">
        <h4>${producto.nombre}</h4>
        ${producto.presentacion ? `<p>${producto.presentacion}</p>` : ''}
        <p>$${producto.precio.toLocaleString('es-CO')}</p>
        <p>${producto.descripcion}</p>
        <button class="btn-mas-info">
          <a href="Descripciones/manicuratradicional.html"> Más Información </a>
        </button>
      </div>
    `;
  });

  html += `</div>`;
  document.getElementById('contentDisplay').innerHTML = html;
*/
}