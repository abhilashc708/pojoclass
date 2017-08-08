package Login;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author DELL
 */
public class userdetails {
    private int id;
    private String address, fullname, dist;

    public userdetails() {
    }

    public userdetails(int id, String address, String fullname, String dist) {
        this.id = id;
        this.address = address;
        this.fullname = fullname;
        this.dist = dist;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getDist() {
        return dist;
    }

    public void setDist(String dist) {
        this.dist = dist;
    }

    @Override
    public String toString() {
        return "userdetails{" + "id=" + id + ", address=" + address + ", fullname=" + fullname + ", dist=" + dist + '}';
    }
    
    
    
}
