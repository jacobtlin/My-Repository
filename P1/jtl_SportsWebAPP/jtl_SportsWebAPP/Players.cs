using System.Data.SqlClient;

namespace jtl_SportsWebAPP
{
    public class Players
    {
        public int PlayerNo { get; set; }
        public string PlayerName { get; set; }
        public string PlayerPosition { get; set; }
        public string PlayerClub { get; set; }

        SqlConnection con = new SqlConnection("server=ARMSTRONG\\JACOBINSTANCE;database=FootballClubs;integrated security=true");

        #region Players
        public List<Players> SearchByNo(string playerNo)
        {
            SqlCommand numSearch = new SqlCommand("select * from PlayerInfo where PlayerNo = @PlayerNo", con);
            numSearch.Parameters.AddWithValue("@PlayerNo", playerNo);
            con.Open();
            List<Players> numList = new List<Players>();
            SqlDataReader readNum = numSearch.ExecuteReader();
            while (readNum.Read())
            {
                numList.Add(new Players()
                {
                    PlayerNo = Convert.ToInt32(readNum[0]),
                    PlayerName = readNum[1].ToString(),
                    PlayerPosition = readNum[2].ToString(),
                    PlayerClub = readNum[3].ToString(),
                });
            }
            readNum.Close();
            con.Close();
            return numList;
        }
        public List<Players> PlayerSearchByName(string playerName)
        {
            SqlCommand searchPlayer = new SqlCommand("select * from PlayerInfo where PlayerName = @PlayerName", con);
            searchPlayer.Parameters.AddWithValue("@PlayerName", playerName);
            con.Open();
            List<Players> nameList = new List<Players>();
            SqlDataReader readPlayer = searchPlayer.ExecuteReader();
            while (readPlayer.Read())
            {
                nameList.Add(new Players()
                {
                    PlayerNo = Convert.ToInt32(readPlayer[0]),
                    PlayerName = readPlayer[1].ToString(),
                    PlayerPosition = readPlayer[2].ToString(),
                    PlayerClub = readPlayer[3].ToString(),
                });
                
            }
            readPlayer.Close();
            con.Close();
            return nameList;
        }

        public List<Players> SearchByPosition(string playerPosition)
        {
            SqlCommand playerSearch = new SqlCommand("select * from PlayerInfo where PlayerPosition=@PlayerPosition", con);
            playerSearch.Parameters.AddWithValue("@PlayerPosition", playerPosition);
            con.Open();
            List<Players> playerList = new List<Players>();
            SqlDataReader readPSearch = playerSearch.ExecuteReader();
            while (readPSearch.Read())
            {
                playerList.Add(new Players()
                {
                    PlayerNo = Convert.ToInt32(readPSearch[0]),
                    PlayerName = readPSearch[1].ToString(),
                    PlayerPosition = readPSearch[2].ToString(),
                    PlayerClub = readPSearch[3].ToString(),

                });
                
            }
            readPSearch.Close();
            con.Close();
            return playerList;
        }

        public string AddPlayer(Players newPlayer)
        {
            SqlCommand addPlayer = new SqlCommand("insert into PlayerInfo values(@PlayerNo, @PlayerName, @PlayerPosition, @PlayerClub)", con);
            addPlayer.Parameters.AddWithValue("@PlayerNo", newPlayer.PlayerNo);
            addPlayer.Parameters.AddWithValue("@PlayerName", newPlayer.PlayerName);
            addPlayer.Parameters.AddWithValue("@PlayerPosition", newPlayer.PlayerPosition);
            addPlayer.Parameters.AddWithValue("@PlayerClub", newPlayer.PlayerClub);
            con.Open();
            addPlayer.ExecuteNonQuery();
            con.Close();
            return "Player Added Successfully!";
        }

        public string UpdatePlayer(Players upPlayer)
        {
            SqlCommand updatePlayer = new SqlCommand("update PlayerInfo set PlayerNo = @PlayerNo, PlayerName = @PlayerName, PlayerPosition = @PlayerPosition, PlayerClub = @PlayerClub", con);
            updatePlayer.Parameters.AddWithValue("@PlayerNo", upPlayer.PlayerNo);
            updatePlayer.Parameters.AddWithValue("@PlayerName", upPlayer.PlayerName);
            updatePlayer.Parameters.AddWithValue("@PlayerPosition", upPlayer.PlayerPosition);
            updatePlayer.Parameters.AddWithValue("@PlayerClub", upPlayer.PlayerClub);
            con.Open();
            updatePlayer.ExecuteNonQuery();
            con.Close();
            return "Player Updated Successfull!";
        }
        public string DeletePlayer(string deletePlayer)
        {
            SqlCommand delPlayer = new SqlCommand("delete from PlayerInfo where PlayerName = @PlayerName", con);
            delPlayer.Parameters.AddWithValue("@PlayerName", deletePlayer);
            con.Open();
            delPlayer.ExecuteNonQuery();
            con.Close();
            return "Player Deleted Successfully!";
        }
        #endregion
    }
}
