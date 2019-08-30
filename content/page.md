---
type: "onepage"
---

# Curso de Introducción a la Inferencia Causal en Epidemiología

---------------------

# Descripción del curso

El Curso de Introducción a la Inferencia Causal en Epidemiología está dirigido a **estadísticos** y **epidemiólogos** de la administración sanitaria interesados en la Inferencia Causal, con conocimientos en **Estadística Aplicada a las Ciencias de la Salud y Epidemiología**.


## Objetivos

El objetivo general del curso es ofrecer una visión general de los nuevos métodos en epidemiología basados en el marco conceptual de las "*Potential Outcomes*" y la "*Inferencia Causal*" utilizada para evaluar la efectividad de intervenciones o tratamientos basada en datos observacionales.

Los objetivos específicos son:

1. Obtener una visión general del desarrollo de la disciplina y la necesidad de la "*Inferencia Causal*". 
2. Entender y aplicar el marco conceptual de las "*Potential Outcomes*" en escenarios simples.  
3. Entender y construir modelos causales visuales usando "*gráficos acíclicos directos*" (DAGs).  
4. Entender y aplicar los diferentes métodos estadísticos para evaluar el efecto causal marginal y estandarizado del tratamiento o exposición basado en la aplicación de la "*G-Formula*".

## Contenidos

1. Introducción al marco conceptual de las "*Potential Outcomes*"  
2. Introducción a la visualización de asociaciones y efectos causales usando "*DAGs*" (gráficos acíclicos directos)
3. Introducción a los "*G-métodos*" y generalización de la estandarización.
4. Derivación y uso de los G-métodos basados en el "*propensity score*" y la G-computación en **Stata** (módulo *teffect*) y **R** (paquetes *IPW* y *TMLE*).

## Metodología

- Lectura magistral seguida de ejercicios prácticos en ordenador usando los paquetes estadísticos **R** (*IPW* y *TMLE*), **Stata** (*teffects*) y **DAGitty**.
- Las clases se impartirán en español, pero el material docente y los ejercicios serán impartidos en inglés.
- El curso incluye una sesión previa de conceptos matemáticos estadísticos necesarios para la presentación del contenido del mismo.

## Competencias profesionales

El alumno a la finalización del curso será capaz de:

1. Interpretar y evaluar la literatura epidemiológica avanzada.
2. Aplicar e interpretar la "*G-Formula*".
3. Aplicar e interpretar métodos de inferencia causal en estudios observacionales transversales.

<!---

## Sistema de evaluación

Participación en clase y prácticas.

--->

---------------------

# Inscripción

