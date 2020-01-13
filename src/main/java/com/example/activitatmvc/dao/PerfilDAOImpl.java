package com.example.activitatmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

import com.example.activitatmvc.model.Perfil;


public class PerfilDAOImpl implements PerfilDAO {

	private JdbcTemplate jdbcTemplate;
	
	public PerfilDAOImpl(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public void saveOrUpdate(Perfil Perfil) {
		if (Perfil.getId() > 0) {
			// update
			String sql = "UPDATE perfil SET userName=?, nom=?, llinatge1=?, llinatge2=?, dni=?, telefon=?, email=?, id_ciutat=?, id_nivell=?, pass=? WHERE id=?";
			jdbcTemplate.update(sql, Perfil.getUserName(), Perfil.getNom(),
					Perfil.getLlinatge1(), Perfil.getLlinatge2(), Perfil.getDni(),
					Perfil.getTelefon(), Perfil.getEmail(), Perfil.getId_ciutat(),
					Perfil.getId_nivell(), Perfil.getPass(), Perfil.getId());
		} else {
			// insert
			String sql = "INSERT INTO perfil (userName, nom, llinatge1, llinatge2, dni, telefon, email, id_ciutat, id_nivell, pass)"
						+ " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			jdbcTemplate.update(sql, Perfil.getUserName(), Perfil.getNom(),
					Perfil.getLlinatge1(), Perfil.getLlinatge2(), Perfil.getDni(),
					Perfil.getTelefon(), Perfil.getEmail(), Perfil.getId_ciutat(),
					Perfil.getId_nivell(), Perfil.getPass());
		}
		
	}

	@Override
	public void delete(int PerfilId) {
		String sql = "DELETE FROM perfil WHERE id=?";
		jdbcTemplate.update(sql, PerfilId);
	}

	@Override
	public List<Perfil> list() {
		String sql = "SELECT * FROM perfil";
		List<Perfil> listPerfil = jdbcTemplate.query(sql, new RowMapper<Perfil>() {

			@Override
			public Perfil mapRow(ResultSet rs, int rowNum) throws SQLException {
				Perfil aPerfil = new Perfil();
	
				aPerfil.setId(rs.getInt("id"));
				aPerfil.setUserName(rs.getString("userName"));
				aPerfil.setNom(rs.getString("nom"));
				aPerfil.setLlinatge1(rs.getString("llinatge1"));
				aPerfil.setLlinatge2(rs.getString("llinatge2"));
				aPerfil.setDni(rs.getString("dni"));
				aPerfil.setTelefon(rs.getInt("telefon"));
				aPerfil.setEmail(rs.getString("email"));
				aPerfil.setId_ciutat(rs.getInt("id_ciutat"));
				aPerfil.setId_nivell(rs.getInt("id_nivell"));
				aPerfil.setPass(rs.getString("pass"));
				
				return aPerfil;
			}
			
		});
		
		return listPerfil;
	}

	@Override
	public Perfil get(int PerfilId) {
		String sql = "SELECT * FROM perfil WHERE id=" + PerfilId;
		return jdbcTemplate.query(sql, new ResultSetExtractor<Perfil>() {

			@Override
			public Perfil extractData(ResultSet rs) throws SQLException,
					DataAccessException {
				if (rs.next()) {
					Perfil Perfil = new Perfil();
					Perfil.setId(rs.getInt("id"));
					Perfil.setUserName(rs.getString("userName"));
					Perfil.setNom(rs.getString("nom"));
					Perfil.setLlinatge1(rs.getString("llinatge1"));
					Perfil.setLlinatge2(rs.getString("llinatge2"));
					Perfil.setDni(rs.getString("dni"));
					Perfil.setTelefon(rs.getInt("telefon"));
					Perfil.setEmail(rs.getString("email"));
					Perfil.setId_ciutat(rs.getInt("id_ciutat"));
					Perfil.setId_nivell(rs.getInt("id_nivell"));
					Perfil.setPass(rs.getString("pass"));

					return Perfil;
				}
				
				return null;
			}
			
		});
	}

}
