﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace project2
{
    public partial class user_create_event : Form
    {
        public user_create_event()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if(textBox1 !=null && textBox2 != null &&  textBox3 != null && textBox4 != null && textBox5 != null)
            {
                MessageBox.Show("Event created Succefully");
            }
            else
            {
                MessageBox.Show("Plz fill all the text boxes");
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (button2.Enabled)
            {
                new user_event().Show();
                this.Hide();
            }
        }

        private void user_create_event_Load(object sender, EventArgs e)
        {

        }
    }
}
