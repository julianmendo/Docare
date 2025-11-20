<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Docare - Gestión Médica</title>
    <!-- Incluye Tailwind CSS desde CDN para un diseño responsivo y moderno -->
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Configuración de fuente Inter para una mejor legibilidad */
        body {
            font-family: 'Inter', sans-serif;
            background-color: #f7f9fb; /* Fondo muy claro que transmite higiene */
        }
        /* Clases personalizadas para una mejor visualización del scroll */
        .custom-scroll::-webkit-scrollbar {
            width: 6px;
        }
        .custom-scroll::-webkit-scrollbar-thumb {
            background-color: #cbd5e1; /* gris medio */
            border-radius: 3px;
        }
        /* Estilo para la sombra del header con un degradado de azules de salud */
        .header-bg {
            background: linear-gradient(90deg, #1f7a8c 0%, #0c4a6e 100%); /* Azul verdoso oscuro a azul marino */
        }
    </style>
    <script>
        // Configuración de la paleta de colores de bienestar en Tailwind
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        'health-primary': '#1f7a8c', // Azul verdoso principal (Confianza, Serenidad)
                        'health-secondary': '#0c4a6e', // Azul marino oscuro (Fuerza, Profesionalismo)
                        'health-accent-green': '#32a88a', // Verde agua (Vitalidad, Crecimiento)
                        'health-accent-blue': '#64b5f6', // Azul claro (Higiene, Calma)
                        'health-text-dark': '#374151', 
                        'health-text-light': '#6b7280', 
                        'danger-red': '#ef4444', // Rojo para alertas/peligro
                    }
                }
            }
        }
    </script>
