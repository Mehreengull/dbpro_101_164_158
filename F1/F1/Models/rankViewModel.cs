﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace F1.Models
{
    public class rankViewModel
    {
        [Required]
       [Display(Name ="Rank ID")]
     
       public string Id { get; set; }
        [Required]
        [Display(Name = "Rank Name")]
        public String RName { get; set; }

    }
}