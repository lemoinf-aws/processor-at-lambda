class Processor:
    def execute(self):
        try:
            print('Lógica de negocio')
        except Exception:
            print('Manejo de errores')
        finally:
            print('Limpieza')
