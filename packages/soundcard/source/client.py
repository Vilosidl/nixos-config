import socket

def send_command(host, port, command):
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as sock:
        sock.connect((host, port))
        sock.sendall(command.encode('utf-8'))  # Отправляем команду
        sock.shutdown(socket.SHUT_RDWR)

send_command("127.0.0.1", 65432, 'change')