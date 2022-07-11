using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace jtl_SportsWebAPP.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PlayersController : ControllerBase
    {

        #region Player Controllers

        Players playerNumObj = new Players();
        [HttpGet]
        [Route("Search Player By Number")]
        public IActionResult SearchByNo(string PlayerNo)
        {
            return Ok(playerNumObj.SearchByNo(PlayerNo));
        }
        
        Players playerObj = new Players();
        [HttpGet]
        [Route("Search Player By Name")]
        public IActionResult PlayerSearchByName(string PlayerName)
        {
            return Ok(playerObj.PlayerSearchByName(PlayerName));
        }

        Players playerNameObj = new Players();
        [HttpGet]
        [Route("Search Player by Position")]
        public IActionResult SearchByPosition(string PlayerPosition)
        {
            return Ok(playerNameObj.SearchByPosition(PlayerPosition));
        }

        [HttpPost]
        [Route("Add Player")]
        public IActionResult AddPlayer(Players newPlayer)
        {
            return Ok(playerObj.AddPlayer(newPlayer));
        }

        [HttpDelete]
        [Route("Delete a Player")]
        public IActionResult DeletePlayer(string deletePlayer)
        {
            try
            {
                return Ok(playerObj.DeletePlayer(deletePlayer));
            }
            catch (Exception es)
            {
                return BadRequest(es.Message);
            }
        }

        [HttpPut]
        [Route ("Edit Player Info")]
        public IActionResult UpdatePlayer(Players upPlayer)
        {
            return Ok(playerObj.UpdatePlayer(upPlayer));
        }

        #endregion

    }
}
