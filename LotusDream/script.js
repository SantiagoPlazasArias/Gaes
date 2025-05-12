const navLinks = document.querySelectorAll('.navlink');
        const subNavLinks = document.querySelectorAll('.sub-navlink');
        const contentDisplay = document.getElementById('content-display');

        // Contenidos específicos para cada apartado
        const contentData = {
            
            /*
            Esmaltes: `
                <h2>Esmaltes</h2>
                <p>Explora nuestra amplia gama de colores y estilos de esmaltes.</p>
                <div class="product-grid">
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Esmalte rojo">
                        <h4>Esmalte Rojo</h4>
                        <p>$5.00</p>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Esmalte azul">
                        <h4>Esmalte Azul</h4>
                        <p>$6.00</p>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Esmalte rosa">
                        <h4>Esmalte Rosa</h4>
                        <p>$4.50</p>
                    </div>
                </div>
            `,
            Cremas: `
                <h2>Cremas</h2>
                <p>Hidrata y cuida tu piel con nuestras cremas.</p>
                <div class="product-grid">
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Crema facial">
                        <h4>Crema Facial</h4>
                        <p>$15.00</p>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Crema hidratante">
                        <h4>Crema Hidratante</h4>
                        <p>$18.00</p>
                    </div>
                </div>
            `,*/
            Servicios: `
                <h2>Servicios</h2>
                <p>Elige entre nuestros servicios de cuidado y relajación.</p>
            `,
            Manicura: `
                <h2>Servicios para Manos</h2>
                <p>Cuida y embellece tus manos con nuestros exclusivos servicios.</p>
                <h2>Tipos de Manicuras</h2>

                <div class="product-grid">
                    <div class="product">
                        <img src="Servicios/ManicureTradicional.jpg" alt="Manicura Tradicional"  width="150px" height="150px">
                        <h4>Manicura Tradicional</h4>
                        <p>$25 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuras/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="Servicios/ManicuraSemipermanente.jpg" alt="Manicura Semipermanente">
                        <h4>Manicura Semipermanente</h4>
                        <p>$50 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuras/manicurasemipermanente.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Manicura Tradicional Hombre">
                        <h4>Manicura Tradicional Hombre</h4>
                        <p>$25 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuras/manicuratradicionalhombre.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Manicura Base Ruber Tradicional:">
                        <h4>Manicura Base Ruber Tradicional:</h4>
                        <p>$70 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuras/ManicuraBaseRuberTradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Manicura Base Ruber Semipermanente">
                        <h4>Manicura Base Ruber Semipermanente</h4>
                        <p>$90 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuras/ManicuraBaseRuberSemipermanente.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="Servicios/ManicuraUñasAcrilicasEsculpidas.jpg" alt="Manicura Uñas Acrilicas Esculpidas">
                        <h4>Manicura Uñas Acrilicas Esculpidas</h4>
                        <p>$130 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuras/ManicuraUñasAcrilicasEsculpida.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Manicura Uñas Acrilicas con Tips">
                        <h4>Manicura Uñas Acrilicas con Tips</h4>
                        <p>$110 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuras/ManicuraUñasAcrilicasconTips.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Manicura Uñas PolyGel">
                        <h4>Manicura Uñas PolyGel</h4>
                        <p>$130 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/ManicuraUñasPolyGel.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="Servicios/ManicuraUñasPolyGelconTips.jpg" alt="Manicura Uñas PolyGel con Tips">
                        <h4>Manicura Uñas PolyGel con Tips</h4>
                        <p>$110 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuras/ManicuraUñasPolyGelconTips.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Manicura Uñas Press On">
                        <h4>Manicura Uñas Press On</h4>
                        <p>$90 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuras/ManicuraUñasPressOn.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Manicura con Baño de Acrilico">
                        <h4>Manicura con Baño de Acrilico</h4>
                        <p>$90 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuras/ManicuraconBañodeAcrilico.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Manicura con Baño de Poly Gel">
                        <h4>Manicura con Baño de Poly Gel</h4>
                        <p>$90 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuras/ManicuraconBañodePolyGel.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Retoque PolyGel, Acrilico y Prees On">
                        <h4>Retoque PolyGel, Acrilico y Prees On</h4>
                        <p>$90 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuras/RetoquePolyGel,AcrilicoyPreesOn.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Retiro Esmalte Semipermanente">
                        <h4>Retiro Esmalte Semipermanente</h4>
                        <p>$15 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuras/RetiroEsmalteSemipermanente.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Retiro Acrilico, Poly gel o Prees On">
                        <h4>Retiro Acrilico, Poly gel o Prees On</h4>
                        <p>$25 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuras/RetiroAcrilico,PolygeloPreesOn.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Decoracion Elaborada por Uña - Desde ">
                        <h4>Decoracion Elaborada por Uña - Desde </h4>
                        <p>$5 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuras/DecoracionElaboradaporUña-Desde.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Largo adicional apartir de 4 cm desde">
                        <h4>Largo adicional apartir de 4 cm desde</h4>
                        <p>$15 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuras/Largoadicionalapartirde4cmdesde.html"> Más Información </a> </button>
                    </div>
                </div>
            `,
            Pedicura: `
                <h2>Servicios para Pies</h2>
                <p>Disfruta de un tratamiento especializado para el cuidado de tus pies.</p>
                 <div class="product-grid">
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Pedicura Tradicional">
                        <h4>Pedicura Tradicional</h4>
                        <p>$30 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Pedicura Semipermanente">
                        <h4>Pedicura Semipermanente</h4>
                        <p>$55 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Pedicura Tradicional SPA"> 
                        <h4>Pedicura Tradicional SPA</h4>
                        <p>$35 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Pedicura Semipermanente SPA"> 
                        <h4>Pedicura Semipermanente SPA</h4>
                        <p>$60 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    </div>
                    
            `,
            Depilacioncorporalconcera:`
                <h2>Servicios Deipilatorio Corporal</h2>
                <p>Cuida y embellece tu cuerpo con nuestros exclusivos servicios.</p>
                <h2>Tipos de Depilaciones</h2>

                <div class="product-grid">
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Pierna Completa">
                        <h4>Pierna Completa</h4>
                        <p>$35 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Media Pierna">
                        <h4>Media Pierna</h4>
                        <p>$25 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Axilas">
                        <h4>Axilas</h4>
                        <p>$15 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Nariz">
                        <h4>Nariz</h4>
                        <p>$10 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt=" Bikini Completo">
                        <h4> Bikini Completo</h4>
                        <p>$50 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Medio Bikini">
                        <h4>Medio Bikini</h4>
                        <p>$35 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Brazos">
                        <h4>Brazos</h4>
                        <p>$30 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Medio Brazo">
                        <h4>Medio Brazo</h4>
                        <p>$25 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Cejas">
                        <h4>Cejas</h4>
                        <p>$15 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Bigote">
                        <h4>Bigote</h4>
                        <p>$90 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Rostro">
                        <h4>Rostro</h4>
                        <p>$40 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    </div>
            `,
            Faciales: `
                <h2>Servicios Faciales</h2>
                <p>Cuida y embellece tu caras con nuestros exclusivos servicios.</p>
                <h2>Tipos de Servicios Faciales</h2>

                <div class="product-grid">
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Limpieza facial sencilla">
                        <h4>Limpieza facial sencilla</h4>
                        <p>$90 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Limpieza facial profunda">
                        <h4>Limpieza facial profunda</h4>
                        <p>$120 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Rejuvenecimiento facial">
                        <h4>Rejuvenecimiento facial</h4>
                        <p>$110 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Limpieza Facial Profunda más Peeling Químico o físico según tipo de piel">
                        <h4>Limpieza Facial Profunda más Peeling Químico o físico según tipo de piel</h4>
                        <p>$130 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    </div>

            `,
            Pestañas: `
                <h2>Servicios para Pestañas</h2>
                <p>Cuida y embellece tus pestañas con nuestros exclusivos servicios.</p>

                <div class="product-grid">
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt=" Efecto Natural">
                        <h4> Efecto Natural</h4>
                        <p>$80 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Efecto Pestañina">
                        <h4>Efecto Pestañina</h4>
                        <p>$80 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Efecto Volumen">
                        <h4>Efecto Volumen</h4>
                        <p>$110 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Híbridas">
                        <h4>Híbridas</h4>
                        <p>$120 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Retoque de pestañas (15 dias posteriores)">
                        <h4>Retoque de pestañas (15 dias posteriores)</h4>
                        <p>$60 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    </div>
            `,
            Pestañas: `
                <h2>Servicios para Pestañas</h2>
                <p>Cuida y embellece tus pestañas con nuestros exclusivos servicios.</p>

                <div class="product-grid">
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt=" Efecto Natural">
                        <h4> Efecto Natural</h4>
                        <p>$80 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Efecto Pestañina">
                        <h4>Efecto Pestañina</h4>
                        <p>$80 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Efecto Volumen">
                        <h4>Efecto Volumen</h4>
                        <p>$110 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Híbridas">
                        <h4>Híbridas</h4>
                        <p>$120 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Retoque de pestañas (15 dias posteriores)">
                        <h4>Retoque de pestañas (15 dias posteriores)</h4>
                        <p>$60 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    </div>
            `,Pestañas: `
            <h2>Servicios para Pestañas</h2>
            <p>Cuida y embellece tus pestañas con nuestros exclusivos servicios.</p>

            <div class="product-grid">
                <div class="product">
                    <img src="https://via.placeholder.com/150" alt=" Efecto Natural">
                    <h4> Efecto Natural</h4>
                    <p>$80 000</p>
                    <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                </div>
                <div class="product">
                    <img src="https://via.placeholder.com/150" alt="Efecto Pestañina">
                    <h4>Efecto Pestañina</h4>
                    <p>$80 000</p>
                    <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                </div>
                <div class="product">
                    <img src="https://via.placeholder.com/150" alt="Efecto Volumen">
                    <h4>Efecto Volumen</h4>
                    <p>$110 000</p>
                    <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                </div>
                <div class="product">
                    <img src="https://via.placeholder.com/150" alt="Híbridas">
                    <h4>Híbridas</h4>
                    <p>$120 000</p>
                    <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                </div>
                <div class="product">
                    <img src="https://via.placeholder.com/150" alt="Retoque de pestañas (15 dias posteriores)">
                    <h4>Retoque de pestañas (15 dias posteriores)</h4>
                    <p>$60 000</p>
                    <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                </div>
                </div>
        `,
        Pestañas: `
                <h2>Servicios para Pestañas</h2>
                <p>Cuida y embellece tus pestañas con nuestros exclusivos servicios.</p>

                <div class="product-grid">
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt=" Efecto Natural">
                        <h4> Efecto Natural</h4>
                        <p>$80 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Efecto Pestañina">
                        <h4>Efecto Pestañina</h4>
                        <p>$80 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Efecto Volumen">
                        <h4>Efecto Volumen</h4>
                        <p>$110 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Híbridas">
                        <h4>Híbridas</h4>
                        <p>$120 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Retoque de pestañas (15 dias posteriores)">
                        <h4>Retoque de pestañas (15 dias posteriores)</h4>
                        <p>$60 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    </div>
            `,
            MasajesCorporales: `
                <h2>Servicios de Masajes Corporales</h2>
                <p>Cuida y embellece tu cuerpo con nuestros exclusivos servicios.</p>

                <div class="product-grid">
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Masajes Relajantes">
                        <h4>Masajes Relajantes</h4>
                        <p>$100 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Masaje Descontracturante">
                        <h4>Masaje Descontracturante</h4>
                        <p>$100 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Drenaje Linfático">
                        <h4>Drenaje Linfático</h4>
                        <p>$110 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Masaje Anticelulítico">
                        <h4>Masaje Anticelulítico</h4>
                        <p>$100 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Masaje Reductor">
                        <h4>Masaje Reductor</h4>
                        <p>$120 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    </div>
            `,

            /*PRODUCTOS*/
            Productos: `
                <h2>Productos</h2>
                <p>Complementa tu estilo con nuestros Productos.</p>
            `,
            Mantequillas: `
                <h2>Mantequillas</h2>
                <p>Complementa tu estilo con nuestros Productos.</p>
            <div class="product-grid">
                    <div class="product">
                        <img src="Productos/MantequillasHidratantesArtesanalessandia.jpg" alt="Mantequillas Hidratantes Artesanales">
                        <h4>Mantequillas Hidratantes Artesanales</h4>
                        <h4>Sandia</h4>
                        <p>$40 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="Productos/MantequillasHidratantesArtesanalesfrutosrojos.jpg" alt="Mantequillas Hidratantes Artesanales">
                        <h4>Mantequillas Hidratantes Artesanales</h4>
                        <h4>Frutos Rojos</h4>
                        <p>$40 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="Productos/MantequillasHidratantesArtesanalesmaracuya.jpg" alt="Mantequillas Hidratantes Artesanales">
                        <h4>Mantequillas Hidratantes Artesanales</h4>
                        <h4>Maracuya</h4>
                        <p>$40 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    
                    </div>
            `,
            MasajesCorporales: `
                <h2>Servicios de Masajes Corporales</h2>
                <p>Cuida y embellece tu cuerpo con nuestros exclusivos servicios.</p>

                <div class="product-grid">
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Masajes Relajantes">
                        <h4>Masajes Relajantes</h4>
                        <p>$100 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Masaje Descontracturante">
                        <h4>Masaje Descontracturante</h4>
                        <p>$100 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Drenaje Linfático">
                        <h4>Drenaje Linfático</h4>
                        <p>$110 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Masaje Anticelulítico">
                        <h4>Masaje Anticelulítico</h4>
                        <p>$100 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="https://via.placeholder.com/150" alt="Masaje Reductor">
                        <h4>Masaje Reductor</h4>
                        <p>$120 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    </div>
            `,
            Velas: `
                <h2>Velas</h2>
                <p>Complementa tu estilo con nuestros Productos.</p>
            `,
            VelasCorporales: `
                <h2>Velas Corporales</h2>
                <p>Complementa tu estilo con nuestros Productos.</p>
            `,

            TratamientosCapilares: `
                <h2>Tratamientos Capilares</h2>
                <p>Con nuestros Productos Trata tu pelo.</p>

                <div class="product-grid">
                    <div class="product">
                        <img src="Productos/MatizantesBukiPro.jpg" alt="Matizantes Buki Pro">
                        <h4>Matizantes Buki Pro</h4>
                        <p>600 ML</p>
                        <p>$156 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="Productos/TratamientodeFrutasBukiPro.jpg" alt="Tratamiento de Frutas Buki Pro">
                        <h4>Tratamiento de Frutas Buki Pro</h4>
                        <p>250 ML</p>
                        <p>$79 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="Productos/MatizantesBukiPro250.jpg" alt="Matizantes Buki Pro">
                        <h4>Matizantes Buki Pro</h4>
                        <p>250 ML</p>
                        <p>$79 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    </div>
            `,
            Shampoo: `
                <h2>Shampoo</h2>
                <p>Complementa tu estilo con nuestros Productos.</p>
                <div class="product-grid">
                    <div class="product">
                        <img src="Productos/ShampoosinsalBukiPro300.jpg" alt="Shampoo sin sal Buki Pro">
                        <h4>Shampoo sin sal Buki Pro</h4>
                        <p>300 ML</p>
                        <p>$68 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="Productos/ShampoosinsalBukiPro1.jpg" alt="Shampoo sin sal Buki Pro">
                        <h4>Shampoo sin sal Buki Pro</h4>
                        <p>1 L</p>
                        <p>$139 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    </div>
            `,
            Coctel: `
                <h2>Coctel</h2>
                <p>Complementa tu estilo con nuestros Productos.</p>
                <div class="product-grid">
                    <div class="product">
                        <img src="Productos/CocteldeAminoacidosBukiPro250.jpg" alt="Coctel de Aminoacidos Buki Pro">
                        <h4>Coctel de Aminoacidos Buki Pro</h4>
                        <p>250 ML</p>
                        <p>$79 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    <div class="product">
                        <img src="Productos/CocteldeAminoacidosBukiPro600.jpg" alt="Coctel de Aminoacidos Buki Pro">
                        <h4>Coctel de Aminoacidos Buki Pro</h4>
                        <p>600 ML</p>
                        <p>$156 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    </div>
            `,
            Serum: `
                <h2>Serum</h2>
                <p>Complementa tu estilo con nuestros Productos.</p>
                <div class="product-grid">
                    <div class="product">
                        <img src="Productos/serum.jpg" alt="Serum Buki Pro">
                        <h4>Serum Buki Pro</h4>
                        <p>30 ML</p>
                        <p>$65 000</p>
                        <button class="btn-mas-info"> <a href="Descripciones/manicuratradicional.html"> Más Información </a> </button>
                    </div>
                    </div>
            `,
        };
        // Function to create and append the "Más Información" button
