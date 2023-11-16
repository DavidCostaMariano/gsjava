package util;


import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class Util {
	
	public LocalDate converter(String dataString) {
		String[] aux = dataString.split("-");
		dataString = "";
		dataString = aux[2] + "/" + aux[1] + "/" + aux[0];
		DateTimeFormatter formato = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		LocalDate data = LocalDate.parse(dataString, formato);
		return data;
	}
	
	public String criptografar(String senha) {
		String pwd = "";
		try {
			MessageDigest alg = MessageDigest.getInstance("SHA-256");
			byte[] aux = alg.digest(senha.getBytes("UTF-8"));
			StringBuilder senhaHex = new StringBuilder();
			for(byte b : aux) {
				senhaHex.append(String.format("%02X", 0xFF & b));
			}
			pwd = senhaHex.toString();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {			
			e.printStackTrace();
		}
		return pwd;
	}
	
}
