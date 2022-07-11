using System.Data.SqlClient;

namespace jtl_SportsWebAPP
{
    public class FootballClubs
    {
        
        public int ClubNo { get; set; }
        public string ClubName { get; set; }
        public string ClubCountry { get; set; }


        SqlConnection con = new SqlConnection("server=ARMSTRONG\\JACOBINSTANCE;database=FootballClubs;integrated security=true");

        #region Clubs
        public List<FootballClubs> GetAllClubs()
        {
            SqlCommand allClubs = new SqlCommand("select * from ClubsInfo", con);
            con.Open();
            List<FootballClubs> clubList = new List<FootballClubs>();
            SqlDataReader rdClubs = allClubs.ExecuteReader();
            while (rdClubs.Read())
            {
                clubList.Add(new FootballClubs()
                {
                    ClubNo = Convert.ToInt32(rdClubs[0]),
                    ClubName = rdClubs[1].ToString(),
                    ClubCountry = rdClubs[2].ToString(),
                });
            }
            rdClubs.Close();
            con.Close();
            return clubList;
        }
        
        public string AddClub(FootballClubs newClub)
        {
            SqlCommand addClub = new SqlCommand("insert into ClubsInfo values(@ClubNo, @ClubName, @ClubCountry)", con);
            addClub.Parameters.AddWithValue("@ClubNo", newClub.ClubNo);
            addClub.Parameters.AddWithValue("@ClubName", newClub.ClubName);
            addClub.Parameters.AddWithValue("@ClubCountry", newClub.ClubCountry);
            con.Open();
            addClub.ExecuteNonQuery();
            con.Close();
            return "Club Successfully Added!";
        }

        public List<FootballClubs> ClubSearchByName(string clubName)
        {
            SqlCommand searchClub = new SqlCommand("select * from ClubsInfo where ClubName = @ClubName", con);
            searchClub.Parameters.AddWithValue("@ClubName", clubName);
            con.Open();
            List<FootballClubs> clubList = new List<FootballClubs>();
            SqlDataReader readClub = searchClub.ExecuteReader();
            while (readClub.Read())
            {
                clubList.Add(new FootballClubs()
                {
                    ClubNo = (int)readClub[0],
                    ClubName = readClub[1].ToString(),
                    ClubCountry = readClub[2].ToString(),
                });
            }
            readClub.Close();
            con.Close();
            return clubList;

        } 
     
        #endregion

    }
}
