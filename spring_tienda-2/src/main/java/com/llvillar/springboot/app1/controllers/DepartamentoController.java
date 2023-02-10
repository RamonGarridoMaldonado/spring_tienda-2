package com.llvillar.springboot.app1.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.llvillar.springboot.app1.model.Departamento;
import com.llvillar.springboot.app1.model.Empleado;
import com.llvillar.springboot.app1.services.DepartamentosService;
import com.llvillar.springboot.app1.services.EmpleadosService;

@Controller
@RequestMapping("/departamentos")
@PreAuthorize("hasAnyAuthority('ADMIN','DEPARTAMENTOS')")
public class DepartamentoController {

    @Autowired
    DepartamentosService departamentosService;

    @Autowired
    EmpleadosService empleadosService;

    @Value("${pagination.size}")
    int sizePage;

    @GetMapping(value="/list")
    public ModelAndView list(Model model) {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:list/1/codigo/asc");
        return modelAndView;
    }

    @GetMapping(value = "/list/{numPage}/{fieldSort}/{directionSort}")
    public ModelAndView listPage(Model model,
            @PathVariable("numPage") Integer numPage,
            @PathVariable("fieldSort") String fieldSort,
            @PathVariable("directionSort") String directionSort) {


        Pageable pageable = PageRequest.of(numPage - 1, sizePage,
            directionSort.equals("asc") ? Sort.by(fieldSort).ascending() : Sort.by(fieldSort).descending());

        Page<Departamento> page = departamentosService.findAll(pageable);

        List<Departamento> departamentos = page.getContent();

        ModelAndView modelAndView = new ModelAndView("departamentos/list");
        modelAndView.addObject("departamentos", departamentos);


		modelAndView.addObject("numPage", numPage);
		modelAndView.addObject("totalPages", page.getTotalPages());
		modelAndView.addObject("totalElements", page.getTotalElements());

		modelAndView.addObject("fieldSort", fieldSort);
		modelAndView.addObject("directionSort", directionSort.equals("asc") ? "asc" : "desc");

        return modelAndView;
    }
    
    @GetMapping(path = { "/edit/{codigo}" })
    public ModelAndView edit(
            @PathVariable(name = "codigo", required = true) int codigo) {

        Departamento Departamento = departamentosService.find(codigo);

        List<Empleado> empleados = empleadosService.findAll();
        for (Empleado empleado : empleados) {
            if (Departamento.getEmpleados().contains(empleado)){
                empleado.setPerteneceDepartamento(true);
            }
        }

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("departamento", Departamento);
        modelAndView.addObject("empleados", empleados);
        modelAndView.setViewName("departamentos/edit");
        return modelAndView;
    }

    @GetMapping(path = { "/create" })
    public ModelAndView create(Departamento Departamento) {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("departamento", new Departamento());
        modelAndView.setViewName("departamentos/new");
        return modelAndView;
    }

    @PostMapping(path = { "/save" })
    public ModelAndView save(Departamento Departamento) {

        departamentosService.save(Departamento);

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:edit/" + Departamento.getCodigo());
        return modelAndView;
    }

    @PostMapping(path = { "/update" })
    public ModelAndView update(Departamento departamento, @RequestParam(value="ck_empleados") int[] ck_empleados) {


        List<Empleado> empleados = departamento.getEmpleados();
        if(empleados == null){
            empleados = new ArrayList<Empleado>();
        }

        for (int i : ck_empleados) {
            Empleado a = new Empleado(i);
            empleados.add(a);
        }

        departamento.setEmpleados(empleados);

        departamentosService.update(departamento);

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:edit/" + departamento.getCodigo());
        return modelAndView;
    }

    @GetMapping(path = { "/delete/{codigo}" })
    public ModelAndView delete(
            @PathVariable(name = "codigo", required = true) int codigo) {

        departamentosService.delete(codigo);

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:../list");
        return modelAndView;
    }
}