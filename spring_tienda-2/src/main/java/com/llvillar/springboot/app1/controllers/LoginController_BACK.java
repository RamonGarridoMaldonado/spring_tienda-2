package com.llvillar.springboot.app1.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.llvillar.springboot.app1.model.Usuario;

@Controller
@RequestMapping("/login")
public class LoginController_BACK {

    @Autowired
    private MessageSource messageSource;

    @GetMapping(value = { "/signin" })
    public String signin() {
        return "signin";
    }

    @PostMapping(value = "/login")
    public String login(Model model, Usuario usuario, HttpSession session) {

        String greetings = messageSource.getMessage("saludar.usuario", new String[] { usuario.getName() },
                LocaleContextHolder.getLocale());

        model.addAttribute("greetings", greetings);
        session.setAttribute("usuario", usuario);
        return "welcome";
    }

    @RequestMapping(value = "/login")
    public String loginGet(Model model, Usuario usuario, HttpSession session) {

        usuario = new Usuario();
        usuario.setName("llvillar");

        String greetings = messageSource.getMessage("saludar.usuario", new String[] { usuario.getName() },
                LocaleContextHolder.getLocale());

        model.addAttribute("greetings", greetings);
        session.setAttribute("usuario", usuario);
        return "welcome";
    }

    @GetMapping(value = { "/logout" })
    public String logout(HttpSession session) {

        session.invalidate();
        return "signin";
    }

    @GetMapping(value = { "/welcome" })
    public String welcome(Model model, HttpSession session) {
        return "welcome";
    }
}
