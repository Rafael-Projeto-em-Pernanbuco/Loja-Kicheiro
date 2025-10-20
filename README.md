
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kicheiro | Exu-PE</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #121212;
            color: #ffffff;
        }

        header {
            background-color: #000000;
            padding: 20px;
            text-align: center;
        }

        header h1 {
            margin: 0;
            font-size: 2em;
        }

        .content {
            padding: 20px;
            max-width: 1200px;
            margin: auto;
        }

        .map-container {
            margin-top: 20px;
        }

        iframe {
            width: 100%;
            height: 400px;
            border: none;
        }

    .social-buttons a {
      display: inline-block;
      margin: 10px;
      text-decoration: none;
      color: #fff;
      background-color: #333;
      padding: 10px 20px;
      border-radius: 5px;
    }
    .chat-box {
      background-color: #1a1a1a;
      border: 1px solid #333;
      border-radius: 5px;
      padding: 10px;
      max-width: 400px;
      margin: 20px auto;
    }
    .chat-box textarea {
      width: 100%;
      height: 60px;
      resize: none;
      background: #000;
      color: #ccc;
      border: 1px solid #444;
      border-radius: 4px;
      margin-bottom: 10px;
    }
    .chat-box button {
      padding: 8px 16px;
      background: #444;
      color: white;
      border: none;
      cursor: pointer;
    }

        /* Google Tradutor fixado no canto */
        #google_translate_element {
            position: fixed;
            top: 10px;
            right: 10px;
            z-index: 9999;
        }

        /* Chat Simples */
        .chat-box {
            position: fixed;
            bottom: 0;
            right: 20px;
            width: 300px;
            background: #1e1e1e;
            border: 1px solid #444;
            border-radius: 8px 8px 0 0;
            color: white;
        }

        .chat-header {
            background: #000;
            padding: 10px;
            font-weight: bold;
            cursor: pointer;
        }

        .chat-body {
            max-height: 300px;
            overflow-y: auto;
            padding: 10px;
            display: none;
        }

        .chat-input {
            padding: 10px;
            background: #222;
        }

        .chat-input input {
            width: 100%;
            padding: 8px;
            background: #333;
            color: white;
            border: none;
        }

        .message {
            margin: 5px 0;
        }

        .user {
            color: #4caf50;
        }

        .bot {
            color: #03a9f4;
        }
    </style>
</head>
<body>

    <div id="google_translate_element"></div>

    <header>
        <h1>Kicheiro</h1>
        <p>Rua Petias Peixoto N°13, Centro, Exu-PE</p>
    </header>

    <div class="content">
        <h2>Bem-vindo ao Kicheiro</h2>
        <p>Nosso espaço está localizado no coração de Exu-PE. Veja no mapa abaixo:</p>

        <div class="map-container">
            <iframe 
                src="https://www.google.com/maps?q=Rua+petias+Peixoto+13,+Exu,+PE&output=embed"
                allowfullscreen>
            </iframe>
        </div>
    </div>

  <h2>Fale Conosco</h2>
  <div class="chat-box">
    <textarea placeholder="Digite sua mensagem..."></textarea><br>
    <button onclick="alert('Mensagem enviada! (Simulação)')">Enviar</button>
    <button onclick="startRecording()">🎤 Gravar Áudio</button>
    <p id="audio-status"></p>
  </div>

  <h2>Redes Sociais</h2>
  <div class="social-buttons">   
 <a href="https://www.youtube.com/SEUUSUARIO" target="_blank">Youtube</a>     <a href="https://wa.me/558796206363" target="_blank">WhatsApp</a>
    <a href="https://www.instagram.com/SEUUSUARIO" target="_blank">Instagram</a>
    <a href="https://www.facebook.com/SEUUSUARIO" target="_blank">Facebook</a>
    <a href="https://twitter.com/SEUUSUARIO" target="_blank">Twitter</a>
    <a href="https://kwai-video.com/SEUUSUARIO" target="_blank">Kwai</a>
    <a href="https://t.me/SEUUSUARIO" target="_blank">Telegram</a>
    <a href="https://www.tiktok.com/SEUUSUARIO" target="_blank">TikTok</a>
  </div>

        <hr style="margin: 40px 0; border-color: #333;">

        <h2>Nossos Óculos</h2>
        <p>Confira alguns dos modelos disponíveis em nossa loja:</p>

        <div class="product-list">
            <div class="product">
                <img src="https://via.placeholder.com/200x120?text=Óculos+1" alt="Óculos Clássico">
                <h3>Óculos Clássico</h3>
                <p>Modelo tradicional, ideal para o dia a dia.</p>
                <span class="price">R$ 149,90</span>
            </div>
            <div class="product">
                <img src="https://via.placeholder.com/200x120?text=Óculos+2" alt="Óculos Esportivo">
                <h3>Óculos Esportivo</h3>
                <p>Leve e resistente, perfeito para atividades ao ar livre.</p>
                <span class="price">R$ 199,90</span>
            </div>
            <div class="product">
                <img src="https://via.placeholder.com/200x120?text=Óculos+3" alt="Óculos Retrô">
                <h3>Óculos Retrô</h3>
                <p>Design vintage com lentes modernas.</p>
                <span class="price">R$ 179,90</span>
            </div>
        </div>

    <!-- Chat Box -->
    <div class="chat-box">
        <div class="chat-header" onclick="toggleChat()">Atendimento Online</div>
        <div class="chat-body" id="chatBody">
            <div class="message bot">Olá! Como posso ajudar?</div>
        </div>
        <div class="chat-input">
            <input type="text" id="chatInput" placeholder="Digite sua mensagem..." onkeypress="handleKeyPress(event)">
        </div>
    </div>

    <!-- Scripts -->
    <script>
        function toggleChat() {
            const chatBody = document.getElementById("chatBody");
            chatBody.style.display = chatBody.style.display === "none" ? "block" : "none";
        }

        function handleKeyPress(e) {
            if (e.key === 'Enter') {
                const input = document.getElementById("chatInput");
                const message = input.value.trim();
                if (message) {
                    addMessage("user", message);
                    setTimeout(() => {
                        addMessage("bot", "Recebido! Em breve entraremos em contato.");
                    }, 1000);
                    input.value = "";
                }
            }
        }

        function addMessage(sender, text) {
            const chatBody = document.getElementById("chatBody");
            const msg = document.createElement("div");
            msg.className = `message ${sender}`;
            msg.textContent = text;
            chatBody.appendChild(msg);
            chatBody.scrollTop = chatBody.scrollHeight;
        }

        // Tradutor Google
        function googleTranslateElementInit() {
            new google.translate.TranslateElement({
                pageLanguage: 'pt',
                includedLanguages: 'en,es,fr,de,it,pt',
                layout: google.translate.TranslateElement.InlineLayout.SIMPLE
            }, 'google_translate_element');
        }
    </script>

    <script src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

</body>
</html>
