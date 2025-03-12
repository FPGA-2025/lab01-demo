iverilog -o tb *.v
./tb > test/saida.out
# diff somador.out somador.ok

if diff test/saida.out test/saida.ok >/dev/null; then
    echo "OK"
    exit 0
else
    echo "ERRO"
    exit 1
fi
