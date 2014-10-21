using Shipper2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MusicStore2.Controllers
{
    public class StoreController : Controller
    {
        ShipperContext storeDB = new ShipperContext();
        // GET: Store
        public ActionResult Index()
        {
            var productCategories = storeDB.ProductCategories.ToList();

            return View(productCategories);
        }

        public ActionResult Browse(string productCategory)
        {
            var productCategoryModel = storeDB.ProductCategories.Include("Products")
        .Single(g => g.Name == productCategory);

            return View(productCategoryModel);
        }

        public ActionResult Details(int id)
        {
            var product = storeDB.Products.Find(id);
            return View(product);
        }

        // GET: /Store/ProductCategoryMenu
        [ChildActionOnly]
        public ActionResult ProductCategoryMenu()
        {
            var productCategories = storeDB.ProductCategories.ToList();
            return PartialView(productCategories);
        }
    }
}