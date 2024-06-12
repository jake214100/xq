{@type:sensor}
input: FastLength(12), SlowLength(26), MACDLength(9);

SetTotalBar((maxlist(FastLength,SlowLength,6) + MACDLength) * 3 + 8);

SetInputName(1, "DIF短期期數");
SetInputName(2, "DIF長期期數");
SetInputName(3, "MACD天數");

variable: difValue(0), macdValue(0), oscValue(0);

MACD(weightedclose(), FastLength, SlowLength, MACDLength, difValue, macdValue, oscValue);

Ret = oscValue Crosses Below 0;
