class InsuranceInfo{
  String companyName;
  String number;

  InsuranceInfo(String name, String num)
    :
      companyName = name,
      number = num;

  @override
  String toString() => "Company Name: $companyName Number: $number";
}