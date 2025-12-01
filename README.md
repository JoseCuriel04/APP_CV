# 📱 CV José Luis Curiel Lopez - Aplicación CV Móvil

**[¡Visita mi portafolio web aquí!](https://porttfoliojose-io.vercel.app)**

---

## 📌 Descripción
**cv_curiel** es una aplicación móvil desarrollada en **Flutter** que muestra mi **currículum vitae** de manera interactiva y profesional. La app incluye secciones como:
- **Datos profesionales** (formación académica).
- **Habilidades técnicas** (lenguajes, frameworks y herramientas).
- **Proyectos destacados** (con descripciones y tecnologías utilizadas).
- **Botones funcionales** para visitar mis perfiles en **GitHub**, **LinkedIn** y mi **portafolio web**.
- **Descarga de mi CV en PDF** directamente desde la app.

## 🛠️ Tecnologías Utilizadas
- **Lenguaje**: Dart  
- **Framework**: Flutter  
- **Diseño UI**: Widgets personalizados, `Wrap`, `Card`, `CachedNetworkImage`  
- **Funcionalidades**:
  - `url_launcher` para abrir enlaces externos.
  - `path_provider` y `open_file` para manejar descargas de PDF.
- **Estilo**: Tema oscuro con paleta de colores moderna (`#00FFC6`, `#0A192F`).

---

## 📂 Estructura del Proyecto
```bash
cv_curiel/
├── android/
├── ios/
├── lib/
│   ├── main.dart
│   ├── screens/
│   │   ├── home_screen.dart
│   │   ├── education_screen.dart
│   │   ├── skills_screen.dart
│   │   ├── projects_screen.dart
│   ├── widgets/
│   │   ├── custom_app_bar.dart
│   │   ├── section_title.dart
│   │   ├── skill_chip.dart
│   │   ├── project_card.dart
│   │   ├── social_button.dart
│   ├── utils/
│   │   ├── constants.dart
│   │   ├── url_launcher.dart
├── assets/
│   ├── images/
│   │   ├── perfil.jpg
│   ├── pdf/
│   │   ├── cv_jose_luis_curiel.pdf
├── pubspec.yaml
```

---

## 🚀 Cómo Ejecutar el Proyecto

### Requisitos
- Flutter SDK (versión 3.0 o superior).  
- Android Studio o Xcode (para emuladores).  
- Conexión a internet (para cargar imágenes y enlaces externos).

### Pasos

1. **Clona el repositorio:**
```bash
git clone https://github.com/JoseCuriel04/APP_CV.git
cd APP_CV
```

2. **Instala las dependencias:**
```bash
flutter pub get
```

3. **Coloca tus assets:**
- Añade tu foto de perfil en `assets/images/perfil.jpg`.  
- Añade tu CV en PDF en `assets/pdf/cv_jose_luis_curiel.pdf`.

4. **Ejecuta la app:**
```bash
flutter run
```

---

## 🔗 Enlaces Importantes
- **GitHub:** https://github.com/JoseCuriel04  
- **LinkedIn:** https://linkedin.com/in/jose-luis-curiel-lopez  
- **Portafolio Web:** https://porttfoliojose-io.vercel.app  
- **Descargar CV:** Incluido en la app  

---

## 🎯 Proyectos Destacados

| Proyecto | Descripción | Tecnologías |
|---------|-------------|-------------|
| **EduSphere** | Plataforma educativa para gestión escolar. | PHP, JavaScript, HTML5, CSS3 |
| **SafeAlert** | Aplicación de emergencia para Android. | Java, Android Studio |
| **Sistema Penitenciario** | Gestión de internos y expedientes. | Python, Django, SQLite |
| **Servidor Moodle** | Implementación de Moodle en Ubuntu. | Ubuntu, MariaDB, Moodle |

---

## 📜 Licencia
Este proyecto está bajo la licencia **MIT**. Puedes usarlo y modificarlo libremente.

---

## 📬 Contacto
**Email:** joselcl04@gmail.com  

✨ ¡Gracias por visitar mi perfil! ✨
