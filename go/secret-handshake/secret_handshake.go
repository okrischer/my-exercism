package secret

func reverse(items []string) (result []string) {
	for i := len(items) - 1; i >= 0; i-- {
		result = append(result, items[i])
	}
	return
}

func Handshake(code uint) []string {
	actions := [4]string{"wink", "double blink", "close your eyes", "jump"}
	handshake := make([]string, 0, 4)

	for i := 0; i < 4; i++ {
		if 1<<i&code > 0 {
			handshake = append(handshake, actions[i])
		}
	}

	if 1<<4&code > 0 {
		handshake = reverse(handshake)
	}

	return handshake
}
