echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does freedom mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "----- Open Source Manifesto -----" > $OUTPUT
echo "Date: $DATE">> $OUTPUT
echo "">> $OUTPUT
echo "I use $TOOL daily, and for me freedom means $FREEDOM.">> $OUTPUT
echo "I believe in sharing knowledge, and I would build $BUILD and make it open for everyone.">> $OUTPUT
echo "Open source connects people and ideas to create a better world.">> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
cat $OUTPUT
