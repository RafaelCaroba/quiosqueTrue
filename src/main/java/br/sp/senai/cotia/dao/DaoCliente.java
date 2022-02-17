package br.sp.senai.cotia.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import br.sp.senai.cotia.model.Cliente;

public class DaoCliente {
	private Connection conexao;

	public DaoCliente() {
		conexao = ConnectionFactory.conectar();

	}

	public void Inserir(Cliente cliente) {
		String sql = "insert into tb_infoclientes"
				+ "(nome, data_nascimento, endereco, genero, telefone, email, prod_interesse)"
				+ "values (?,?,?,?,?,?,?)";
		PreparedStatement stmt;
		try {
			stmt = conexao.prepareStatement(sql);
			stmt.setString(1, cliente.getNome());
			stmt.setDate(2, new Date(cliente.getDataNasc().getTimeInMillis()));
			stmt.setString(3, cliente.getEndereco());
			stmt.setString(4, cliente.getGenero());
			stmt.setString(5, cliente.getTelefone());
			stmt.setString(6, cliente.getEmail());
			stmt.setString(7, cliente.getProdInteresse());
//			stmt.setDate(8, new Date(cliente.getDataCadastro().getTimeInMillis()));

			stmt.execute();
			stmt.close();
			conexao.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	public List<Cliente> listar() {
		String sql = "select * from tb_produtos order by nome asc";
		List<Cliente> lista = new ArrayList<Cliente>();
		PreparedStatement stmt;
		try {
			stmt = conexao.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Cliente c = new Cliente();
				c.setId(rs.getInt("id"));
				
				c.setNome(rs.getString("nome"));
				c.setEndereco(rs.getString("endereco"));
				c.setGenero(rs.getString("genero"));
				c.setTelefone(rs.getString("telefone"));
				c.setEmail(rs.getString("email"));
				c.setProdInteresse(rs.getString("prod_interesse"));
				// criar um calendar
				Calendar nascimento = Calendar.getInstance();
				// extrair o date do resultset
				Date dataBd = rs.getDate("data_nascimento");
				// setar a data no resultset
				nascimento.setTimeInMillis(dataBd.getTime());
				// setar a validade no produto
				c.setDataNasc(nascimento);
				// descubrir enumeração através da posição

				lista.add(c);
			}
			rs.close();
			stmt.close();
			conexao.close();
			return lista;
		} catch (Exception e) {
			throw new RuntimeException(e);

		}

	}
}
