package model;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

public class Cliente {
    private String primeiroNome;
    private String sobrenome;
    private String nomeCompleto;
    private String cpf;
    private String dataDeNascimento; //  dd/MM/YYYY ou MM/dd/YYYY
    private int idadeAtual;
    private String genero;
    private String email;
    private String endereco;
    private String telefone;
    public Cliente(String primeiroNome, String sobrenome, String cpf,
                   String dataDeNascimento, String genero, String email, String endereco, String telefone) {
        this.primeiroNome = primeiroNome;
        this.sobrenome = sobrenome;
        this.nomeCompleto = primeiroNome + " " + sobrenome;
        this.cpf = cpf;
        this.dataDeNascimento = dataDeNascimento;
        this.idadeAtual = definirIdadeAtual();
        this.genero = genero;
        this.email = email;
        this.endereco = endereco;
        this.telefone = telefone;
    }
    private int definirIdadeAtual() {
        int anoAtual = recuparAnoAtual();
        int anoNascimento = recuperarAnoNascimento();
        return anoAtual - anoNascimento;
    }
    private int recuperarAnoNascimento(){
        Calendar calendario = Calendar.getInstance();
        Date dataDeNascimentoDoCliente;
        try {
            dataDeNascimentoDoCliente = definirFormatoDaData("").parse(dataDeNascimento);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
        calendario.setTime(dataDeNascimentoDoCliente);
        return calendario.get(Calendar.YEAR);
    }
    private int recuparAnoAtual() {
        Calendar calendario = Calendar.getInstance();
        Date diaAtual = new Date();
        calendario.setTime(diaAtual);
        return calendario.get(Calendar.YEAR);
    }
    private SimpleDateFormat definirFormatoDaData(String formatoData) {
        if(formatoData == ""){
            return new SimpleDateFormat("dd/MM/YYYY");
        } else {
            return new SimpleDateFormat(formatoData);
        }
    }
    public String getCpf() {
        return this.cpf;
    }    public void setCpf(String cpf) {
        this.cpf = cpf;
    }
    public String getEmail() {
        return this.email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getNomeCompleto() {
        return this.nomeCompleto;
    }
    public void setNomeCompleto(String nomeCompleto) {

        this.nomeCompleto = nomeCompleto;
    }
    public String getPrimeiroNome() {
        return primeiroNome;
    }
    public void setPrimeiroNome(String primeiroNome) {
        this.primeiroNome = primeiroNome;
    }
        public String getSobrenome() {
        return sobrenome;
    }

    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }

    public String getDataDeNascimento() {
        return dataDeNascimento;
    }

    public void setDataDeNascimento(String dataDeNascimento) {
        this.dataDeNascimento = dataDeNascimento;
    }

    public int getIdadeAtual() {
        return idadeAtual;
    }

    public void setIdadeAtual(int idadeAtual) {
        this.idadeAtual = idadeAtual;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getGenero() {
        return this.genero;
    }
    public void setGenero(String genero) {
        this.genero = genero;
    }
    private String tratamentoGenero(){
        if(getGenero() == "M") {
            return "Sr.";
        } else if(getGenero() == "F") {
            return "Sra.";
        } else {
            return "";
        }
    }
    @Override
    public String toString() {
        return tratamentoGenero() + " " + getNomeCompleto() +
                ", com CPF " + getCpf() +
                ", data de nascimento " + getDataDeNascimento() +
                ", com idade de " + getIdadeAtual() +
                ", e-mail " + getEmail() +
                ", endereço " + getEndereco() +
                " e telefone " + getTelefone();
    }
}
