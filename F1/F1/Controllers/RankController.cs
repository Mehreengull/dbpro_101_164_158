﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using F1.Models;
namespace F1.Controllers
{
    public class RankController : Controller
    {
        // GET: Rank
        public ActionResult Index()
        {
            return View();
        }

        // GET: Rank/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Rank/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Rank/Create
        [HttpPost]
        public ActionResult Create(rankViewModel model)
        {
            try
            {
                // TODO: Add insert logic here
                DB51Entities db = new DB51Entities();
                Rank r = new Rank();
                r.Name = model.RName;
                db.Ranks.Add(r);
                db.SaveChanges();


                return View();

               // return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Rank/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Rank/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Rank/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Rank/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
