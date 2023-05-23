using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for Users
/// </summary>
public class Users
{
    private string userid;
    private string username;
    private string password;
    private string fullname;
    private DateTime birthday;
    private string email;
    private bool gender;
    private string address;
    private string phonenumber;
    private bool active;
    public Users(string userid, string username, string password, DateTime birthday, string email, bool gender, string address, string phonenumber, bool active)
    {
        this.userid = userid;
        this.username = username;
        this.password = password;
        this.birthday = birthday;
        this.email = email;
        this.gender = gender;
        this.address = address;
        this.phonenumber = phonenumber;
        this.active = active;
    }
	public Users()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public string Userid
    {
        get { return userid; }
        set { userid = value; }
    }
    public string Username
    {
        get { return username; }
        set { username = value; }
    }
    public string Password
    {
        get { return password; }
        set { password = value; }
    }
    public string Fullname
    {
        get { return fullname; }
        set { fullname = value; }
    }
    public DateTime Birthday
    {
        get { return birthday; }
        set { birthday = value; }
    }
    public string Email
    {
        get { return email; }
        set { email = value; }
    }
    public bool Gender
    {
        get { return gender; }
        set { gender = value; }
    }
    public string Address
    {
        get { return address; }
        set { address = value; }
    }
    public string Phonenumber
    {
        get { return phonenumber; }
        set { phonenumber = value; }
    }
    public bool Active
    {
        get { return active; }
        set { active = value; }
    }
}