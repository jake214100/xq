{@type:filter}
// CCI超買
//
Input: Length(14), AvgLength(9), OverBought(100);
Variable: cciValue(0), cciMAValue(0);

SetTotalBar(maxlist(AvgLength + Length + 1,6) + 3);

SetInputName(1, "期數");
SetInputName(2, "平滑期數");
SetInputName(3, "超買值");

cciValue = CommodityChannel(Length);
cciMAValue = Average(cciValue, AvgLength);

Condition1 = cciMAValue Crosses Over OverBought;
If condition1 then ret = 1;

SetOutputName1("CCI");
OutputField1(cciValue);
