fswatch  ${SRCROOT}/LiveLoadPlayGround/liveload  | while read file
clear

cd ${SRCROOT}/

xcodebuild ONLY_ACTIVE_ARCH=NO  -target BuildMe -configuration Debug -sdk iphonesimulator

do
	echo ""
    echo "${file} was changed start sync..."
    echo ""
    #cd /Users/boo/Downloads/Dyamk-master/LiveLoadPlayGround
    #xcodebuild build -scheme BuildMe
done

