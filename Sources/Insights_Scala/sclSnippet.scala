package test
object MySqlClass {
  def main (args: Array[String]) {

    session.table("TableTest").select(
      callUDF("DB.SCH.UDF", 
        callBuiltin("BuiltInFunction", col("N_Column")), 
          callBuiltin("BuiltInFunction", col("N_Column2")), lit(100))).show()
    // Test Stored Procedure
    session.sql("call companyType()").show()
    session.table("TableTest2").show()

    var sqlCode1 = """DELETE FROM PL_DEV.PM_EDW.AUTO_MSTR
                      WHERE (TABLE_CATALOG, TABLE_NAME) NOT IN
	                    (SELECT TABLE_NAME FROM PL_DEV.BDI.Tables WHERE TableKind = 'Graph')""";

  	var sqlCode2 = """insert into DB.SCH.insertTable (first_name, last_name, id)
                    select first_name, last_name, id from DB.SCH.TableRef""";

  }

  override def alerts(): Unit = {
    println("Dummy Alert .....")
    hive.sql("""SELECT x from TEST.SCH.TTABLE where z ORDER BY 1""")
  }

  val thresholdKeys = Seq("")

  override def verifyThresholdKeys(): Unit= {}

  override def getData(): DataFrame = {

    session.emptyDataFrame
  }

  override def getFacts(data: DataFrame): DataFrame = {
    session.emptyDataFrame
  }
}