[Inscripción: link to SEE-2019](https://www.reunionanualsee.org/index.php?go=pre_congreso)  

---------------------

# Material

Los asistentes deberán de llevar su computadora con *RStudio* instalado.  

Lecturas recomendadas:<br> 
[*Educational Note: Paradoxical collider effect in the analysis of non-communicable disease epidemiological data: a reproducible illustration and web application*.](https://academic.oup.com/ije/advance-article/doi/10.1093/ije/dyy275/5248195)

[Heterogeneidad en la estimacion de effectos causales: *HETMOR*](https://maluque.netlify.com/project/hetmor/)    

[*TMLE* tutorial 2019 Rmarkdown](https://migariane.github.io/TMLE.nb.html) 

[*TMLE* tutorial in Statistis in Medicine 2018](https://github.com/migariane/SIM-TMLE-tutorial)

---------------------

# Programa

#### 9:00 - 10:30<br> El marco conceptual de la Inferencia Causal: Introducción a las “Potential Outcomes”. Asunciones de la inferencia causal aplicadas a los datos epidemiológicos observacionales y la necesidad de la introducción de los gráficos directos acíclicos (DAGs) para identificar variables confusoras, colliders y mediadoras. Introducción al efecto paradójico inducido por colliders: http://watzilei.com/shiny/collider/

#### 10:30 - 10:45<br> Pequeño receso.

#### 10:45 - 12:45<br> Asunciones de la inferencia causal aplicadas a los datos epidemiológicos observacionales. Estimación e Inferecia en el marco conceptual de la Inferencia Estadística Causal: Justificación de su aplicación basada en la implementación de la generalización de la estandarización. Presentación de la Fórmula G para el estimando “ATE” (*Average Treatment Effect*) e inferencia estadística usando G-computation, IPTW y TMLE. LABS 1 y 2.
 
#### 12:45 - 13:00<br> Pequeño receso.

#### 13:00 - 14:00<br> LABs 3 y 4: Ejemplos de gráficos directos acíclicos (DAGs) para identificar “unconfoundeness”, “exchangeability”, “conditional mean independence” o “randomization”: Introducción a *Daggity* y *ggdag*.

<!--- 
## Lecturas preliminares

1. Lectura 1: A structural approach to selection bias
<button onclick="window.open('https://github.com/migariane/CrashCourseCausalInference/raw/master/Lecturas/Lecture1.pdf')">Descargar</button>
2. Lectura 2: The R package `daggity`
<button onclick="window.open('https://github.com/migariane/CrashCourseCausalInference/raw/master/Lecturas/Lecture2.pdf')">Descargar</button>
3. Lectura 3: Causal models and learning from data
<button onclick="window.open('https://github.com/migariane/CrashCourseCausalInference/raw/master/Lecturas/Lecture3.pdf')">Descargar</button>
4. Extra 1: Tutorial Targeted Maximum Likelihood Estimation
<button onclick="window.open('https://github.com/migariane/CrashCourseCausalInference/raw/master/Lecturas/TMLE-Tutorial-Luque2018.pdf')">Descargar</button>
5. Extra 2: Inferencia Causal aplicada a Epidemiología poblacional del Cáncer
<button onclick="window.open('https://github.com/migariane/CrashCourseCausalInference/raw/master/Lecturas/TMLE_Application_Luque2017.pdf')">Descargar</button>
--->


## Presentaciones  
Presentación 1 
<button onclick="window.open('https://github.com/migariane/CrashCourseCausalInference/raw/master/Slides/ICI-SEE-19_1.pdf')">Descargar</button>  
Presentación 2
<button onclick="window.open('https://github.com/migariane/CrashCourseCausalInference/raw/master/Slides/ICI-SEE-19_2.pdf')">Descargar</button>  
Presentación 3 (LABs 3-4)
<button onclick="window.open('https://github.com/migariane/CrashCourseCausalInference/raw/master/Slides/LAB3-4.pdf')">Descargar</button> 

<!---
### Prácticas (Lab)    
Lab 1

<button onclick="window.open('https://github.com/migariane/CrashCourseCausalInference/raw/master/Labs/Lab1.pdf')">Descargar</button>

## Día 2  

### Presentaciones  
Presentación 3
<button onclick="window.open('https://github.com/migariane/CrashCourseCausalInference/raw/master/Slides/Day2.pdf')">Descargar</button>

### Prácticas (Lab)  
Lab 2   
<button onclick="window.open('https://github.com/migariane/CrashCourseCausalInference/raw/master/Labs/Lab2.pdf')">Descargar</button>

--->
----------------------
## Link to access the LABs en Rstudio Cloud
[LABs in RStudio Cloud](https://rstudio.cloud/spaces/19488/project/434105)

## Recursos para aprender Stata    
[Learning Stata](https://www.stata.com/learn/)    

## Recursos para aprender R  
[Learning R (tidyverse world)](https://www.tidyverse.org/learn/)   
[Learning R (tidyverse workshop)](https://tidy-ds.wjakethompson.com/)  

## Link a la evaluación del curso
[Evaluación](https://forms.gle/ZeiAQg58bfuYQ58F9)

## Comparte el curso con otros

<a class="twitter-timeline" href="https://twitter.com/TwitterDev/likes?ref_src=twsrc%5Etfw">Tweets Liked by @TwitterDev</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script> 

---------------------
# Profesorado

Somos un equipo multidisciplinar con amplia experiencia profesional en Epidemiología y Métodos Epidemilógicos, Bioestadística e Inferencia Causal, Matemáticas, Ciencias Sociales y Ciencias de la Salud. Actualmente estamos trabajando en la promoción del movimiento de ciencia reproducible, epidemiologia poblacional del cáncer (estudiando las desigualdades sociodemográficas en la incidencia, mortalidad y supervivencia del cáncer en España), machine learning e inferencia causal aplicada al estudio del cáncer desde una perspectiva poblacional. Algunos ejemplos de nuestros trabajos se pueden encontrar en los siguientes links:  

1. http://watzilei.com/shiny/collider/  
2. https://maluque.netlify.com/project/hetmor/  
3. https://github.com/migariane/cvAUROC

Actualmente desarrollamos nuestro trabajo en el [**Instituto de Investigación Biosanitaria de Granada (ibs.Granada)**](http://www.ibsgranada.es/) y mantenemos colaboraciones con la London School of Hygiene and Tropical Medicine (UK) y la Escuela de Salud Pública de Harvard (USA).

![](images/logo_MALF.png)

### **Miguel Ángel Luque Fernández, MA, MPH, MSc, PhD**
Senior Scientific Researcher of Epidemiology and Biostatistics  
Miguel Servet I Award, Carlos III Institute of Health Grant/Award Number: CP17/00206  
Ibs.GRANADA, Andalusian School of Public Health.  
Granada, Spain    
[Hugo Academic Webpage](http://watzilei.com/maluque.html)  

Scientific Collaborator, Department of Epidemiology,    
Harvard TH Chan School of Public Health, Boston, MA, U.S.A.     
[HSPH Webpage](https://scholar.harvard.edu/malf)      
 
Assistant Professor of Epidemiology and Biostatistics (Honorary)   
Department of Non-Communicable Disease Epidemiology  
London School of Hygiene and Tropical Medicine, London, U.K.    
[LSHTM Academic Webpage](http://www.lshtm.ac.uk/aboutus/people/luque.miguel-angel)  

Tutorials [Link to Epidemiological and Statistical tutorials](http://migariane.github.io/)

### <img src="images/tw.png" alt="twitter" style="width: 20px;"/> [@watzilei](http://www.twitter.com/watzilei)

### <img src="images/git.png" alt="git" style="width: 20px;"/>  [@migariane](https://github.com/migariane)

### <img src="images/email.png" alt="email" style="width: 20px;"/>  *miguel.luque.easp at juntadeandalucia.es*

---------------------

![](images/logo_DRS.png)

### **Daniel Redondo Sánchez, Matemático**

Research Assistant of Epidemiology and Biostatistics.

ibs.GRANADA, Andalusian School of Public Health.  
Cuesta del Observatorio, 4, 18080  
Granada, Spain

### <img src="images/tw.png" alt="twitter" style="width:20px"/> [@dredondosanchez](http://www.twitter.com/dredondosanchez)

### <img src="images/git.png" alt="git" style="width:20px"/> [@danielredondo](https://github.com/danielredondo)

### <img src="images/email.png" alt="email" style="width:20px"/>  *daniel.redondo.easp at juntadeandalucia.es*

---------------------

[<img src="/img/tw.png"  style = "width:30%;">](https://twitter.com/intent/tweet?text=Curso%20de%20Introduccion%20a%20la%20Inferencia%20Causal&url=http://ccci.netlify.com/&via=WATZILEI)

---------------------

<img src="images/logo_ibs.png" alt="logo" style="width: 80%;"/>

<img src="images/logo_feder.png" alt="logo" style="width: 80%;"/>
