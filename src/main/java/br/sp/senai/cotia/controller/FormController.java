package br.sp.senai.cotia.controller;

import java.time.LocalTime;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.sp.cotia.hellospring.dao.DaoProduto;
import br.sp.senai.cotia.dao.ConnectionFactory;
import br.sp.senai.cotia.dao.DaoCliente;
import br.sp.senai.cotia.model.Cliente;

@Controller
public class FormController {
	
	@RequestMapping("formCliente")
	public String index() {
		System.out.println("Passou aqui"+ConnectionFactory.conectar());
		return "formCliente";
	}

	@RequestMapping("salvarCliente")
	public String salvarCliente(Cliente cliente) {
		System.out.println(cliente.getNome());
		System.out.println(cliente.getEndereco());
		System.out.println(cliente.getGenero());
		System.out.println(cliente.getTelefone());
		System.out.println(cliente.getProdInteresse());
		
		LocalTime data_cadastro = LocalTime.now();
		System.out.println(data_cadastro);

		DaoCliente dao = new DaoCliente();
		dao.Inserir(cliente);
		return "redirect:listaproduto";
	}
	
//	@RequestMapping("listarProduto")
//	public String listarClientes(Model model) {
//		DaoProduto dao = new DaoProduto();
//		model.addAttribute("produtos", dao.listar());
//		return "listaproduto";
}
