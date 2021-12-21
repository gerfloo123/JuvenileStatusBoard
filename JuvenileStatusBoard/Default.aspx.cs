using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using Oracle.ManagedDataAccess.Client;

namespace JuvenileStatusBoard
{
     public partial class _Default : Page
    {

        OracleConnection oCon = new OracleConnection();
        OracleCommand oCmd = new OracleCommand();
        String connectString = null;

        private DataSet dsJuveniles = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            PopulateBoard();
            
        }

       
            private void PopulateBoard()
            {
                DataSet ds = new DataSet();
                oCon = new OracleConnection();
                connectString = ConfigurationManager.AppSettings["IJOSDBConnectString"];
                oCon.ConnectionString = connectString;
                oCmd = new OracleCommand();
                oCmd.Parameters.Clear();
                oCmd.CommandType = CommandType.StoredProcedure;
                oCmd.CommandText = "IJOS.PKG_JUV_STATUS_BOARD.juv_status_board";
                oCmd.Connection = oCon;
                oCmd.Parameters.Add(new OracleParameter("cur_war_total_and_temp", OracleDbType.RefCursor, 0, System.Data.ParameterDirection.Output, false, ((byte)(0)), ((byte)(0)), "", System.Data.DataRowVersion.Current, null));
                oCmd.Parameters.Add(new OracleParameter("cur_knights_total_and_temp", OracleDbType.RefCursor, 0, System.Data.ParameterDirection.Output, false, ((byte)(0)), ((byte)(0)), "", System.Data.DataRowVersion.Current, null));
                oCmd.Parameters.Add(new OracleParameter("cur_strive_total_and_temp", OracleDbType.RefCursor, 0, System.Data.ParameterDirection.Output, false, ((byte)(0)), ((byte)(0)), "", System.Data.DataRowVersion.Current, null));
                oCmd.Parameters.Add(new OracleParameter("cur_war_board_info", OracleDbType.RefCursor, 0, System.Data.ParameterDirection.Output, false, ((byte)(0)), ((byte)(0)), "", System.Data.DataRowVersion.Current, null));
                oCmd.Parameters.Add(new OracleParameter("cur_knights_board_info", OracleDbType.RefCursor, 0, System.Data.ParameterDirection.Output, false, ((byte)(0)), ((byte)(0)), "", System.Data.DataRowVersion.Current, null));
                oCmd.Parameters.Add(new OracleParameter("cur_strive_board_info", OracleDbType.RefCursor, 0, System.Data.ParameterDirection.Output, false, ((byte)(0)), ((byte)(0)), "", System.Data.DataRowVersion.Current, null));
                OracleDataAdapter myAdapter = new OracleDataAdapter(oCmd);
                ds.Tables.Add("UserData");
                myAdapter.Fill(ds, "UserData");
                /* binding */
                warInOutFacility.DataSource = ds.Tables[0];
                warInOutFacility.DataBind();
                gvWarriors.DataSource = ds.Tables[3];
                gvWarriors.DataBind();
                knightsInOutFacility.DataSource = ds.Tables[1];
                knightsInOutFacility.DataBind();
                gvKnights.DataSource = ds.Tables[4];
                gvKnights.DataBind();
                striveInOutFacility.DataSource = ds.Tables[2];
                striveInOutFacility.DataBind();
                gvStrive.DataSource = ds.Tables[5];
                gvStrive.DataBind();
        }

        

        public bool RefreshStatusBoardInfo()
        {
            //check DJC IJOS# - put this in its own ErrorDetails() method and call it in every API... (DJC ID is Valid)
            bool valid = true;

            //connectString = "User Id=FACS_API_USER;Password=h311fr0z30v3r;Data Source=ijosdev";
            connectString = ConfigurationManager.AppSettings["IJOSDBConnectString"];

            oCon.ConnectionString = connectString;
            oCmd.CommandText = "IJOS.PKG_LINDSAY_TEST.JUVENILE_STATUS_BOARD";
            oCmd.CommandType = CommandType.StoredProcedure;
            oCmd.Connection = oCon;

            oCmd.Parameters.Add(new OracleParameter("cur_RefreshBoard", OracleDbType.RefCursor, 0, System.Data.ParameterDirection.Output, false, ((byte)(0)), ((byte)(0)), "", System.Data.DataRowVersion.Current, null));

            OracleDataAdapter myAdapter = new OracleDataAdapter(oCmd);
            DataSet ds = new DataSet("RemoteData");
            ds.Tables.Add("UserData");
            myAdapter.Fill(ds, "UserData");

            dsJuveniles = ds;

            return valid;
        }

        //MUST HAVE THIS METHOD TO RUN THE SERVICE - IT DEPENDS ON THE .XML FILE TO LOCATE THE USERNAME AND PASSWORD TO CALL THE DB
        private void ReadXmlConfig(ref String sUsername, ref String sPassword, ref String sDBname)
        {
            String sElement = string.Empty;
            String sPath = System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().GetName().CodeBase).Replace(@"file:\", string.Empty);
            XmlTextReader textReader = new XmlTextReader(sPath + @"\JuvenileStatusBoardConfig.xml");

            while (textReader.Read())
            {
                switch (textReader.NodeType)
                {
                    case XmlNodeType.Element:
                        sElement = textReader.Name;
                        break;
                    case XmlNodeType.Text:
                        switch (sElement)
                        {
                            case "Username":
                                sUsername = textReader.Value;
                                break;
                            case "Password":
                                sPassword = textReader.Value;
                                break;
                            case "DBname":
                                sDBname = textReader.Value;
                                break;
                        }
                        break;
                }
            }
            textReader.Close();
        }

        protected void dsWarriors_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

    }
}