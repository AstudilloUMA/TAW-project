package es.uma.proyectogrupo18.controller;

import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class controller {

    @GetMapping("/")
    public String doInicio() {return "inicio";}

    @GetMapping("/logout")
    public String doLogOut (HttpSession httpSession)
    {
        httpSession.removeAttribute("usuario");
        httpSession.removeAttribute("tipo");
        return "redirect:/";
    }




    /*
    @Autowired
    protected ClienteRepository clienteRepository;

    @Autowired
    protected UsuarioRepository usuarioRepository;

    @Autowired AdministradorRepository administradorRepository;

    @Autowired
    protected ComidaRepository comidaRepository;


    @GetMapping("/")
    public String prueba (Model model) {

        ComidaEntity comida = new ComidaEntity();
        comida.setNombre("comida");
        comida.setOrden(1);
        comida.setKilocaloriasTotales(1);
        comidaRepository.save(comida);

        List<ComidaEntity> comidas = this.comidaRepository.findAll();
        model.addAttribute("comidas",comidas);
        return "prueba";

        return "inicio";
    }

    @GetMapping("/homeCliente")
    public String cliente()
    {
        return "homeCliente";
    }

    @PostMapping("/login")
    public String login(@RequestParam("rol") String rol, Model model)
    {
        if(rol.equals("cliente")) {
            model.addAttribute("usuario", new Usuario());
            return "loginCliente";
        }
        return null;
    }

    @PostMapping("/autenticarCliente")
    public String doAutentica (@ModelAttribute("usuario") Usuario usuario,
                               Model model, HttpSession session) {
        String strTo = "redirect:/homeCliente";
        UsuarioEntity user = this.usuarioRepository.autenticaCliente(usuario.getUser(), usuario.getPassword());
        if (user == null) {
            model.addAttribute("error", "Usuario o contraseña incorrectos");
            strTo = strTo = this.login("cliente", model);
        } else {
            session.setAttribute("usuario", user);
        }
        return strTo;
    }
    */
}