function addInfoButton(product) {
    const infoButton = document.createElement('button');
    infoButton.classList.add('btn-mas-info');
    infoButton.innerHTML = '<a href="#"> Más Información </a>';
  
    // Replace "#" with the appropriate link based on the service type
    const serviceType = contentDisplay.dataset.serviceType;
    const infoLink = `Descripciones/${serviceType.toLowerCase()}.html`;
    infoButton.querySelector('a').setAttribute('href', infoLink);
  
    product.appendChild(infoButton);
  }
  
  function updateContent(serviceType) {
    contentDisplay.innerHTML = contentData[serviceType];
  
    // Add "Más Información" button to each product
    const products = document.querySelectorAll('.product');
    products.forEach(addInfoButton);
  }
        // Cambiar contenido al hacer hover sobre los enlaces
        navLinks.forEach(link => {
            link.addEventListener('mouseenter', (e) => {
                const contentKey = link.dataset.content;
                contentDisplay.innerHTML = contentData[contentKey] || '<p>Contenido no disponible.</p>';
            });
        });

        // Cambiar contenido al hacer hover sobre los submenús
        subNavLinks.forEach(link => {
            link.addEventListener('mouseenter', (e) => {
                const contentKey = link.dataset.content;
                contentDisplay.innerHTML = contentData[contentKey] || '<p>Contenido no disponible.</p>';
            });
        });