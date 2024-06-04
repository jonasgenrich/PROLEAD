set -e

echo "------------------------------"
echo "|           test01           |"
echo "------------------------------"

echo ---------- SW_AES_rp ----------
cd SW_AES_rp/results/test01
if [ -f Report.dat ]; then
	echo "Report.dat already exists, the test seems to have already been done."
else
    ./run.sh
fi
cd ../../..

echo ---------- SW_AES_htable ----------
cd SW_AES_htable/results/test01
if [ -f Report.dat ]; then
	echo "Report.dat already exists, the test seems to have already been done."
else
    ./run.sh
fi
cd ../../..

echo ---------- SW_AES_anssi ----------
cd SW_AES_anssi/results/test01
if [ -f Report.dat ]; then
	echo "Report.dat already exists, the test seems to have already been done."
else
    ./run.sh
fi
cd ../../..

echo ---------- SW_SECADD ----------
cd SW_SECADD/results/test01
if [ -f Report.dat ]; then
	echo "Report.dat already exists, the test seems to have already been done."
else
    ./run.sh
fi
cd ../../..

echo ---------- SW_SECA2B_MODP ----------
cd SW_SECA2B_MODP/results/test01
if [ -f Report.dat ]; then
	echo "Report.dat already exists, the test seems to have already been done."
else
    ./run.sh
fi
cd ../../..

echo ---------- SW_PRESENT_TI ----------
cd SW_PRESENT_TI/results/test01
if [ -f Report.dat ]; then
	echo "Report.dat already exists, the test seems to have already been done."
else
    ./run.sh
fi
cd ../../..

echo ---------- SW_keccak_f1600_TI ----------
cd SW_keccak_f1600_TI/results/test01
if [ -f Report.dat ]; then
	echo "Report.dat already exists, the test seems to have already been done."
else
    ./run.sh
fi
cd ../../..

echo ---------- SW_keccak_f800_TI ----------
cd SW_keccak_f800_TI/results/test01
if [ -f Report.dat ]; then
	echo "Report.dat already exists, the test seems to have already been done."
else
    ./run.sh
fi
cd ../../..

echo ---------- SW_quadratic_classes_concat ----------
cd SW_quadratic_classes_concat/results/test01
if [ -f Report.dat ]; then
	echo "Report.dat already exists, the test seems to have already been done."
else
    ./run.sh
fi
cd ../../..



echo "------------------------------"
echo "|           test02           |"
echo "------------------------------"

echo ---------- SW_AES_anssi ----------
cd SW_AES_anssi/results/test02
if [ -f Report.dat ]; then
	echo "Report.dat already exists, the test seems to have already been done."
else
    ./run.sh
fi
cd ../../..

echo ---------- SW_SECADD ----------
cd SW_SECADD/results/test02
if [ -f Report.dat ]; then
	echo "Report.dat already exists, the test seems to have already been done."
else
    ./run.sh
fi
cd ../../..

echo ---------- SW_PRESENT_TI ----------
cd SW_PRESENT_TI/results/test02
if [ -f Report.dat ]; then
	echo "Report.dat already exists, the test seems to have already been done."
else
    ./run.sh
fi
cd ../../..

echo ---------- SW_keccak_f1600_TI ----------
cd SW_keccak_f1600_TI/results/test02
if [ -f Report.dat ]; then
	echo "Report.dat already exists, the test seems to have already been done."
else
    ./run.sh
fi
cd ../../..

echo ---------- SW_keccak_f800_TI ----------
cd SW_keccak_f800_TI/results/test02
if [ -f Report.dat ]; then
	echo "Report.dat already exists, the test seems to have already been done."
else
    ./run.sh
fi
cd ../../..

echo ---------- SW_quadratic_classes_concat ----------
cd SW_quadratic_classes_concat/results/test02
if [ -f Report.dat ]; then
	echo "Report.dat already exists, the test seems to have already been done."
else
    ./run.sh
fi
cd ../../..

echo "------------------------------"
echo "|           test03           |"
echo "------------------------------"

echo ---------- SW_AES_anssi ----------
cd SW_AES_anssi/results/test03
if [ -f Report.dat ]; then
	echo "Report.dat already exists, the test seems to have already been done."
else
    ./run.sh
fi
cd ../../..

echo ---------- SW_SECADD ----------
cd SW_SECADD/results/test03
if [ -f Report.dat ]; then
	echo "Report.dat already exists, the test seems to have already been done."
else
    ./run.sh
fi
cd ../../..

echo ---------- SW_keccak_f1600_TI ----------
cd SW_keccak_f1600_TI/results/test03
if [ -f Report.dat ]; then
	echo "Report.dat already exists, the test seems to have already been done."
else
    ./run.sh
fi
cd ../../..

echo ---------- SW_keccak_f800_TI ----------
cd SW_keccak_f800_TI/results/test03
if [ -f Report.dat ]; then
	echo "Report.dat already exists, the test seems to have already been done."
else
    ./run.sh
fi
cd ../../..

echo ---------- SW_quadratic_classes_concat ----------
cd SW_quadratic_classes_concat/results/test03
if [ -f Report.dat ]; then
	echo "Report.dat already exists, the test seems to have already been done."
else
    ./run.sh
fi
cd ../../..