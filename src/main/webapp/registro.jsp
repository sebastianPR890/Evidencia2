<%-- 
    Document   : registro
    Created on : 6/05/2025, 10:39:25 a. m.
    Author     : sebit
--%>

<html>
<head>
    <meta charset="UTF-8">
    <title>Registro de Usuario</title>
    <style>
        /* Colores principales */
        :root {
            --naranja-principal: #FF9639;
            --naranja-claro: #FFB169;
            --celeste-principal: #4EAEE2;
            --celeste-claro: #79C1EA;
            --texto-oscuro: #333333;
            --fondo-blanco: #FFFFFF;
            --fondo-claro: #F8F9FA;
        }

        /* Estilos generales */
        body { 
            font-family: 'Segoe UI', Arial, sans-serif; 
            margin: 0; 
            padding: 0; 
            line-height: 1.6; 
            color: var(--texto-oscuro);
            background: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100%25' height='100%25' viewBox='0 0 1600 800'%3E%3Cg %3E%3Cpath fill='%23ffb9a5' d='M486 705.8c-109.3-21.8-223.4-32.2-335.3-19.4C99.5 692.1 49 703 0 719.8V800h843.8c-115.9-33.2-230.8-68.1-347.6-92.2C492.8 707.1 489.4 706.5 486 705.8z'/%3E%3Cpath fill='%23ffb2b1' d='M1600 0H0v719.8c49-16.8 99.5-27.8 150.7-33.5c111.9-12.7 226-2.4 335.3 19.4c3.4 0.7 6.8 1.4 10.2 2c116.8 24 231.7 59 347.6 92.2H1600V0z'/%3E%3Cpath fill='%23ffabbc' d='M478.4 581c3.2 0.8 6.4 1.7 9.5 2.5c196.2 52.5 388.7 133.5 593.5 176.6c174.2 36.6 349.5 29.2 518.6-10.2V0H0v574.9c52.3-17.6 106.5-27.7 161.1-30.9C268.4 537.4 375.7 554.2 478.4 581z'/%3E%3Cpath fill='%23ffa5c7' d='M0 0v429.4c55.6-18.4 113.5-27.3 171.4-27.7c102.8-0.8 203.2 22.7 299.3 54.5c3 1 5.9 2 8.9 3c183.6 62 365.7 146.1 562.4 192.1c186.7 43.7 376.3 34.4 557.9-12.6V0H0z'/%3E%3Cpath fill='%23ff9fd1' d='M181.8 259.4c98.2 6 191.9 35.2 281.3 72.1c2.8 1.1 5.5 2.3 8.3 3.4c171 71.6 342.7 158.5 531.3 207.7c198.8 51.8 403.4 40.8 597.3-14.8V0H0v283.2C59 263.6 120.6 255.7 181.8 259.4z'/%3E%3Cpath fill='%23d1adea' d='M1600 0H0v136.3c62.3-20.9 127.7-27.5 192.2-19.2c93.6 12.1 180.5 47.7 263.3 89.6c2.6 1.3 5.1 2.6 7.7 3.9c158.4 81.1 319.7 170.9 500.3 223.2c210.5 61 430.8 49 636.6-16.6V0z'/%3E%3Cpath fill='%23a4baff' d='M454.9 86.3C600.7 177 751.6 269.3 924.1 325c208.6 67.4 431.3 60.8 637.9-5.3c12.8-4.1 25.4-8.4 38.1-12.9V0H288.1c56 21.3 108.7 50.6 159.7 82C450.2 83.4 452.5 84.9 454.9 86.3z'/%3E%3Cpath fill='%2377c6ff' d='M1600 0H498c118.1 85.8 243.5 164.5 386.8 216.2c191.8 69.2 400 74.7 595 21.1c40.8-11.2 81.1-25.2 120.3-41.7V0z'/%3E%3Cpath fill='%2349d2ff' d='M1397.5 154.8c47.2-10.6 93.6-25.3 138.6-43.8c21.7-8.9 43-18.8 63.9-29.5V0H643.4c62.9 41.7 129.7 78.2 202.1 107.4C1020.4 178.1 1214.2 196.1 1397.5 154.8z'/%3E%3Cpath fill='%2318dfff' d='M1315.3 72.4c75.3-12.6 148.9-37.1 216.8-72.4h-723C966.8 71 1144.7 101 1315.3 72.4z'/%3E%3C/g%3E%3C/svg%3E");
            background-attachment: fixed;
            background-size: cover;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        /* Contenedor principal */
        .container { 
            max-width: 800px; 
            margin: 40px auto;
            padding: 30px;
            background-color: rgba(255, 255, 255, 0.92);
            border-radius: 10px;
            box-shadow: 0 0 30px rgba(0, 0, 0, 0.15);
            flex: 1;
            backdrop-filter: blur(5px);
        }

        /* Encabezados */
        h1 { 
            color: var(--naranja-principal);
            border-bottom: 3px solid var(--celeste-principal);
            padding-bottom: 10px;
            margin-top: 0;
            text-align: center;
        }

        /* Formulario */
        .form-group { 
            margin-bottom: 22px; 
        }
        
        .form-group label { 
            display: block; 
            margin-bottom: 8px; 
            font-weight: 600;
            color: var(--texto-oscuro);
            font-size: 16px;
        }
        
        .form-group input { 
            width: 100%; 
            padding: 12px; 
            box-sizing: border-box; 
            border: 1px solid #ddd; 
            border-radius: 8px;
            transition: all 0.3s ease;
            font-size: 16px;
            background-color: var(--fondo-claro);
        }
        
        .form-group input:focus {
            border-color: var(--celeste-principal);
            box-shadow: 0 0 8px rgba(78, 174, 226, 0.4);
            outline: none;
        }
        
        .btn { 
            padding: 14px 25px; 
            background-color: var(--naranja-principal); 
            color: white; 
            border: none; 
            border-radius: 8px; 
            cursor: pointer;
            font-size: 16px;
            font-weight: 600;
            transition: all 0.3s ease;
            width: 100%;
            margin-top: 10px;
        }
        
        .btn:hover { 
            background-color: var(--naranja-claro);
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(255, 150, 57, 0.4);
        }
        
        /* Mensaje de éxito */
        .message { 
            padding: 15px; 
            margin: 20px 0; 
            background-color: rgba(78, 174, 226, 0.15); 
            border-left: 4px solid var(--celeste-principal); 
            border-radius: 4px; 
            color: var(--texto-oscuro);
            font-size: 16px;
        }
        
        /* Menú inferior */
        .menu { 
            margin: 30px 0 10px; 
            padding: 20px;
            background-color: var(--fondo-claro);
            border-radius: 8px;
            text-align: center;
            box-shadow: inset 0 0 10px rgba(0, 0, 0, 0.05);
            border: 1px solid rgba(78, 174, 226, 0.2);
        }
        
        .menu a { 
            color: var(--celeste-principal); 
            text-decoration: none;
            font-weight: 600;
            margin: 0 10px;
            transition: all 0.3s ease;
            padding: 8px 12px;
            border-radius: 4px;
        }
        
        .menu a:hover { 
            color: var(--naranja-principal);
            background-color: rgba(255, 150, 57, 0.1);
        }

        /* Footer desplegable */
        footer {
            background-color: var(--celeste-principal);
            color: white;
            overflow: hidden;
            transition: all 0.5s ease;
            height: 70px;
            margin-top: 40px;
        }

        footer:hover {
            height: 280px;
        }

        .footer-content {
            max-width: 900px;
            margin: 0 auto;
            padding: 20px 30px;
        }

        footer h2 {
            color: white;
            margin: 0;
            text-align: center;
            padding-bottom: 10px;
            position: relative;
            cursor: pointer;
        }

        footer h2:after {
            content: "?";
            font-size: 14px;
            margin-left: 10px;
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
        }

        footer:hover h2:after {
            content: "?";
        }

        .footer-info {
            padding-top: 15px;
            border-top: 2px solid var(--naranja-principal);
            margin-top: 15px;
            opacity: 0;
            transition: opacity 0.5s ease;
        }

        footer:hover .footer-info {
            opacity: 1;
        }

        /* Responsividad */
        @media (max-width: 600px) {
            .container {
                padding: 20px;
                margin: 20px;
            }
            
            .form-group input,
            .btn {
                padding: 10px;
            }
            
            .footer-content {
                padding: 0 20px;
            }
            
            footer:hover {
                height: 320px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Registro de Usuario</h1>
        
        <% if (request.getAttribute("mensaje") != null) { %>
            <div class="message">
                <%= request.getAttribute("mensaje") %>
            </div>
        <% } %>
        
        <form action="RegistroServlet" method="POST">
            <div class="form-group">
                <label for="nombre">Nombre:</label>
                <input type="text" id="nombre" name="nombre" required>
            </div>
            
            <div class="form-group">
                <label for="apellido">Apellido:</label>
                <input type="text" id="apellido" name="apellido" required>
            </div>
            
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            
            <div class="form-group">
                <label for="password">Contraseña:</label>
                <input type="password" id="password" name="password" required>
            </div>
            
            <div class="form-group">
                <button type="submit" class="btn">Registrar</button>
            </div>
        </form>
        
        <div class="menu">
            <a href="index.jsp">Volver a Inicio</a> | 
            <a href="consulta.jsp">Consultar Usuarios</a>
        </div>
    </div>
    
    <footer>
        <div class="footer-content">
            <h2>Información del Sistema</h2>
            <div class="footer-info">
                <p>
                    Este sistema es un ejemplo simple que muestra cómo utilizar:
                    <ul>
                        <li>Servlets para procesar formularios</li>
                        <li>JSP para renderizar páginas dinámicas</li>
                        <li>Métodos HTTP GET y POST</li>
                        <li>Sesiones para almacenar datos</li>
                    </ul>
                </p>
            </div>
        </div>
    </footer>
</body>
</html>