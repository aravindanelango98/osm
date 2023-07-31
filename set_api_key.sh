if [ -z "$1" ]
then
    echo "Usage: ./set_api_key.sh 7a7fa26cfb654a4bbb9dbf51bf015b02"
    exit -1
fi
echo "Setting API key to $1"
for file in cycle cycle-hires hiking hiking-hires night-transit night-transit-hires satellite street street-hires terrain terrain-hires transit transit-hires
do
    sed -i -- "s/7a7fa26cfb654a4bbb9dbf51bf015b02/$1/g" $file
done
