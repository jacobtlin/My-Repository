using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace jtl_SportsWebAPP.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TeamsController : ControllerBase
    {
        FootballClubs clubObj = new FootballClubs();

        #region Team Controllers

        [HttpGet]
        [Route("Football Club List")]
        public IActionResult GetAllClubs()
        {
            return Ok(clubObj.GetAllClubs());
        }

        [HttpPost]
        [Route("Add a Club")]
        public IActionResult AddClub(FootballClubs newClub)
        {
            return Ok(clubObj.AddClub(newClub));
        }

        [HttpGet]
        [Route("Search by Club Name")]
        public IActionResult ClubSearchByName( string clubName)
        {
            return Ok(clubObj.ClubSearchByName(clubName));
        }

        #endregion

    }
}