</head>
<body class="min-h-screen flex flex-col">

    <!-- Header Fijo -->
    <header class="header-bg sticky top-0 z-20 shadow-lg text-white">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex items-center justify-between h-16">
                <!-- Logo -->
                <div class="flex items-center">
                    <svg class="w-7 h-7 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path></svg>
                    <span class="text-xl font-extrabold tracking-wider">DOCARE</span>
                </div>
                
                <!-- Info de Usuario -->
                <div class="flex items-center space-x-3">
                    <span class="hidden sm:inline text-sm font-light mr-3 opacity-90">DR: María Guadalupe Ramos Salinas</span>
                    <div class="w-10 h-10 rounded-full bg-white text-health-secondary flex items-center justify-center font-bold text-base shadow-inner ring-1 ring-white/30">MG</div>
                </div>
            </div>
        </div>
    </header>

    <!-- Contenido Principal -->
    <main class="flex-1 overflow-y-auto custom-scroll p-4 md:p-8">
        <div class="max-w-7xl mx-auto">
            
            <!-- Bloque de Bienvenida -->
            <div class="mb-8">
                <h1 class="text-3xl font-bold text-health-text-dark flex items-center">
                    <span class="mr-2 text-health-primary">👍</span> Bienvenid@, Doctor
                </h1>
                <p class="text-health-text-light mt-1 text-sm">Le saludamos y le deseamos un excelente turno hoy.</p>
            </div>

            <!-- Sección: Gestión de Pacientes -->
            <div class="mb-4">
                <!-- Se eliminaron las clases border-b-2 y border-health-accent-green para quitar la línea -->
                <h2 class="text-2xl font-bold text-health-text-dark inline-block">Gestión de Pacientes</h2>
            </div>
            
            <!-- Botones de Acción: Nuevo Paciente y Buscar Expediente (Ubicación solicitada) -->
            <div class="flex flex-col sm:flex-row space-y-3 sm:space-y-0 sm:space-x-4 mb-10">
                <button class="flex items-center justify-center sm:w-auto px-6 py-3 bg-health-primary text-white font-semibold rounded-lg shadow-md hover:bg-health-primary/90 transition duration-200">
                    <!-- Icono más -->
                    <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v16m8-8H4"></path></svg>
                    Nuevo Paciente
                </button>
                <div class="relative sm:w-auto">
                    <!-- Botón/Campo de Búsqueda -->
                    <input type="text" placeholder="Buscar Expediente" class="w-full sm:w-auto px-4 py-3 pl-10 border border-gray-300 rounded-lg focus:ring-health-accent-green focus:border-health-accent-green shadow-sm transition duration-200" />
                    <!-- Icono de Búsqueda -->
                    <svg class="absolute left-3 top-1/2 transform -translate-y-1/2 w-5 h-5 text-health-text-light" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path></svg>
                </div>
            </div>
            
            <!-- Tarjetas de Métricas -->
            <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6 mb-8">
                <!-- Card 1: Expedientes Activos (Color Primario - Confianza) -->
                <div class="bg-white p-6 rounded-xl shadow-lg hover:shadow-xl transition duration-300 border-t-4 border-health-primary">
                    <div class="flex items-center justify-between">
                        <span class="text-4xl font-extrabold text-health-primary">45</span>
                        <svg class="w-8 h-8 text-health-primary opacity-70" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"></path></svg>
                    </div>
                    <p class="mt-2 text-sm font-semibold text-health-text-dark">Expedientes Activos</p>
                    <p class="text-xs text-health-text-light">Archivos totales</p>
                </div>

                <!-- Card 2: Próximas Consultas (Color Verde - Vitalidad/Crecimiento) -->
                <div class="bg-white p-6 rounded-xl shadow-lg hover:shadow-xl transition duration-300 border-t-4 border-health-accent-green">
                    <div class="flex items-center justify-between">
                        <span class="text-4xl font-extrabold text-health-accent-green">03</span>
                        <svg class="w-8 h-8 text-health-accent-green opacity-70" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"></path></svg>
                    </div>
                    <p class="mt-2 text-sm font-semibold text-health-text-dark">Próximas Consultas</p>
                    <p class="text-xs text-health-text-light">Agenda del Día</p>
                </div>

                <!-- Card 3: Alarmas/Recetas Pendientes (Color Rojo - Advertencia/Urgencia) -->
                <div class="bg-white p-6 rounded-xl shadow-lg hover:shadow-xl transition duration-300 border-t-4 border-danger-red">
                    <div class="flex items-center justify-between">
                        <span class="text-4xl font-extrabold text-danger-red">12</span>
                        <svg class="w-8 h-8 text-danger-red opacity-70" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9"></path></svg>
                    </div>
                    <p class="mt-2 text-sm font-semibold text-health-text-dark">Alarmas/Recetas Pendientes</p>
                    <p class="text-xs text-health-text-light">Acciones Urgentes</p>
                </div>
            </div>
            
            <!-- Paneles de Funcionalidad (Diagnosis y TTS) -->
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">

                <!-- Panel 1: Asistente de Diagnóstico Rápido (Color Azul Claro - Tecnología/Higiene) -->
                <div class="bg-white p-6 rounded-xl shadow-lg border-t-4 border-health-accent-blue">
                    <h2 class="text-xl font-bold text-health-text-dark flex items-center mb-4">
                        <span class="mr-3 text-health-accent-blue">
                            <!-- Icono de Asistente/Estrellas -->
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 3v4M3 5h4M6 17v4M17 3l.635.635c.44.44.974.77 1.57.97L21 5l-1.795-.695a4.004 4.004 0 01-1.57-.97L17 3zm0 0l-1.365 1.365a4.004 4.004 0 00-1.57.97L13 5l1.795.695c.44.17.84.383 1.19.645m1.365-1.365L18 3m-4 18l.635-.635a4.004 4.004 0 001.57-.97L17 19l-1.795.695a4.004 4.004 0 01-1.57.97L13 21zm0 0l-1.365-1.365a4.004 4.004 0 00-1.57-.97L9 19l1.795-.695c.44-.17.84-.383 1.19-.645"></path></svg>
                        </span>
                        Asistente de Diagnóstico Rápido
                    </h2>
                    
                    <label for="symptoms" class="block text-sm font-medium text-health-text-dark">Síntomas:</label>
                    <textarea id="symptoms" rows="3" class="mt-1 w-full p-2 border border-gray-300 rounded-lg focus:ring-health-accent-blue focus:border-health-accent-blue"></textarea>

                    <button class="mt-3 w-full px-4 py-2 bg-health-accent-blue text-white font-semibold rounded-lg hover:bg-health-accent-blue/90 transition duration-200">
                        Generar Diagnóstico
                    </button>

                    <label for="result" class="block text-sm font-medium text-health-text-dark mt-4">Resultado:</label>
                    <select id="result" class="mt-1 w-full p-2 border border-gray-300 rounded-lg focus:ring-health-accent-blue focus:border-health-accent-blue">
                        <option>Resultado de diagnóstico (Ejemplo)</option>
                    </select>
                </div>

                <!-- Panel 2: Asesor de Comunicación (TTS) (Color Verde - Énfasis en la Comunicación) -->
                <div class="bg-white p-6 rounded-xl shadow-lg border-t-4 border-health-accent-green">
                    <h2 class="text-xl font-bold text-health-text-dark flex items-center mb-4">
                        <span class="mr-3 text-health-accent-green">
                            <!-- Icono de Voz/Altavoz -->
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15.536 8.464a5 5 0 010 7.072m2.828-9.899a9 9 0 010 12.728M5.586 15H4a1 1 0 01-1-1v-4a1 1 0 011-1h1.586l4.5-4.5A1 1 0 0113 4v16a1 1 0 01-1.586.707L5.586 15z"></path></svg>
                        </span>
                        Asesor de Comunicación (TTS)
                    </h2>
                    
                    <label for="tts-voice" class="block text-sm font-medium text-health-text-dark">Voz:</label>
                    <select id="tts-voice" class="mt-1 w-full p-2 border border-gray-300 rounded-lg focus:ring-health-accent-green focus:border-health-accent-green">
                        <option value="Kore">Kore (Voz Firme)</option>
                        <option value="Puck">Puck (Voz Animada)</option>
                        <option value="Charon">Charon (Voz Informativa)</option>
                    </select>

                    <label for="tts-text-input" class="block text-sm font-medium text-health-text-dark mt-4">Texto para Convertir a Voz:</label>
                    <textarea id="tts-text-input" rows="3" class="mt-1 w-full p-2 border border-gray-300 rounded-lg focus:ring-health-accent-green focus:border-health-accent-green">Recuerde tomar su medicamento dos veces al día después de las comidas.</textarea>

                    <div class="flex items-center space-x-2 mt-3">
                        <button id="tts-btn" class="flex-1 px-4 py-2 bg-health-accent-green text-white font-semibold rounded-lg hover:bg-health-accent-green/90 transition duration-200">
                            <span id="tts-btn-text">Convertir a Voz</span>
                            <span id="tts-loader" class="hidden">Cargando...</span>
                        </button>
                        <audio id="tts-audio" controls class="w-1/2 rounded-lg shadow-sm hidden"></audio>
                    </div>
                    <p id="tts-error" class="text-danger-red text-sm mt-2 hidden">Ocurrió un error. Inténtalo de nuevo.</p>
                </div>
            </div>

            <!-- Espacio de relleno para la parte inferior -->
            <div class="h-10"></div>

        </div>
    </main>

    <script type="text/javascript">
        // ====================================================================
        // Lógica de Texto a Voz (TTS)
        // Esta sección permite convertir el texto a voz usando el API de Gemini.
        // ====================================================================
        const apiKey = ""; 
        const ttsModel = "gemini-2.5-flash-preview-tts";
        const apiUrl = `https://generativelanguage.googleapis.com/v1beta/models/${ttsModel}:generateContent?key=${apiKey}`;

        const ttsBtn = document.getElementById('tts-btn');
        const ttsInput = document.getElementById('tts-text-input');
        const ttsVoice = document.getElementById('tts-voice');
        const ttsAudio = document.getElementById('tts-audio');
        const ttsLoader = document.getElementById('tts-loader');
        const ttsBtnText = document.getElementById('tts-btn-text');
        const ttsError = document.getElementById('tts-error');

        // Función para convertir Base64 a ArrayBuffer (necesario para datos PCM)
        function base64ToArrayBuffer(base64) {
            const binaryString = atob(base64);
            const len = binaryString.length;
            const bytes = new Uint8Array(len);
            for (let i = 0; i < len; i++) {
                bytes[i] = binaryString.charCodeAt(i);
            }
            return bytes.buffer;
        }

        // Función para convertir datos PCM 16-bit a formato WAV (requerido para el navegador)
        function pcmToWav(pcmData, sampleRate) {
            const numChannels = 1;
            const bytesPerSample = 2; // PCM 16-bit
            const blockAlign = numChannels * bytesPerSample;
            const byteRate = sampleRate * blockAlign;

            const buffer = new ArrayBuffer(44 + pcmData.byteLength);
            const view = new DataView(buffer);
            let offset = 0;

            // RIFF chunk
            writeString('RIFF'); offset += 4;
            view.setUint32(offset, 36 + pcmData.byteLength, true); offset += 4;
            writeString('WAVE'); offset += 4;

            // FMT chunk
            writeString('fmt '); offset += 4;
            view.setUint32(offset, 16, true); offset += 4; // Sub-chunk size (16 for PCM)
            view.setUint16(offset, 1, true); offset += 2; // Audio format (1 = PCM)
            view.setUint16(offset, numChannels, true); offset += 2;
            view.setUint32(offset, sampleRate, true); offset += 4;
            view.setUint32(offset, byteRate, true); offset += 4;
            view.setUint16(offset, blockAlign, true); offset += 2;
            view.setUint16(offset, bytesPerSample * 8, true); offset += 2; // Bits per sample

            // Data chunk
            writeString('data'); offset += 4;
            view.setUint32(offset, pcmData.byteLength, true); offset += 4;
            
            // Write PCM data
            const pcmBytes = new Uint8Array(pcmData.buffer);
            for (let i = 0; i < pcmData.byteLength; i++, offset++) {
                view.setUint8(offset, pcmBytes[i]);
            }

            return new Blob([buffer], { type: 'audio/wav' });

            function writeString(s) {
                for (let i = 0; i < s.length; i++) {
                    view.setUint8(offset + i, s.charCodeAt(i));
                }
            }
        }

        // Función principal para la llamada a la API TTS con reintento exponencial
        async function convertTextToSpeech() {
            ttsError.classList.add('hidden');
            ttsAudio.classList.add('hidden');
            const textToSpeak = ttsInput.value.trim();
            const selectedVoice = ttsVoice.value;

            if (!textToSpeak) {
                ttsError.textContent = "Por favor, introduce un texto para convertir a voz.";
                ttsError.classList.remove('hidden');
                return;
            }

            // Mostrar estado de carga
            ttsBtn.disabled = true;
            ttsBtn.classList.add('opacity-50', 'cursor-not-allowed');
            ttsBtnText.classList.add('hidden');
            ttsLoader.classList.remove('hidden');

            const payload = {
                contents: [{
                    parts: [{ text: textToSpeak }]
                }],
                generationConfig: {
                    responseModalities: ["AUDIO"],
                    speechConfig: {
                        voiceConfig: {
                            prebuiltVoiceConfig: { voiceName: selectedVoice }
                        }
                    }
                },
                model: ttsModel
            };

            const maxRetries = 5;
            for (let attempt = 0; attempt < maxRetries; attempt++) {
                try {
                    const response = await fetch(apiUrl, {
                        method: 'POST',
                        headers: { 'Content-Type': 'application/json' },
                        body: JSON.stringify(payload)
                    });

                    if (!response.ok) {
                        throw new Error(`HTTP error! status: ${response.status}`);
                    }

                    const result = await response.json();
                    const part = result?.candidates?.[0]?.content?.parts?.[0];
                    const audioData = part?.inlineData?.data;
                    const mimeType = part?.inlineData?.mimeType;

                    if (audioData && mimeType && mimeType.startsWith("audio/")) {
                        // Extraer sample rate (asumiendo 16000 si no se especifica)
                        const rateMatch = mimeType.match(/rate=(\d+)/);
                        const sampleRate = rateMatch ? parseInt(rateMatch[1], 10) : 16000;
                        
                        // Conversión de Base64 -> ArrayBuffer -> PCM16 -> WAV Blob
                        const pcmDataBuffer = base64ToArrayBuffer(audioData);
                        const pcm16 = new Int16Array(pcmDataBuffer);
                        const wavBlob = pcmToWav(pcm16, sampleRate);
                        
                        // Usar URL del objeto para la reproducción
                        const audioUrl = URL.createObjectURL(wavBlob);
                        ttsAudio.src = audioUrl;
                        ttsAudio.classList.remove('hidden');
                        ttsAudio.play();

                        // Restablecer el botón
                        ttsBtn.disabled = false;
                        ttsBtn.classList.remove('opacity-50', 'cursor-not-allowed');
                        ttsLoader.classList.add('hidden');
                        ttsBtnText.classList.remove('hidden');
                        return; // Éxito
                    } else {
                        throw new Error("Respuesta de API TTS incompleta o sin datos de audio.");
                    }
                } catch (error) {
                    // console.error(`TTS API attempt ${attempt + 1} failed:`, error); // Omitir log de reintentos
                    if (attempt < maxRetries - 1) {
                        const delay = Math.pow(2, attempt) * 1000; // 1s, 2s, 4s, 8s...
                        await new Promise(resolve => setTimeout(resolve, delay));
                    } else {
                        // Fallo después del último reintento
                        ttsError.textContent = "Error al convertir a voz. Revisa el texto e inténtalo de nuevo.";
                        ttsError.classList.remove('hidden');
                        ttsBtn.disabled = false;
                        ttsBtn.classList.remove('opacity-50', 'cursor-not-allowed');
                        ttsLoader.classList.add('hidden');
                        ttsBtnText.classList.remove('hidden');
                    }
                }
            }
        }

        // Listener para el botón TTS
        ttsBtn.addEventListener('click', convertTextToSpeech);
        
    </script>
</body>
</html>
