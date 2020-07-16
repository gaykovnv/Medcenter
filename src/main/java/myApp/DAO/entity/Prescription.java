package myApp.DAO.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

@Entity
public class Prescription {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String description;
    private String dateCreate;
    private String deadline;
    private String priority;

    public Prescription(){}

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDateCreate() {
        return dateCreate;
    }

    public void setDateCreate(String dataCreate) {
        this.dateCreate = dataCreate;
    }

    public String getDeadline() {
        return deadline;
    }

    public void setDeadline(String deadline) {
        this.deadline = deadline;
    }

    public String getPriority() {
        return priority;
    }

    public void setPriority(String priority) {
        this.priority = priority;
    }

    @Override
    public String toString() {
        return "Prescription{" +
                "id=" + id +
                ", description='" + description + '\'' +
                ", dateCreate=" + dateCreate +
                ", deadline=" + deadline +
                ", priority='" + priority + '\'' +
                '}';
    }
}
