package br.sp.senai.cotia.controller;

import java.time.LocalTime;
import java.util.Calendar;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.sp.senai.cotia.dao.ConnectionFactory;
import br.sp.senai.cotia.dao.DaoCliente;
import br.sp.senai.cotia.model.Cliente;

@Controller
public class FormController {

	@RequestMapping("formCliente")
	public String index() {
		System.out.println("Passou aqui" + ConnectionFactory.conectar());
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
		return "redirect:listaInfoCliente";
	}

	@RequestMapping("listaInfoCliente")
	public String listarClientes(Model model) {
		DaoCliente dao = new DaoCliente();
		model.addAttribute("cliente", dao.listar());
		return "listaInfoCliente";
	}

	@RequestMapping("excluirCliente")
	public String excluir(long idCliente) {
		DaoCliente dao = new DaoCliente();
		dao.excluir(idCliente);
		return "redirect:listaInfoCliente";
	}

	@RequestMapping("alterarCliente")
	public String alterar(long idCliente, Model model) {
		DaoCliente dao = new DaoCliente();
		// aspas devem ser iguais a variavel do form
		model.addAttribute("cliente", dao.buscar(idCliente));

		return "forward:formCliente";
	}
	
	

	@RequestMapping("Estatisticas")
	public String exibeEstatisticas(Model model) {
		DaoCliente dao = new DaoCliente();
		
		int qtdMasculino = 0;
		int qtdFeminino = 0;
		int qtdOutro = 0;
		
		int manhã = 0;
		int tarde = 0;
		int noite = 0;
		
		int domingo = 0;
		int segunda = 0;
		int terca = 0;
		int quarta = 0;
		int quinta = 0;
		int sexta = 0;
		int sabado = 0;
		
		int jovem = 0;
		int adulto = 0;
		int idoso = 0;
		
		for (Cliente cliente : dao.listar()) {
//			int qtdMasculino = 0;
//			int qtdFeminino = 0;
//			int qtdOutro = 0;
//			int diaSemana;
//			int horario;
			
			if (cliente.getGenero().equals("Masc")) {
				qtdMasculino++;
			} else if (cliente.getGenero().equals("Fem")) {
				qtdFeminino++;
			} else {
				qtdOutro++;
			}
			
			Calendar calendar = Calendar.getInstance();
			
			//ano input data atual
			int anoAtual= calendar.get(Calendar.YEAR);
			//ano input dataNasc
			int anoNasc = cliente.getDataNasc().get(Calendar.YEAR);
			
			int idadeCliente = anoAtual - anoNasc;
			
			if (idadeCliente < 18) {
				jovem++;
				
			} else if (idadeCliente < 60) {
				adulto++;
			} else {
				idoso++;
			}

			
			
			cliente.getDataCadastro();
			// hora do dia
			int horario = calendar.get(Calendar.HOUR_OF_DAY);
			
			if (horario < 12) {
				manhã++;
			} else if(horario <18){
				tarde++;
			} else {
				noite++;
			}
			
			switch (calendar.get(Calendar.DAY_OF_WEEK)) {
			case Calendar.SUNDAY:
				domingo++;
				break;
			
			case Calendar.MONDAY:	
				segunda++;
				break;
				
			case Calendar.TUESDAY:	
				terca++;
				break;
				
			case Calendar.WEDNESDAY:	
				quarta++;
				break;
				
			case Calendar.THURSDAY:	
				quinta++;
				break;
				
			case Calendar.FRIDAY:	
				sexta++;
				break;
				
			case Calendar.SATURDAY:	
				sabado++;
				break;
			default:
				break;
			}
			
		}
		
		model.addAttribute("masculino", qtdMasculino);
		model.addAttribute("feminino", qtdFeminino);
		model.addAttribute("outro", qtdOutro);
		model.addAttribute("manha", manhã);
		model.addAttribute("tarde", tarde);
		model.addAttribute("noite", noite);
		model.addAttribute("domingo", domingo);
		model.addAttribute("segunda", segunda);
		model.addAttribute("terca", terca);
		model.addAttribute("quarta", quarta);
		model.addAttribute("quinta", quinta);
		model.addAttribute("sexta", sexta);
		model.addAttribute("sabado", sabado);
		model.addAttribute("domingo", domingo);
		model.addAttribute("jovem", jovem);
		model.addAttribute("adulto", adulto);
		model.addAttribute("idoso", idoso);
		
		// antes do fim do metodo (vc vai fazer algo aqui, então lembra)
		return "estatisticas";
	}

}
