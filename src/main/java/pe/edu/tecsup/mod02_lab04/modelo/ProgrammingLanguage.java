package pe.edu.tecsup.mod02_lab04.modelo;

public class ProgrammingLanguage {
    private String code;
    private String name;
    private String description;

    public ProgrammingLanguage(String code, String name, String description) {
        this.code = code;
        this.name = name;
        this.description = description;
    }

    public String getCode() {
        return code;
    }
    
    @Override
    public String toString() {
        return "ProgrammingLanguage{" +
                "code='" + code + '\'' +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
